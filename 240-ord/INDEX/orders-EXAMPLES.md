# Examples

## Infimim and supremum

1. let `F` be an ordered field
2. let `S` be a set
3. such that `S` is a nonempty subset of `F`, `S ⊆ F` and `S ≠ ∅`

## Defs

* The infimum of `S`, if exists denoted by `inf(S)`, is some `m₀ ∈ F` s.t.
  1) `m₀` is a lower bound of `S`
  2) for all lower bounds `m` of `S`, `m₀ >= m`

* The supremum of `S`, if exists denoted by `sup(S)`, is some `n₀ ∈ F` s.t.
  1) `n₀` is an upper bound of `S`
  2) for all upper bounds `n` of `S`, `n₀ <= n`


## Examples

1. `F = ℝ` (or `F = ℚ`), and `S = ℕᐩ` (or `S = ℕᐩ`)
  - infimum of `S = ℕ`  is __0__
  - infimum of `S = ℕᐩ` is __1__
  - supremum of ℕ / ℕᐩ __does not exists__

  Even though 0 is a lower bound for ℕᐩ, 1 is the GLB for ℕᐩ. Similarly, even though -1 is a lower bound for ℕ, 0 is the GLB for ℕ. And all 3 elements are elements of the ordered field, -1,0,1 ∈ F, which is important (need not be elems of ℕ). It is the same whether we are considering `ℕ` as a subset of the ordered field of `ℚ` or `ℝ` (it works with both).


2. `F = ℝ` and `S = ℝ` for `S ⊆ F` so `ℝ ⊆ ℝ`
  - infimum  of `S` __does not exists__
  - supremum of `S` __does not exists__


3. `S = { 1/n | n ∈ ℕᐩ }` so S = { 1, 1/2, 1/3, … }
  - infimum  of `S` is __0__
  - supremum of `S` is __1__
  + the ordered field is pressumably ℝ, `F = ℝ`
  - the elems of `S` start with the greatest number in the set (1), and then they keep decreasing towards 0, but never actualy reach it. That's why 0 is the greatest lower bound - elems can get arbitrarily close to 0, but never 0.
  - the fact that the supremum is in `S` and the infimum is not in `S` is immaterial since the condition (that both are in `F`) is satisfied.


4. `S = { x ∈ ℚ | x² < 2 }`, and `S ⊆ ℝ`
  - infimum  of `S` is __-√2__
  - supremum of `S` is __√2__
  - since `-√2 < x < √2`
  + had F been ℚ, there would be no supremum and infimum
