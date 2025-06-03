

bijection

f : A → B
f(x) = y

- `∀x ∈ A. ∃!y ∈ B. f(x) = y` general function

- `∀x ∈ A. ∃y ∈ B. f x = y` general functions

- `∀x₁x₂ ∈ A. f(x₁) = f(x₂) ⇒ x₁ = x₂`                 right-uniqueness
- `∀y ∈ B. ∃x₁x₂ ∈ A. f(x₁) = y ∧ f(x₂) = y ⇒ x₁ = x₂` injection property

- `∀x₁x₂ ∈ A. ∃y ∈ B. f(x₁) = y ∧ f(x₂) = y ⇒ x₁ = x₂` right-unique property

∀x ∈ A ⇒ x ∈ f

- relation `R ⊆ A×B` defined by `R = { (x,y) | x ∈ A, b ∈ B }`
- full relation `Rᶠ = A×B` defined by `R = { (x,y) | ∀x ∈ A. ∀b ∈ B }`

A×B = { (x, y) | x ∈ A, b ∈ B }

```js
// Ordered pair

// Cartesian product

```

`∀x ∈ A. ∀y ∈ B. (x, y) ∈ A×B`

`∀x ∈ A. ∀b ∈ B. (x, y) ∈ R`

- all functions are relations
- `(x, y) ∈ f` is denoted by `f(x) = y`

∃y(y ∈ B ∧ f(x) = y )

`∃x₁x₂ ∈ A. f(x₁) = f(x₂) ⇒ x₁ = x₂`                 (f.1)

`∀x₁x₂ ∈ A. f(x₁) = f(x₂) ⇒ x₁ = x₂`                 (f.2)


∀x(x ∈ A ⇒ ∃y(y ∈ B ∧ (x, y) ∈ f ∨ (x, y) ∉ f))
