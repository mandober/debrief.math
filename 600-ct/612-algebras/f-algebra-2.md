# F-Algebra

https://en.wikipedia.org/wiki/F-algebra

F-algebras generalize the notion of algebraic structure.

Rewriting the algebraic laws in terms of morphisms eliminates all references to quantified elements from the axioms, and these algebraic laws may then be glued together in terms of a single *functor `F`, the signature*.

F-algebras can also be used to represent data structures used in programming, such as lists and trees.

The main related concepts are *initial F-algebras* which may serve to encapsulate the induction principle, and the dual construction *F-coalgebras*.


## F-Algebra

https://www.schoolofhaskell.com/user/bartosz/understanding-algebras

Elementary algebra gives us the ability to perform calculations with numbers and symbols. Abstract algebra treats symbols as elements of a vector space: they can be multiplied by scalars and added to each other. But what makes algebras stand appart from linear spaces is the presence of vector multiplication: a bilinear product of vectors whose result is another vector (as opposed to inner product, which produces a scalar). Complex numbers, for instance, can be described as 2-d vectors, whose components are the real and the imaginary parts.

But nothing prepares you for this definition of F-algebra from the package `category-extras-0.53.0`: algebras, coalgebras, bialgebras, and dialgebras and their (co)monadic variants (https://hackage.haskell.org/package/category-extras-0.53.0/docs/Control-Functor-Algebra.html) by E.Kmett


```hs
type Algebra f a = f a -> a
```

We'll try to bridge the gap between traditional algebras and more powerful F-algebras.

F-algebras reduce the notion of an algebra to the bare minimum. The 3 basic ingredients of an algebra are:
- a functor
- a type
- a function

We'll explore a very general way of evaluating arbitrary expressions using a *catamorphism* that reduces to the `foldr` when applied to lists (which could also be considered a very simple F-algebras).

## Algebra

There are two essential aspects of an algebra:
- ability to form expressions
- ability to evaluate these expressions

## Expressions

The standard way of generating expressions is to use grammars. Here's an example of a grammar in Haskell:

```hs
data Expr
  = Const Int
  | Add Expr Expr
  | Mul Expr Expr
```

This grammar is defined recursively, but recursion can be abstracted away to uncover the real primitives behind expressions. The trick is to *define a non-recursive function and then find its fixedpoint*.

Since we're dealing with a data type, to get at its fixpoint, we first need to define a type function, and in this case, the type ctor `Expr` is that type function. However, as it is now, the type ctor `Expr` is nullary and therefore not really a type function (it's more of a type constant). To turn it into a proper type function we need to make it take a type arg, meaning, we need to introduce a type parameter, so it becomes `Expr a`. Also, when we introduce the type parameter, we'll rename `Expr` into `ExprF`.

```hs
-- we need a type function i.e. a type ctor that takes a type arg:
data ExprF a   ≋   ExprF :: a -> ExprF a
ExprF :: *
ExprF (a :: *)
ExprF :: * -> *
```

Also, we need to replace all the recursive calls (places) with the type parameter `a`; e.g. the variant `Mul` now looks like `Mul a a` instead of the old `Mul Expr Expr`. Here are both, the original andchanged definitions:

```hs
data Expr             data ExprF a
  = Const Int            = Const Int
  | Add Expr Expr        | Add a a
  | Mul Expr Expr        | Mul a a
```

By replacing all `Expr` on the RHS with the type param `a` we have obtained the non-recursive precursor of the grammar (the suffix `F` in `ExprF` is a reminder to make it Functor).

With these changes, now the definition looks like this:

```hs
data ExprF a
  = Const Int
  | Add a a
  | Mul a a
```

The type param `a` stand where `Expr` was before, meaning, in a way, `a` now represents "the rest of the expression".

Also note that now the definition `ExprF` is not recursive. The recursion can be obtained by repeatedly applying `ExprF` to itself:

```hs
              ExprF a
       ExprF (ExprF a)
ExprF (ExprF (ExprF a))
ExprF ( ...  (ExprF a)) ... )
```

