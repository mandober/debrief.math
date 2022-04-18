# Antisymmetric relation

- A relation is symmetric if, for all a,b ∈ A,     `aRb ⟺ bRa`
- A relation is asymmetric if, for all a,b ∈ A,    `aRb ⟺ ¬(bRa)`
- A relation is antisymmetric if, for all a,b ∈ A, `(aRb ⋀ bRa) -> a = b`


Antisymmetry is not the opposite of symmetry. It is possible for a relation to be both symmetric and antisymmetric. It is also possible for a relation to be both non-symmetric and non-antisymmetric.

A good way to understand antisymmetry is to look at its contrapositive:

```
(aRb ⋀ bRa) → (a = b)          implication

equvalent forms:

¬(a = b) → ¬(aRb ⋀ bRa)        contrapositive

 (a ≠ b) → ¬(aRb ⋀ bRa)
 (a ≠ b) → (¬aRb ⋁ ¬bRa)
¬(a ≠ b) ⋁ (¬aRb ⋁ ¬bRa)
    a = b ⋁  ¬aRb ⋁ ¬bRa

a = b ⋁ ¬aRb ⋁ ¬bRa             DNF
```
