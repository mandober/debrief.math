# Axioms of ZFC

1. Axiom of Extensionality:     
  `∀a ∀b (∀x (x ∈ a ⟺ x ∈ b) ⟺ (a = b))`

2. Axiom of Regularity:    
  `∀x (x ≠ ∅ -> ∃y((y ∈ x) ⋀ (y ⋂ x = ∅)))`

3. Axiom Schema of Specification:     
  `∀(w₁ … wₙ) ∀a (∃b (∀x (x ∈ b -> (x ∈ a ⋀ φ(x, w₁, …, wₙ, a)))))`

4. Axiom of Pairing:    
  `∀x ∀y ∃p ((x ∈ p ⋀ x ⊆ p) ⋁ (y ∈ p ⋀ y ⊆ p))`

5. Axiom of Union:    
  `∀𝓕 ∃a ∀y ∀x (x ∈ y ⋀ y ∈ 𝓕 -> x ∈ a)`

6. Axiom Schema of Replacement:   
  `∀a ∀(w₁ … wₙ) ∀x ((x ∈ a -> !∃y.ϕ) -> ∃b ∀x (x ∈ a -> ∃y (y ∈ b ⋀ ϕ)))`

7. Axiom of Infinity:   
  `∃x ∃e (∀z (z ∉ e) ⋀ (e ∈ x) ⋀ ∀y (y ∈ x -> (Sy ∈ x)))`

8. Axiom of Powerset:    
  `∀z ∀x (z ⊆ x -> ∀q (q ∈ z -> q ∈ x))`

9. Well-Ordering Theorem:   
  `∀x ∃R (R 𝙬𝙚𝙡𝙡-𝙤𝙧𝙙𝙚𝙧𝙨 x)`

10. Axiom of Choice
