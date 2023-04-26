# Axiom of powerset

By definition a set z is a subset of a set x iff every element of z is also an element of x:

∀z ∀x (z ⊆ x -> ∀q(q ∈ z -> q ∈ x))

> The Axiom of Power Set states that for any set x, there is a set y that contains every subset of x.

∀x ∃y (∀z (z ⊆ x -> z ∈ y))

The axiom schema of specification is then used to define the power set `P(x)` as the subset of such a `y` containing the subsets of `x` exactly:

`P(x) = { z ∈ y | z ⊆ x }`


Axioms 1-8 define ZF. Alternative forms of these axioms are often encountered, some of which are listed in Jech (2003). Some ZF axiomatizations include an axiom asserting that the empty set exists. The axioms of pairing, union, replacement, and power set are often stated so that the members of the set x whose existence is being asserted are just those sets which the axiom asserts x must contain.
