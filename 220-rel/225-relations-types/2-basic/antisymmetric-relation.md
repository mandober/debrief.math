# Antisymmetric relation

https://en.wikipedia.org/wiki/Antisymmetric_relation

A symmetric relation `R` on a set `A` is a relation where any two elements `a` and `b` in `A`, related in one direction, are also related in the other direction, `aRb ⟺ bRa`, including the equal elements as well.

So if `(1,2) ∈ R` then `(2,1)` better be in R as well. And if `(1,1) ∈ R` then `(1,1)` is already in `R`.



The opposite of a symmetric relation is an asymmetric relation which allows relation between ant two elements in one direction only, even if the two elements are the same.



* An antisymmetric relation is a relation where no two *elements* are related in both directions unless they are equal, `¬(aRb) ⋁ ¬(bRa) ⋁ (a = b)`

* An antisymmetric relation is a relation where no two *distinct elements* are related in both directions, `a ≠ b -> aRb ⊕ bRa`

a ≠ b -> (aRb ⋁ bRa) ⋀ ¬(aRb ⋀ bRa)
a ≠ b -> aRb ⊕ bRa


`R` is antisymmetric iff `(aRb ⋀ bRa) -> a = b`

    aRb ⋁ bRa ⋁ a = b

   (aRb ⋀ bRa) → a = b
= ¬(aRb ⋀ bRa) ⋁ a = b
= ¬aRb ⋁ ¬bRa ⋁ a = b
