# Relations in mathematics

https://en.wikipedia.org/wiki/Relation_(mathematics)

This article is about basic notions of (homogeneous binary) relations in mathematics. For a more in-depth treatment, see "Binary relation". For relations between more than two elements, see "Finitary relation".

## Introduction

A *relation on a set* may or may not hold between any two set members.

For example, "is less than" is a relation on the set of natural numbers; it holds between 1 and 3, as denoted by `1 < 3`, and between 3 and 4, as denoted by `3 < 4`, but not between 3 and 1, as denoted by `¬(3 < 1)` or `3 </ 1`, nor between 4 and 4, as denoted by `¬(4 < 4)` or `4 </ 4`.

However, a relation is defined on the whole set; The GT (>) relation here is defined on the whole set `ℕ`, and these examples show some of its instances. The GT relation is total, i.e. similar to total functions which are defined on every element of a set, total relation (like <, >, ≤, ≥) is defined for any two pairs of elements of the set. But some relations are not - some relations are undefined for some pairs of elements, in which case those elements are said to be *incomparable*, and usually denoted by `a ‖ b`.

>Thus, a relation on a set is defined on the entire set, and for any two arbitrary elements in the set, the relation may or may not hold.

>Set members may not be in relation "to a certain degree" - either they are in relation or they are not.

>Some relations are undefined for some pairs of elements, in which case those elements are said to be *incomparable*, `a ‖ b`.


A relation like `<` is defined on any two pairs of elements of ℕ. For any `x` and `y` in ℕ, either `x < y` or `y < x` or `x = y`.

However, a relation `R` on a set `A` may not be defined for all pairs of elements. Thus, for any `x` and `y` in set `A`, we may have that
- `xRy` holds, i.e. `(x,y) ∈ R`, or
- `xRy` does not hold, i.e. `(x,y) ∉ R`, or
- `x‖y` if x and y are incompatible, incomparable elements
i.e. either the relation holds, or does not hold, or is undefined.

### Example

For example, considering the relation `<` on the powerset of set `A = {1,2,3}` which has 8 elements and is ordered by inclusion (and `<` defined in a custom way like below):

```
     {1,2,3}
    ↗   ↑   ↖
{1,2} {1,3} {2,3}
 ↖   ↗↖  ↗↖  ↗
  {1}  {2}  {3}
    ↖   ↑  ↗
        ∅
```

we have that either `x < y` or `x ⊀ y` or `x = y` or `x ‖ y`. That is, between any two elements, the relation *may hold* or *may not hold* or *may be undefined*.

```hs
-- defined and holds
      ∅ < {3}
      ∅ < {1,2}
      ∅ < {1,2,3}
    {1} < {2}
    {1} < {3}
    {2} < {3}
    {1} < {1,2}
    {1} < {1,3}
    {2} < {2,3}
    {3} < {2,3}
  {1,2} < {1,2,3}

-- defined but does not hold
      ∅ < ∅
    {1} < {1}
    {2} < {2}
    {3} < {3}
  {2,3} < {2,3}
{1,2,3} < {1,2,3}
{1,2,3} < {1,2}

-- undefined
  {1,2} ‖ {1,3}
  {1,2} ‖ {2,3}
  {1,3} ‖ {2,3}
```

### Bidirectional

Some relations are proportional, like "is sister of" and some are not, like "is father of". In fact, "is father of" does not hold if inverted, but there exists a relation (namely "is child of") that can be considered as its true inverse and which does hold.


### Formally

Formally, a relation `R` over a set X is a set of ordered pairs `(x, y)` of members of X.

R ⊆ A×A
R ⊆ A²
R = { (x,y) | x,y ∈ A }

The relation `R` holds between `x` and `y` if `(x, y)` is a member of `R`. 
`xRy ⇔ (x,y) ∈ R`


For example, the relation ≤ on ℕ, `(≤, ℕ)` is an infinite set of ordered pairs of natural numbers, `ℕ×ℕ`, that contains the pairs (0,0) and (0,1), but not (1,0) or (2,1).

