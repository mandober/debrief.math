# Transitivity

https://en.wikipedia.org/wiki/Transitive_relation

Transitivity
- transitive
- intransitive
- antitransitive
- quasitransitive

The notation `a𝓡b` is the infix notation for `(a, b) ∈ 𝓡`

## Transitive

A homogeneous relation `R` on the set `X` is a transitive relation if

`∀abc ∈ X. (a𝓡b ∧ b𝓡c) -> a𝓡c`


## Intransitive

A homogeneous relation `R` on the set `X` is a intransitive (non-transitive) relation if

`¬(∀abc ∈ X. aRb ∧ bRc ⇒ aRc)` <=> `∃abc ∈ X. aRb ∧ bRc ∧ a¬Rc`

Intransitive (non-transitive) formula is obtained by negating the formula about transitivity:

```hs
¬(∀xyz(   (x ~ y ∧ y ~ z) ⇒ x ~ z))
= ∃xyz(¬( (x ~ y ∧ y ~ z) ⇒ x ~ z))
= ∃xyz(¬(¬(x ~ y ∧ y ~ z) ∨ x ~ z))
= ∃xyz(¬( (x ≁ y ∨ y ≁ z) ∨ x ~ z))
= ∃xyz( (¬(x ≁ y ∨ y ≁ z) ∧ x ≁ z))
= ∃xyz( ( (x ~ y ∧ y ~ z) ∧ x ≁ z))
= ∃xyz(    x ~ y ∧ y ~ z  ∧ x ≁ z)
= ∃xyz(x ~ y ∧ y ~ z ∧ x ≁ z)

-- thus, negating transitivity we get:
¬(∀xyz((x ~ y ∧ y ~ z) ⇒ x ~ z))
= ∃xyz( x ~ y ∧ y ~ z  ∧ x ≁ z)
```

>Intransitivity or non-transitivity: `∃xyz(x ~ y ∧ y ~ z ∧ x ≁ z)`


For instance, wolves feed on deer, and deer feed on grass, but wolves do not feed on grass. Thus, the "feed on" relation is intransitive, in this sense.

The "feed on" relation is intransitive, *but it still contains some transitivity*, e.g. humans feed on rabbits, rabbits feed on carrots, and humans also feed on carrots.

## Antitransitive

Often the term intransitive is used to refer to both non-transitivity and the stronger property of *antitransitivity*.

> A relation is *antitransitive* if this never occurs at all:

`∀abc ∈ X. (a𝓡b ∧ b𝓡c) -> ¬a𝓡c`

An example of an antitransitive relation: the `has-defeated` relation in knockout tournaments. If player A defeated player B and player B defeated player C, A could never have played C, and therefore, A has not defeated C.

By transposition, each of the following formulas is equivalent to antitransitivity of R:
- `∀abc ∈ X. (a𝓡b ∧ b𝓡c) -> ¬a𝓡c`
- `∀abc ∈ X. (a𝓡b ∧ a𝓡c) -> ¬b𝓡c`
- `∀abc ∈ X. (a𝓡c ∧ b𝓡c) -> ¬a𝓡b`
