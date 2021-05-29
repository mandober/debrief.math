# Function definition

- all functions are sets
- all functions are relations
- all functions between two sets are some subset of their dot product
- all functions are sets of ordered pairs
- Identity function is the same as the reflexive relation between two sets (?)

## Definition

A function `f : X -> Y` is defined by a set `f` of ordered pairs `(x, y)` with `x ∈ X`, `y ∈ Y`, such that every element of `X` is the first component of exactly one ordered pair in `f`.

`∀x ∈ X. ∃y ∈ Y. ( ∃z ∈ Y. [ (x, y) ∈ f ∧ (x, z) ∈ f ] -> y = z ∧ y = f(x) )`

If both (x,y) and (x,z) belong to the function set `f` of ordered pairs, then `y` better be equal to `z`, otherwise the described set does not represent a functional relation.

Let X be a domain set and Y a codomain set, then a function f : X -> Y   
`f = { ∀x∃y. (x, y) | x ∈ X ∧ y ∈ Y ∧ y = f(x) }`




## Conditions

(1) Each and every element of the domain (all elements in the domain are engaged) is associated with (2) at most one element of the codomain.

The condition that must always hold for a relation to be considered a function, is the property that a domain element is associated to at most one codomain element. If a domain element is associated with more than one codomain element, that relation would seize to be functional.

But, if a dom element is not associated at all, that relation would still be a function, only it would be demoted from a total (one that covers the entire dom) to a partial function (covers only a subset of the domain).

Thus, as it turns out, the second condition is not that essential after all, as witnessed by partial functions. And even the first condition is sometimes questionable; e.g. with functions such as the square root, `sqrt : ℕ -> ℤ`, meaning that an `x` can be legitimately associated to two distinct elements in ℤ, `sqrt(4) = -2 ∧ sqrt(4) = 2`, thus `{(4,-2),(4,2), ...}`.
