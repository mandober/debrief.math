# Axiom of empty set

https://en.wikipedia.org/wiki/Axiom_of_empty_set

In axiomatic set theory, **the Axiom of Empty Set** is a statement that asserts the existence of a set with no elements.

The Axiom of Empty Set is a demonstrable truth in Zermelo set theory and Zermelo-Fraenkel set theory with or without the Axiom of Choice.

In the formal language of the ZF:

`∃x ∀y. ¬(y ∈ x)` i.e. `∃x ∀y. y ∉ x`

says that there exists a set `x` such that, for all sets `y`, `y` is not in `x`.


## Interpretation

We can use *the axiom of extensionality* to show that there is only one empty set. Since it is unique we can name it: it is called the empty set and denoted by `{}` or `∅`.

The axiom, stated in natural language, is in essence:

*An empty set exists.*

This formula is a theorem and considered true in every version of set theory. The only controversy is over how it should be justified:
- by making it an axiom
- by deriving it from a set-existence axiom and the axiom of separation
- by deriving it from the axiom of infinity
- by some other method

In some formulations of ZF, the axiom of empty set is actually repeated in *the axiom of infinity*. However, there are other formulations of that axiom that do not presuppose the existence of an empty set. The ZF axioms can also be written using a constant symbol representing the empty set; then the axiom of infinity uses this symbol without requiring it to be empty, while the axiom of empty set is needed to state that it is in fact empty.

Furthermore, one sometimes considers set theories in which there are no infinite sets, and then the axiom of empty set may still be required. However, any axiom of set theory (or logic) that implies the existence of any set will imply the existence of the empty set, if one has *the axiom schema of separation*. This is true, since the empty set is a subset of any set *consisting of those elements that satisfy a contradictory formula*.

In many formulations of first-order predicate logic, the existence of at least one object is always guaranteed. If the axiomatization of set theory is formulated in such a logical system with the axiom schema of separation as axioms, and if the theory makes no distinction between sets and other kinds of objects (which holds for ZF, KP, and similar theories), then the existence of the empty set is a theorem.

If separation is not postulated as an axiom schema, but derived as a theorem schema from *the schema of replacement* (as is sometimes done), the situation is more complicated, and depends on the exact formulation of the replacement schema.

The formulation used on the "axiom schema of replacement" page only allows to construct the image `F[a]` when `a` is contained in the domain of the class function `F`; then the derivation of separation requires the axiom of empty set. On the other hand, the constraint of totality of `F` is often dropped from the replacement schema, in which case it implies the separation schema without using the axiom of empty set (or any other axiom for that matter).
