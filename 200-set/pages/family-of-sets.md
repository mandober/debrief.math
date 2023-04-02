# Family of sets

https://en.wikipedia.org/wiki/Family_of_sets

A collection `F` of subsets of a given set `S` is called a *family of sets* over `S`, or a *family of subsets* of `S`.

The term "collection" is used here because, in some contexts, a family of sets may be allowed to contain repeated copies of any given member, and in other contexts it may form a proper class rather than a set.

A finite family of subsets of a finite set `S` is also called a hypergraph. The subject of extremal set theory concerns the largest and smallest examples of families of sets satisfying certain restrictions.


## Contents

- Examples
- Properties
- Related concepts
  - Covers and topologies
- Special types of set families

## Examples

* The powerset `𝓟(S)` of a set `S` is a family of subsets over `S`.

* The k-subsets, `S⁽ᵏ⁾`, of a set `S` form a family of sets. 

* Let `S = {a,b,c,1,2}`. An example of a family of sets over `S` (in the multiset sense) is given by `F = {A,B,C,D}` where `A = {a,b,c}`, `B = {1,2}`, `C = {1,2}`, `D = {a,b,1}`.

* The class `Ord` of all ordinal numbers is a large family of sets (that is, it is not itself a set but a proper class).

## Properties

* Any family of subsets of `S` is itself a subset of the powerset `𝓟(S)` if it has no repeated members.

* Any family of sets without repetitions is a subclass of the proper class of all sets (the universe).

* *Hall's marriage theorem*, due to Philip Hall, gives necessary and sufficient conditions for a finite family of non-empty sets (repetitions allowed) to have a system of distinct representatives.

* If `𝓕` is any family of sets, then `⋃ (F ∈ 𝓕) F` denotes the union of all sets in the family `𝓕`, where in particular, `⋃ ∅ = ∅`. Any family `𝓕` of sets is a family over `⋃ 𝓕`, and also a family over any superset of `⋃ 𝓕`.

## Related concepts

Certain types of objects from other areas of mathematics are equivalent to families of sets, in that they can be described purely as a collection of sets of objects of some type:

* A *hypergraph*, also called a *set system*, is formed by a set of vertices together with another set of *hyperedges*, each of which may be an arbitrary set. The hyperedges of a hypergraph form a family of sets, and any family of sets can be interpreted as a hypergraph that has the union of the sets as its vertices.
* An *abstract simplicial complex* is a combinatorial abstraction of the notion of a simplicial complex, a shape formed by unions of line segments, triangles, tetrahedra, and higher-dimensional simplices, joined face to face. In an abstract simplicial complex, each simplex is represented simply as the set of its vertices. Any family of finite sets without repetitions in which the subsets of any set in the family also belong to the family forms an abstract simplicial complex.
* An *incidence structure* consists of a set of points, a set of lines, and an (arbitrary) binary relation, called the *incidence relation*, specifying which points belong to which lines. An incidence structure can be specified by a family of sets (even if two distinct lines contain the same set of points), the sets of points belonging to each line, and any family of sets can be interpreted as an incidence structure in this way.
* A *binary block code* consists of a set of codewords, each of which is a string of 0s and 1s, all the same length. When each pair of codewords has large Hamming distance, it can be used as an error-correcting code. A block code can also be described as a family of sets, by describing each codeword as the set of positions at which it contains a 1.
* A *topological space* consists of a pair `(X,τ)` where `X` is a set (whose elements are called *points*) and `τ` is a *topology* on `X`, which is a family of sets (whose elements are called *open sets*) over `X` that contains both the empty set `∅` and `X` itself, and is closed under arbitrary set unions and finite set intersections.

### Covers and topologies

A family of sets is said *to cover a set* `X` if every point of `X` belongs to some member of the family. A subfamily of a cover that continues to cover `X` is called a *subcover*. A family is called a *point-finite collection* if every point of `X` lies in only finitely many family members. If every point lies in exactly one member then the cover is called a *partition*.

