# Conversion to prenex form

```js
// Conjunction
(∀x.ϕ) ⋀ ψ  ⟺  ∀x(ϕ ⋀ ψ)  | and: ∃x.⟙
ϕ ⋀ ∀x.ψ    ⟺  ∀x(ϕ ⋀ ψ)  | and: ∃x.⟙

(∃x.ϕ) ⋀ ψ  ⟺  ∃x(ϕ ⋀ ψ)
ϕ ⋀ ∃x.ψ    ⟺  ∃x(ϕ ⋀ ψ)


// Disjunction
(∃x.ϕ) ⋁ ψ  ⟺  ∃x(ϕ ⋁ ψ)  | and: ∃x.⟙
ϕ ⋁ ∃x.ψ    ⟺  ∀x(ϕ ⋁ ψ)  | and: ∃x.⟙

ϕ ⋁ ∀x.ψ    ⟺  ∀x(ϕ ⋁ ψ)
(∀x.ϕ) ⋁ ψ  ⟺  ∀x(ϕ ⋁ ψ)


// Negation
¬∀x.ϕ === ∃x.¬ϕ                                                 (¬∀)
¬∃x.ϕ === ∀x.¬ϕ                                                 (¬∃)

// Implication
∀x.ϕ ⟶ ψ ≡ ∃x(ϕ ⟶ ψ)                                          (∀→)
∃x.ϕ ⟶ ψ ≡ ∀x(ϕ ⟶ ψ)                    and: ∃x.⟙             (∃→)

ϕ ⟶ ∀x.ψ ≡ ∀x(ϕ ⟶ ψ)                                          (→∀)
ϕ ⟶ ∃x.ψ ≡ ∃x(ϕ ⟶ ψ)                    and: ∃x.⟙             (→∃)


// PROVIDED
// x bound in one formula is not also bound in the other
1) x ∉ FV(ψ) ---> all the above is valid
// otherwise
2) x ∈ FV(ψ) ---> ∃x'.ϕ[x ⟼ x']
```

Every first-order formula in classical logic has a logically equivalent prenex normal form. There are several conversion rules that can be recursively applied to convert a formula to prenex normal form. The rules depend on which logical connectives appear in the formula.
