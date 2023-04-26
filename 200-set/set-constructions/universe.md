# Universe

https://en.wikipedia.org/wiki/Universe_(mathematics)

In set theory, category theory, type theory, and the foundations of mathematics, a **universe** is a collection that contains all the entities one wishes to consider in a given theory (or in a particular situation).

In set theory, universes are often classes that contain (as elements) all sets we wish to discuss and prove theorems for. These classes can serve as inner models for various axiomatic systems such as ZFC or Morse-Kelley set theory.

Universes are of critical importance to formalizing concepts in category theory inside set-theoretical foundations. For instance, the canonical motivating example of a category is `Set`, the category of all sets, which cannot be formalized in a set theory without some notion of a universe.

In type theory, a universe is a type whose elements are types.

## Contents

- In a specific context
- In ordinary mathematics
- In set theory
- In predicate calculus
- In category theory
- In type theory

## In a specific context

https://en.wikipedia.org/wiki/Domain_of_discourse

Perhaps the simplest version is that any set can be a universe, so long as the object of study is confined to that particular set.

If the object of study is formed by the real numbers, then the real line ℝ, which is the set of the real numbers, could be the universe under consideration.

Implicitly, this is the universe that Georg Cantor was using when he first developed modern naive set theory and cardinality in the 1870s and 1880s in applications to real analysis. The only sets Cantor was originally interested in were subsets of ℝ.

This concept of a universe is reflected in the use of *Venn diagrams*. In a Venn diagram, the action traditionally takes place inside a large rectangle that represents the universe `U`. One generally says that sets are represented by circles - but these sets can only be subsets of `U`.

The complement of a set `A` is then given by that portion of the rectangle outside of `A`'s circle. Strictly speaking, this is the relative complement, `U \ A`, of `A` relative to `U`; but in a context where `U` is the universe, it can be regarded as the absolute complement `Aᶜ` of `A`.

Similarly, there is a notion of the *nullary intersection*, that is the intersection of zero sets (meaning no sets, not null sets).

>Without a universe, the nullary intersection would be the set of absolutely everything, which is generally regarded as impossible.

But with the universe in mind, the nullary intersection can be treated as the set of everything under consideration, which is simply `U`.

These conventions are quite useful in the algebraic approach to basic set theory, based on Boolean lattices. Except in some *non-standard forms* of axiomatic set theory (such as New Foundations), the class of all sets is not a *Boolean lattice* (it is only a *relatively complemented lattice*).

In contrast, the class of all subsets of `U`, aka the powerset of `U`, is a Boolean lattice. The absolute complement described above is the complement operation in the Boolean lattice; and `U`, as the nullary intersection, serves as the top element (or nullary meet) in the Boolean lattice. Then De Morgan's laws, which deal with complements of meets and joins (which are unions in set theory) are applicable, and apply even to the nullary meet and the nullary join (which is the empty set).

## In ordinary mathematics

Once subsets of a given set `X` are mentioned, the universe will need to be extended to include all the subsets of `X`, i.e. the universe grows to become the powerset of `X`, `𝒫(X)`.

>When the universe is `𝒫(X)`, subsets of `X` are the elements in the universe.

For example, a topology on a set `X` is a set of subsets of `X`, so the universe must be at least as big as `𝒫(X)`.

The various sets of subsets of `X` are not themselves subsets of the original set `X`, but instead subsets of `𝒫(X)`.


This may be continued; the object of study may next consist of such sets of subsets of X, and so on, in which case the universe will be P(PX). In another direction, the binary relations on X (subsets of the Cartesian product X × X) may be considered, or functions from X to itself, requiring universes like P(X × X) or XX.
