# Predicate Logic

*Property*: predicate that asserts a certain property.

Predicate `P` meaning "is-even" and ranging over the integers:   
`∀x ∈ ℤ. (x ÷ 2 = 0) -> E(x)`

is, actually, a biconditional (iff) because the inverse also holds:   
`∀x ∈ ℤ. (x ÷ 2 = 0) <-> E(x)`

also, the first part, `∀x ∈ ℤ`, is a shorthand for `∀x. x ∈ ℤ`

- shorthand `∀x ∈ S. P(x)`, expanded `∀x. x ∈ S -> P(x)`
- shorthand `∃x ∈ S. P(x)`, expanded `∀x. x ∈ S ∧ P(x)`