which has the familiar form of the fixpoint function, `fix`, or the `Y` combinator from λ-calculus.

The more times we perform self-application of `ExprF`, the deeper the trees we generate. After a while, we should reach a fixpoint, after which applying `ExprF` to itself makes no difference.

We can express the fixpoint of a type ctor with `Fix` data type.

```hs
newtype Fix f = Fix { unFix :: f (Fix f) }

Fix   :: f (Fix f) -> Fix f  -- remove a recursive layer
unFix :: Fix f -> f (Fix f)  -- add    a recursive layer
```

`Fix f` is the type obtained by applying `f` to itself, a fixpoint of `f`. It is a translation of term-level `fix` function to type level:

```hs
-- at the term level:
fix f :: (a -> a) -> a
fix f = f (fix f)

-- at the type level:
type Fix f = f (Fix f)
```

This single generic recursive type `Fix` allows us to restore recursion to many other non-recursive type ctors.

The `Fix` data ctor is a function that takes an element of type `f (Fix f)`, producing a `Fix f`, as if peeling off one layer of recursion.

Using `Fix` we can now redefine the original `Expr` as a fixed point of `ExprF`:

```hs
type Expr = Fix ExprF
```

The type `Fix ExprF`, although seemingly strange, is actually inhabited: there is one ctor of `ExprF` that doesn't depend on `a`, viz. `Const Int`. Thanks to it, we can bootstrap ourselves since we can always create a leaf `Expr`. And once we have that ability, we can create more and more complex values using the other two constructors of `ExprF`.

```hs
val :: Fix ExprF
val = Fix (Const 12)

x1 :: Fix ExprF
x1 = Fix $ Mul
      (Fix $ Add
        (Fix $ Const 2)
          (Fix $ Const 3))
            (Fix $ Const 4)
```


## Evaluation

Evaluation is a process for extracting a single value from an expression. In order to evaluate recursively-defined expressions, the evaluation has to proceed recursively as well.

Recursion can be abstracted away again. We need an evaluation strategy for
- each top-level construct: `alg` is the non-recursive top-level evaluator
- evaluating its children: `eval` is the recursive evaluator
- both `alg` and `eval` return values of the same type, `a`


First, we need to be able to map `eval` fn over the children of an expression, so we need to make `ExprF` a functor.

```hs
-- We need fmap to map eval over the children of an expression.
-- Only Add and Mul have child expressions, Val is not mapped.
instance Functor ExprF where
  fmap :: (a -> b) -> ExprF a -> ExprF b
  fmap eval (Const i)          = Const i
  fmap eval (left `Add` right) = (eval left) `Add` (eval right)
  fmap eval (left `Mul` right) = (eval left) `Mul` (eval right)
```

An F-algebra is built atop a functor, strictly speaking, an endofunctor (a functor that maps a category onto itself. In our framework, the category is `Hask`, the category (overlooking bottom) of Haskell types as objects and Haskell functions as morphisms.

Suppose we somehow know how to evaluate all the children of `Add` and `Mul` in an `Expr`, giving us values of some type `a`. Then all that's left is to evaluate `Add a a` and `Mul a a` in `ExprF a` (we also need to evaluate `Const Int`, but that doesn't involve recursion).

```hs
-- Here's an example of such an evaluator that produces Ints:
alg :: ExprF Int -> Int
alg (Const i)   = i
alg (x `Add` y) = x + y
alg (x `Mul` y) = x * y
```

(Notice that we are free to add and multiply x and y, since they are just Int)

What is going on here, is that we have picked one particular type, namely `Int`, as our evaluation target. This type is called *the carrier type of the algebra*. Then, we defined a function `alg` from the image of `Int` under the functor `ExprF` back to `Int`, i.e. `alg :: ExprF Int -> Int`.

To show that the choice of the carrier type is arbitrary, we can define another evaluator whose evaluation target is `String`:

