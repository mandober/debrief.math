# Disjoint sets

* Two sets A and B are disjoint if they have no element in common, A ∩ B = ∅

* However, with more then two sets, e.g. with sets A, B and C, even though their intersection is empty, A ∩ B ∩ C = ∅, the intersection of any two of these sets (any pair of sets) may not be empty, e.g. A ∩ B ≠ ∅.

* **Pair-wise disjoint sets** are sets whose intersection is empty, but also the intersection of any pair of sets is empty as well, i.e. no two sets in that family (collection) have an element in common. So, not only `A ∩ B ∩ C = ∅`, but also `A ∩ B = ∅`, `A ∩ C = ∅`, `B ∩ C = ∅`.

* **Partitioning** a set is an operation that insists that the resulting subsets are pairwise disjoint. Partitioning a set `A` produces subsets `{A₁,A₂,...,Aₙ}` that are pairwise disjoint and `A₁ ∪ A₂ ∪ ... ∪ Aₙ = A`

* |A ∪ B| = |A| + |B| - |A ∩ B| due to possible overlap.
