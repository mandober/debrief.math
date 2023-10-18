# Set theory :: Set theories :: Halmos set theory

The book "Naive Set Theory" by Paul R. Halmos, originally published 1960, provides an introduction to set theory, and due to its popularity, the theory presented is often referred to as a concrete set theory, called "Halmos set theory", even though its aim is only to explain set theory and ZFC axioms.

Even though the title suggest that the set theory presented qualifies as a naive set theory, as opposed to being axiomatic - this is not so. Namely, the set theory is indeed axiomatic, and Halmos has used the adjective "naive" to mean that he doesn't discuss axiomatic minutiae and advanced set-theoretic topics such as large cardinals, instead preferring a somewhat informal approach in order to reach the readers who never encountered sets before. But not too informal of an approach - he does give rigorous definitions of basic objects and introduces all the ZFC axioms except the Axiom of Foundation.

The Axiom of Foundation (aka Axiom of Regularity) is about whether or not a set can contain itself and Halmos repeatedly dances around this issue, avoiding to take a define stance on the subject.

Halmos set theory includes these axioms:
1. Axiom of extension
2. Axiom of unions
3. Axiom of specification
4. Axiom of pairing
5. Axiom of powers
6. Axiom of infinity
7. Axiom of substitution
8. Axiom of choice


## Ordinal numbers in Halmos set theory

Halmos defines an *ordinal number* `α` as a *well-ordered set* `α` such that 
`suc(x) = x` for all `x` in `α`.

>An ordinal number α is a well-ordered set α: `∀x ∈ α. S(x) = x`

The definition of **well-ordering**: if `x` and `y` are elements of an ordinal number `α`, then `x < y` means `x ∈ y`. By choosing to use the strict relation `<` (GT) instead of `≤` (GE), Halmos implies that well-ordering is strict.

This definition of well-ordering relation in terms of `<` makes it impossible to have `x ∈ x`, where `x` is an element of an ordinal number. That's because `x ∈ x` means `x < x`, which implies `x ≠ x` (due to `<` being strict, unlike `≤`), which is impossible.

This definition of an ordinal number also makes it impossible to have `α ∈ α`, where `α` is an ordinal number. That's because `α ∈ α` implies `α = suc(α)`, which gives `α ∈ α = suc(α) = {y ∈ α | y < α}`, which implies `α < α`, which implies `α ≠ α` (due to `<` being strict, unlike `≤`), which is impossible.


## Axioms of Halmos set theory

Halmos set theory incorporates these axioms from ZFC:

1. `Axiom of extension`: 
  two sets are equal iff they have the same elements.

2. `Axiom of specification`: 
  to every set `A` and to every property `P(x)`, there corresponds a set `B` whose elements are exactly those elements `x ∈ A` for which `P(x)` holds.

3. `Axiom of unions`: 
  for every collection of sets, there exists a set that contains all the elements that belong to at least one set in the collection.

4. `Axiom of pairing`: 
  for any two sets there exists a set that they both belong to.

5. `Axiom of powers`: 
  for each set there exists a collection of sets that contains all the subsets of the given set.

6. `Axiom of infinity`: 
  there exists a set containing 0 and the successor of each of its elements.

7. `Axiom of substitution`: 
  if `P(a,b)` is a predicate (relation) such that, 
  for each `a` in set `A`, 
  the set `{ b | P(a,b) }` can be formed, 
  then there exists a function `f` with domain `A` 
  such that `∀a ∈ A. f(a) = {b | P(a,b)}` 
  (i.e. anything reasonable we can do to set elements yields a set).

8. `Axiom of choice`: 
  Cartesian product of a non-empty family of non-empty sets is non-empty.
