# Axiom of Pairing

**Axiom of Pairing** states that if `A` and `B` are any two sets, then there exists a set `M` which contains only `A` and `B` as elements.

`∀A ∀B ∃M ∀x(x ∈ M ⇔ x = A ⋁ x = B)`

In set-builder notation (specialized):

`M = { x | x = A ⋁ x = B }`

In set-builder notation (more general):

`M = { x | P(x) ⋁ Q(x) }`, where P(x) means `x = A`, and Q(x) means `x = B`

In set-builder notation (most general):

`M = { x | S(x) }`, where S(x) means `x = A ⋁ x = B` (or maybe `x ∉ x`)




Example:

A = {1,2}
B = {3}
M = {A, B}
M = {{1,2}, {3}}


---






If x and y are sets, then there exists a set which contains x and y as elements.

`∀x∀y∃z((x ∈ z) ⋀ (y ∈ z))`

x = {a,b}
y = {c,d}
p = {x,y} = { {a,b}, {c,d} }



`∀A ∀B ∃M((A ∈ M ⋀ A ⊆ M) ⋁ (B ∈ M ⋀ B ⊆ M))` here A ∈ M doesn't imply A ⊆ M !

∀x ∀y ∃p((x ∈ p ⋀ x ⊆ p) ⋁ (y ∈ p ⋀ y ⊆ p))

∀A ∀B (∃P ((A ∈ P ⋀ A ⊆ P) ⋁ (B ∈ P ⋀ B ⊆ P)))

For all sets X and Y, there is a set C which contains them as its elements. Since X and Y are sets, it means that, besides each being a member of C, each one is also a subset of C.


# Axiom of pairing in ZFC

If `A` and `B` are sets, then there exists a set `P` which contains `A` and `B` as elements:

`∀A ∀B ∃P (∀x(x ∈ P ⇒ x=A ⋁ x=B))`

`∀A ∀B ∃P ∀x(x ∈ P ⇔ x = A ⋁ x = B)`


## The Axiom of pairing in Z and ZF

**The axiom of pairing** is an axiom of Zermelo-Fraenkel set theory that states that two sets are equal (they are the same set) if they contain the same elements, formally: `∀x ∀y ∃z(x ∈ z ⋀ y ∈ z)`



The *axiom schema of specification* must be used to reduce this to a set with exactly these two elements.

The axiom of pairing is part of Zermelo Set Theory.

The axiom of pairing is redundant in Zermelo-Fraenkel Set Theory because it follows from the *axiom schema of replacement*, if we are given a set with at least two elements. The existence of a set with at least two elements is assured by either:
- the *axiom of infinity*
- the *axiom schema of specification* and the *axiom of the power set* applied twice to any set.
