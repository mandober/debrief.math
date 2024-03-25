# List of set identities and relations

https://en.wikipedia.org/wiki/List_of_set_identities_and_relations

This article lists mathematical properties and laws of sets, 
involving the set-theoretic operations of union, intersection, and complementation and the relations of set equality and set inclusion.

It also provides systematic procedures for evaluating expressions, and performing calculations, involving these operations and relations.

The binary operations of set union and intersection satisfy many identities. Several of these identities have well-established names.

## TOC

- 1. Notation
- 2. One subset involved
- 3. Two sets involved
- 4. Three sets involved
- 5. Cartesian products of finitely many sets
- 6. Arbitrary families of sets
- 7. Functions and sets
- 8. Sequences and collections of families of sets

## Contents

- 1. Notation
  - 1.1 Elementary set operations
- 2. One subset involved
- 3. Two sets involved
  - 3.1 Formulas for binary set operations ⋂, ⋃, \, and ∆
  - 3.2 De Morgan's laws
  - 3.3 Commutativity
  - 3.4 Other identities involving two sets
  - 3.5 Subsets ⊆ and supersets ⊇
    - 3.5.1 Set equality
    - 3.5.1.1 Empty set
    - 3.5.2 Meets, Joins, and lattice properties
- 4. Three sets involved
  - 4.1 Associativity
  - 4.2 Distributivity
    - 4.2.1 Distributivity and symmetric difference ∆
    - 4.2.2 Distributivity and set subtraction \
  - 4.3 Two set subtractions
    - 4.3.1 (L\M)\R
    - 4.3.2 L\(M\R)
  - 4.4 One set subtraction
    - 4.4.1 (L\M) ⁎ R
    - 4.4.2 L\(M ⁎ R)
    - 4.4.3 (L ⁎ M)\R
    - 4.4.4 L ⁎ (M\R)
  - 4.5 Three operations on three sets
    - 4.5.1 (L • M) ⁎ (M • R)
    - 4.5.2 (L • M) ⁎ (R\M)
    - 4.5.3 (L\M) ⁎ (L\R)
  - 4.6 Other simplifications
- 5. Cartesian products of finitely many sets
  - 5.1 Binary ⋂ of finite ⨯
  - 5.2 Binary ⋃ of finite ⨯
  - 5.3 Difference \ of finite ⨯
  - 5.4 Finite ⨯ of differences \
  - 5.5 Symmetric difference ∆ and finite ⨯
- 6. Arbitrary families of sets
  - 6.1 Definitions
  - 6.2 Distributing unions and intersections
    - 6.2.1 Binary ⋂ of arbitrary ⋃'s
    - 6.2.2 Binary ⋃ of arbitrary ⋂'s
    - 6.2.3 Arbitrary ⋂'s and arbitrary ⋃'s
      - 6.2.3.1 Incorrectly distributing by swapping ⋂ and ⋃
      - 6.2.3.2 Correct distributive laws
      - 6.2.3.3 Applying the distributive laws
    - 6.3 Distributing subtraction over ⋃ and ⋂
  - 6.4 Commutativity and associativity of ⋃ and ⋂
  - 6.5 Cartesian products Π of arbitrarily many sets
    - 6.5.1 Intersections ⋂ of Π
    - 6.5.2 Unions ⋃ of Π
    - 6.5.3 Difference \ of Π
    - 6.5.4 Symmetric difference ∆ of Π
- 7. Functions and sets
  - 7.1 Definitions
  - 7.2 (Pre)Images of arbitrary unions ⋃'s and intersections ⋂'s
  - 7.3 (Pre)Images of binary set operations
    - 7.3.1 Counter-examples: images of operations not distributing
    - 7.3.2 Conditions guaranteeing that images distribute over set operations
      - 7.3.2.1 Conditions for f(L⋂R) = f(L)⋂f(R)
      - 7.3.2.2 Conditions for f(L\R) = f(L)\f(R)
      - 7.3.2.3 Conditions for f(X\R) = f(X)\f(R)
      - 7.3.2.4 Conditions for f(L∆R) = f(L)∆f(R)
    - 7.3.3 Exact formulas/equalities for images of set operations
      - 7.3.3.1 Formulas for f(L\R) =
      - 7.3.3.2 Formulas for f(X\R) =
      - 7.3.3.3 Formulas for f(L∆R) =
      - 7.3.3.4 Formulas for f(L) =
      - 7.3.3.5 Formulas for f(L⋂R) =
  - 7.4 (Pre)Images of set operations on (pre)images
  - 7.5 (Pre)Images and Cartesian products Π
  - 7.6 (Pre)Image of a single set
    - 7.6.1 Containments ⊆ and intersections ⋂ of images and preimages
- 8. Sequences and collections of families of sets
  - 8.1 Definitions
    - 8.1.1 Definitions of categories of families of sets
    - 8.1.2 Elementwise operations on families
  - 8.2 Power set
  - 8.3 Sequences of sets
    - 8.3.1 Partitions


## 1. Notation

- Capital letters denote sets
- set union: ∪
- set intersection: ∩
- set difference: ∖, -
- symmetric difference: △, Δ, ⊖
- set compliment: S̅, Sᶜ, S⁻¹


### 1.1 Elementary set operations

For all sets A and B, ∀A∀B
- A ∪ B ≝ { x | x ∈ A ∨ x ∈ B }
- A ∩ B ≝ { x | x ∈ A ∧ x ∈ B }
- A ∖ B ≝ { x | x ∈ A ∧ x ∉ B }
- B ∖ A ≝ { x | x ∉ A ∧ x ∈ B }
- A Δ B ≝ { x | x ∈ A ⊕ x ∈ B }
- A = B ≝ { x | x ∈ A ⇔ x ∈ B }
- A ⊆ B ≝ { x | x ∈ A ⇒ x ∈ B }
- A ⊂ B ≝ { x | x ∈ A ⇔ x ∈ B ∧ A ≠ B}


Symmetric difference `A △ B`, sometimes denoted by `A ⊖ B`, equals
- A Δ B = (A ∖ B) ∪ (B ∖ A)
- A Δ B = (A ∪ B) ∖ (B ∩ A)

A set A is said to intersect another set B if their intersection is not empty, `A ∩ B ≠ ∅`. Sets that do not intersect are said to be disjoint: if `A ∩ B = ∅` then A and B are disjoint sets.

The *power set* of X is the set of all subsets of X, defined 
`℘(X) = { A | A ⊆ X }`


#### Universe set and complement notation

The notation 
`Lᶜ = X ∖ L`

may be used if L is a subset of some set X that is understood (from context, or because it is clearly stated what the superset X is).

It is emphasized that the definition of `Lᶜ` depends on context. For instance, had L been declared as a subset of Y (L ⊆ Y), with the sets Y and X not necessarily related to each other in any way, then Lᶜ would likely mean `Y ∖ L` instead of `X ∖ L`.

If it is needed then (unless indicated otherwise) it should be assumed that X denotes the universe set, 𝒰, which means that all sets that are used in the formula are subsets of X, i.e. ∀X(X ⊆ 𝒰).

In particular, the complement of a set L will be denoted by Lᶜ (unless indicated otherwise) where it should be assumed that Lᶜ denotes the complement of L in (the universe) X.


## 2. One subset involved
## 3. Two sets involved
## 4. Three sets involved
## 5. Cartesian products of finitely many sets
## 6. Arbitrary families of sets
## 7. Functions and sets
## 8. Sequences and collections of families of sets
