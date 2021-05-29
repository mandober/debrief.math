# F-Algebra

https://en.wikipedia.org/wiki/F-algebra

F-algebras generalize the notion of algebraic structure. Rewriting the algebraic laws in terms of morphisms eliminates all references to quantified elements from the axioms, and these algebraic laws may then be glued together in terms of a single *functor `F`, the signature*.

F-algebras can also be used to represent data structures used in programming, such as lists and trees.

The main related concepts are *initial F-algebras* which may serve to encapsulate the induction principle, and the dual construction *F-coalgebras*.



## F-Algebra

https://www.schoolofhaskell.com/user/bartosz/understanding-algebras



```hs
type Algebra f a = f a -> a
```


Abstract algebra treats symbols as elements of a vector space: they can be multiplied by scalars and added to each other. But what makes algebras stand appart from linear spaces is the presence of vector multiplication: a bilinear product of vectors whose result is another vector (as opposed to inner product, which produces a scalar). Complex numbers, for instance, can be described as 2-d vectors, whose components are the real and the imaginary parts.

But nothing prepares you for this definition of F-algebra from the package `category-extras-0.53.0`: algebras, coalgebras, bialgebras, and dialgebras and their (co)monadic variants (https://hackage.haskell.org/package/category-extras-0.53.0/docs/Control-Functor-Algebra.html) by E.Kmett

```hs
type Algebra f a = f a -> a
```

In this post I will try to bridge the gap between traditional algebras and more powerful F-algebras. F-algebras reduce the notion of an algebra to the bare minimum. It turns out that the 3 basic ingredients of an algebra are: a functor, a type, and a function. In particular I will explain a very general way of evaluating arbitrary expressions using *catamorphisms*, which reduces to `foldr` when applied to lists, which can also be considered simple F-algebras.

## The Essence of Algebra

There are two really essential aspects of an algebra:
1. The ability to form expressions
2. The ability to evaluate these expressions

### The Essence of Expression

The standard way of generating expressions is to use grammars. Here's an example of a grammar in Haskell:

```hs
data Expr             data ExprF a
  = Const Int            = Const Int
  | Add Expr Expr        | Add a a
  | Mul Expr Expr        | Mul a a
```

This grammar is defined recursively, but recursion can be abstracted away to uncover the real primitives behind expressions. The trick is to *define a non-recursive function and then find its fixed point*.

Since we're dealing with a data type, we need to define a type function, i.e. we need to a type ctor. First, we add a type variable, `a`, and then replace all the recursive calls with it; so, we're replacing all `Expr` on the RHS with `a`, thereby obtaining the non-recursive precursor of the grammar (F in `ExprF` stands for functor).

The recursion of `Expr` can be restored by repeatedly applying `ExprF` to itself, e.g. `ExprF (... (ExprF a)...)`. The more times we perform self-application of `ExprF`, the deeper the trees we generate. After a while, we should reach a fixpoint, after which applying `ExprF` to itself makes no difference. In Haskell, we express the fix point of a type ctor `f` with:

```hs
newtype Fix f = Fix { unFix :: f (Fix f) }

Fix   :: f (Fix f) -> Fix f  -- remove a rec layer
unFix :: Fix f -> f (Fix f)  -- add a rec layer
```

`Fix f` is the type obtained by applying `f` to itself - it's a fixpoint of `f` (`Fix` is also called `Mu`). The single generic recursive type `Fix` allows us to restore recursion of many other non-recursive type ctors.

The `Fix` data ctor is a function that takes an element of type `f (Fix f)`, producing a `Fix f`, as if peeling off one layer of recursion.

Now, we can redefine the `Expr` as a fixed point of the `ExprF`:

```hs
type Expr = Fix ExprF
```

The type `Fix ExprF`, although seemingly strange, is actually inhabited: there is one ctor of `ExprF` that doesn't depend on `a` - `Const Int`. Thank to it, we can bootstrap ourselves since we can always create a leaf `Expr`. And once we have that ability, we can create more and more complex values using the other two constructors of `ExprF`.

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

### The Essence of Evaluation

Evaluation is a recipe for extracting a single value from an expression. In order to evaluate expressions which are defined recursively, the evaluation has to proceed recursively as well.

Recursion can be abstracted away again. We need an evaluation strategy for
- each top-level construct: `alg` is the non-recursive top-level evaluator
- evaluating its children: `eval` the recursive evaluator

Both `alg` and `eval` return values of the same type, `a`.

First, we need to be able to map `eval` over the children of an expression, so we need a functor instance for `ExprF`.

```hs
instance Functor ExprF where
    fmap :: (a -> b) -> ExprF a -> ExprF b
    fmap eval (Const i) = Const i
    fmap eval (left `Add` right) = (eval left) `Add` (eval right)
    fmap eval (left `Mul` right) = (eval left) `Mul` (eval right)
```

An F-algebra is built atop functor, any functor. Strictly speaking, an endofunctor, that is, a functor that maps a category into itself. In our framework, the category in our focus is `Hask`, which is a category (overlooking a few things) with Haskell types as objects and Haskell functions as morphisms.

Now suppose we know how to evaluate all the children of `Add` and `Mul` in an `Expr`, giving us values of some type `a`. All that's left is to evaluate `Add a a` and `Mul a a` in `ExprF a` (we also need to evaluate `Const Int`, but that doesn't involve recursion). Here's an example of such an evaluator that produces Ints:

