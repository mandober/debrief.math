# Prenex normal form

A formula of the predicate calculus is in **prenex normal form** (PNF) if it is written as a string of quantifiers and bound variables, called the *prefix*, followed by a quantifier-free part, called the *matrix*.

```js
∀x ∃y ∀z (ϕ(y) ⋁ (ψ(z) ⟶ ρ(x)))
└─┬───┘└────────────────┬────┘
prefix                matrix
```

- prefix: quantifiers that bind free vars
- matrix: quantifier-free part

## Conversion to prenex form

Every first-order formula is logically equivalent (in classical logic) to some formula in prenex normal form. There are several conversion rules that can be recursively applied to convert a formula to prenex normal form. The rules depend on which logical connectives appear in the formula.


```js
// Conjunction and Disjunction

(∀x.ϕ) ⋀ ψ ≡ ∀x(ϕ ⋀ ψ)  if ∃x.⟙                           // ∀-∧
(∀x.ϕ) ⋁ ψ ≡ ∀x(ϕ ⋁ ψ)                                    // ∀-∨

(∃x.ϕ) ⋀ ψ ≡ ∃x(ϕ ⋀ ψ)                                    // ∃-∧
(∃x.ϕ) ⋁ ψ ≡ ∃x(ϕ ⋁ ψ)  if (∃x.⟙) ⋀ x ∉ FV(ψ) (²)        // ∃-∨

  (²) x ∈ FV(ψ) -> ∃x͛.ϕ[x := x͛] // extra condition for ∃xists


// Negation
¬∀x.ϕ ≡ ∃x.¬ϕ
¬∃x.ϕ ≡ ∀x.¬ϕ


// Implication
∀x.ϕ ⟶ ψ ≡ ∃x(ϕ ⟶ ψ)
∃x.ϕ ⟶ ψ ≡ ∀x(ϕ ⟶ ψ)  if ∃x.⟙

ϕ ⟶ ∀x.ψ ≡ ∀x(ϕ ⟶ ψ)
ϕ ⟶ ∃x.ψ ≡ ∃x(ϕ ⟶ ψ)  if ∃x.⟙
