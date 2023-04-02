# Diagram

https://en.wikipedia.org/wiki/Diagram_(category_theory)

A diagram in a category `C` is a *directed multigraph*, where the vertices represent objects, and the arrows represent morphisms.

A diagram is a *multigraph* because there is a set of arrows between any two categorical objects, i.e. a hom-set `hom(a,b)` is a set. Here, it means that any two vertices may be connected with any number of arcs. A path in the graph is regarded as a composition of morphisms.

A **commutative diagram** is a diagram when for each pair of vertices and any two paths (and thus the compositions of morphisms they represent) are equal.

A diagram in a category `C` is a collection of vertices and directed edges where the vertices correspond to the objects of `C` and edges consistently correspond to the morphisms. "Consistently" means that if an edge `f` has endpoints `a` and `b`, where `f` is a morphism of `C`, `a` is the domain of `f`, and `b` is the codomain of `f`. A diagram of category `C` is said to commute if all directed paths in the diagram with the same start and endpoint lead to the same result by composition.

>A diagram is the categorical analogue of an indexed family in set theory.

The primary difference is that in the categorical setting one has morphisms that also need indexing.

An indexed family of sets is
- a collection of sets indexed by a fixed set, i.e.
- a function from a fixed index set to the class of sets

A diagram is
- a collection of objects and morphisms indexed by a fixed category, i.e.
- a functor from a fixed *index category* to an *indexed category*

The *universal functor of a diagram* is the *diagonal functor*; its right adjoint is the limit of the diagram and its left adjoint is the colimit.

The natural transformation from the diagonal functor to some arbitrary diagram is called a *cone*.
