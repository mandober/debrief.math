# Lambda Calculus :: Concepts :: Fixpoint combinators

## Fixpoint combinator

>In lambda calculus, a fixpoint combinator is a lambda term `Fix` such that, for any lambda term `f`, we get `Fix f = f (Fix f)`.

In lambda calculus, a *fixpoint combinator* is a lambda term `N`, such that for any lambda term `e`, we get
>`N e` ~~>ᵦ⃰ `e (N e)`
that is, the lambda term `N e` beta-reduces in one or more steps to the lambda term `e (N e)`.


In Haskell (and some other PLs), the fixpoint combinator is denoted by `fix`, which computionally behaves the same, i.e.

>`fix f` ~~>ᵦ⃰ `f (fix f)`

Fixpoint combinators allow us to represent recursive definition like `a = G a`, where `G` is a lambda term, by a lambda term `a = fix G`.

Fixpoints are based on self-application, `ω = λx.xx` (little omega), then big omega is defined as `Ω = ω ω = (λx.xx)(λx.xx)`.



The famous fixpoint combinator in the *normal order evaluation* setting is `Y`

>Y := λf. (λx. f (x x)) (λx. f (x x))

The fixpoint combinator `Z` is derived from `Y` by delaying the evaluation (using thunks) and is used in the *applicative order evaluation* setting:

>Z := λf. ( λx. ( λ(). f (x x) () ) ) (λx. λ(). f (x x) ())

```
Y := λf. (λx.      f (x x)   )
         (λx.      f (x x)   )

Z := λf. (λx. λv. (f (x x)) v)
         (λx. λv. (f (x x)) v)
```

`Z` needs to delay the computation of the inner subexp, so it wraps it in a thunk, `λv. (...) v`, which behaves like IIFE `(() => ...)()`.


**Turing's fixpoint combinator** is `A A`, where `A := λx.λy.y(xxy)`. 
Then `fix = A A`, which is equal to:

```hs
fix = A A = (λx.λy.y(xxy))(λx.λy.y(xxy))

fix e
    = A A e
    = A                   A e
    = (λx. λy. y (x x y)) A e
    =     (λy. y (A A y))   e
    =          e (A A e)
```
