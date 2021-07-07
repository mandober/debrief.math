# Naive Set Theory

(from the book `"Naïve Set Theory"` by Paul R. Halmos, 1960)

Axioms of naive set theory
- axiom of extension
- axiom of unions
- axiom of specification
- axiom of pairing
- axiom of powers
- axiom of infinity
- axiom of substitution
- axiom of choice

The term "naïve" qualifies the presentation of set theory as being given informally, without rigorous compliance to a set of axioms.

Axioms of set theory (by Paul Halmos)
1. *Axiom of extension*: two sets are equal iff they have the same elements
2. *Axiom of unions*: for every collection of sets there exists a set that contains all the elements that belong to at least one of them
3. *Axiom of specification*: to every set `S` and to every condition `P(a)`, there corresponds a set `A` whose elements are exactly those elements `a ∈ S` for which `P(a)` holds.
4. *Axiom of pairing*: for any two sets there is a set whom they both belong to
5. *Axiom of powers*: for each set there is a collection of sets that contains, as elements, all the subsets of the given set
6. *Axiom of infinity*: there is a set containing 0 and the successor of each of its elements
7. *Axiom of substitution*: if `S(a,b)` is a sentence such that `∀a ∈ A` the set `{ b | S(a,b) }` can be formed, then there exists a function `f` with domain `A` such that `f(a) = { b | S(a,b) }` for each `a ∈ A` (a reasonable operation over the element of a set yields a set)
8. *Axiom of choice*: the Cartesian product of a non-empty family of non-empty sets is non-empty
