# Inclusion relation

https://en.wikipedia.org/wiki/Inclusion_relation

- inclusion relation
- subset relation

- sets and its elements vs objects
- disjoint sets
- overlapping sets
- subset
- superset
- proper subset
- proper superset


* *Inclusion relations* relate sets, as opposed to the *membership relation* that relates a set and its potential elements (which are objects that may or may not belong to the set).

- membership relation:      `x ∈ A`, `y ∉ A`
- inclusion relations
  - subset relation:        `R ⊆ S`
  - superset relation:      `S ⊇ R`
  - proper subset relation: `R ⊂ S`
  - proper subset relation: `S ⊃ R`

* However, since sets are themselves objects as well, they can be contained in another set. This means that two sets can be associated by an inclusion and a membership relation at the same time.

* Inclusion relation is also present in Boolean algebra, where the inclusion relation `a ≤ b` is defined as `ab'=0` ~ `a ⋀ ¬b = ⟘` . It is the Boolean analogue to the subset relation in set theory. Inclusion is a partial order.


> **Inclusion relations** relate two sets, establishing the way they are associated as pertaining to the possible inclusion of one set in another.

Two sets are related by an inclusion relation if 

The **subset inclusion relation**

For all elements `s` in `S`, if being an element of the set `S` implies that an object `s` is also an element of the set `R`, then `S` is a subset of `R`:

Inclusion relation: `∀s.(s ∈ S -> s ∈ R) <=> S ⊆ R`

```
∀s.(s ∈ S -> s ∈ R) -> S ⊆ R
⋀
S ⊆ R -> ∀s.(s ∈ S -> s ∈ R)
```

- membership relation: S ∈ R





Subset and proper subset relations do not uphold the same set of axioms. Subset relation is reflexive and transitive, but proper subset is not reflexive.

Inclusion relations
* subset
  - reflexive:  `A ⊆ A`
  - transitive: `(A ⊆ B ⋀ B ⊆ C) => A ⊆ C`
* proper subset
  - irreflexive: A ⊂/ A
  - transitive: `(A ⊂ B ⋀ B ⊂ C) => A ⊂ C`



with regards to the possible overlap of the containment of their elements. In other words, is one set included in the other.

do they have commo

two sets have completely separate  


An inclusion relation is reflexive, transitive, and *anti-symmetric*

A proper inclusion relation is irreflexive, transitive, and *asymmetric*.

inclusion and proper inclusion relations have natural converses;
  A (properly) includes B iff B is (properly) included in A;
  alternatively, A is a (proper) superset of B

exclusion relation is symmetric and anti-reflexive

inclusion relation is antisymmetric
