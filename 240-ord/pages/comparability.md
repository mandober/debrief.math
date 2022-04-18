# Comparability

https://en.wikipedia.org/wiki/Comparability

Two elements `x` and `y` of a set `P` are said to be *comparable* with respect to a binary relation `R` if at least one of `xRy` or `yRx` is true. Otherwise they are called *incomparable*.

## Definition

A binary relation on a set `P` is by definition any subset `R` of `P×P`. Given `x,y ∈ P`, we write `xRy` iff `(x,y) ∈ R`, in which case `x` is said to be R-related to `y`. An element `x ∈ P` is said to be R-comparable to an element `y ∈ P` if `xRy` or `yRx`.

Concrete relation are denoted using an infix comparison symbol (`<`, `<=`, etc.) in place of `R`, which is the reason the term "comparable" is used.

Comparability with respect to `R` induces a canonical binary relation on `P`; specifically, the comparability relation induced by `R` is defined to be the set of all pairs `(x,y) ∈ P×P` such that `x` is comparable to `y` (meaning at least one of `xRy` or `yRx` holds).

Similarly, the incomparability relation on `P` induced by `R` is defined to be the set of all pairs `(x,y) ∈ P×P` such that `x` is incomparable to `y` (so neither `xRy` nor `yRx` holds).

If the symbol `<` is used in place of `≤` then comparability with respect to `<` is sometimes denoted by the symbol `⪋`.

## Example

A totally ordered set is a partially ordered set in which any two elements are comparable.

The *Szpilrajn extension theorem* states that every partial order is contained in a total order. Intuitively, any method of comparing elements, that leaves some pairs incomparable, can be extended in such a way that every pair becomes comparable.

## Properties

Comparability and incomparability relations are both *symmetric*, that is, `x` is comparable to `y` iff `y` is comparable to `x`; and similarly for incomparability.

## Comparability graphs

The *comparability graph* of a partially ordered set `P` has as vertices the elements of `P` and has as edges precisely those pairs `{x,y}` of elements for which `⪋`.

## Classification

When classifying mathematical objects (e.g., topological spaces), two criteria are said to be comparable when the objects that obey one criterion constitute a subset of the objects that obey the other, which is to say when they are comparable under the partial order ⊂. For example, the T1 and T2 criteria are comparable, while the T1 and sobriety criteria are not.

## See also

*Strict weak ordering*, a partial ordering in which incomparability is a transitive relation.
