# Axiom Schema of Specification

https://en.wikipedia.org/wiki/Axiom_schema_of_specification

aka:
- Axiom Schema of Specification
- Axiom Schema of Separation
- Subset Axiom Scheme
- Axiom Schema of Restricted Comprehension
- Axiom Schema Of Comprehension (some mathematicians call it this although others use that term for unrestricted comprehension)

Axiom Schema of Specification:

`∀(w₁…wₙ) ∀A ∃B ∀x [x ∈ B ⇒ (x ∈ A ⋀ φ(x,w₁,…,wₙ,A))]`


> Axiom Schema of Specification essentially says that any definable subclass of a set is a set.

Since it restricts the set comprehension, solving the Russell's paradox, several mathematicians, including Zermelo, Fraenkel and Gödel, considered it the most important axiom of set theory.

In many popular versions of axiomatic set theory the Axiom Schema of Specification is an axiom schema. One instance of the schema is included for each formula `ϕ` in the language of set theory with free variables among `x,w₁,…,wₙ,A`. So `B` is not free in `φ`. In the formal language of set theory (i.e. in FOL), the axiom schema is denoted:

∀(w₁…wₙ) ∀A ∃B ∀x [x ∈ B ⇒ (x ∈ A ⋀ φ(x,w₁,…,wₙ,A))]

>Given any set `A`, there exists a set `B` (subset of `A`), such that given any `x`, `x` is a member of `B` iff `x` is a member of `A` and `φ` holds for `x`.

It is an axiom schema, so there is one axiom for every such predicate `φ`.

Since the set `B` must be a subset of `A`, the axiom schema really says that:
>given a set `A` and a predicate `P`, we can find a subset `B` of the set `A` whose members are the elements of `A` that satisfy the predicate `P`.

By the axiom of extensionality this set is unique.

We can denote this also using the set-builder notation:

`B = { x | x ∈ A ⋀ P(x) }`

The essence of the axiom is that every subclass of a set that is defined by a predicate is itself a set.


The axiom schema of specification is characteristic of systems of axiomatic set theories related to ZFC, but doesn't usually appear in radically different systems of alternative set theory. For example, New Foundations and Positive Set Theory use different restrictions of the axiom of comprehension of naive set theory. Alternative Set Theory (Vopenka) makes a specific point of allowing proper subclasses of sets, called *semisets*. Even in systems related to ZFC, this scheme is sometimes restricted to formulas with bounded quantifiers, as in Kripke-Platek set theory with *urelements*.



Subsets of some set are commonly constructed using the set-builder notation. For example, even integers can be constructed as a subset of integers satisfying the congruence predicate:

`𝔼 = { x | x ∈ ℤ ⋀ x ≡ 0 (mod 2) }`

In general, the subset of a set `z` obeying a formula `φ(x)` with one free variable `x` may be written as `x ∈ z ∧ φ(x)`.

The axiom schema of specification states that this subset always exists (it is an axiom schema because there is one axiom for each formula φ).

Formally, let φ be any formula in the language of ZFC with all free variables among `x, z, w₁,…,wₙ` (y is not free in φ). Then: `∀z ∀w₁…wₙ ∃y ∀x[x ∈ y ⇒ (x ∈ z ⋀ φ(x))]`.

Note that the axiom schema of specification can only construct subsets, and does not allow the construction of sets of the more general form `{x | φ(x)}`. This restriction is necessary to avoid Russell's paradox and its variants that accompany naive set theory with unrestricted comprehension.

In some axiomatizations of ZF this axiom is redundant as follows from the axiom schema of replacement and the axiom of the empty set.

On the other hand, the axiom of specification can be used to prove the existence of the empty set, once at least one set is known to exist. One way to do this is to use a property which no set has. For example, if `w` is any existing set, the empty set can be constructed as `∅ = {u ∈ w | u ∈ u ⋀ u ∉ u}.`

Thus, the axiom of the empty set is implied by the 9 axioms of ZFC. The axiom of extensionality implies the empty set is unique (does not depend on w). It is common to make a definitional extension that adds the symbol ∅ to the language of ZFC.
