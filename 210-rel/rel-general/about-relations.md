# Relation theory :: About relations

In philosophy, relations are ways in which things, *the relata*, stand to each other.

In metaphysics, theories of relations are developed to explain the problem of how can exactly things be raled each other (see *Bradley's regress*).

Metaphysical difficulties, like the question of *where relations are located*, lie at the center of discussions of their ontological status.


*Arity of relation* is the number of entities it connects. A relation can connect any number of entities (except zero), but most commonly it connects two, in which case it is called a *binary relation*. 

Relations are in many ways similar to *properties* in that both characterize the things they apply to. In fact, properties are sometimes treated as *unary relations* that involve only one "relatum".

Both relations and *properties* express features in reality with a key difference being that relations apply to several entities while properties belong to a single entity.


In math, relations are part of set theory - in fact, relations are defined as sets of ordered pairs. A relation `R` that associates elements of one set `A` to elements of another set `B` is a subset of the Cartesian product of these two sets, `R ⊆ A⨯B`. This implies that any relation between sets A and B is an element of the powerset of their product:

`R ⊆ A⨯B ⇔ R ∈ 𝒫(A⨯B)`

If sets are distinct, then a relation between them is called *heterogeneous* or *exorelation*. But if they are the same set, then it is a *homogeneous* or *endorelation* - these associate a set with itself.

The number of relations between two sets A and B, where `n = |A|` and `m = |B|` is `2ⁿᵐ`. Frequently, we consider relations on the same set, `R ⊆ A² ⇔ R ∈ 𝒫(A²)`. The number of relations on a set A, where `n = |A|`, is `2ⁿⁿ = 2^(n^2)`.

*Direction of relation* is the order in which the entities are related to each other. Relations are generally directional: a relation from A to B is distinct from a relation from B to A. In math, a relation (being a subset of Cartesian product) is a set of ordered pairs, so a relation R between sets A and B, `R ⊆ A⨯B`, consists of ordered pairs `⟨a, b⟩` such that the first component of a pair always comes from the set `A`, and the second from `B`. 

`R ⊆ A⨯B, R = { ⟨a, b⟩ | a ∈ A, b ∈ B }`

*Converse of relation* carries the same information but has the opposite direction (e.g. the contrast between "2 < 5" and "5 > 2"). The converse of a relation `R` is denoted `R⁻¹` and defined with all the components of the ordered pairs swapped:

`R ⊆ A⨯B, R⁻¹ = { ⟨b, a⟩ | a ∈ A, b ∈ B }`

In a relation between two sets A and B, `R ⊆ A×B`, set `A` is the *source* or domain set, and set `B` is the *taget* or codomain set. The names source and target are better because the terms "domain" and "codomain" have another definition in the context of relations. Namely,
- *Domain of relation* is the set of all first components: 
  `dom(R) = { a | (a, b) ∈ R }`
- *Codomain of relation* is the set of all second components. 
  `cod(R) = { b | (a, b) ∈ R }`
- *Field of relation* is the set of all first and second components. 
  `fld(R) = { x | x = a ∨ x = b, (a,b) ∈ R }`