- Identity relation on ℕ is the secondary diagonal, `Iᴀ = {(0,0),(1,1),…,(n,n)}`
- Relation `=` is `Iᴀ`
- Relation `≠` includes all pairs "above" and "below" `Iᴀ`, but not `Iᴀ`
- Relation `≤` includes `Iᴀ` and all pairs "above" it
- Relation `≥` includes `Iᴀ` and all pairs "below" it
- Relation `<` includes all pairs "above" `Iᴀ`
- Relation `>` includes all pairs "below" `Iᴀ`

```
     ⁰     ¹     ²     ³
⁰ (0,0) (0,1) (0,2) (0,3) ⋯
¹ (1,0) (1,1) (1,2) (1,3) ⋯
² (2,0) (2,1) (2,2) (2,3) ⋯
³ (3,0) (3,1) (3,2) (3,3) ⋯
    ⋮      ⋮     ⋮      ⋮   ⋱
```


The relation "is a nontrivial divisor of" on the set of one-digit natural numbers is sufficiently small to be shown here: `Rdiv = { (2,4), (2,6), (2,8), (3,6), (3,9), (4,8) }`. For example, 2 is a nontrivial divisor of 8, but not vice versa, hence `(2,8) ∈ Rdiv`, but `(8,2) ∉ Rdiv`.

If R is a relation that holds for x and y one often writes xRy. For most common relations in mathematics, special symbols are introduced, like "<" for "is less than", and "|" for "is a nontrivial divisor of", and, most popular "=" for "is equal to".

### Properties of relations

Various properties of relations are investigated.

A relation R is *reflexive* if xRx holds for all x, and *irreflexive* if xRx holds for no x. It is *symmetric* if xRy always implies yRx, and *asymmetric* if xRy implies that yRx is impossible. It is *transitive* if xRy and yRz always implies xRz.

For example, "is less than" is irreflexive, asymmetric, and transitive, but neither reflexive nor symmetric, "is sister of" is transitive, but neither reflexive (e.g. Pierre Curie is not a sister of himself), nor symmetric, nor asymmetric, while being irreflexive or not may be a matter of definition (is every woman a sister of herself?), "is ancestor of" is transitive, while "is parent of" is not.

Mathematical theorems are known about combinations of relation properties, e.g.
>A transitive relation is irreflexive iff it is asymmetric.

Of particular importance are relations that satisfy certain combinations of properties. A *partial order* is a relation that is reflexive, asymmetric, and transitive, an *equivalence relation* is a relation that is reflexive, symmetric, and transitive, a *function* is a relation that is `right-unique` and `left-total`.


Since relations are sets, they can be manipulated using set operations, including union, intersection, and complementation, and satisfying the laws of an *algebra of sets*.

Beyond that, operations like the *converse of a relation* and the *composition of relations* are available, satisfying the laws of a *calculus of relations*.

The above concept of relation, called *homogeneous binary relation on sets*, has been generalized to admit
- relations between members of two different sets, called *heterogeneous relations*, like "lies on" between the set of all points and all lines
- relations between 3 or more sets (finitary relations, like "person x lives in town y at time z")
- relations between classes, like "is an element of" on the class of all sets (see Binary relation § Sets versus classes).

## Contents

- Definition
- Representations of relations
- Properties of relations
- Combinations of properties
- Operations on relations
- Theorems about relations
- Generalizations

## Definition

A binary relation `R` between sets A and B is a subset of A×B, where A is the domain set and B is the codomain set of R.

Given a set `X`, a relation `R` over `X` is a set of ordered pairs of elements from `X`, formally, `R ⊆ { (x,y) | x,y ∈ X }`.

The statement `(x, y) ∈ R` reads "x is R-related to y" and is written in infix notation as `xRy`.

The order of elements in an ordered pair is important, `(x,y) ≠ (y,x)`. For example, if `x` and `y` are distinct, then `yRx` can be true or false independently of wherther `xRy`. For example, 3 divides 9, but 9 does not divide 3.

## Representations of relations

A relation `R` on a finite set may be represented as:
- directed graph
- Boolean matrix
- 2D-plot
- Hasse diagram (transitive relations)

*Directed graph*: Each member of X corresponds to a vertice; a directed edge from x to y exists iff (x,y) ∈ R.

