# Set Theory :: Summary

- Membership relation `∈`
  - a binary relation between an object and set, `x ∈ a`
  - a proposition, so `x ∈ A` may be true or false
  - not-element,         `∉`:   x ∉ A  ≡  ¬(x ∈ A)
  - reverse-element,     `∋`:   A ∋ x  ≡    x ∈ A
  - reverse-not-element, `∌`:   A ∌ x  ≡  ¬(x ∈ A)

- Subset (inclusion) relation
  - subset,          `⊆`:  ∀A ∀B (∀x (x ∈ A ⇒ x ∈ B) ⇒ A ⊆ B)
    - subset,        `⊆`: (x ∈ A ⇒ x ∈ B) ⇒ A ⊆ B
    - proper subset, `⊆`: ((x ∈ A ⇒ x ∈ B) ⋀ A ≠ B) ⇒ A ⊂ B
    - `⊈`: A ⊈ B

  - proper subset, `⊂`:  ∀A ∀B (∀x ((x ∈ A ⇒ x ∈ B) ⋀ A ≠ B) ⇒ A ⊂ B)
    - ∀A ∀B ((A ⊆ B ⋀ A ≠ B) ⇔ A ⊂ B)
    - ∀A ∀B ((A ⊆ B ⋀ A ≠ B) ⇔ B ⊃ A)

- Equality of sets
  - ∀A ∀B (∀x (x ∈ A ⇔ x ∈ B) ⇔ A = B)
  - ∀A ∀B ((A ⊆ B ⋀ B ⊆ A) ⇔ A = B)
- A set is uniquely determined by its elements


⊂ ⊄ ⊃ ⊅
⊆ ⊈ ⊇ ⊉
