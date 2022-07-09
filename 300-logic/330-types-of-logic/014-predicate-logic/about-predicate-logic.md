# Predicate Logic

A **property** is a unary predicate asserting a certain aspect (of the individual, `P(x)`).

Predicate `P` meaning "is-even", and `x` ranging over the integers
- `∀x ∈ ℤ. (x ÷ 2 = 0) ⟶ E(x)`
is actually biconditional (iff) because the inverse also holds
- `∀x ∈ ℤ. (x ÷ 2 = 0) ⟺ E(x)`

Also, the first part, `∀x ∈ ℤ`, is a shorthand for `∀x(x ∈ ℤ)` or, more strictly, for `∀x(P(x))` where `P(x)` is a predicate defined to mean that a variable is a number belonging to the set of integers, `P(x) := x ∈ ℤ`.

Restricted quantification:
- `∀x ∈ S. P(x)` === `∀x. x ∈ S ⟶ P(x)`
- `∃x ∈ S. P(x)` === `∀x. x ∈ S ⋀  P(x)`
