# Positive set theory

https://en.wikipedia.org/wiki/Positive_set_theory

**Positive set theory** is the name for a class of *alternative set theories* in which the *Axiom Of Comprehension* holds for at least the **positive formulas** `ϕ` (the smallest class of formulas containing atomic membership and equality formulas and closed under conjunction, disjunction, existential and universal quantification).

>Positive formulas ϕ are closed under ⋀, ⋁, ∀, ∃

Typically, the motivation for these theories is topological: sets are classes closed under a certain topology.

The closure conditions for the various constructions allowed in building positive formulas are readily motivated, and the use of universal quantifiers bounded in sets to get *generalized positive comprehension* is further justified; the justification of the existential quantifier seems to require that the topology be *compact*.

## Contents

- Axioms
  - Extensionality
  - Positive comprehension
  - Closure
  - Infinity
- Interesting properties
- Researchers

## Axioms

The positive set theory `GPK∞+` of Olivier Esser consists of these axioms:
- Extensionality
- Positive comprehension
- Closure
- Infinity

### Extensionality

`∀x ∀y ∀z(z ∈ x ⇔ z ∈ y) ⇔ x = y)`

### Positive comprehension

`∃x ∀y(y ∈ x ⇔ ϕ(y))`

where `ϕ` is a positive formula.

A **positive formula** uses only the logical constants `{⊤,⊥, ∧,∨, ∀,∃, =,∈}` but not `{→,¬}`.

### Closure

Closure `∃x∀y(y ∈ x ⇔ ∀z(∀w(ϕ(w) ⇒ w ∈ z) ⇒ y ∈ z))` where `ϕ` is a formula.

>That is, for every formula `ϕ`, the intersection of all sets which contain every `x` such that `ϕ(x)` holds/exists.

This is called the closure of `{ x | ϕ(x) }` and is written in any of the various ways that topological closures can be presented.

This can be put more briefly if class language is allowed (any condition on sets defining a class as in NBG):
>for any class `C` there is a set which is the intersection of all sets which contain `C` as a subclass. This is a reasonable principle if the sets are understood as closed classes in a topology.

### Infinity

The von Neumann ordinal `ω` exists. This is not an Axiom Of Infinity in the usual sense; if the Axiom Of Infinity does not hold, the closure of `ω` exists and has itself as its sole additional member (it is certainly infinite).

The point of this axiom is that `ω` contains no additional elements at all, which boosts the theory from the strength of second-order arithmetic to the strength of Morse-Kelley set theory with the proper class ordinal a *weakly compact cardinal*.

## Interesting properties

- The universal set is a proper set in this theory.
- The sets of this theory are the collections of sets which are closed under a certain topology on the classes.
- The theory can interpret ZFC (by restricting oneself to the class of well-founded sets, which is not itself a set). In fact, it interprets a stronger theory (Morse-Kelley set theory with the proper class ordinal a *weakly compact cardinal*).

## Researchers

- Isaac Malitz originally introduced Positive Set Theory in his 1976 PhD Thesis at UCLA
- Alonzo Church was the chairman of the committee supervising the aforementioned thesis
- Olivier Esser seems to be the most active in this field.

## Refs

- Alternative Axiomatic Set Theories
  https://plato.stanford.edu/entries/settheory-alternative/
