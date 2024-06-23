# Type Theory :: Types is type theories

Data types common across different type theories or less so.

Similarly to how very different programming languages still maintain a set of common data types, so do type theories. After all, many type theories can be construed as programming languages with special agenda - be it a verification of software products or (constructive) mathematics. Type-theoretic data types certainly have their mystic idiosyncrasies, but they also have types with pedestrian qualities about them, like so many types of programming languages.

This section collects all the weird types of type theory intending to describe and classify them.

## Classification of types

Classification of data types is a hard problem in general, let alone in type theory. Let's first just dump the lot and take it from there.

Factors and criteria of classification
- algebraic
- polynomial
- opposing pairs
- data vs codata
- recursive, nonrecursive, corecursive
- inductive, noninductive, coinductive
- dependent, nodependent

## Type systems

- untyped
- typed
- Simply-typed Lambda Calculus (STLC) has `term → term`
- STLC with polymorphism,                 `type → term`
- STLC with type ctors (type operators),  `type → type`
- STLC with dep types,                    `term → type`
- CoC all of the above

Features
- polymorphism
- type classes
  - type ctor classes (usual)
  - multi param type classes
  - fundep (functional dependencies) in type classes
- type families
- data families
- type ctors (type operators)
- recursion
- higher kinded types
- rank-N types
- linear types
- affine types
- relevance types
- session types
- refined types (type refinement)
