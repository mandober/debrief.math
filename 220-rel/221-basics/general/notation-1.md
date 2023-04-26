# Relation theory :: General

## Relations in general

>In philosophy, *relations* are ways in which objects, the *relata*, stand to each other.

**Relatum** (n. pl. relata) is a term in a proposition that is related to the referent of the proposition.

Relations are in many ways similar to *properties* in that both characterize the object they apply to. Properties are often treated as a special case of relations, that is, of unary relations that pertain only to a single relatum.

This is especially true in logic, where properties are indeed unary relations (1-place predicates). Even though the words predicate and relation are synonyms in logic, the former is preferentially used to refer to binary relations, while the latter term often denotes ternary and relations of bigger arity. Logic also treats nullary relations, which are understood as constants, such as the Bolean constants 'true' and 'false'.

## Notion of relation

Relations are one of the most important concepts since connections are found throughout mathematics. Relations instill the relational view of mathematics, moving the focus from individual objects and highlighting the associations that an object maintains with others. Instead of analysing objects per se, under the relational view, objects are considered in terms of the connections they maintain with other objects - objects are judged according to the company they keep. This view is especially dominant in graph theory and has inspired category theory where objects are structureless points, but arrows between them are sufficient to encode all the useful information about them.

## Components of relation

At its most atomic, a relation is a single connection (link, association) from one object to another, but set-theoretically, a relation is taken to be the sum of all such individual associations between objects that have become member of a set, and so a relation almost always means an association between sets.

A relation is then a global view of these individual connections, abstracted into a single, standalone object, which is again a set (of pairs of elements). A a relation can always be decomposed into its constituent components which are the individual pairs of associated elements between two sets.

Such relations between two sets are called binary relations, and they are the most common kind of relation. A binary relation relates two sets, `A` and `B`, and it is always directional in nature: the elements of set `A` are associated to elements of set `B`. Set `A` is usually called *source* or *domain* set, and set `B` a *target* or *codomain* set.

## Definition of relation

A relation `R` from set `A` to set `B` is always a subset of their Cartesian product, `R ⊆ A ⨯ B`, and so a set consisting of *ordered pairs*. The first component of an ordered pair always comes from the source set, and the second component from the target set.

Cartesian product between two sets A and B is a set, i.e. the totality of all ordered pairs - each element of A is associated with each element of B.

Cartesian product:    
`A ⨯ B = { (x,y) | ∀x ∈ A, ∀y ∈ B }`    
or, more pedantly,    
`A ⨯ B = { (x,y) | ∀x∀y(x ∈ A ∧ y ∈ B) }`

Notice that the variables `x` and `y` are universally quantified - `x` ranges over all elements of set A, while `y` ranges over all elements of B. Thus, all possible combinations of pairs are accounted for. Note that the universal quantification is not followed by implication since the two subformulas `x ∈ A` and `y ∈ B` are independent of each other and thus connected by a conjunction.

A relation between sets A and B is a subset of the Cartesian product `A ⨯ B`:

`R ⊆ A ⨯ B = { (a,b) | a ∈ A, b ∈ B }`

Note that there are no quantifiers in this formula since all elements need not be related.

Equivalently, a relation `R` between sets `A` and `B` is an element in the powerset of their Cartesian product, `𝒫(A⨯B)`:

`R ∈ 𝒫(A⨯B)`

because a powerset of any set S is a set 𝒫(S) containing all the possible subsets of set S, including the empty set and the set S itself. A powerset of any set S always includes: `∅ ∈ 𝒫(S)`, `S ∈ 𝒫(S)` (the set S itself), and for each element x ∈ S, `{x} ∈ 𝒫(S)`, among other elements (k-element combinations of elements of S).

In case one or both sets A and B are empty, their Cartesian product collapses into the empty set, and since a relation is a subset of the Cartesian product, the only subset of the empty set is the empty set. Thus, there is always at least one relation between any two sets - it has a unique name, **null relation**, and it is the empty set.

Moreover, the null relation is always a possible relation between any two sets: if one or both are empty, then the null relation is the only possible realtion betwen them; but if they are nonempty, then there may be a number of possible relations between them, one of which is the null relation.

## Number of relations

In fact, the number of possible relation between two sets `A` and `B`, where `n = |A|` and `m = |B|` is __2ⁿᵐ__, since a relation is an element of 𝒫(A⨯B). First, the cardinality of their Cartesian product is `n*m`, and then the cardinality of `𝒫(A⨯B)` is 2ⁿᵐ. If A and B are the same set A with cardinality `n` then the number of possible relations on A is `2ⁿⁿ = 2^n²`.


## Relations and functions

The notion of relation is a broader concept to that of functions; both were used for a long time before they were finally formalized. Functions have several interpretations: as rules, as procedures, as pairs, as tables, as graphs, as matrices, etc., some which are possible due to the fact that most useful functions can be expressed by a formula. However, relations, in general, cannot be expressed by a formula.

All functions are relations, but not relations are functions since relations are more general than functions. Relations express similar things as functions - connections between mathematical objects - but relations are completely unrestricted about which connections are allowed.
