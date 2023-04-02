# Function fixpoints

## Definition of a fixpoint

A **fixed point** (fixpoint, invariant point) is a property of a function when an input to a function comes back the same as the output. In other words, if a function maps a domain element back to itself, then that element is a fixpoint of that function.

This implies that only *endofunctions*, i.e. functions mapping a set back to itself, can have fixpoints. Equivalently, that only *homogeneous functions* (homogeneous relations), i.e. those having the same type for both domain and codomain, can have fixpoints.

If we name that special element in the function's domain `x₀ ∈ A`, and the function `f : A -> A` (it must be an endofunction), the fixpoint equation is then denoted by `f(x₀) = x₀`.

If `f : A -> A`, then `x₀ ∈ A` is a fixpoint of `f` if `f(x₀) = x₀`.

In a number-theoretic function, a fixpoint is a point whose coordinates are the same, (x₀, x₀).


## Number of fixpoints

A function can have any number of fixpoints.

Not all functions have fixpoints: some functions have none (e.g. `succ`), while some have infinitely many fixpoints (e.g. for `id` each input is a fixpoint). Some functions have a single fixpoint, e.g. the `pred` is often defined as `pred 0 = 0` and `pred (S n) = n`. Some functions have more then one fixpoint, e.g. `fib(0) = 0`, `fib(1) = 1`, `fib(5) = 5`.

## Iteration

Iterating a function `f` on an initial value `x` means applying `f` to `x` and then feeding that result back into `f`, so the second time the `f` is applied to `f x`, the third to `f (f x)`, and so on. This is also called an n-fold of a function and denoted by `fⁿ x`. We can collect all the results in an infinite list, `[x, f x, f (f x), f (f (f x)), …]`, where the first element, `x`, represents a 0-fold. That is, if we restrict the number of iterations by supplying the count as a natural number `n`, then for `n = 0` the list would only contain the initial value `x`; for `n = 1`, it'd contain `[x, f x]`, and so on, and it'd be a finite list with `n` elements.

Iteration usually produces ouputs that are all over the place, but iterating some functions produces a series of outputs that actually converge somewhere. A well-known example is the iteration of `cos` function on 1 as the initial input; after a number of iterations, `cos` will reach its fixpoint.

Once an iterated function hits a fixpoint, its output cannot change anymore - it just keeps on returning that fixpoint. It may be said that an iterated function thus becomes *stable*.

## Fixpoint combinator

Finding the fixpoints of an arbitrary function is hard, even for number-theoretic functions. However, in lambda calculus every function (far cry from number-theoretic functions) has a fixpoint. This seemingly paradoxical discovery was made by Curry. The famous Curry's fixpoint combinator `Y` for the untyped lambda calculus is `Y := λf. (λx. f (x x)) (λx. f (x x))`. But there are other fixpoint combinators, `G`, all with the property `G f = f (G f)`.
