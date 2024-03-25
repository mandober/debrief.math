# Family of sets

https://en.wikipedia.org/wiki/Family_of_sets

(Not to be confused with [Indexed family](./indexed-family))

More loosely, any collection of sets is a family.

>More strictly, a collection `F` of subsets of a set `S` is called a **family of (sub)sets** of/over `S`.

This is a more strict definition where each member of the family of sets, `F`, is a subset of `S`, `F = {F₀, F₁, …, Fₙ}` and `Fᵢ ⊆ S`.

Any arbitrary collection of subsets of a given set `S` is a family of sets.

Thus, the powerset of `S`, `𝒫(S)`, being the collection of all the subsets of `S`, is a family of sets. Any family of subsets of a set `S` is itself a subset of `𝒫(S)`, `F ⊆ 𝒫(S)`.

The term "collection" is used above because, in some contexts, members of a family of sets may be mutlisets, and in other contexts, the collection is actually a proper class rather than a set.

A *hypergraph* is a finite family of subsets of a finite set `S`.

The subject of *extremal set theory* concerns the largest and smallest examples of families of sets satisfying certain restrictions.

## Examples

* `𝒫(S)`, collection of all subsets of the set `S`, is a family of sets

* A subset of `S` having `k` elements is called a **k-subset of `S`**. The k-subsets `S(k)` of a set `S` also form a family of sets.

* Let `S = {a,b,c,1,2}`. An example of a family of sets over `S` 
(in the multiset sense) is given by `F = {A1, A2, A3, A4}` 
where `A1 = {a,b,c}`, `A2 = {1,2}`, `A3 = {1,2}`, `A4 = {a,b,1}`.

* The class `Ord` of all ordinal numbers is a large family of sets. That is, it is not itself a set but a proper class.

## Properties

* Any family of subsets of a set `S` is itself a subset of the power set `𝒫(S)` (if it has no repeated members, i.e. if members are sets, not multisets).

* Any family of sets (without repetitions) is a subclass of the proper class of all sets (the universe).

* *Hall's marriage theorem*, due to Philip Hall, gives necessary and sufficient conditions for a finite family of non-empty sets (repetitions allowed) to have a system of distinct representatives.

* If `𝓕` is any family of sets then `⋃ 𝓕 := ⋃ {F ∈ 𝓕} F` denotes the union of all sets in `𝓕`, where in particular, `⋃ ∅=∅`. Any family `𝓕` of sets is a family over `∪𝓕` and also a family over any superset of `⋃ 𝓕`.

## Related concepts

Certain types of objects from other areas of mathematics are equivalent to families of sets, in that they can be described purely as a collection of sets of objects of some type:
- hypergraph
- abstract simplicial complex
- incidence structure
- binary block code
- topological space

A hypergraph, also called a set system, is formed by a set of vertices together with another set of hyperedges, each of which may be an arbitrary set. The hyperedges of a hypergraph form a family of sets, and any family of sets can be interpreted as a hypergraph that has the union of the sets as its vertices.

## Special types of set families

- Sperner family
  https://en.wikipedia.org/wiki/Sperner_family
- Helly family
  https://en.wikipedia.org/wiki/Helly_family
- abstract simplicial complex, matroid
  https://en.wikipedia.org/wiki/Abstract_simplicial_complex
  https://en.wikipedia.org/wiki/Matroid
- filters
  https://en.wikipedia.org/wiki/Filter_(set_theory)
- convexity spaces
  https://en.wikipedia.org/wiki/Convexity_space
- independence systems
  https://en.wikipedia.org/wiki/Independence_system
- greedoids
  https://en.wikipedia.org/wiki/Greedoid
- antimatroids
  https://en.wikipedia.org/wiki/Antimatroid
- bornological spaces
  https://en.wikipedia.org/wiki/Bornological_space


* A **Sperner family** is a set family in which none of the sets contains any of the others. Sperner's theorem bounds the maximum size of a Sperner family.

* A **Helly family** is a set family such that any *minimal subfamily* with empty intersection has bounded size. Helly's theorem states that *convex sets* in Euclidean spaces of bounded dimension form Helly families.

* An **abstract simplicial complex** is a set family `F` (consisting of finite sets) that is *downward closed*; that is, every subset of a set in `F` is also in `F`. A *matroid* is an abstract simplicial complex with an additional property called the augmentation property.

* Every **filter** is a family of sets.

* A **convexity space** is a set family closed under arbitrary intersections and unions of chains (with respect to the inclusion relation).


## Families `𝓕` of sets over `Ω`

Families `𝓕` of sets over `Ω`
- π-system
  https://en.wikipedia.org/wiki/Pi-system
- Semiring
  https://en.wikipedia.org/wiki/Ring_of_sets#semiring
- Semialgebra (Semifield)
  https://en.wikipedia.org/wiki/Semialgebra
- Monotone class
  https://en.wikipedia.org/wiki/Monotone_class
- 𝜆-system (Dynkin System)
  https://en.wikipedia.org/wiki/Dynkin_system
- Ring (Order theory)
  https://en.wikipedia.org/wiki/Ring_of_sets
- Ring (Measure theory)
  https://en.wikipedia.org/wiki/Ring_of_sets
- δ-Ring
  https://en.wikipedia.org/wiki/Delta-ring
- 𝜎-Ring
  https://en.wikipedia.org/wiki/Sigma-ring
- Algebra (Field)
  https://en.wikipedia.org/wiki/Field_of_sets
- 𝜎-Algebra (𝜎-Field)
  https://en.wikipedia.org/wiki/%CE%A3-algebra
- Dual ideal
  https://en.wikipedia.org/wiki/Dual_ideal
- Filter
  https://en.wikipedia.org/wiki/Filter_(set_theory)
- Prefilter (Filter base)
  https://en.wikipedia.org/wiki/Prefilter
- Filter subbase
  https://en.wikipedia.org/wiki/Filter_subbase
- Open Topology
  https://en.wikipedia.org/wiki/Topology_(structure)
- Closed Topology
  https://en.wikipedia.org/wiki/Topology_(structure)




## Refs

https://en.wikipedia.org/wiki/Category:Families_of_sets
https://en.wikipedia.org/wiki/Laminar_set_family