*Boolean matrix*: The members of X are arranged in some fixed sequence x₁,…,xₙ; the matrix has dimensions n×n, with the element in line i, column j, being ✔, if (xᵢ,xⱼ) ∈ R, and ✘, otherwise.

*2D-plot*: As a generalization of a Boolean matrix, a relation on ℝ can be represented as a two-dimensional geometric figure: using Cartesian coordinates, draw a point at (x,y) whenever (x,y) ∈ R.

*Hasse diagram*: Each member of X corresponds to a vertice; directed edges are drawn such that a directed path from x to y exists if, and only if, (x,y) ∈ R. Compared to a directed-graph representation, a Hasse diagram needs fewer edges, leading to a less tangled image. Since the relation "a directed path exists from x to y" is transitive, *only transitive relations can be represented in Hasse diagrams*. Usually the layout of the diagram is such that all edges point up, and the arrows are omitted.

## Properties of relations

Some important properties that a relation `R` over a set X may have.

* *Reflexive*
  - `∀x ∈ X. x ~ x`
  - `≥` is a reflexive, `>` is not
  - *non-reflexive*, negation of reflexive:
    ¬(∀x ∈ X. x ~ x) = `∃x ∈ X. x ≁ x`

* *Irreflexive* (or strict)
  `∀x ∈ X. x ≁ x`
  For example, > is an irreflexive relation, but ≥ is not.
  *non-irreflexive*

The previous 2 alternatives are not exhaustive; e.g. the relation `y = x²` is neither irreflexive, nor reflexive, since it contains the pair (0, 0), but not (2, 2), respectively.

* *Symmetric*
  `∀xy. x ~ y ⇒ y ~ x`
  For example, "is a blood relative of" is a symmetric relation, because x is a blood relative of y iff y is a blood relative of x.
  *non-symmetric*

* *Antisymmetric*
  `∀xy. x ~ y ∧ y ~ x ⇒ x = y`
  For example, ≥ is an antisymmetric relation; so is >, but vacuously (the condition in the definition is always false).
  *non-antisymmetric*

* *Asymmetric*
  for all x, y ∈ X, if xRy then not yRx. 
  A relation is asymmetric if and only if it is both antisymmetric and irreflexive. 
  For example, > is an asymmetric relation, but ≥ is not.
  *non-asymmetric*

Again, the previous 3 alternatives are far from being exhaustive; as an example over the natural numbers, the relation xRy defined by x > 2 is neither symmetric (e.g. 5R1, but not 1R5) nor antisymmetric (e.g. 6R4, but also 4R6), let alone asymmetric.

* *Transitive*
  for all x, y, z ∈ X, if xRy and yRz then xRz. 
  A transitive relation is irreflexive if and only if it is asymmetric.
  For example, "is ancestor of" is a transitive relation, while "is parent of" is not.

* *Connected*
  for all x, y ∈ X, if x ≠ y then xRy or yRx. 
  For example, on the natural numbers, < is connected, while "is a divisor of" is not (e.g. neither 5R7 nor 7R5).

* *Strongly connected*
  for all x, y ∈ X, xRy or yRx. 
  For example, on the natural numbers, ≤ is strongly connected, but < is not.


### Uniqueness properties

These properties also generalize to heterogeneous relations.

*Injective* (also called left-unique)
For all x, y, z ∈ X, if xRy and zRy then x = z. For example, the green and blue relations in the diagram are injective, but the red one is not (as it relates both −1 and 1 to 1), nor is the black one (as it relates both −1 and 1 to 0).

*Functional* (also called right-unique, right-definite or univalent)
For all x, y, z ∈ X, if xRy and xRz then y = z. Such a relation is called a partial function. For example, the red and green relations in the diagram are functional, but the blue one is not (as it relates 1 to both −1 and 1), nor is the black one (as it relates 0 to both −1 and 1).

### Totality properties

These properties also generalize to heterogeneous relations.

*Serial* (also called total or left-total)
For all x ∈ X, there exists some y ∈ X such that xRy. Such a relation is called a multivalued function. For example, the red and green relations in the diagram are total, but the blue one is not (as it does not relate −1 to any real number), nor is the black one (as it does not relate 2 to any real number). As another example, > is a serial relation over the integers. But it is not a serial relation over the positive integers, because there is no y in the positive integers such that 1 > y. However, < is a serial relation over the positive integers, the rational numbers and the real numbers. Every reflexive relation is serial: for a given x, choose y = x.

