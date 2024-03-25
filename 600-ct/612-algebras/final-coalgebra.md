# Final coalgebra

https://en.wikipedia.org/wiki/Initial_algebra#Final_coalgebra

Dual to an intial algebra is the notion of a **final or termianl coalgebra** which is a terminal object in the category of F-coalgebras.

The finality provides a general framework for coinduction and corecursion.

For example, using the functor `1 + (−)`, a *coalgebra* is defined as a set `X` together with a function `f : X → (1 + X)`. Defining such a function amounts to defining a partial function `fʹ: X -> Y` whose domain is formed by those `x ∈ X` for which `f x` belongs to 1.

Such a structure can be viewed as a chain of sets, `X₀` on which `f′` is not defined, `X₁` whose elements map into `X₀` by `f′`, `X₂` whose elements map into `X₁` by `f′`, etc. and `Xω` containing the remaining elements of `X`.

With this in view, the set `ℕ ∪ {ω}` consisting of the set of natural numbers extended with a new element `ω` is the carrier of the final coalgebra in the category, where `f′` is the predecessor function (the inverse of the successor function) on the positive naturals, but acts like the identity on the new element ω: `f(n + 1) = n`, `f ω = ω`. This set `ℕ ∪ {ω}` that is the carrier of the final coalgebra of `1 + (−)` is known as the **set of conatural numbers**.

As another example, consider the functor `1 + N × (−)`. In this case the carrier of the final coalgebra consists of all lists of natural numbers, finite as well as infinite. The operations are a test function testing whether a list is empty, and a deconstruction function defined on non-empty lists returning a pair consisting of the head and the tail of the input list.

Theorems
- Initial algebras are minimal (i.e. have no proper subalgebra)
- Final coalgebras are simple (i.e. have no proper quotients)


## In CS

Dually to least fixed point and inital F-algebra, similar relationship exists between notions of *greatest fixed point* and *terminal F-coalgebra*, with applications to coinductive types. These can be used for allowing potentially infinite objects while maintaining *strong normalization property*.

In the strongly normalizing (each program terminates) "Charity" programming language, coinductive data types can be used for achieving surprising results, e.g. defining lookup constructs to implement such "strong" functions like the Ackermann function.