```hs
algs :: ExprF String -> String
algs (Const i)   = [chr (ord 'a' + i)]
algs (x `Add` y) = x ++ y
algs (x `Mul` y) = concat [[a, b] | a <- x, b <- y]
```

## F-Algebras
                                                   
First, we'll use the language of category theory to define F-algebras in the most general terms, and then we'll translate it into Haskell.

An F-algebra consists of:
- an endofunctor 𝓕 in a category 𝒞, `𝓕 : 𝒞 -> 𝒞`
- an object 𝓐 in a category 𝒞, `𝓐 ∈ Obj(𝒞)`
- a morphism `𝓕(𝓐) -> 𝓐`


An F-algebra in Haskell is defined by
- a functor `f` in the category 𝓗𝓪𝓼𝓴
- a carrier type `a` in the category 𝓗𝓪𝓼𝓴
- a function `f a -> a`


This exactly is the definition of an algebra in the category-extras package:

```hs
type Algebra f a = f a -> a
```

For a given functor `f` and a carrier type `a`, the *algebra* is defined by specifying a function `f a -> a`. Sometimes, *this function is also referred to as an algebra*.

In our code, the algebra consists of:
- the functor     `f`        is `ExpF`
- the carrier type  `a`      is `Int`
- the function    `f a -> a` is `alg :: Algebra ExpF Int`


```hs
Algebra ExprF Int = ExprF Int -> Int
alg :: f     a   -> a
alg :: ExprF Int -> Int

-- My simple algebra
type SimpleA = Algebra ExprF Int

alg :: SimpleA
alg (Const i)   = i
alg (x `Add` y) = x + y
alg (x `Mul` y) = x * y
```

The only thing that's still missing is the definition of the function `eval`, which evaluates the children of an expression.

It turns out this function can be defined in a very general form, but for that we need to familiarize ourselves with the notion of *initial algebra*.


## Initial Algebras

There are many algebras based on a given functor, but there is one algebra that binds them all - *the initial algebra*. In fact you've already seen elements of it with the `Fix` type ctor (type function) - given any functor `f`, it defines a new unique type `Fix f`.

```hs
newtype Fix f = Fix (f (Fix f))
```

We'll now lift ourselves by the bootstraps, by using this type as the carrier type in the definition of another algebra - this turns out to be our initial algebra.

But first, let's go back to our example and, instead of `Int` or `String`, use `Fix ExprF` as the carrier type:

```hs
type ExprInitAlg = Algebra ExprF (Fix ExprF)
```

We have the functor, `ExprF`, and the carrier type, `Fix ExprF`, and to complete the triple we need the function with the following signature:

```hs
--      alg :: f     a           -> a
ex_init_alg :: ExprF (Fix ExprF) -> Fix ExprF
```

But we already have a function of this type, it is the `Fix` data ctor:

```hs
Fix       :: f    (Fix f)    -> Fix f
Fix @ExpF :: ExpF (Fix ExpF) -> Fix ExpF

ex_init_alg = Fix
```

But what does this "evaluator" evaluate?

Given `ExpF Exp` it produces an `Exp`.

```hs
-- given f a, i.e. ExprF (Fix ExprF)
ex1 :: ExprF (Fix ExprF)
ex1 = Add (Fix $ Const 2) (Fix $ Const 3)

-- it returns 'a' i.e. produces an (Fix ExprF)
ex2 :: Fix ExprF
ex2 = Fix ex1
```

This evaluator doesn't reduce anything like the evaluators we've been using so far. It is not lossy as it preserves all the information passed to it as input. In comparison, all other evaluators potentially lose some information. They return some kind of summary of the information encoded in the data structure.

In this sense, the algebra we have just defined is *at least as powerful as all other algebras based on the same functor*. That's why it's called the initial algebra. The word "initial" has a special meaning in the category theory:

> The initial algebra has the property that there exists a unique homomorphism from it to any other algebra based on the same functor.

A homomorphism is a mapping that preserves structure. In the case of algebras, a homomorphism has to preserve algebraic structure. An algebra consists of a functor, a carrier type, and an evaluator function. Since we are keeping the functor fixed, we only need to map carrier types and evaluators.

