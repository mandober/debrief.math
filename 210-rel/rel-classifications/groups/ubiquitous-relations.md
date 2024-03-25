# Relations :: Classifications :: Ubiquitous relations

<!-- TOC -->

- [Intro](#intro)
  - [Possible relations between sets](#possible-relations-between-sets)
- [Total relation](#total-relation)
  - [Example](#example)
  - [Negation](#negation)
- [Empty relation](#empty-relation)
- [Identity relation](#identity-relation)
- [Refs](#refs)

<!-- /TOC -->

## Intro

*Ubiquitous relations* is an artificial name for the class of relations that are always possible between any two sets: the total (or universal) relation and the empty (or null) relation. The third, i.e. the identity (or diagonal), relation, is only possible on a same set.
1. the total (universal) relation, `𝟙 = A×B = { (a,b) | ∀a ∈ A, ∀b ∈ B }`
2. the empty (null) relation, `𝟘 ⊆ A×B`, `𝟘 = ∅ = {}`
3. the identity (diagonal) relation, `𝕀 ⊆ A×B`, `𝕀 = { (a,a) | ∀a ∈ A }`

Of course, we suspect these ubiquitous relations will come in handy soon, as extrenmal and identity elements of some operations.

### Possible relations between sets

Between non-empty sets
- The empty and the total relation are always possible and they mark the two exteremes between which all the other relations are located.

Between non-empty and empty set
- Relations are directional, but in this case in doesn't matter if the empty set is the source or target set - the only possible relation between these sets is the empty relation.

On non-empty set
- The empty and the total relation are always possible and they mark the two exteremes between which all the other relations are located. However, since there is only one set here, smack dub in the middle of those two extremes is locate dthe identity relation.

On an empty set
- On an empty set, the total, empty and identity relation coincide (they are all empty sets).

## Total relation

The total or universal relation is a relation from a set A to a set B where every element of A is asociated to an element of B. Everything is related to everything would be one way to put it, but it's misleading because relations are directional. The total relation is actually the Cartesian product between the two sets. It is usually denoted by `𝕋` or `𝕌`, or even `𝟙` or `⟙`, especially if the empty relation is denoted by `𝟘` or `⟘`.

`A×B ⊇ 𝕋 = { (a, b) | ∀a ∈ A, ∀b ∈ B }`

The total relation `U` on a set `A`, with variables `x` and `y` ranging over `A`, is the Cartesian product `U = A×A`, that is, `xUy` holds always.

Like the empty relation, the total relation is unique. Also, the total and the empty relation are both often used as the extreme elements, with the total relation signifying the top element (meet, maximum, maximal) and the empty relation signifying the bottom element (join, minimum, minimal) in an algebraic structure.

If we know that a relation is total (i.e. that a graph is the graph of a total relation), then we can infer the source and target sets.

The total relation represents the relative universe, against which, other sets (of ordered pairs) can define *compliments*.

### Example

```hs
-- example 1: total relation
A = {a₀, a₁}
B = {b₀, b₁, b₂}
𝕋 = A×B = { (a₀, b₀), (a₀, b₁) , (a₀, b₂)
          , (a₁, b₀), (a₁, b₁) , (a₁, b₂)
          , (a₂, b₀), (a₂, b₁) , (a₂, b₂)
          }

-- example 2: total relation
A = {a₀, a₁}
B = ∅
𝕋 = A×B = ∅

-- example 3: total relation
A = {a₀}
𝕋 = A×A = {(a₀, a₀)}
```

### Negation

Negating the formula for the total relation results in the formula that states that no elements of A are related to elements of set B, i.e. it defines the empty relation (although with existential quantifiers).

```hs
∀x∀y((x ∈ A ∧ y ∈ B) ⇒ (x,y) ∈ R)
¬[∀x∀y((x ∈ A ∧ y ∈ B) ⇒ (x,y) ∈ R)]
∃x∃y(¬((x ∈ A ∧ y ∈ B) ⇒ (x,y) ∈ R))
∃x∃y(¬(¬(x ∈ A ∧ y ∈ B) ∨ (x,y) ∈ R))
∃x∃y((x ∈ A ∧ y ∈ B) ∧ (x,y) ∉ R)
```

So, negating the formula gives us `∃x∃y((x ∈ A ∧ y ∈ B) ∧ (x,y) ∉ R)`, the formula for the empty relation although with existential instead of the (perhaps usual and more expected) universal quantifiers:
- ∃x∃y((x ∈ A ∧ y ∈ B) ∧ (x,y) ∉ R)
- ∀x∀y((x ∈ A ∧ y ∈ B) ∧ (x,y) ∉ R)

but they both amount to the same thing, i.e. the empty set.


## Empty relation

The empty or null relation is the only type of relation guaranteed to always exists, no matter the type and number of sets involved.

The empty relation is a very peculiar relation since it is empty (more precisely, its graph is the empty set). This way, the empty relation acts like the opposite of what relations should be, as it conveys the fact that the two sets are unrelated (suppose that is also a kind of a relation in a weird way). From the pespective of having the empty set define a relation, we acknowedge that any subset of the Cartesian product defines a relation, and since the empty set is indeed one of those subsets, it follows that the empty set is also a relation, i.e. the empty relation. Of course, we all suspect that such a relation will come in handy soon, probably as an identity element to some operation.

The empty related is denoted by the same symbol for the mepty set, `∅`, or sometines by `𝟘` or `⟘` (especially if the total relation is denoted by `𝟙` or `⟙`).

`𝟘 ⊆ A×B`, `𝟘 = ∅ = {}`

The empty relation `𝟘` on a set `A`, with variables `x` and `y` ranging over `𝟘`, is the empty set `𝟘 = ∅`, that is, `xEy` holds never.

𝟘 = `∀x∀y((x ∈ A ∧ y ∈ B) ⇒ (x,y) ∉ 𝟘)` = ∅

The empty relation is always possible between any two sets, and also on a set.

The empty relation is the only possible type of relation when one of the two sets is empty.

The empty relation between two non-empty sets is just the empty set, which implies that the empty relation is one of those relation which are only fully defined when their source and target set (besides the set that is the graph of the relation) is known.

Negating the formula for the total relation results in the formula that defines the empty relation. The total and empty relation are, as expected, opposites, except in the case of the empty set when they are the same.

## Identity relation

The identity or diagonal relation is only possible on the same set. It is denoted by `𝕀` or `I`, or subscripted with the set, `𝕀ᴀ`, in case of ambiguity.

`𝕀 ⊆ A×A`, `𝕀 = { (a,a) | ∀a ∈ A }`

The identity relation, `I`, on a set `A`, with variables `x` and `y` ranging over `A`, is the set `{ (x, x) | ∀x ∈ A }`; that is, `xIy` holds iff `x = y`.

The identity relation on a set `A`, like all relations on a set, is the subset of the Cartesian product of set `A` with itself, `A²`; however, all the elements of `A` must participate in the relation, and all the pairs must be of the form `(a, a)`, i.e. they must all be *identity or diagonal pairs*; and there must not be any other pairs but identity pairs.

Like the total and the null relation, the identity relation is unique.

The identity relation is the same as the identity function.

Unlike the reflexive relation, the set that is the graph of the identity relation consists entitirely of the identity (diagonal) pairs. The identity relation is the minimal reflexive relation.

Any reflexive relation is a superset of the identity relation: if `R` is a reflexive relation on a set `A`, then `Iᴀ ⊆ R`.

When the graph of a relation is represented as a matrix, the identity relation is an identity matrix (with all 0's except the main diagonal with all 1's).

When the graph of a relation is represented as a graph, the identity relation would be a graph consisting off all disconnected vertices suich that each one has the looping arrow.

The identity relation is also one of the relation which is only fully defined when the source set is specified (because all elements if a set must participate in the relation). This property is shared between identity and reflexive relations except that the graph of the reflexive relations may contain other pairs as well.

Example:

```hs
A = { a₀, a₁, a₂ }
Iᴀ = { (a₀, a₀,), (a₁, a₁), (a₂, a₂) }
```

The total relation represents the relative universe, against which, other sets (of ordered pairs) can define compliments. *The compliment of the identity relation* on a set `A` is the total relation (Cartesian product) of set `A` minus the identity relation of set A, `(Iᴀ)ᶜ = A×A ∖ Iᴀ`.

Any irreflexive relation must be a subset of the compliment of the identity relation: if `R` is a irreflexive relation on a set `A`, then `R ⊆ (Iᴀ)ᶜ`.

Any reflexive relation is a superset of the identity relation: if `R` is a reflexive relation on a set `A`, then `Iᴀ ⊆ R`.

## Refs

https://en.wikipedia.org/wiki/Homogeneous_relation#Particular_homogeneous_relations
