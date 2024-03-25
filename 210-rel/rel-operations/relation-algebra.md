# Relation Algebra

## Algebraic Operations on Relations

Relations are conceived as subsets `R ⊆ X×Y` of the Cartesian product of the two sets X and Y between which they are defined to hold.




Given two relations of the same type, `R ⊆ X×Y` and `S ⊆ X×Y`, we define
- union,         R ∪ S = { (x, y) ∈ X×Y | xRy ⋁ xSy }
- intersection,  R ∩ S = { (x, y) ∈ X×Y | xRy ⋀ xSy }
- complement,        R̅ = { (x, y) ∈ X×Y | ¬xRy }
- complement,        S̅ = { (x, y) ∈ X×Y | ¬xSy }
- relative diff, R ∖ S = { (x, y) ∈ X×Y |  xRy ⋀ ¬xSy }
- relative diff, S ∖ R = { (x, y) ∈ X×Y | ¬xRy ⋀  xSy }
- null,          E = ∅ = { (x, y) ∈ X×Y | ∀x ∈ X, ∀y ∈ Y, ¬xEy } = ∅
- universal,   U = X×Y = { (x, y) ∈ X×Y | ∀x ∈ X, ∀y ∈ Y,  xUy }
- identity,      I = Δ = { (x, x) ∈ X×X | x ∈ X }

Given a relation `R ⊆ X×Y`, its complement is given relative to the Cartesian product (i.e. relative to the universal relation) `X×Y`.
