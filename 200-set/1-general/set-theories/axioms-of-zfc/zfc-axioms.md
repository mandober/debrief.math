# ZFC Axioms

ZFC axioms
1. `AX`, AxExt, Axiom of Extensionality / Extension
2. `AF`, AxReg, Axiom of Foundation / Regularity
3. `AS`, AxSep, Axiom schema of Separation / Specification / Restricted Compr.
4. `AP`, AxPair, Axiom of Pairing
5. `AU`, AxUni, Axiom of Union
6. `AR`, AxRep, Axiom schema of Replacement / Substitution
7. `AI`, AxInf, Axiom of Infinity
8. `AW`, AxPow, Axiom of Powerset
9. `AC`, AxCho, Axiom of Choice (Well-ordering theorem)


1. Axiom of Extensionality
  - AX, AE, AoE, AoX, Ext, AxExt
  - Axiom of Extension
  - `∀X ∀Y ∀x(x ∈ X ⇔ x ∈ Y) ⇔ X = Y`
  - ∀X ∀Y ∀k(k ∈ X ⇔ k ∈ Y) ⇔ X = Y
  - ∀X ∀Y ∀x(x ∈ X ⇔ x ∈ Y) ⇔ X = Y
  - ∀x ∀y ∀z(z ∈ x ⇔ z ∈ y) ⇔ x = y
  - if two sets (X and Y) have the same elements (x), they are the same, X=Y
  - every set is determined (identified) by its elements

2. Axiom of Foundation
  - Axiom of Regularity
  - AF, AoF, AxFou, Fou, Reg
  - `∀x(x ≠ ∅ ⇒ ∃y(y ∈ x ⋀ y ⋂ x = ∅))`
  - ∀x ∃x ∀k(k ≠ ∅ ⇒ (y ∈ x ⋀ x ⋂ k = ∅))
  - ∀x ∃y ∀k(k ≠ ∅ ⇒ (y ∈ x ⋀ y ⋂ k = ∅))
  - ∀x ∃y ∀z(z ≠ ∅ ⇒ (y ∈ x ⋀ y ⋂ z = ∅))
  - at least one element bottoms-out

3. Axiom schema of Separation
  - AS, AsS, AxSep
  - Axiom schema of Separation
  - Axiom schema of Specification
  - Axiom of Restricted Comprehension
  - `∀x ∃y ∀z(z ∈ y ⇔ (z ∈ x ⋀ φ(z)))`
  - `∀(w₁ … wₙ) ∀a (∃b (∀x (x ∈ b -> (x ∈ a ⋀ φ(x, w₁, …, wₙ, a)))))`
  - P = { x | x ∈ A ⋀ φ(x) }

4. Axiom of Pairing
  - AP, AoP, AxPar
  - `∀x ∀y ∃p ∀z(z ∈ p ⇔ (z = x ⋁ z = y))`
  - ∀X ∀Y ∃M ∀c(c ∈ M ⇔ (c = X ⋁ c = Y))
  - P = { x | x = A ⋁ x = B }

5. Axiom of Union
  - AU, AoU, AxUni
  - `∀𝓕 ∃M ∀x(x ∈ M ⇒ ∃Y(x ∈ Y ⋀ Y ∈ M))`
  - ∀𝓕 ∃a ∀y ∀x(x ∈ y ⋀ y ∈ 𝓕 -> x ∈ a)
  - ∀x ∃p ∀z(z ∈ x ⇒ ∃y(z ∈ y ⋀ y ∈ p))
  - P = { x | x ∈ A ⋁ x ⊆ B }

6. Axiom schema of Replacement
  - AR, AsR, AxRep
  - ∀A(∀x ∈ A. ∃y. φ) ⇒ ∃B(∀x ∈ A. ∃y ∈ B, φ)
  - `∀a ∀(w₁ … wₙ) ∀x ((x ∈ a -> !∃y.ϕ) -> ∃b ∀x (x ∈ a -> ∃y (y ∈ b ⋀ ϕ)))`

7. Axiom of Infinity
  - `∃I ∀x(x ≠ ∅ ⇒ (x ∈ I ⋀ x ⋃ {x} ∈ I))`
  - I = { y | y ≠ ∅ ⋀ y = x ⋃ {x} }
  - `∃x ∃e ∀z(z ∉ e ⋀ e ∈ x ⋀ ∀y(y ∈ x ⇒ φ(y) ∈ x))`

8. Axiom of Powerset
  - `∀x ∃p ∀z(z ⊆ x ⇒ z ∈ p)`
  - ∀z ∀x (z ⊆ x ⇒ ∀q (q ∈ z ⇒ q ∈ x))
  - P = { x | x ⊆ A }
  - P = { x | ∀A(x ⊆ A) }

9. Axiom of Choice (Well-ordering)
  - ∀x ∃R(R well-orders x)
  - P = { x | i ∈ I ⋀ Aᵢ ∈ 𝓕 ⋀ ∃x ∈ Aᵢ }