*Surjective* (also called right-total or onto)
For all y ∈ Y, there exists an x ∈ X such that xRy. For example, the green and blue relations in the diagram are surjective, but the red one is not (as it does not relate any real number to −1), nor is the black one (as it does not relate any real number to 2).

### Combinations of properties

Relations that satisfy certain combinations of the above properties are particularly useful, and thus have received names by their own.

*Equivalence relation*
A relation that is reflexive, symmetric, and transitive. It is also a relation that is symmetric, transitive, and serial, since these properties imply reflexivity.

#### Orderings

*Partial order*
A relation that is reflexive, antisymmetric, and transitive.

*Strict partial order*
A relation that is irreflexive, antisymmetric, and transitive.

*Total order*
A relation that is reflexive, antisymmetric, transitive and connected.

*Strict total order*
A relation that is irreflexive, antisymmetric, transitive and connected.

#### Uniqueness properties

These properties also generalize to heterogeneous relations.

*One-to-one*
Injective and functional. For example, the green relation in the diagram is one-to-one, but the red, blue and black ones are not.

*One-to-many*
Injective and not functional. For example, the blue relation in the diagram is one-to-many, but the red, green and black ones are not.

*Many-to-one*
Functional and not injective. For example, the red relation in the diagram is many-to-one, but the green, blue and black ones are not.

*Many-to-many*
Not injective nor functional. For example, the black relation in the diagram is many-to-many, but the red, green and blue ones are not.

#### Uniqueness and totality properties

These properties also generalize to heterogeneous relations.

*A function*
A relation that is functional and total. For example, the red and green relations in the diagram are functions, but the blue and black ones are not.

*An injection*
A function that is injective. For example, the green relation in the diagram is an injection, but the red, blue and black ones are not.

*A surjection*
A function that is surjective. For example, the green relation in the diagram is a surjection, but the red, blue and black ones are not.

*A bijection*
A function that is injective and surjective. For example, the green relation in the diagram is a bijection, but the red, blue and black ones are not.

## Operations on relations

### Union

If R and S are relations over X then R ∪ S = {(x, y) | xRy or xSy} is the union relation of R and S. The identity element of this operation is the empty relation. For example, ≤ is the union of < and =, and ≥ is the union of > and =.

### Intersection

If R and S are relations over X then R ∩ S = {(x, y) | xRy and xSy} is the intersection relation of R and S. The identity element of this operation is the universal relation. For example, "is a lower card of the same suit as" is the intersection of "is a lower card than" and "belongs to the same suit as".

### Composition

If R and S are relations over X then S ∘ R = {(x, z) | there exists y ∈ X such that xRy and ySz} (also denoted by R; S) is the composition relation of R and S. The identity element is the identity relation. The order of R and S in the notation S ∘ R, used here agrees with the standard notational order for composition of functions. For example, the composition "is mother of" ∘ "is parent of" yields "is maternal grandparent of", while the composition "is parent of" ∘ "is mother of" yields "is grandmother of". For the former case, if x is the parent of y and y is the mother of z, then x is the maternal grandparent of z.

### Converse

If R is a relation over sets X and Y then RT = {(y, x) | xRy} is the converse relation of R over Y and X. For example, = is the converse of itself, as is ≠, and < and > are each other's converse, as are ≤ and ≥.

### Complement

If R is a relation over X then R = {(x, y) | x, y ∈ X and not xRy} (also denoted by R or ¬ R) is the complementary relation of R. For example, = and ≠ are each other's complement, as are ⊆ and ⊈, ⊇ and ⊉, and ∈ and ∉, and, for total orders, also < and ≥, and > and ≤. 

The complement of the converse relation RT is the converse of the complement: 
`(Rᵀ)ᶜ = (Rᶜ)ᵀ`


### Restriction

