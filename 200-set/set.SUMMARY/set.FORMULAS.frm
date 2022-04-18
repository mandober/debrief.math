# First-order set formulas

- empty set, ∅ = { x | ∀x(x ∉ x) }
- set of sets,   { x | ∀x(x ∈ x) } ??
- nonempty set, A ≠ ∅, A = { x | x ∉ x } ??

Cartesian product
- A ⨉ B := { (x,y) | ∀x (x ∈ A -> ∀y(y ∈ B ⋀ (x,y) ∈ A⨉B)) }

Set ops
- A ⋃ B := { x | ∀x ((x ∈ A ⋁ x ∈ B) -> x ∈ A ⋃ B ) }
- A ⋂ B := { x | ∀x ((x ∈ A ⋀ x ∈ B) -> x ∈ A ⋂ B ) }

- A and B are disjoint sets iff A ⋂ B = ∅
