# Recursion Schemes

https://medium.com/@olxc/catamorphisms-and-f-algebras-b4e91380d134

Catamorphism is a generalization of the concept of folding. Given an *F-Algebra* and a recursive data structure, a catamorphism will produce a value by recursively evaluating your data structure.

We start by plain but recursive data stucture.

```hs
data Exp
  = Val Int
  | Add Exp Exp
  | Mul Exp Exp
  deriving Show

-- (1 + 2) * 3
x1 = Mul (Add (Val 1) (Val 2)) (Val 3)

eval :: Exp -> Int
eval (Val v) = v
eval (Add e1 e2) = eval e1 + eval e2
eval (Mul e1 e2) = eval e1 * eval e2
```

[It works, so let's break it!]

This is where catamorphism generalization comes in:

```hs
quasiCata :: (Exp -> Int) -> Exp -> Int
quasiCata evaluator exp = evaluator exp -- purposely not eta reducing
```

The quasiCata is not a real catamorphism because a proper catamorphism is generic and doesn't depend on any concrete data structure or evaluator. The creation of a recursive data structure, followed by folding over it, is a common pattern that catamorphisms generalize.

```hs
-- fixpoint as term-level function
fix :: (a -> a) -> a
fix f = f (fix f)

-- fixpoint as type-level type function (type ctor)
data Fix f = Fix { unFix :: f (Fix f) }

-- Algebra
type Algebra f a = f a -> a

-- catastrophe
cata :: Functor f
     => Algebra f a
     -> Fix f
     -> a
cata f = f . fmap (cata f) . outF
```



(back to the initially introduced data structure) First, we need to get rid of recursion by introducing a type parameter `a`. All references to `Exp` are replaced with a type parameter `a`, so the data structure is no longer recursive. Also it is renamed from `Exp` into `ExpF a`, with the suffixed `-F` as a reminder that `ExpF` can have a `Functor` instance.

```hs
data ExpF a
  = ValF Int
  | AddF a a
  | MulF a a
  deriving Show

instance Functor ExpF where
  fmap _ (ValF a) = ValF a
  fmap f (AddF e1 e2) = AddF (f e1) (f e2)
  fmap f (MulF e1 e2) = MulF (f e1) (f e2)
```

The way we create our expression haven't changed (except for ctor names):

```hs
expr =  Mult  (Add  (Value 1)  (Value 2))  (Value 3)
exprF = MultF (AddF (ValueF 1) (ValueF 2)) (ValueF 3)
```

But the resulting type is different:

```hs
expr :: Expression
expr =  Mult  (Add  (Value 1)  (Value 2))  (Value 3)

exprF :: ExpressionF (ExpressionF (ExpressionF a))
exprF = MultF (AddF (ValueF 1) (ValueF 2)) (ValueF 3)
```

`expr` collapses everything into a single Expression while `exprF` encodes information about the nesting level of our expression tree. Speaking about evaluation, this is how we can go about implementing `eval` for `ExpressionF`:

```hs
evalExprF :: ExpressionF Int -> Int
evalExprF (ValueF v) = v
evalExprF (AddF e1 e2) = e1 + e2
evalExprF (MulF e1 e2) = e1 * e2
```

The main difference with original evalExpr is that we don't have recursive call to evalExprF (ExpressionF is not recursive). It also means that our evaluator works only with a single-level expressions:

```hs
fourtyTwo = evalExprF (ValueF 42)
five = evalExprF (AddF 2 3)
six = evalExprF (MultF 2 3)

-- ERROR. won't compile
nestedExpr :: ExpressionF (ExpressionF Int)
nestedExpr = AddF (ValueF 2) (ValueF 3)
wontCompile = evalExprF nestedExpr
```

It refuses to compile because `exprF` expects `ExpressionF Int` and we're shoving `ExpressionF (ExpressionF Int)`. To make it work we could define another evaluator:

```hs
-- Single level
evalExprF :: ExpressionF Int -> Int
evalExprF (ValueF v) = v
evalExprF (AddF e1 e2) = e1 + e2
evalExprF (MultF e1 e2) = e1 * e2

-- 2 Level, reusing evalExprF defined above
evalExprF2 :: ExpressionF (ExpressionF Int) -> Int
evalExprF2 (AddF e1 e2) = evalExprF e1 + evalExprF e2
evalExprF2 (MultF e1 e2) = evalExprF e1 * evalExprF e2
```

Looks kinda ad hoc, what if you have deeply nested expressions? Yes, any kind of nested expression this approach is not scalable - each additional nesting level requires you to write specialized function. There is a way to generalize this. First we define fixpoint type function.

```hs
newtype Fix f = Fx (f (Fix f))

unfix :: Fix f -> f (Fix f)
unfix (Fx x) = x
```

Let's first look at the expression before the equals sign: indeed `Fix` is a recursive data structure that has one type parameter `f :: * -> *` that also takes a type parameter.

For example, you can't construct Fix providing Int or Bool, it has to be something like Maybe, List or `ExpF`. This is why we introduced type parameter for `ExpF`.

Next, after the equals sign we have a single type constructor `Fx` taking a single argument of type `f (Fix f)` which is basically an expression that constructs `f`'s value. In case of Maybe it would be Maybe (Fix Maybe) and then the whole thing is wrapped with Fx into type Fix Maybe.

`unfix` is the opposite of `Fx`; it pattern matches on Fx and returns wrapped value.

Now, we will replace every ExpressionF of our expression tree with `Fix ExpF`. Notice the difference in constructing expressions with and without Fx - they're basically the same, except we need to prepend `Fx $`:

```hs
-- (1 + 2) * (3 + 4)
regularExprF :: ExpressionF (ExpressionF (ExpressionF a))
regularExprF = MultF (AddF (ValueF 1) (ValueF 2)) (AddF (ValueF 3) (ValueF 4))

fixedExprF :: Fix ExpressionF
fixedExprF   = Fx $ MultF (Fx $ AddF (Fx $ ValueF 1) (Fx $ ValueF 2)) (Fx $ AddF (Fx $ ValueF 3) (Fx $ ValueF 4))
```

The resulting type of a 'fixed' version is `Fix ExpressionF` so we're back to a recursive representation, but now we have to use unfix function to get our non recursive data structure back.

What are the benefits of having Fix? Looks like it's the same approach as original Expression type but now we have this weird Fix and unfix nonsense?

Yes, but we're trying to generalize the process of folding, it requires introduction of additional abstractions, like Fix and Algebra that we'll discuss later. Bear with me, it should make more sense later.

So we have our 'fixed' data structure, how would evaluation function look like?

```hs
evalFixedExprF :: Fix ExpressionF -> Int
evalFixedExprF fixedExpr = ???
```

Given a Fix ExpressionF the only thing we can do with it is calling unfix which produces ExpressionF (Fix ExpressionF):

```hs
evalFixedExprF :: Fix ExpressionF -> Int
evalFixedExprF fixedExpr = unfix fixedExpr ?? and something
```

The returned ExpressionF can be one of our ValueF, AddF or MultF having a Fix ExpressionF as their type parameter. It makes sense to do pattern matching and decide what to do next:

```hs
evalFixedExprF :: Fix ExpressionF -> Int
evalFixedExprF fixedExpr = case unfix fixedExpr of
    ValueF i -> i
    AddF fixE1 fixE2 -> evalFixedExprF fixE1 + evalFixedExprF fixE2
    MultF fixE1 fixE2 -> evalFixedExprF fixE1 * evalFixedExprF fixE2
    
-- looks familiar?
evalExpr :: Expression -> Int
evalExpr (Value v) = v
evalExpr (Add e1 e2) = evalExpr e1 + evalExpr e2
evalExpr (Mult e1 e2) = evalExpr e1 * evalExpr e2
```

Yes, it looks the same as our very first recursive evaluator for Expression with addition of having to unwrap the expression with unfix. So why bother with Fix anyway?

Here's the key: we will re-use our original 'fix-less' evaluator for ExpressionF and somehow distribute it over the Fix ExpressionF structure. So this should be a function taking two arguments - the evaluator and the structure to evaluate:

```hs
almostCata :: (ExpressionF Int -> Int) -> Fix ExpressionF -> Int
almostCata evaluator expr = undefined
```

Let's try figure out the implementation - the first logical thing to do is to use unfix to get ExpressionF and then maybe pass it to evaluator:

```hs
almostCata :: (ExpressionF Int -> Int) -> Fix ExpressionF -> Int
almostCata evaluator expr = evaluator $ unfix expr -- won't compile
```

Obviously this doesn't work, evaluator expects ExpressionF Int and not ExpressionF (Fix ExpressionF). By the way, remember that ExpressionF is a Functor? This is where it gets handy - we can use fmap to apply the same process to the inner level of our expression tree:

```hs
almostCata :: (ExpressionF Int -> Int) -> Fix ExpressionF -> Int
almostCata evaluator expr = evaluator $ fmap (almostCata evaluator) (unfix expr)
```

Take a moment and think about what happens: we're passing a recursive function almostCata evaluator into the fmap. If the current expression is AddF or MultF then this function will be passed one level deeper and fmap will be called again. This will happen until we reach ValueF, fmapping over ValueF returns value of type ExpressionF Int and that's exactly what our evaluator function accepts.

By looking at almostCata we can see that it doesn't really have anything specific to ExpressionF or Int type and theoretically can be generalized with some type parameter f. The only constraint should be having a Functor instance for f, because we're using fmap:

```hs
cata :: Functor f => (f a -> a) -> Fix f -> a
cata alg expr = alg $ fmap (cata alg) (unfix expr)
```

And that's the final version of cata. Here's the full implementation with some usage examples:

```hs
-- Non recursive data structure
data ExpressionF a = ValueF Int
    | AddF a a
    | MultF a a deriving Show

-- Functor instance for it
instance Functor ExpressionF where
    fmap _ (ValueF a) = ValueF a
    fmap f (AddF e1 e2) = AddF (f e1) (f e2)
    fmap f (MultF e1 e2) = MultF (f e1) (f e2)

-- Evaluator function
evalExprF :: ExpressionF Int -> Int  
evalExprF (ValueF v) = v
evalExprF (AddF e1 e2) = e1 + e2
evalExprF (MultF e1 e2) = e1 * e2

-- Fix data structure
newtype Fix f = Fx (f (Fix f))
unfix :: Fix f -> f (Fix f)
unfix (Fx x) = x

-- Catamporphism
cata :: Functor f => (f a -> a) -> Fix f -> a
cata alg expr = alg $ fmap (cata alg) (unfix expr)

-- Example expression and evaluation
someExpression   = Fx $ MultF (Fx $ AddF (Fx $ ValueF 1) (Fx $ ValueF 2)) (Fx $ AddF (Fx $ ValueF 3) (Fx $ ValueF 4))
twentyOne = cata evalExprF someExpression
```

I guess that's cool. But why tho?

A lot of concepts in category theory and functional programming are pretty abstract and sometimes it's hard to find immediate practical application for certain idea. But looking for abstractions and generalizations is useful for finding patterns and elegant solutions to problems that otherwise require ad-hoc implementation.

By the way, by generalizing our ExpressionF -> Int function to Functor f => (f a -> a) we discovered another important concept called F-Algebra. Basically F-Algebra is a triple of functor f, some type a and evaluator function f a -> a. Note that a here not polymorphic - it has to be a concrete type, like Int or Bool and it's called a carrier type. For any endo-functor f you can create multiple F-Algebra's based on it. Take our expressions example - endo-functor f is ExpressionF, a is Int and evaluator is evalExprF. But we can change the carrier type and produce more algebras:

```hs
type Algebra f a = f a -> a

algebra0 :: Algebra ExpressionF Int -- or ExpressionF Int -> Int
algebra0 (ValueF v) = v
algebra0 (AddF e1 e2) = e1 + e2
algebra0 (MultF e1 e2) = e1 * e2

algebra1 :: Algebra ExpressionF String
algebra1 (ValueF v) = show v
algebra1 (AddF e1 e2) = "(" ++ e1 ++ " " ++ e2 ++ ")"
algebra1 (MultF e1 e2) = e1 ++ e2

algebra2 :: Algebra ExpressionF Bool
algebra2 (ValueF v) = True
algebra2 (AddF e1 e2) = e1 || e2
algebra2 (MultF e1 e2) = e1 && e2
```

That's just different evaluators that can be passed into cata, right?
Yes, we're picking different carrier types and choosing our implementation. But there the trick - there is a mother of all evaluators that we can create by picking our carrier type to be… Fix ExprF.

```hs
-- just in case:
newtype Fix f = Fx (f (Fix f))

initialAlgebra :: ExpressionF (Fix ExpressionF) -> Fix ExpressionF
initialAlgebra = ?
```

Evaluating to Int or Bool totally makes sense but what would this initialAlgebra evaluate? When do I need to have Fix of something as a result of my evaluator?

Of course you won't write something like that yourself, just want to show you the deeper meaning behind f-algebras and cata. In fact, we already have an implementation for such evaluator and thats exactly Fx constructor:

```hs
initialAlgebra :: ExpressionF (Fix ExpressionF) -> Fix ExpressionF
initialAlgebra = Fx
```

Wait, Fx is an evaluator? That's crazy.

Yes and it does the most simple thing you can do - save the expession into a data structure. While all other evaluators (algebra0, algebra1) produced some value by reducing the expression (like doing sum or concatenation) Fx just wraps the expression without loosing any data.

This is why we introduced Fix in the first place - you first evaluate your original data structure with Fx into initial algebra Fix f and then using cata the 'real' evaluation happens by fmaping your concrete evaluator over inital algebra.

From category theory point of view, all algebras based on the same endo-functor form a category. This category has an initial object which is our initial algebra created by picking the carrier type as Fix f. There are some great blog posts by Bartosz Milewski that I highly recommend checking out if you want to get deep categorical understanding.


It's still pretty hard to comprehend, *I don't think I fully understand the concept*.


It's always better to do hands on: try re-implementing Fix and cata on your own, think about possible data structures and algebras. For example, a String can be represented recursively (as a Char head and tail of String), the length of a string can be computed with cata. Here's some great resources for further reading:

- Understanding F-Algebras and slightly different F-Algebras by Bartosz Milewski
  https://www.schoolofhaskell.com/user/bartosz/understanding-algebras
  https://bartoszmilewski.com/2017/02/28/f-algebras/
  https://bartoszmilewski.com/

- Catamorphisms in 15 minutes by Chris Jones
  http://chrislambda.github.io/blog/2014/01/30/catamorphisms-in-15-minutes/

- Pure Functional Database Programming with Fixpoint Types by Rob Norris
  https://www.youtube.com/watch?v=7xSfLPD6tiQ

- Catamorphisms on Haskell wiki
  https://wiki.haskell.org/Catamorphisms

- Practical recursion schemes by Jared Tobin
  https://jtobin.io/practical-recursion-schemes
  https://jtobin.io/
