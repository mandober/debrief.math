# Relations

- A binary relation is a directed association between two sets.
- Heterogeneous binary relation `R ⊆ A×B` or `R ∈ 𝒫(A×B)`
- Homogeneous binary relation `R ⊆ A×A` or `R ⊆ A²` or `R ∈ 𝒫(A²)`
- homogeneity of relations is important for it means, being the same set, both sets have the same number of elements.
- finiteness of sets also restricts some relations, e.g. a left-total injective rel on a finite set must be right-total as well, and thus also a function, and a bijective function at that. Infinite sets can escape this, e.g. successor on ℕ is injective but not bijective (since no number has 0 as successor, 0 in the right set ℕ remains unmapped - even though the entire set ℕ participates in this relation - it is left-total).

- `suc : ℕ → ℕ`, `pred : ℕ → ℕ`
- injective
- non-bijective

    suc x ≠ 0        pred   0 = undefined
    suc 0 = 1        pred   1 = 0
    suc 1 = 2        pred   2 = 1
    suc n = n+1      pred n+1 = n

- ∀nm ∈ ℕ. S n = S m ⇒ n = m
- ∀nm ∈ ℕ. n = m ⇒ S n = S m
- ∀n ∈ ℕ. S n ≠ 0

The `pred` function is an injection
and usually
  `pred 0 = undefined`
because if we allow
  `pred 0 = 0` (!)
then we have
  pred 0 = 0
  pred 1 = 0
so we get
  `pred 0 = pred 1` ⇒ `0 = 1` (!)
injectivity:
  f : A -> B
  ∀x₁x₂ ∈ A. `f x₁ = f x₂` ⇒ `x₁ = x₂`
Thus, either `pred` is not injective or 0 = 1.
