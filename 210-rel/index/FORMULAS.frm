# Formulas

Relations (~) on A
- Atomic (simple) relations
  - Reflexivity-based
    - Reflexive
      - reflexive             ∀x ∈ A. x ~ x
      - non-reflexive         ∃x ∈ A. x ≁ x
    - Irreflexive
      - irreflexive           ∀x ∈ A. x ≁ x
      - non-irreflexive       ∃x ∈ A. x ~ x
    - Coreflexive
      - coreflexive:          ∀x∀y ∈ A. x ~ y ⇒ x = y
      - non-coreflexive:      ¬(∀x∀y ∈ A. x ~ y ⇒ x = y)
    - Quasireflexive
      - left quasireflexive:      ∀xy ∈ A. x ~ y ⇒ x ~ x
      - non-left quasireflexive:  ¬(∀xy ∈ A. x ~ y ⇒ x ~ x)
      - right quasireflexive:     ∀xy ∈ A. x ~ y ⇒ y ~ y
      - non-right quasireflexive: ¬(∀xy ∈ A. x ~ y ⇒ y ~ y)
      - quasireflexive:           ∀xy ∈ X. x ~ y ⇒ (x ~ x ∧ y ~ y)
      - non-quasireflexive:       ¬(∀xy ∈ X. x ~ y ⇒ (x ~ x ∧ y ~ y))








- identity:         ∀x∀y ∈ A. x~y ⇒ x=y
- trichotomous:     ∀xy. x~y ∨ y~x ∨ x=y
- left-unique, injective:                         `∀xxʹy. x~y ∧ xʹ~y ⇒ x = xʹ`
- right-unique, functional, univalent,partial fn: `∀xyyʹ. x~y ∧ x~yʹ ⇒ y = yʹ`
- right-total: ∀x.∃y.xRy
- left-total : ∀y.∃x.xRy


EQ = { (x,y) | ∀xy ∈ ℕ. x = y } = { (x,x) | ∀x ∈ ℕ }
LT = { (x,y) | ∀xy ∈ ℕ. x < y }
LE = { (x,y) | ∀xy ∈ ℕ. x ≤ y }
GT = { (x,y) | ∀xy ∈ ℕ. x > y }
GE = { (x,y) | ∀xy ∈ ℕ. x ≥ y }
συ = { (x,y) | ∀xy ∈ ℕ. y = x+1 } = { (x,x+1) | ∀x ∈ ℕ }



Complicated relations on 
- set-like (local): `∀x ∈ X`, the class of all `y` s.t. `yRx` is a set

Compoud relations on A
- Identity is reflexivity + coreflexivity ?


Relation
- Any relation between two sets A and B is a subset of their product, R ⊆ A×B, or, equivalently, an element of the powerset of their product, R ∈ 𝒫(A×B)
- The number of all possible relations from A to B is `2ⁿᵐ`
- Any relation on a set A is a subset of the Cartesian product, R ⊆ A×A, or, equivalently, an element of the powerset of the Cartesian product, R ∈ 𝒫(A×A)
- The number of all possible relations on A is `2ⁿⁿ`


Number of all possible relations on A
- `2ⁿⁿ`, of which
  - 1 × empty relation, ∅ᴀ
  - 1 × identity relation, Iᴀ
  - 1 × total relation, 𝒰ᴀ
  - reflexive: `2ⁿ⁽ⁿ⁻¹⁾` (including identity relation)
  - symmetric: 
  - transitive: ? (open quastion in mathematics)
  - functions A → A, |Aᴬ| = `nⁿ`
