# Algebraic structures

https://en.wikipedia.org/wiki/List_of_group_theory_topics
https://en.wikipedia.org/wiki/Glossary_of_group_theory

Algebraic structures
  * Group-like
    Magma           : closure
    Semigroup       : magma     + assoc
    Monoid          : semigroup + identity
    Group           : monoid    + invertability
    Abelian group   : group     + commutativity
    Quasigroup      : division always possible but need not be assoc
    Loop            : quasigroup + identity
    Rack and quandle: 
    Lie group
    Group theory
  * Ring-like
    Ring
    Semiring
    Near-ring
    Commutative ring
    Integral domain
    Field
    Division ring
    Ring theory
  * Lattice-like
    Lattice
    Semilattice
    Complemented lattice
    Total order
    Heyting algebra
    Boolean algebra
    Map of lattices
    Lattice theory
  * Module-like
    Module
    Group with operators
    Vector space
    Linear algebra
  * Algebra-like
    Algebra
    Associative
    Non-associative
    Composition algebra
    Lie algebra
    Graded
    Bialgebra


## Algebraic structures related to groups

https://en.wikipedia.org/wiki/Category:Algebraic_structures

[Field](https://en.wikipedia.org/wiki/Field_(mathematics))
[Finite field](https://en.wikipedia.org/wiki/Finite_field)
[Galois theory](https://en.wikipedia.org/wiki/Galois_theory)
[Grothendieck group](https://en.wikipedia.org/wiki/Grothendieck_group)
[Group ring](https://en.wikipedia.org/wiki/Group_ring)
[Group with operators](https://en.wikipedia.org/wiki/Group_with_operators)
[Heap](https://en.wikipedia.org/wiki/Heap_(mathematics))
[Linear algebra](https://en.wikipedia.org/wiki/Linear_algebra)
[Magma](https://en.wikipedia.org/wiki/Magma_(algebra))
[Module](https://en.wikipedia.org/wiki/Module_(mathematics))
[Monoid](https://en.wikipedia.org/wiki/Monoid)
[Monoid ring](https://en.wikipedia.org/wiki/Monoid_ring)
[Quandle](https://en.wikipedia.org/wiki/Quandle)
[Quasigroup](https://en.wikipedia.org/wiki/Quasigroup)
[Quantum group](https://en.wikipedia.org/wiki/Quantum_group)
[Ring](https://en.wikipedia.org/wiki/Ring_(mathematics))
[Semigroup](https://en.wikipedia.org/wiki/Semigroup)
[Vector space](https://en.wikipedia.org/wiki/Vector_space)



## Possible algebras

Possible algebras with these 5 axioms:
- closure/totality    clo
- associativity       assoc
- identity            id
- invertability       inv
- commutativity       comm

`5-choose-k` = 5th row of Pascal's triangle: 1 5 10 10 5 1
* 1  × no axioms
* 1  × all five axioms
* 5  × single axiom
* 5  × axiom quadruples
* 10 × axiom pairs
* 10 × axiom triples


## Known algebras

- 1 × all five axioms 
  - ["cl","as","id","in","co"] : **Abelian group**

- 5 × single axiom
  - ["cl"] closure/totality : **Magma**
  - ["as"] associativity    :
  - ["co"] identity         :
  - ["id"] invertability    :
  - ["in"] commutativity    :

- 5 × axiom quadruples
  - ["cl","as","id","in"] : **Group**
  - ["cl","as","id","co"]
  - ["cl","as","in","co"]
  - ["cl","id","in","co"]
  - ["as","id","in","co"]

- 10 × axiom pairs
  - ["cl","as"] : **Semigroup**
  - ["cl","id"]
  - ["as","id"]
  - ["cl","in"]
  - ["as","in"]
  - ["id","in"]
  - ["cl","co"]
  - ["as","co"]
  - ["id","co"]
  - ["in","co"]

- 10 × axiom triples
  - ["cl","as","id"] : **Monoid**
  - ["cl","as","in"]
  - ["cl","id","in"]
  - ["as","id","in"]
  - ["cl","as","co"]
  - ["cl","id","co"]
  - ["as","id","co"]
  - ["cl","in","co"]
  - ["as","in","co"]
  - ["id","in","co"]