If R is a relation over X and S is a subset of X then R|S = {(x, y) | xRy and x, y ∈ S} is the restriction relation of R to S. The expression R|S = {(x, y) | xRy and x ∈ S} is the left-restriction relation of R to S; the expression R|S = {(x, y) | xRy and y ∈ S} is called the right-restriction relation of R to S. If a relation is reflexive, irreflexive, symmetric, antisymmetric, asymmetric, transitive, total, trichotomous, a partial order, total order, strict weak order, total preorder (weak order), or an equivalence relation, then so too are its restrictions. However, the transitive closure of a restriction is a subset of the restriction of the transitive closure, i.e., in general not equal. For example, restricting the relation "x is parent of y" to females yields the relation "x is mother of the woman y"; its transitive closure does not relate a woman with her paternal grandmother. On the other hand, the transitive closure of "is parent of" is "is ancestor of"; its restriction to females does relate a woman with her paternal grandmother.

### Containment

A relation `R` over sets `X` and `Y` is said to be *contained in* a relation `S` over `X` and `Y`, written `R ⊆ S`, if `R` is a subset of `S`, that is, for all x ∈ X and y ∈ Y, if xRy, then xSy.

R ⊆ X×Y
S ⊆ X×Y
R ⊆ S
∀x ∈ X. ∀y ∈ Y. xRy ⇒ xSy

### Equal to

If `R` is contained in `S` and 
`S` is contained in `R`, 
then `R` and `S` are *equal relations*, 
written `R = S`.

### Smaller than

If R is contained in S 
but S is not contained in R, 
then R is said to be *smaller than* S, 
written `R ⊊ S`.

For example, on ℚ, 
the relation `>` is *smaller than* `≥`, 
and *equal to* the composition `> ∘ >`.

## Theorems about relations

- A relation is asymmetric if, and only if, it is antisymmetric and irreflexive.
- A transitive relation is irreflexive if, and only if, it is asymmetric.
- A relation is reflexive if, and only if, its complement is irreflexive.
- A relation is strongly connected if, and only if, it is connected and reflexive.
- A relation is equal to its converse if, and only if, it is symmetric.
- A relation is connected if, and only if, its complement is anti-symmetric.
- A relation is strongly connected if, and only if, its complement is asymmetric.
- If relation R is contained in relation S, then
- If R is reflexive, connected, strongly connected, left-total, or right-total, then so is S.
- If S is irreflexive, asymmetric, anti-symmetric, left-unique, or right-unique, then so is R.
- A relation is reflexive, irreflexive, symmetric, asymmetric, anti-symmetric, connected, strongly connected, and transitive if its converse is, respectively.


## Examples

- Order relations, including strict orders:
  - Greater than
  - Greater than or equal to
  - Less than
  - Less than or equal to
  - Divides (evenly)
  - Subset of
- Equivalence relations:
  - Equality
  - Parallel with (for affine spaces)
  - Is in bijection with
  - Isomorphic
- Tolerance relation, a reflexive and symmetric relation:
  - Dependency relation, a finite tolerance relation
  - Independency relation, the complement of some dependency relation
  - Kinship relations


https://en.wikipedia.org/wiki/Tolerance_relation
https://en.wikipedia.org/wiki/Dependency_relation
https://en.wikipedia.org/wiki/Independency_relation

## Generalizations

The above concept of relation has been generalized to admit relations between members of two different sets.

Given sets X and Y, a *heterogeneous relation* R over X and Y is a subset of `{ (x,y): x ∈ X, y ∈ Y }`.

When X = Y, the relation concept described above is obtained; it is often called *homogeneous relation (or endorelation)* to distinguish it from its generalization.

An example of a heterogeneous relation is "ocean x borders continent y". The best-known examples are **functions** (i.e. **right-unique and left-total heterogeneous relations**) with distinct domains and ranges, such as `sqrt : ℕ → ℝᐩ`.


## Refs

https://en.wikipedia.org/wiki/Category:Binary_relations
https://en.wikipedia.org/wiki/Category:Functions_and_mappings
https://en.wikipedia.org/wiki/Category:Inequalities
https://en.wikipedia.org/wiki/Category:Mathematical_relations
https://en.wikipedia.org/wiki/Category:Recurrence_relations
https://en.wikipedia.org/wiki/Category:Reflexive_relations
https://en.wikipedia.org/wiki/Category:Symmetric_relations
https://en.wikipedia.org/wiki/Category:Transitive_relations