```hs
alg :: ExprF Int -> Int
alg (Const i)   = i
alg (x `Add` y) = x + y
alg (x `Mul` y) = x * y
```

What I have done here is to pick one particular type, Int, as my evaluation target. This type is called *the carrier type of the algebra*. I then defined a function `alg` from the image of `Int` under the functor `ExprF` back to `Int`.

In order to show that a carrier type is arbitrary, let's define another evaluator whose evaluation target is a string:

```hs
algs :: ExprF String -> String
algs (Const i)   = [chr (ord 'a' + i)]
algs (x `Add` y) = x ++ y
algs (x `Mul` y) = concat [[a, b] | a <- x, b <- y]
```

### F-Algebras

We are now ready to define F-algebras in the most general terms. First I'll use the language of category theory and then quickly translate it to Haskell.

An F-algebra consists of:
- an endofunctor `𝓕` in a category 𝕮
- an object `𝓐` in a category 𝕮
- a morphism from 𝓕(𝓐) to 𝓐, `𝓕(𝓐) -> 𝓐`

An F-algebra in Haskell is defined by
- a functor `f` (in the category 𝓗𝓪𝓼𝓴)
- a carrier type `a` (in the category 𝓗𝓪𝓼𝓴)
- a function `f a -> a`

And that exactly is the definition of an algebra mentioned at the beginning of this article (from the package `category-extras-0.53.0`):

```hs
type Algebra f a = f a -> a
```

For a given functor `f` and a carrier type `a`, the *algebra* is defined by specifying a function `f a -> a`. Sometimes, this function is also referred to as an algebra.

In the code above, the algebra is
- the `f` functor as `ExprF`
- the `a` carrier type as `Int`
- the `f a -> a` function `alg :: Algebra ExprF Int`

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

The only thing that's still missing is the definition of the function `eval`, which evaluates the children of an expression. It turns out this function can be defined in a very general form, but for that we need to familiarize ourselves with the notion of *initial algebra*.

## Initial Algebras

There are many algebras based on a given functor, but there is one algebra that binds them all - *the initial algebra*. In fact you've already seen elements of it with the Fix type function:

```hs
newtype Fix f = Fix (f (Fix f))
```

Given any functor `f`, it defines a new, unique, type `Fix f`. We'll now lift ourselves by the bootstraps by using this type as a carrier in the definition of another algebra. This turns out to be our initial algebra.

First, let's go back to our example and, instead of using `Int` or `String`, use `Fix ExprF` as the carrier type:

```hs
type ExprInitAlg = Algebra ExprF (Fix ExprF)
```

We have the functor and the carrier type, and to complete the triple we need to define the function with the following signature:

```hs
ex_init_alg :: ExprF (Fix ExprF) -> Fix ExprF
```

But we already have a function of this type - it's the `Fix` data ctor:

```hs
ex_init_alg = Fix
```

Replace `f` with `ExprF` in the definition of `Fix` to see that the type signatures match.

```hs
type Fix f = f     (Fix f)
type Fix f = ExprF (Fix ExprF)

newtype Fix f = Fix (f     (Fix f))
newtype Fix f = Fix (ExprF (Fix ExprF))

-- :t Fix
Fix ::  f     (Fix f)     -> Fix f
Fix ::  ExprF (Fix ExprF) -> Fix ExprF

ex_init_alg :: f     a           -> a
ex_init_alg :: ExprF (Fix ExprF) -> Fix ExprF
ex_init_alg = Fix
```

But wait! What does this "evaluator" evaluate? Given `ExprF Expr` it produces an `Expr`.

```hs
-- given f a, i.e. ExprF (Fix ExprF)
ex1 :: ExprF (Fix ExprF)
ex1 =       Add (Fix $ Const 2) (Fix $ Const 3)
ex2 = Fix $ Add (Fix $ Const 2) (Fix $ Const 3)
ex2 :: Fix ExprF
-- it returns 'a' i.e. produces an (Fix ExprF)
```

This evaluator doesn't reduce anything like the evaluators we've been using so far. It is not lossy. It preserves all the information passed to it as input. In comparison, all other evaluators potentially lose some information. They return some kind of summary of the information encoded in the data structure. In this sense, the algebra we have just defined is *at least as powerful as all other algebras based on the same functor*. That's why it's called the initial algebra.

The word "initial" has a special meaning in the category theory:

> The initial algebra has the property that there exists a unique homomorphism from it to any other algebra based on the same functor.

A homomorphism is a mapping that preserves structure. In the case of algebras, a homomorphism has to preserve algebraic structure. An algebra consists of a functor, a carrier type, and an evaluator function. Since we are keeping the functor fixed, we only need to map carrier types and evaluators.

In fact, a homomorphism of algebras is fully specified by a function that maps one carrier to another while obeying a certain set of properties. Since the carrier of the initial algebra is `Fix f`, we need a function:

```hs
g :: Fix f -> a
```

where `a` is the carrier for the other algebra. That algebra has an evaluator `alg` with the signature:

```hs
alg :: f a -> a
```
