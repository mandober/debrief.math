# Relation (mathematics)

https://en.wikipedia.org/wiki/Relation_(mathematics)

This article is about basic notions of (homogeneous binary) relations in mathematics. For a more in-depth treatment, see *Binary relation*. For relations between more than two elements, see *Finitary relation*.

## Introduction

A binary relation on a set may or may not hold between two given set members.

For example, "is less than" is a relation on the set of natural numbers; it holds e.g. between 1 and 3, denoted as `1 < 3`, and between 3 and 4, denoted as `3 < 4`, but not between 3 and 1, denoted as `¬(3 < 1)` or `3 </ 1`, nor between 4 and 4, denoted as `¬(4 < 4)` or `4 </ 4`. However, a relation is defined on the whole set - like `>` here is defind on the entire set `ℕ` - and these examples are just some of its instances.

In fact, the relation `>` is defined in terms of `≥` relation, which in turn is defined in terms of `≤` relation, which is defined inductively as:

```
  n : ℕ            p : n ≤ m
-----------    ------------------
z≤s : 0 ≤ n    s≤s p : S n ≤ S m
```

As another example, "is sister of" is a relation on the set of all people, it holds e.g. between Marie Curie and Bronisława Dłuska, and vice versa.

Set elements may not be in a relation "to a certain degree" - either they are in the relation or they are not. Either an element of a set participates in the relation on its enclosing set by being associated to another element of the same or different set, or it does not.


Formally, a relation `R` over a set X is a set of ordered pairs `(x, y)` of members of X. The relation `R` holds between `x` and `y` if `(x, y)` is a member of `R`.

For example, the relation `≤` on the set of the natural numbers is an infinite set `R≤` of pairs of natural numbers that contains the pairs (0,0) and (0,1), but not (1,0) or (2,1).

The relation "is a nontrivial divisor of" on the set of one-digit natural numbers is sufficiently small to be shown here: `Rdiv = { (2,4), (2,6), (2,8), (3,6), (3,9), (4,8) }`. For example, 2 is a nontrivial divisor of 8, but not vice versa, hence `(2,8) ∈ Rdiv`, but `(8,2) ∉ Rdiv`.

If R is a relation that holds for x and y one often writes xRy. For most common relations in mathematics, special symbols are introduced, like "<" for "is less than", and "|" for "is a nontrivial divisor of", and, most popular "=" for "is equal to".

Various properties of relations are investigated.

A relation R is *reflexive* if xRx holds for all x, and *irreflexive* if xRx holds for no x. It is *symmetric* if xRy always implies yRx, and *asymmetric* if xRy implies that yRx is impossible. It is *transitive* if xRy and yRz always implies xRz.

For example, "is less than" is irreflexive, asymmetric, and transitive, but neither reflexive nor symmetric, "is sister of" is transitive, but neither reflexive (e.g. Pierre Curie is not a sister of himself), nor symmetric, nor asymmetric, while being irreflexive or not may be a matter of definition (is every woman a sister of herself?), "is ancestor of" is transitive, while "is parent of" is not.

Mathematical theorems are known about combinations of relation properties, such as "A transitive relation is irreflexive iff it is asymmetric".

Of particular importance are relations that satisfy certain combinations of properties. A *partial order* is a relation that is reflexive, asymmetric, and transitive, an *equivalence relation* is a relation that is reflexive, symmetric, and transitive, a *function* is a relation that is right-unique and left-total.

Since relations are sets, they can be manipulated using set operations, including union, intersection, and complementation, and satisfying the laws of an algebra of sets.

Beyond that, operations like the *converse of a relation* and the *composition of relations* are available, satisfying the laws of a *calculus of relations*.

The above concept of relation (called homogeneous binary relation on sets) has been generalized to admit relations between members of two different sets (*heterogeneous relation*, like "lies on" between the set of all points and that of all lines in geometry), relations between 3 or more sets (*Finitary relation*, like "person x lives in town y at time z"), and *relations between classes* (like "is an element of" on the class of all sets, see Binary relation § Sets versus classes).

## Contents

- Definition
- Representation of relations
- Properties of relations
- Combinations of properties
- Operations on relations
- Examples
- Generalizations


## Definition

A binary relation `R` between sets A and B is a subset of A×B, where A is the domain set and B is the codomain set of R.

Given a set `X`, a relation `R` over `X` is a set of ordered pairs of elements from `X`, formally, `R ⊆ { (x,y) | x,y ∈ X }`.

The statement `(x, y) ∈ R` reads "x is R-related to y" and is written in infix notation as `xRy`.

The order of elements in an ordered pair is important, `(x,y) ≠ (y,x)`. For example, if `x` and `y` are distinct, then `yRx` can be true or false independently of wherther `xRy`. For example, 3 divides 9, but 9 does not divide 3.

## Representation of relations

A relation on a finite set may be represented as:
- Hasse diagram
- directed graph
- boolean matrix
- 2D-plot