https://en.wikipedia.org/wiki/Accessibility_relation
https://en.wikipedia.org/wiki/Ancestral_relation
https://en.wikipedia.org/wiki/Antisymmetric_relation
https://en.wikipedia.org/wiki/Apartness_relation
https://en.wikipedia.org/wiki/Asymmetric_relation

https://en.wikipedia.org/wiki/Better-quasi-ordering
https://en.wikipedia.org/wiki/Binary_relation
https://en.wikipedia.org/wiki/BIT_predicate

https://en.wikipedia.org/wiki/Category_of_relations
https://en.wikipedia.org/wiki/Comparability
https://en.wikipedia.org/wiki/Composition_of_relations
https://en.wikipedia.org/wiki/Congruence_relation
https://en.wikipedia.org/wiki/Connected_relation
https://en.wikipedia.org/wiki/Converse_relation
https://en.wikipedia.org/wiki/Countable_Borel_relation
https://en.wikipedia.org/wiki/Covering_relation

https://en.wikipedia.org/wiki/Dense_order
https://en.wikipedia.org/wiki/Dependency_relation
https://en.wikipedia.org/wiki/Directed_set

https://en.wikipedia.org/wiki/Equality_(mathematics)
https://en.wikipedia.org/wiki/Equipollence_(geometry)
https://en.wikipedia.org/wiki/Equivalence_class
https://en.wikipedia.org/wiki/Equivalence_relation
https://en.wikipedia.org/wiki/Euclidean_relation

https://en.wikipedia.org/wiki/Fiber_(mathematics)
https://en.wikipedia.org/wiki/Finitary_relation

https://en.wikipedia.org/wiki/Heterogeneous_relation
https://en.wikipedia.org/wiki/Homogeneous_relation

https://en.wikipedia.org/wiki/Idempotent_relation
https://en.wikipedia.org/wiki/Incidence_structure
https://en.wikipedia.org/wiki/Intransitivity
https://en.wikipedia.org/wiki/Join_and_meet
https://en.wikipedia.org/wiki/Law_of_trichotomy
https://en.wikipedia.org/wiki/Noetherian_relation
https://en.wikipedia.org/wiki/Order_theory

https://en.wikipedia.org/wiki/Partial_function
https://en.wikipedia.org/wiki/Partially_ordered_set
https://en.wikipedia.org/wiki/Preorder
https://en.wikipedia.org/wiki/Prewellordering
https://en.wikipedia.org/wiki/Process_calculus#Sequential_composition
https://en.wikipedia.org/wiki/Property_(mathematics)

https://en.wikipedia.org/wiki/Quasitransitive_relation
https://en.wikipedia.org/wiki/Quotient_by_an_equivalence_relation

https://en.wikipedia.org/wiki/Rational_consequence_relation
https://en.wikipedia.org/wiki/Reduct
https://en.wikipedia.org/wiki/Reflexive_closure
https://en.wikipedia.org/wiki/Reflexive_relation
https://en.wikipedia.org/wiki/Relation_(mathematics)
https://en.wikipedia.org/wiki/Relation_algebra
https://en.wikipedia.org/wiki/Relation_construction
https://en.wikipedia.org/wiki/Representation_(mathematics)

https://en.wikipedia.org/wiki/Semiorder
https://en.wikipedia.org/wiki/Separoid
https://en.wikipedia.org/wiki/Serial_relation
https://en.wikipedia.org/wiki/Series-parallel_partial_order
https://en.wikipedia.org/wiki/Stochastic_transitivity
https://en.wikipedia.org/wiki/Symmetric_closure
https://en.wikipedia.org/wiki/Symmetric_relation

https://en.wikipedia.org/wiki/Ternary_equivalence_relation
https://en.wikipedia.org/wiki/Ternary_relation
https://en.wikipedia.org/wiki/Total_order
https://en.wikipedia.org/wiki/Total_relation
https://en.wikipedia.org/wiki/Transitive_closure
https://en.wikipedia.org/wiki/Transitive_relation
https://en.wikipedia.org/wiki/Weak_ordering
https://en.wikipedia.org/wiki/Well-founded_relation
https://en.wikipedia.org/wiki/Well-order
https://en.wikipedia.org/wiki/Well-quasi-ordering
