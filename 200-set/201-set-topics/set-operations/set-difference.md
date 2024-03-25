# Set ops :: Difference

Set difference
- relative difference (relative complement)
  - relative difference on A, `A \ B`
  - relative difference on B, `B ∖ A`
- absolute difference, `A Δ B = A\B ⋃ B∖A`

## Relative difference

Relative difference
- corresponds to subtraction
- non-commutative, A ∖ B ≠ B ∖ A
- non-associative, A ∖ (B ∖ C) ≠ (A ∖ B) ∖ C
- A ∖ A = ∅
- A ∖ ∅ = A


## Absolute difference

Absolute difference
- denoted: A Δ B, A ⊖ B, A + B
- defined as:
  - A Δ B = (A \ B) ∪ (B ∖ A)   union of relative differences
  - A Δ B = (A ∪ B) ∖ (A ∩ B)   difference of union and intersection
- commutative: A + B = B + A
- associative: A + (B + C) = (A + B) + C
- A + ∅ = A
- A + A = ∅
- corresponds to addition when the sets are disjoint
  - A ∩ B = ∅ ⇒ |A + B| = |A| + |B|
  - A ∩ B = ∅ ⇒ (A ∖ B = A) ∧ (B ∖ A = B) ⇒ A + B = A ∪ B
- 𝒫(A + B) ≟ 𝒫(A) + 𝒫(AB)
