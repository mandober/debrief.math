# Axiom of Powerset

**Axiom of Powerset** states that for any set `A`, there is a set `M` that contains every subset of `A`:

`∀A ∃M ∀x(x ⊆ A ⇒ x ∈ M)`

---

In the set-builder notation:

`M = { x | x ⊆ A }`


---


By definition, set `A` is a subset of a set `B` (A ⊆ B), iff every element of `A` is an element of `B`, `∀A ∀x(A ⊆ x ⇒ ∀q(q ∈ A ⇒ q ∈ x))`.

Axiom of Powerset states that for any set `A`, there is a set `M` that contains every subset of `A`:

`∀A ∃M ∀x(x ⊆ A -> x ∈ M)`



The Axiom Schema of Specification is then used to define the power set `𝒫(x)` as the subset of such an `y` containing the subsets of `x` exactly:

`P(x) = { z ∈ y | z ⊆ x }`


Axioms 1-8 define ZF. Alternative forms of these axioms are often encountered, some of which are listed in Jech (2003). Some ZF axiomatizations include an axiom asserting that the empty set exists. The axioms of pairing, union, replacement, and power set are often stated so that the members of the set x whose existence is being asserted are just those sets which the axiom asserts x must contain.


∀A ∀x(A ⊆ x ⇒ ∀q(q ∈ A ⇒ q ∈ x))

∀a ∀b ∀x(a ⊆ x ⇒ (b ∈ a ⇒ b ∈ x))

a ⊆ b ⇔ ∀x(x ∈ a ⇒ x ∈ b)

- ∀a∀b(∀x(x ∈ a ⇒ x ∈ b) ⇔ a ⊆ b) subset
- ∀a∀b(∀x(x ∈ a ⇔ x ∈ b) ⇔ a = b) equality
