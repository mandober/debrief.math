# Set intersection

https://en.wikipedia.org/wiki/Intersection_(set_theory)

In the simple case, **set intersection**, `⋂`, is a binary operation on two sets `A` and `B` that correspond to logical conjunction:

`A ⋂ B = { x | ∀x(x ∈ A ⋀ x ∈ B) }`

Note: We might say that this definition of intersection is a rare example of universal quantification that is not paired with an implication, `∀x(Px -> Qx)`. However, this is not true because we have merely left the implication out; the entire formula is:

`A ⋂ B` := `{ x | ∀x ((x ∈ A ⋀ x ∈ B) -> x ∈ A ⋂ B ) }`

Thus, the intersection between two sets `A` and `B` is defined by a set `C`, such that if an element belongs to both `A` and `B`, then it belongs to the set `C`, that is, to the set that is the intersection of the sets `A` and `B`.
