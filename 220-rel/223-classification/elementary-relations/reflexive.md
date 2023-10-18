# Reflexive relation

https://en.wikipedia.org/wiki/Reflexive_relation

## Introduction

>A Relation `R` on a set `A` is called reflexive iff every element of `A` is related to itself, i.e. `∀x(x ∈ A → xRx)`.

Notes:
- reflexivity is always a homogeneous relation (endorelation)
- reflexivity is a binary relation
- reflexivity is a one-place relation
- identity relation (diagonal) is the smallest refl rel on nonempty set
- to be refl a relation must contain id elements, but it may have extra pairs

A set `A` need not be constrained to be nonempty - reflexivity is possible either way.

The formula that expresses reflexivity forces all elements of set `A` to participate in the relation - plus each element must be related to itself - for it to be a reflexive relation.


An example of a reflexive relation is the relation "is equal to" on the set `ℝ`, since every real number is equal to itself. However, the same is not true in CS - where real numbers are represented by floating-point numbers - because they also contain elements like `NaN` and `Infinity`, and most specifically in JavaScript, for example, `NaN` is not equal to itself!

A reflexive relation is said to have the *reflexive property* or is said to possess *reflexivity*.

Along with symmetry and transitivity, reflexivity is one of three properties defining equivalence relations.

A relation `R` on the set `ℕ` is reflexive if it contains all diagonal (identity) pairs.

A graph that depicts a relation, represents a reflexive relation if each vertex has an identity arrow.




## Definition

A binary relation `R` on a set `A` is reflexive iff:
1. every element in `A` participates in the relation
2. each element `x ∈ A` is related with itself, `xRx`, i.e. `(x,x) ∈ R`

A reflexive relation `R` on a set `A` requires that each element `x ∈ A` be a component of an ordered pair `(a,a)` in `R`.


## Reflexivity

Reflexivity is the property of relations. A relation, besides being what it is (e.g. empty relation) may or may not additionally be reflexive as well.

Since a relation is nothing but a set of ordered pairs, a set of ordered pairs could also be discussed as being reflexive, provided all the pairs come from an already specified set.

Reflexivity is the property of reflexive relations and reflexive sets. A set equipped with a reflexive relation is a reflexive set.

Reflexivity is the property of being reflexive - for objects - an object is reflexive if it is related to itself.

Reflexivity is an **extrinsic property**: it associates the relation with an external set. On the other hand, being symmetric and transitive are **intrinsic properties** that depend only on the ordered pairs in the relation.

## Properties related to reflexivity

The opposite property of reflexivity is irreflexivity, `∀x(x ∈ A → ¬xRx)`.

A reflexive relation on a nonempty set cannot be:
- irreflexive,    ∀x ∈ A(¬xRx)
- asymmetric,     ∀xy ∈ A(xRy -> ¬yRx)
- antitransitive, ∀xyz ∈ A(xRy ∧ yRz -> ¬xRz)

A reflexive relation on the empty set can be (vacuously):
(there's only one refl relation on the empty set, it is the empty set as well)
- reflexive
- irreflexive
- symmetric
- asymmetric
- antisymmetric
- transitive
- antitransitive


## Checking whether a relation is reflexive

>To determine whether a relation is reflexive, the domain of the relation must be specified. Specifying only the graph of a relation is not enough to determine reflexivity.

To check whether a relation `R = (A, G)`, where `A` is the domain set and `G` is the graph of the relation, is really reflexive - the preimage of the relation (graph's preimage) must be equal to the domain, `Pre(G) = Dom(R)`.


## Reflexive relations on specific sets

### Reflexive set

A set eqquiped with a reflexive relation is called a **reflexive set**.

A relation `R` on a set `A` has the property of *reflexivity*, or is said to be *reflexive* iff `∀x ∈ A. xRx`.

Illustration of reflexive relation on a set R = {1..5}

```
┌───┬───┬───┬───┬───┬───┐
│ R │ 1 │ 2 │ 3 │ 4 │ 5 │
├───┼───┼───┼───┼───┼───┤
│ 1 │ ! │ ∙ │ ∙ │ ∙ │ ∙ │
│ 2 │ ∙ │ ! │ ∙ │ ∙ │ ∙ │
│ 3 │ ∙ │ ∙ │ ! │ ∙ │ ∙ │
│ 4 │ ∙ │ ∙ │ ∙ │ ! │ ∙ │
│ 5 │ ∙ │ ∙ │ ∙ │ ∙ │ ! │
└───┴───┴───┴───┴───┴───┘
```

- `!` these ordered pairs must be present in `R`
- `∙` presence of other pairs has no bearing on the reflexivity of `R`


### Reflexive relation on empty set

Reflexive relation is possible on the empty set - it is reflexive vacuously. In this case reflexive relation is the same as the empty relation on that set, i.e. it is the empty set.

* The empty relation `E` on a nonempty set `A` is *non-reflexive*.
* The empty relation `E` on the empty set `A` is *vacuously reflexive*.


### Reflexive relation on product set

Any relation R on a set A is a subset of the Cartesian product A², `R ⊆ A²`. 
The Cartesian product `A²` is a reflexive relation.

### Reflexive relation on set identity

Identity relation is a reflexive relation.

The **identity relation** consists only of the ordered pairs `(x,x)` for each element `x` in a set `A`, i.e.

`Iᴀ = { (x,x) | ∀x ∈ A }`

Unlike a reflexive relation that may contain other pairs of elements, the identity relation contains only the pairs `(x,x)`. That is, the identity relation is a subset of any reflexive relation on the same set, `Iᵈ ⊆ Rᵉ`.

Identity relation is the canonical reflexive relation.


## Examples

### Example #1

### Example #2: Reflexivity of the empty set

### Example #3: Reflexivity of singleton sets

* relation R = {(1,1)} on a set {1} is reflexive
