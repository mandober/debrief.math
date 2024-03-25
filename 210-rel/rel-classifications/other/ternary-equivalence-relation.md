# Ternary equivalence relation

https://en.wikipedia.org/wiki/Ternary_equivalence_relation

A ternary equivalence relation is a kind of ternary relation analogous to a binary equivalence relation.

A ternary equivalence relation is symmetric, reflexive, and transitive.

The classic example is the relation of *collinearity* among three points in Euclidean space.

In an abstract set, a ternary equivalence relation determines a collection of equivalence classes or pencils that form a linear space in the sense of incidence geometry. In the same way, a binary equivalence relation on a set determines a partition.

## Definition

A ternary equivalence relation on a set `X` is a relation `E ⊂ X³`, written `[a, b, c]`, that satisfies the following axioms:

- Reflexivity: `[a, b, b]`.   
  Equivalently, if a, b, c are not all distinct, then `[a, b, c]`.

- Symmetry:      `[a, b, c] -> [b, c, a]  ∧  [c, b, a]`.    
  Therefore also `[a, c, b]`, `[b, a, c]` , `[c, a, b]`

- Transitivity: `a ≠ b ∧ [a, b, c] ∧ [a, b, d] -> [b, c, d]`.    
  Therefore                                 also `[a, c, d]`
