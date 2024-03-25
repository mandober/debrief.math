# Quasitransitive relation

https://en.wikipedia.org/wiki/Quasitransitive_relation

Relations re transitivity
- transitive
- intransitive
- antitransitive
- quasitransitive

A homogeneous relation `R` on set `A` is
- transitive: `∀xyz ∈ A. xRy ∧ yRz -> xRz`
- intransitive: `∃xyz ∈ A. xRy ∧ yRz ∧ x¬Rz`
- intransitivity or non-transitivity is negated transitivity
  ¬(∀xyz ∈ A. xRy ∧ yRz ⇒ x¬Rz)
  = ∃xyz ∈ A. xRy ∧ yRz ∧ x¬Rz


For instance, 
wolves feed on deer, 
deer feed on grass, 
but wolves do not feed on grass. 

Thus, this "feed on" relation is intransitive, in this sense.

The "feed on" relation is intransitive, but it still contains some transitivity, e.g. 
humans feed on rabbits, 
rabbits feed on carrots, 
and humans feed on carrots.

## Antitransitive

Often the term *intransitive* is used to refer to both *non-transitivity* and the stronger property of *antitransitivity*.

> A relation is *antitransitive* if this never occurs at all:

`∀abc ∈ X. (a𝓡b ∧ b𝓡c) -> ¬a𝓡c`

An example of an antitransitive relation: the `has-defeated` relation in knockout tournaments. If player A defeated player B and player B defeated player C, A could never have played C, and therefore, A has not defeated C.

By transposition, each of the following formulas is equivalent to antitransitivity of R:
- `∀abc ∈ X. (a𝓡b ∧ b𝓡c) -> ¬a𝓡c`
- `∀abc ∈ X. (a𝓡b ∧ a𝓡c) -> ¬b𝓡c`
- `∀abc ∈ X. (a𝓡c ∧ b𝓡c) -> ¬a𝓡b`
