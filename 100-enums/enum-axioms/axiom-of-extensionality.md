# Axiom of Extensionality

- name: Axiom of Extensionality
- aka : Axiom of Extension
- wikipedia: https://en.wikipedia.org/wiki/Axiom_of_extensionality
- found in: Zermelo-Fraenkel set theory

In axiomatic set theory and the branches of logic, mathematics, and computer science that use it, the axiom of extensionality is one of the axioms of Zermelo-Fraenkel set theory.

* In the formal language of the Zermelo-Fraenkel axioms, the axiom reads (and assumes that equality is a primitive non-logical symbol):

∀A∀B. (∀X. X ∈ A ⟺ X ∈ B) ⟹ A = B

* in latex:

$$\forall A\,\forall B\,(\forall X\,(X\in A\iff X\in B)\implies A=B)$$

* in words:

Given any set `A` and any set `B`, if for every set `X`, `X` is a member of `A` if and only if `X` is a member of `B`, then `A` is equal to `B` (it is not really essential that `X` here be a set, but in ZF everything is).

* meaning: This axiom is about the equality of two sets. It is a roundabout way to say that two sets are equal when they have exactly the same elements.

* essentially: a set is identified by its members.

* rant: That's why all the empty sets are, in fact, one and the same (empty) set. There is just one empty set; it is unique and therefore deserving of the qualifier "the" (*the* empty set). Otherwise, we wouldn't be able to tell apart the empty sets from one another, because it is the elements that are important, that make a set distinguished. Without the elements, a set is nothing.
