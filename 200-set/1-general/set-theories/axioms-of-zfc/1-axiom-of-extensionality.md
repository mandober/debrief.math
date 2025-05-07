# Set Theory :: ZFC Axioms :: Axiom of Extensionality

Summary
- axiom names:
  - Axiom of Extensionality
  - Axiom of Extension
- axiom short name: AxExt
- axiom schema: no
- statement: ∀A ∀B ∀x(x ∈ A ⇔ x ∈ B) ⇔ A = B
- status: first of the ZFC axioms
- consequences:
  - the axiom doesn't declare the existence of new sets
  - the axiom only establishes when two sets are equal
  - a set is uniquely identified (determined) solely by its elements
  - extensionality guarantees uniqueness of sets
  - order is immaterial
  - multiplicity of elements is immaterial
  - it defines the concept of a subset: ∀A ∀B ∀x(x ∈ A ⇒ x ∈ B) ⇒ A ⊆ B
  - when two sets are subsets of each other then they are the same set
  - equality is defined in terms of the subset relation
  - which in turn is defined in terms of the memebership relation


## Description

**Axiom of Extensionality** states that two sets that have the same elements are the same set. In other words, 
>a set is uniquely determined by its elements.

The Axiom of Extensionality codifies the principle that it doesn't matter how we specify the set, or how we order its members, or indeed how many times we count its members - all that matters are what its members are.

When invoked, the Axiom of Extensionality, makes sure that the set is unique. In general, when we have some objects `a, b, c`, then {a, b, c} is *the* set whose members are a, b, c. We emphasise the word "the", since extensionality tells us that there can be only one such set. Extensionality also licenses the following: {a,a,b} = {a,b} = {b,a}. This delivers on the point that, when we consider sets, we don't care about the order of their members, or how many times an element ocurrs.




## The axiom as FOL formula

- `∀A ∀B ∀x(x ∈ A ⇔ x ∈ B) ⇔ A = B`
- `∀X ∀Y ∀x(x ∈ X ⇔ x ∈ Y) ⇔ X = Y`
- `∀x ∀y ∀x(x ∈ x ⇔ x ∈ y) ⇔ x = y`

## Set-builder notation

The Axiom of Extensionality does not decalre the existence of new sets, it only establishes when two sets are equal, so there is no set-builder notation.

The newly defined set `B` is a subset of the set `A`, which can be specified using set-builder notation:

`B = { x | x ∈ A }` thus `B = A`

but here, since there are no explicit quantifiers, variables are understood to be universally quantified (implicitly). Thus, the above notation means that the new set `B` is comprised of all the elements of a set `A`, which makes sets `A` and `B` equal. Since `A` occurs free in the notation, it must be stated that `A` stands for a set, moreover, for some fixed set `A`.

A set-builder notation with (explicit) existential quantification can be used to signify that the newly declared set `B` does not contain all elemenets of the set `A`, so `B` is therefore a subset of `A`:

`B = { x | ∃x(x ∈ A) }` thus `B ⊆ A`

## The analysys of the formula

The FOL formula of the Axiom of Extensionality,

`∀A ∀B ∀x(x ∈ A ⇔ x ∈ B) ⇔ A = B`

builds upon the elementary relation of membership, denoted by `∈`, which is used to define the concept of subsets, denoted by `⊆`.

`∀A ∀B ∀x(x ∈ A ⇒ x ∈ B) ⇒ A ⊆ B`

for all `x`: if `x` being in `A`, implies that `x` is in `B`, implies A ⊆ B. But, in fact: if `x` being in `A`, implies that `x` is in `B`, if and only if `A ⊆ B`.

`∀A ∀B ∀x(x ∈ A ⇒ x ∈ B) ⇔ A ⊆ B`


This formula has *implication*, rather than *bijection*, between the two membership subformulas because it states the subset relation: for all x, `x` being an element of `A`, implies that `x` is in `B`. When this implication is replaced with a bijection, this meaning is bi-directional, as if we have joined two implications.

1. ∀A ∀B ∀x(x ∈ A ⇒ x ∈ B) ⇒ A ⊆ B
2. ∀A ∀B ∀x(x ∈ B ⇒ x ∈ A) ⇒ B ⊆ A
3. ∀A ∀B (A ⊆ B ⋀ B ⊆ A) ⇒ A = B
4. ∀A ∀B ∀x([x ∈ A ⇒ x ∈ B] ⋀ [x ∈ B ⇒ x ∈ A]) ⇒ (A ⊆ B ⋀ B ⊆ A)
5. ∀A ∀B ∀x(x ∈ A ⇔ x ∈ B) ⇒ A = B
6. ∀A ∀B (A = B ⇒ ∀x(x ∈ A ⇔ x ∈ B))
7. ∀A ∀B ∀x(x ∈ A ⇔ x ∈ B) ⇔ A = B


- (1) if A is a subset of B
- (2) if B is a subset of A
- (3) then A ⊆ B and B ⊆ A, which means A=B since `(A ⊆ B ⋀ B ⊆ A) ⇒ A = B`
- (4) joining two implications
- (5) since `p ⇔ q ≝ (p ⇒ q ⋀ q ⇒ p)`, and `(A ⊆ B ⋀ B ⊆ A) ⇒ A = B` by (3)
- (6) since the inverse also holds
- (7) from (5) and (6)


In terms of subsets, when two sets are subsets of each other then they are in fact the same set since one has exactly the same elements as the other.

- `∀A ∀B ∀x(x ∈ A ⇒ x ∈ B) ⇒ A ⊆ B`   if A is a subset of B
- `∀A ∀B ∀x(x ∈ B ⇒ x ∈ A) ⇒ B ⊆ A`   and B is a subset of A (redundant clause)
- `∀A ∀B ∀x(A ⊆ B ∧ B ⊆ A) ⇔ B = A`   then A and B are the same set

That is, is A is a subset of B and B is a subset of A, then A and B are equal.

Conversely, if A and B are equal, then they are subsets of each other
- `∀A ∀B ∀x(A = B ⇔ A ⊆ B ∧ B ⊆ A)`

*Equality* is defined in terms of the subset relation, which is, in turn, defined in terms of the memebership relation.
