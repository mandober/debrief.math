# Set union

https://en.wikipedia.org/wiki/Union_(set_theory)

In the simple case, **set union**, `⋃`, is a binary operation on two sets `A` and `B` that correspond to logical disjunction:

`A ⋃ B = { x | ∀x(x ∈ A ⋁ x ∈ B) }`

Note: We might say that this definition of union is a rare example of universal quantification that is not paired with an implication, i.e. `∀x(Px -> Qx)`. However, this is not entirely true because we have merely left the implication out - the entire formulas is in fact:

`A ⋃ B` := `{ x | ∀x ((x ∈ A ⋁ x ∈ B) -> x ∈ A ⋃ B ) }`

Thus, the union between two sets `A` and `B` is defined by a set `C`, such that if an element belongs to either `A` or `B`, then it belongs to the set `C`, that is, to the set that is the union of the sets `A` and `B`.
