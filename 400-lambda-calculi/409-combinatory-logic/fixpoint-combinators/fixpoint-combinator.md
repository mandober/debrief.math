# Fixpoint combinator

A **fixpoint combinator** in lambda calculus is a lambda term `N` such that for any lambda term `e`, we get

`N e` ~~>ᵦ⃰ `e (N e)`

that is, the lambda term `N e` beta-reduces in one or more steps to the lambda term `e (N e)`.

A fixpoint combinator is usually denoted by `fix`.

Computationally, `fix` behaves as `fix f` ~~>ᵦ⃰ `f (fix f)`.

Fixpoint combinator allows us to represent recursive definition like `a = G a`, where `G` is a lambda term, by a lambda term `a = fix G`.

Turing's fixpoint combinator is `A A`, where
-           A := λx. λy. y (x x y)
- `fix := A A = (λx. λy. y (x x y)) (λx. λy. y (x x y))`

The famous fixpoint combinator in the normal order evaluation setting is `Y`
- `fix = Y := λf. (λx. f (x x)) (λx. f (x x))`

The fixpoint combinator `Z` is derived from `Y` by delaying the evaluation (using thunks) and is used in the applicative order evaluation setting:
- `Z := λf. ( λx. ( λ(). f (x x) () ) ) (λx. λ(). f (x x) ())`


Fixpoints are based on self-application, `ω := λx. x x` (little omega), then big omega is defined as `Ω := ω ω = (λx. x x) (λx. x x)`.