In fact, a homomorphism of algebras is fully specified by a function that maps one carrier to another while obeying a certain set of properties.

Since the carrier of the initial algebra is `Fix f`, we need a function:

```hs
g :: Fix f -> a
```

where `a` is the carrier for the other algebra. That algebra has an evaluator `alg` with the signature:

```hs
alg :: f a -> a
```

The special property `g` has to obey is that it shouldn't matter whether we first use the initial algebra's evaluator and then apply `g`, or first apply `g` (via `fmap`) and then the second algebra's evaluator, `alg`.

Let's check the types involved to convince ourselves that this requirement makes sense:

1. The first evaluator uses `Fix` to go from `f (Fix f)` to `Fix f`. Then `g` takes `Fix f` to `a`, `g ∘ Fix`

f (Fix f) ----(Fix)---> Fix f ----g---> a

2. The alternate route uses `fmap g` to map `f (Fix f)` to `f a`, followed by `alg` from `f a` to `a`, `alg ∘ fmap g`

f (Fix f) ----(fmap g)---> f a ----alg---> a

Notice that this is the first time that we used the functorial property of `f`. It allowed us to lift the function `g` to `fmap g`.


f (Fix f) -------------------> Fix f
        |         Fix          |
        |                      |
        |fmap g               g|
        |                      |
        ↓         alg          ↓
      f a -------------------> a

`g ∘ Fix = alg ∘ fmap g`


The crucial observation is that the `Fix` is a lossless transformation and it can be easily inverted. The inverse of `Fix` is `unFix`:

```hs
unFix :: Fix f -> f (Fix f)
unFix (Fix x) = x
```

By reversing the `Fix` arrow (getting `unFix` instead), it's easy to see that going the route of `g` is the same as taking the detour through `unFix`, followed by `fmap g`, and then `alg`:

f (Fix f) <------------------- Fix f
        |        unFix         |
        |                      |
        |fmap g               g|
        |                      |
        ↓         alg          ↓
      f a -------------------> a

`g = alg ∘ fmap g ∘ unFix`


We can use this equation as a recursive definition of `g`. We know that this definition converges because the application of `g` via `fmap` deals with subtrees of the original tree (of expressions), and they are smaller than the original tree (i.e. strictly decreasing).

We can abstract the evaluation further by factoring out the dependence on `alg`, i.e. by redefining `g` as `cata alg`:

```hs
cata :: Functor f => (f a -> a) -> Fix f -> a
cata alg = alg . fmap (cata alg) . unFix
```

The result is a very generic function known as *catamorphism*. We have constructed a catamorphism from an algebra in order to prove that the fixpoint of this algebra's functor is the initial algebra. But wait, haven't we just created the recursive evaluator we've been looking for? youbetcha.

## Catamorphisms

Look again at the type signature of the catamorphism with some redundant parentheses:

```hs
cata :: Functor f => (f a -> a) -> (Fix f -> a)
```

It takes an arbitrary algebra, which is a non-recursive function `f a -> a`, and returns an evaluator function, `Fix f -> a`.

This function takes expressions of type `Fix f` and evaluates em down to type `a`. A catamorphism lets us evaluate arbitrarily nested expressions!

Let's try it with our simple functor `ExpF`, which we used to generate nested expressions of the type `Fix ExprF`. We have already defined an `alg` for it as:

```hs
type SimpleA = Algebra ExprF Int

alg :: SimpleA
alg (Const i)   = i
alg (x `Add` y) = x + y
alg (x `Mul` y) = x * y
```

So our full-blown evaluator is just:

```hs
eval :: Fix ExprF -> Int
eval = alg . fmap eval . unFix

-- eval =            alg . fmap eval       . unFix
-- eval = cata alg = alg . fmap (cata alg) . unFix
```

First, `unFix` allows us to peek at the top level of the input expression: it is either a leaf `VarF i` or an `Add` or `Mul` whose children are, again, full-blown expression, albeit one degree shallower.

