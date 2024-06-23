# Lattice

Given a poset `(S, ≤)` and `X ⊆ S`
- `u` is an upper bound of X:     `∀x ∈ X. x ≤ u`
- `u` is the LUB of X if also: `∀s₁s₂ ∈ S. s₁ ≤ s₂ ⇒ u ≤ s₂`
- `v` is a lower bound of X:      `∀x ∈ X. v ≤ x`
- `v` is the GLB of X if also: `∀s₁s₂ ∈ S. s₁ ≤ s₂ ⇒ s₁ ≤ v`

```
┌┈┈┈┈┈┈┈┈┈┈┈┬ s₂          upper bound
┊           ┼ u″        upper bound
┊           ┼ u′      upper bound
┊   ┌┈┈┈┈┈┈┈┴ u     least upper bound, supremum
┊   ┊       ●         maximum (and maxima)
┊   ┊     ●   ●
┊   ┊   ●   ●   ●
S   X     ●   ●
┊   ┊       ●
┊   ┊     ●   ●
┊   ┊   ●   ●   ●      minima (but no minimum element)
┊   └┈┈┈┈┈┈┈┬ v     greatest lower bound, infimum
┊           ┼ v′      lower bound
┊           ┼ v″        lower bound
└┈┈┈┈┈┈┈┈┈┈┈┴ s₁          lower bound
```


For a poset `(S, ≤)`, `x` is the **least upper bound** of `X ⊆ S`
- if it is an *upper bound*, `∀x ∈ X. x ≤ u`
- and the least one at that, `∀xy ∈ S. x ≤ y ⇒ u ≤ y`

An upper bound of a set is an element that is bigger then everything else in the set. This upper bound need not be in the set - `u` may be in `S` or not. The least upper bound (LUB) is also called *supremum*.

For `X ⊆ S`, `v` is a *lower bound* for `X`, if `∀x ∈ X. v ≤ x`. Note that `v` may possibly be outside `X`, but it still lower-bounds the set `X`.

If `v` is additionally greater then any other lower bound then `v` is the **greatest lower bound** (GLB) or *infimum*. That is, if `v` satisfies:   
`∀xy ∈ S. x ≤ y ⇒ x ≤ v`.

LUB and GLB may or may not exist.

**Semi-lattice**: a poset with joins (or meets).

**Complete lattice**: a poset with all joins (least upper bounds) and, hence, also all meets (greatest lower bounds).

Complete lattice:
```
● ┈┈┈┈┈┈┈→ ● ┈┈┈┈┈┈┈→ ● ┈┈┈┈┈┈┈→ ●
↑          ↑          ↑          ↑
┆          ┆          ┆          ┆
┆          ┆          ┆          ┆
● ┈┈┈┈┈┈┈→ ● ┈┈┈┈┈┈┈→ ● ┈┈┈┈┈┈┈→ ●
↑          ↑          ↑          ↑
┆          ┆          ┆          ┆
┆          ┆          ┆          ┆
● ┈┈┈┈┈┈┈→ ● ┈┈┈┈┈┈┈→ ● ┈┈┈┈┈┈┈→ ●
↑          ↑          ↑          ↑
┆          ┆          ┆          ┆
┆          ┆          ┆          ┆
● ┈┈┈┈┈┈┈→ ● ┈┈┈┈┈┈┈→ ● ┈┈┈┈┈┈┈→ ●
```

Complete lattices are "dualisable" structures: reversing the arrows and we get another complete lattice. Similarly, statements on complete lattices can be dualised.

Given a function `F` on a complete lattice:
- `F` is *monotone* if `∀xy. x ≤ y ⇒ F x ≤ F y`
- `x` is a *pre-fixpoint*  of `F` if `F x ≤ x`; dually
- `x` is a *post-fixpoint* of `F` if `x ≤ F x`
- `x` is a *fixpoint* of `F` if `F x = x` (both a pre- and post-fixpoint)
- set of fixpoints of `F` may have
  - a least element, *the least fixpoint*, and
  - a greatest element, *the greatest fixpoint*

**Fixed-point Theorem**: if `F : 𝒫(X) → 𝒫(X)` is monotone, then
- lfp(F) = ⋂{T | F(T) ⊆ T}
- gfp(F) = ⋃{T | T ⊆ F(T)}
the meet of the pre-fixed points, the join of the post-fixed points.

The theorem actually says more: the set of fixed points is itself a complete lattice, and the same for the sets of pre-fixed points and post-fixed points.
