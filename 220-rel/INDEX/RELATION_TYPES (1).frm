# Relation theory :: Types of Relations :: Index

+ reflexive:             `∀a(a ∈ A ->  aRa)`
+ irreflexive:           `∀a(a ∈ A -> ¬aRa)`
- coreflexive:           `∀a,b ∈ A. aRb -> a = b`
- quasi-reflexive left:  `∀a,b ∈ A. aRb ⋀ a ≠ b -> aRa`
- quasi-reflexive right: `∀a,b ∈ A. aRb ⋀ a ≠ b -> bRb`
- quasi-reflexive:       `∀a,b ∈ A. aRb ⋀ a ≠ b -> aRa ⋀ bRb`

- symmetric:             `∀a,b ∈ A. (a ~ b ⟺ b ~ a)`
- asymmetric:            `∀a,b ∈ A. (a ~ b ⟺ b ≁ a)`
- anisymmetric:          `∀a,b ∈ A. ((a ~ b ⋀ b ≁ a) -> a = b)`
- Transitive:            `∀abc ∈ A. aRb ⋀ bRc -> aRc`
- Intransitive:          `∀abc ∈ A. aRb ⋀ bRc -> ¬aRc`
- Quasi-transitive: `((a ~ b ⋀ b ≁ a) ⋀ (b ~ c ⋀ c ≁ b)) -> (a ~ c ⋀ c ≁ a)`
- connected:          `a ≠ b -> (a ~ b ⋁ b ~ a)`
- strongly-connected:         `(a ~ b ⋁ b ~ a)`
