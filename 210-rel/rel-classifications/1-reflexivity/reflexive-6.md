# Relation :: Relation types :: Reflexive

## Relations involving reflexivity

- reflexive
  - non-reflexive
- irreflexive
  - non-irreflexive
- coreflexive
  - non-coreflexive
- quasi-reflexive
  - left quasi-reflexive
  - right quasi-reflexive
- non-quasi-reflexive
  - left non-quasi-reflexive
  - right non-quasi-reflexive

## Identity relation

The unique identity relation on a set A, denoted `Iᴀ`, is a set containing exclusively ordered pairs of the form `(x, x)`, for each `x` in `A`.

Identity relation is the secondary diagonal, e.g. when considering a Cartesian product of the natural numbers, {(0,0), (1,1), …, (n,n)}.

- identity: `∀xy ∈ A. x ~ y ⇒ x = y`


## Reflexivity

If a relation `~` on a set `A`, `~ ⊆ A²`, is reflexive then *every* identity pair, `(x, x)` of `A` must be in (~), `∀x. x ~ x`.

It is immaterial if additional pairs are also present as long as all the identity pairs are. This means that
- the universal relation (Cartesian product) is reflexive
- the null relation is vacuously reflexive.
- identity relation is reflexive, in fact, it is the minimal reflexive relation

## Non-reflexivity

Non-reflexive relation is not the same as irreflexive relation.

Non-reflexive relation formula is the negation of the formula for reflexivity: 
¬(∀x ∈ A. x ~ x) = ∃x ∈ A(¬(x ~ x)) = ∃x ∈ A(x ≁ x)

`∃x ∈ A(x ≁ x)`

There exists an x in A such that it is not related to itself; that is, if at least one element is not related to itself, then the relation is non-reflexive.

## Irreflexivity

Irreflexive relation is sort of the opposite of reflexive one in that no identity pair must be present in the relation set:

`∀x ∈ A. x ≁ x`

However, irreflexivity, `∀x ∈ A. x ≁ x`, is not the same as non-reflexivity, `∃x ∈ A. x ≁ x` or non-irreflexivity, `∃x ∈ A. x ~ x`.

## Non-irreflexivity

Non-irreflexive relation is negated irreflexive relation:

¬(∀x ∈ A. x ≁ x)
= ∃x ∈ A(¬(x ≁ x))
= ∃x ∈ A(x ~ x)

`∃x ∈ A. x ~ x`

That is, if there exists at least one element of A that is related to itself, i.e. the pair (a, a) is in the relation, then such a relation is non-irreflexive.

## Properties

- reflexive         ∀x ∈ A. x ~ x
- non-reflexive     ∃x ∈ A. x ≁ x
- irreflexive       ∀x ∈ A. x ≁ x
- non-irreflexive   ∃x ∈ A. x ~ x

- If ~ is reflexive it is non-irreflexive
- If ~ is irreflexive it is non-reflexive
