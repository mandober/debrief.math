# Transversal

https://en.wikipedia.org/wiki/Transversal_(combinatorics)

In mathematics, particularly in combinatorics, given a family of sets (here called a collection `C`), a transversal (or a cross-section) is a set containing exactly one element from each member of the collection.

>Given a family of sets, a **transversal** or a cross-section is a set containing exactly one element from each member of the family.

When the sets in the collection `C` are mutually disjoint, each element of the transversal corresponds to exactly one member of `C` (the set it is a member of). If the original sets are not disjoint, there are two possibilities for the definition of a transversal:

* One variant is that there is a bijection `f` from the transversal to `C` such that `x` is an element of `f(x)` for each `x` in the transversal. In this case, the transversal is also called a *system of distinct representatives (SDR)*.

* The other, less commonly used, does not require a one-to-one relation between the elements of the transversal and the sets of `C`. In this situation, the members of the *system of representatives* are not necessarily distinct.

In computer science, computing transversals is useful in several application domains, with the input family of sets often being described as a hypergraph.
