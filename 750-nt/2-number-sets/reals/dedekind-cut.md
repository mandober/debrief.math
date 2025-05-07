# Dedekind cut
 
A Dedekind cut `α` is a non-empty subset of ℚ, `α ⊆ ℚ` such that
1. α ≠ ∅ ∧ α ≠ ℚ
2. if `r ∈ α` then `s ∈ α` for all `s < r`
   ∀r ∈ α. x < r ⇒ x ∈ α
3. if `p ∈ α` then there exists `q ∈ α` such that `p < q`

That is,
- (2) If `p` is in the cut then all smaller elements are in the cut too.
- (3) If `p` is in the cut then these exists a bigger element also in the cut.
- Fuck all if we know what `p` is. It marks the cut but there is always a number bigger then `p` in the cut. And all elems smaller then `p` are in the cut. In fact, for any 2 elems somehow determined to be in the cut, one is smaller and the other is bigger (really?), but there is no greatest elem. 
- For every elem in the cut, there is an elem smaller then it.
- For every elem in the cut, there is an elem larger then it (but no greatest).


Again,
1. r ≠ ℚ, r ≠ ∅
2. r is closed downwards. In other words, ∀xy ∈ ℚ. x < y, if y ∈ r then x ∈ r
3. r contains no greatest element. In other words, there is no x ∈ r such that for all y ∈ r, y ≤ x


## Definition

A Dedekind cut is a partition of the rationals ℚ into two subsets `A` and `B` such that
1. `A ≠ ∅`
2. `A ≠ ℚ` (equivalently, B ≠ ∅)
3. If x,y ∈ ℚ, x < y, and y ∈ A, then x ∈ A (A is closed downwards)
  `∀xy ∈ ℚ. x < y ∧ y ∈ A ⇒ x ∈ A`
4. If x ∈ A, then there exists y ∈ A s.t. y > x (A has no greatest element)
  `∀x ∈ A. ∃y ∈ A. y > x`

By omitting the first two requirements, we formally obtain the *extended real number line*.


https://en.wikipedia.org/wiki/Construction_of_the_real_numbers
