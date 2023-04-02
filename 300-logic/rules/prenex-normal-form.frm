# Prenex normal form

```hs
-- Conjunction and Disjunction

(∀x.ϕ) ⋀ ψ ≡ ∀x(ϕ ⋀ ψ)  if ∃x.⟙                           (∀∧)
(∀x.ϕ) ⋁ ψ ≡ ∀x(ϕ ⋁ ψ)                                    (∀∨)

(∃x.ϕ) ⋀ ψ ≡ ∃x(ϕ ⋀ ψ)                                    (∃∧)
(∃x.ϕ) ⋁ ψ ≡ ∃x(ϕ ⋁ ψ)  if ∃x.⟙ ⋀ x ∉ FV(ψ) ²             (∃∨)

-- if x is free in ψ, then we can just rename it to a fresh name
² x ∈ FV(ψ) -> ∃y.ϕ[x:=y]


-- Negation

¬∀x.ϕ ≡ ∃x.¬ϕ
¬∃x.ϕ ≡ ∀x.¬ϕ


-- Implication

∀x.ϕ ⟶ ψ  ≡  ∃x(ϕ ⟶ ψ)
∃x.ϕ ⟶ ψ  ≡  ∀x(ϕ ⟶ ψ)    if ∃x.⟙

ϕ ⟶ ∀x.ψ  ≡  ∀x(ϕ ⟶ ψ)
ϕ ⟶ ∃x.ψ  ≡  ∃x(ϕ ⟶ ψ)    if ∃x.⟙
```
