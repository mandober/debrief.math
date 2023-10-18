# General set theory

https://en.wikipedia.org/wiki/General_set_theory

**General set theory (GST)** is George Boolos's 1998 name for a fragment of the axiomatic set theory *Z*.

GST is sufficient for all mathematics not requiring infinite sets, and is the weakest known set theory whose theorems include the Peano axioms.

## Contents

- 1 Ontology
- 2 Axioms
- 3 Discussion
- 3.1 Metamathematics
- 3.2 Peano arithmetic
- 3.3 Infinite sets
- 4 History


## Ontology

The ontology of GST is identical to that of ZFC, and hence is thoroughly *canonical*.

GST features a single *primitive ontological notion*, that of *set*, and a single *ontological assumption*, namely that all individuals in the universe of discourse (hence all mathematical objects) are sets - *everything is a set*.

There is a single *primitive binary relation*, namely set membership `a ∈ b`.

## Axioms

The symbolic axioms below are from Boolos (1998), and govern how sets behave and interact.

As with Z, the background logic for GST is FOL with identity. Indeed, GST is the fragment of Z obtained by omitting the axioms Union, Power Set, Elementary Sets (essentially Pairing) and Infinity and then taking a theorem of Z, Adjunction, as an axiom.

1. Axiom of Extensionality

The sets `x` and `y` are the same set if they have the same members.

`∀x ∀y(∀z(z ∈ x ⇔ z ∈ y) -> x = y)`

The converse of this axiom follows from the substitution property of equality.

`∀x ∀y(x = y -> ∀z(z ∈ x ⇔ z ∈ y))`

Or just:

`∀x ∀y(∀z(z ∈ x ⇔ z ∈ y) ⇔ x = y)`

2. Axiom Schema of Specification (Separation or Restricted Comprehension)

If `z` is a set and `ϕ` is any property which may be satisfied by all, some or no elements of `z`, then there exists a subset `y` of `z` containing just those elements `x` in `z` which satisfy the property `ϕ`.

The restriction to `z` is necessary to avoid Russell's paradox and its variants.

More formally, let `ϕ(x)` be any formula in the language of GST in which `x` may occur freely and `y` does not. Then all instances of the following schema are axioms:

`∀z ∃y ∀x (x ∈ y ⇔ (x ∈ z ∧ ϕ(x)))`


3. Axiom of Adjunction

If `x` and `y` are sets, then there exists a set `w`, the adjunction of `x` and `y`, whose members are just `y` and the members of `x`, `w = x ∪ {y}`.

NOTE: For set `y` to be a member of `w` it must be wrapped in a set, i.e. as `{y}`. If placed unwrapped, like `x` is, then the elements of `x` are actually placed in `w` instead (`x` is "spread out" like `...x` vs `[x]` in JS).

`∀x ∀y ∃w ∀z (z ∈ w ⇔ (z ∈ x ∨ z = y))`

The axiom of adjunction states that for any two sets `x` and `y` there is a set `w = x ∪ {y}` given by "adjoining" the set `y` to the set `x`.


Bernays (1937, page 68, axiom II (2)) introduced the axiom of adjunction as one of the axioms for a system of set theory that he introduced in about 1929. It is a weak axiom, used in some weak systems of set theory such as GST or *finitary set theory*. The adjunction operation is also used as one of the operations of primitive recursive set functions.

https://en.wikipedia.org/wiki/Primitive_recursive_set_function


Adjunction refers to an elementary operation on two sets, and has no bearing on the use of that term elsewhere in mathematics, including in category theory.

ST is GST with the axiom schema of specification replaced by the axiom of empty set.