When `X` is a topological space, then a cover whose members are all open sets is called an *open cover*. A family is called *locally finite* if each point in the space has a neighborhood that intersects only finitely many family members. A *σ-locally finite* or *countably locally finite collection* is any family that is equal to a union of countably many locally finite families.

One cover `𝓕` is said to refine another (coarser) cover `𝓒` if every member of `𝓕` is contained in some member of `𝓒`. A star refinement is a particular type of refinement.

## Special types of set families

* A *Sperner family* is a set family in which none of the sets contains any of the others. Sperner's theorem bounds the maximum size of a Sperner family.

* A *Helly family* is a set family such that any minimal subfamily with empty intersection has bounded size. Helly's theorem states that convex sets in Euclidean spaces of bounded dimension form Helly families.

* An *abstract simplicial complex* is a set family `F` (consisting of finite sets) that is downward closed; that is, every subset of a set in `F` is also in `F`. A matroid is an abstract simplicial complex with an additional property called the augmentation property.

* Every *filter* is a family of sets.

* A *convexity space* is a set family closed under arbitrary intersections and unions of chains (with respect to the inclusion relation).

* Other examples of set families are independence systems, greedoids, antimatroids, and bornological spaces.

## Families `𝓕` of sets over `Ω`

Is necessarily true of `𝓕`, or is `𝓕` closed under:

True of 𝓕 or closed under | ⊇ |A∩B|A∪B|B∖A|Ω∖A|⋯A₁∩A₂⋯|⋯A₁∪A₂⋯|Ω∈F|∅∈F| FIP
--------------------------|---|---|---|---|---|--------|--------|---|---|------
π-system                  | Y | Y | N | N | N | No     | No     | N | N | No
Semiring                  | Y | Y | N | N | N | No     | No     | N | Y | Never
Semialgebra (Semifield)   | Y | Y | N | N | N | No     | No     | N | Y |Never
Monotone class            | N | N | N | N | N | if Aᵢ↘ | if Aᵢ↗ | N | N | No
𝜆-system (Dynkin System)  | Y | N | N |(a)| Y | No     | (b)    | Y | Y | Never
Ring (Order theory)       | Y | Y | Y | N | N | N      | N      | N | N | N
Ring (Measure theory)     | Y | Y | Y | Y | N | N      | N      | N | Y | Never
δ-Ring                    | Y | Y | Y | Y | N | Y      | N      | N | Y | Never
𝜎-Ring                    | Y | Y | Y | Y | N | Y      | Y      | N | Y | Never
Algebra (Field)           | Y | Y | Y | Y | Y | N      | N      | Y | Y | Never
𝜎-Algebra (𝜎-Field)       | Y | Y | Y | Y | Y | Y      | Y      | Y | Y | Never
Dual ideal                | Y | Y | Y | N | N | N      | Y      | Y | N | No
Filter                    | Y | N | N |Nev|Nev| N      | N      | N |∅∉F| Yes
Prefilter (Filter base)   | N | N | N |Nev|Nev| N      | N      | N |∅∉F| Yes
Filter subbase            | Y | Y | Y | N | N | N      | Y      | Y |Y  | Never
Open Topology             | Y | Y | Y | N | N | No     | (c)    | Y |Y  | Never
Closed Topology           | Y | Y | Y | N | N | (c)    | No     | Y |Y  | Never



Legend:
1. Directed by `⊇`
2. A ∩ B
3. A ∪ B
4. B ∖ A
5. Ω ∖ A
6. `⋯ A₁ ∩ A₂ ∩ ⋯`
7. `⋯ A₁ ∪ A₂ ∪ ⋯`
8. Ω ∈ F
9. ∅ ∈ F
10. FIP - Finite Intersection Property

(a) if `A ⊆ B`
(b) only if `Aᵢ↗` or they are disjoint
(c) Yes, even arbitrary `∩`