We evaluate the children by recursively applying `eval` to them. We end up with a single level tree whose leaves are now evaluated down to `Int`. That allows us to apply `alg` and get the result.

```hs
-- now we can eval em expr
d1 = eval v1  -- 12
v1 :: Fix ExpF
v1 = Fix (ValF 12)
```

## Folding

Isn't traversing and evaluating a recursive data structure what `foldr` already does for lists? Indeed, it's easy to create algebras for lists. We start with a functor:

```hs
data ListF a b = Nil | Cons a b

instance Functor (ListF a) where
  fmap f Nil = Nil
  fmap f (Cons e x) = Cons e (f x)
```

The first type argument to `ListF` is the type of the element, the second is the one we will recurse into. Here's a simple algebra with the carrier type Int:

```hs
algSum :: ListF Int Int -> Int
algSum Nil = 0
algSum (Cons e acc) = e + acc
```

Using the constructor `Fix` we can recursively generate arbitrary lists:

```hs
lst :: Fix (ListF Int)
lst = Fix $ Cons 2 (Fix $ Cons 3 (Fix $ Cons 4 (Fix Nil)))
```

Finally, we can evaluate our list using our generic catamorphism:

```hs
cata algSum lst
```

Of course, we can do exactly the same thing with a more traditional list and foldr:

```hs
foldr (+) 0 [2..4]
```

You should see the obvious parales between the definition of the `algSum` algebra and the two arguments to `foldr`. The difference is that the algebraic approach can be generalized beyond lists to any recursive data structure.

Here's the complete list example:

```hs
newtype Fix f = Fix (f (Fix f))

unFix :: Fix f -> f (Fix f)
unFix (Fix x) = x

cata :: Functor f => (f a -> a) -> Fix f -> a
cata alg = alg . fmap (cata alg) . unFix


data ListF a b = Nil | Cons a b

instance Functor (ListF a) where
  fmap f Nil = Nil
  fmap f (Cons e x) = Cons e (f x)


algSum :: ListF Int Int -> Int
algSum Nil = 0
algSum (Cons e acc) = e + acc

lst :: Fix (ListF Int)
lst = Fix $ Cons 2 (Fix $ Cons 3 (Fix $ Cons 4 (Fix Nil)))

main = do
  print $ (cata algSum) lst
  print $ foldr (\e acc -> e + acc) 0 [2, 3, 4]
```


## Conclusion

- Just like recursive functions are defined as fixed points of regular functions, recursive (nested) data structures can be defined as fixed points of regular type constructors.

- Functors are interesting type constructors because they give rise to nested data structures that support recursive evaluation (generalized folding).

- An *f-algebra* is defined by a functor `f`, a carrier type `a`, and a function `f a -> a`.

- There is one *initial algebra* that maps into all algebras defined over a given functor. This algebra's carrier type is the fix point of the functor in question.

- The unique mapping between the initial algebra and any other algebra over the same functor is generated by a *catamorphism*.

- Catamophism takes a simple algebra and creates a *recursive evaluator for a nested data structure* (the fix point of the functor in question). This is a generalization of list folding to arbitrary recursive data structures.


## Bibliography

- `Fixing GADTs` by Tim Philip Williams
  http://www.timphilipwilliams.com/posts/2013-01-16-fixing-gadts.html

- `Advanced Functional Programming`, Tim Sheard's course notes
  http://web.cecs.pdx.edu/~sheard/course/AdvancedFP/notes/CoAlgebras/Code.html

- `Functional Programming with Bananas, Lenses, Envelopes, and Barbed Wire` by Erik Meijer, Maarten Fokkinga, and Ross Paterson.
  http://research.microsoft.com/en-us/um/people/emeijer/Papers/fpca91.pdf

- `Recursive types for free!` by Philip Wadler
  http://homepages.inf.ed.ac.uk/wadler/papers/free-rectypes/free-rectypes.txt

- `Catamorphisms` in Haskell Wiki
  http://www.haskell.org/haskellwiki/Catamorphisms
