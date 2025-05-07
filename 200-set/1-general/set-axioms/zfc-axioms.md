# ZFC Axioms

1. Extension:                ∀A ∀B   (∀x(x ∈ A ⇔ x ∈ B) ⇔ A = B)
2. Pairing:        {A,B}  := ∀A ∀B ∃M ∀x(x ∈ M ⇔ x = A ⋁ x = B)
3. Union:          ⋃{Aᵢ}  := ∀𝓕 ∃M ∀x(x ∈ M ⇔ ∃A(x ∈ A ⋀ A ∈ 𝓕))
   Union of a pair ⋃{A,B} := ∀A ∀B ∃M ∀x(x ∈ M ⇔ x ∈ A ⋁ x ∈ B)
4. Powerset:                 ∀A ∃M ∀x(x ⊆ A ⇔ x ∈ M)
5. 


## Axioms

- Axiom of Extensionality: `∀A ∀B ∀x(x ∈ A ⇔ x ∈ B) ⇔ A = B`
- Axiom of the Empty Set (derivable from other axioms): `∃ε ∀x(x ∉ ε)`
- Axiom of Pairing: `∀A ∀B ∃P ∀p(p ∈ P ⇔ (p = A ⋁ p = B))`
  P = {A, B}
- Axiom of Powerset: `∀A ∃P ∀x (x ⊆ A ⇔ x ∈ P)`

- Axiom of Union: `∀𝓕 ∃M ∀x(x ∈ M ⇔ ∃A(x ∈ A ⋀ A ∈ 𝓕))`
  A₀ = {a₀}, A₁ = {a₁, a₂}
  𝓕 = {A₀, A₁} = {{a₀}, {a₁, a₂}}
  M = ⋃𝓕 = {a₀, a₁, a₂}
  - defs:
    ∀𝓕 ∃M ∀x(x ∈ M ⇔ ∃A(x ∈ A ⋀ A ∈ 𝓕))
    ∀𝓕 ∃M ∀x ∃A(x ∈ M ⇔ (x ∈ A ⋀ A ∈ 𝓕))
  - (pair union)
      ∀A ∀B ∃M ∀x(x ∈ M ⇔ (x ∈ A ⋁ x ∈ B))
  - (general union)
      ∀A ∃U ∀x (x ∈ U ⇔ ∃a(a ∈ A ⋀ x ∈ a))
    i.e. elements of ⋃{A} are members of members of A
      ∀𝓕 ∃!U ∀x (x ∈ U ⇔ ∃Y(x ∈ Y ⋀ Y ∈ 𝓕))
      ∀𝓕 !∃A ∀x (x ∈ A ⇔ ∃Y(Y ∈ 𝓕 ⋀ x ∈ Y))

- Axiom Schema of Separation: `∀A ∃B ∀x (x ∈ B ⇔ (x ∈ A ⋀ Px))`
  - Subset Axiom Schema
     where P is a predicate
  - equivalently, we can express it using set comprehension:
      S = { x | x ∈ A ⋀ P(x) }
    or
      S = { x | x ∈ A → P(x) }
  - intersection is defined as:   A ⋂ B = { x | x ∈ A ⋀ x ∈ B }
  - union is then re-defined as:  A ⋃ B = { x | x ∈ A ⋁ x ∈ B }
  - difference A-B is defined as: A ∖ B = { x | x ∈ A ⋀ x ∉ B }
  - difference B-A is defined as: B ∖ A = { x | x ∉ A ⋀ x ∈ B }
  - relative diff. is defined as: A ⊕ B = { x | x ∈ A ⊕ x ∈ B }


- Axiom of Powerset: `∀A ∃P ∀x(x ∈ P ⇔ x ⊆ A)`
  ∀z ∀x(z ⊆ x ⇔ ∀q (q ∈ z ⇒ q ∈ x))
  ∀z ∀x(∀q (q ∈ z ⇒ q ∈ x) ⇔ z ⊆ x)

- Axiom of Union:
  ∀𝓕 ∃a ∀y ∀x (x ∈ y ⋀ y ∈ 𝓕 ⇒    x ∈ a)
  ∀𝓕    ∀y ∀x (x ∈ y ⋀ y ∈ 𝓕 ⇒ ∃a(x ∈ a))
  ∀𝓕    ∀y ∀x (x ∈ y → ∃a(y ∈ 𝓕 ⇒ x ∈ a))
  ∀𝓕 !∃A ∀x (x ∈ A ⇔ ∃Y(Y ∈ 𝓕 ⋀ x ∈ Y))

- Axiom of Regularity:
  `∀x(x ≠ ∅ ⇒ ∃y(y ∈ x ⋀ (y ⋂ x = ∅)))`

- Axiom of Infinity:
  `∃x ∃e ∀z(z ∉ e ⋀ e ∈ x ⋀ ∀y(y ∈ x ⇒ φ(y) ∈ x))`
  where `φ` is a predicate

- Axiom Schema of Specification:
  ∀(w₁, …, wₙ) ∀a ∃b ∀x [x ∈ b ⇒ x ∈ a ⋀ φ(x, w₁, …, wₙ, a)]
  where `φ` is a function

- Axiom Schema of Replacement:
  `∀a ∀(w₁ … wₙ) ∀x ((x ∈ a ⇒ !∃y.ϕ) ⇒ ∃b ∀x (x ∈ a ⇒ ∃y (y ∈ b ⋀ ϕ)))`
  where `ϕ` is a function

- Well-Ordering Theorem:
  `∀x ∃R (R 𝙬𝙚𝙡𝙡-𝙤𝙧𝙙𝙚𝙧𝙨 x)`
  where R is a relation
