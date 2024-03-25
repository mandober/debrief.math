# Covering relation

https://en.wikipedia.org/wiki/Covering_relation

In mathematics, especially order theory, the **covering relation** of a *partially ordered set* is the binary relation which holds between comparable elements that are immediate neighbours.

The covering relation is commonly used to graphically express the partial order by means of the Hasse diagram.

Contents
- Definition
- Examples
- Properties

## Definition

Let `X` be a set with a partial order `≤`. As usual, let `<` be the relation on `X` such that `x < y` iff `x ≤ y` and `x ≠ y`.

Let `x` and `y` be elements of `X`.

Then `y` covers `x`, written `x ⋖ y`, if `x < y` and there is no element `z` such that `x < z < y`. 

Equivalently, `y` covers `x` if the interval [x,y] is the two-element set `{x,y}`.

When `x ⋖ y`, it is said that `y` is a cover of `x`.

Some authors also use the term cover to denote any such pair `(x,y)` in the covering relation.

## Examples

In a finite linearly ordered set {1, 2, …, n}, `i + 1` covers `i` for all `i` between 1 and `n − 1` (and there are no other covering relations).

In the Boolean algebra of the power set of a set S, a subset B of S covers a subset A of S if and only if B is obtained from A by adding one element not in A.
In Young's lattice, formed by the partitions of all nonnegative integers, a partition λ covers a partition μ if and only if the Young diagram of λ is obtained from the Young diagram of μ by adding an extra cell.
The Hasse diagram depicting the covering relation of a Tamari lattice is the skeleton of an associahedron.
The covering relation of any finite distributive lattice forms a median graph.
On the real numbers with the usual total order ≤, the cover set is empty: no number covers another.
Properties
If a partially ordered set is finite, its covering relation is the transitive reduction of the partial order relation. Such partially ordered sets are therefore completely described by their Hasse diagrams. On the other hand, in a dense order, such as the rational numbers with the standard order, no element covers another.
