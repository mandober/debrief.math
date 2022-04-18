# Order theory

https://en.wikipedia.org/wiki/Order_theory

Order theory investigates the intuitive notion of order using binary relations, and provides a formal framework for describing statements such as "this is less than that" or "this precedes that".

## Background and motivation

Orders are everywhere in mathematics and related fields like computer science. The first order often discussed in primary school is the standard order on the natural numbers (LE, GE). This intuitive concept can be extended to orders on other sets of numbers, such as the integers and the reals. The idea of being GT or LT another number is one of the basic intuitions of number systems in general. Familiar examples of orderings are the alphabetical order of words in a dictionary and the genealogical property of lineal descent within a group of people.

The notion of order is very general, extending beyond contexts that have an immediate, intuitive feel of sequence or relative quantity. In other contexts, orders may capture notions of containment or specialization. Abstractly, this type of order amounts to the inclusion (subset) relation.

Order theory captures the intuition of orders in a general setting by specifying the properties a relation must possess to be an order. The abstract approach allows deriving numerous theorems generally, without focusing on the details of any particular order. These insights can then be readily transferred to many specialized, less abstract, applications.

Driven by the wide practical use of orders, numerous kinds of ordered sets have been defined, some of which have grown into mathematical fields of their own. 

Additionally, order theory does not restrict itself just to the various classes of ordering relations, but also considers functions between them. A simple example of an order-theoretic property of functions comes from the field of mathematical analysis where monotone functions are frequently found.

## Basic definitions

This section introduces ordered sets by building upon the concepts of set theory, arithmetic and binary relations.

### Partially ordered sets

Orders are special binary relations.

Suppose that `P` is a set and that `⩽` is a relation on `P`. Then `⩽` is a partial order if it is reflexive, antisymmetric, and transitive.

A set with a partial order on it is called a *partially ordered set* (poset) or just *ordered set* if the intended meaning is clear. By checking these properties, one immediately sees that the well-known orders on natural numbers, integers, rational numbers and reals are all orders in the above sense.

However, these examples have the additional property that any two elements are *comparable*: `∀a,b ∈ P. a ⩽ b ⋁ b ⩽ a`. A partial order with this property is called a *total order* (also called linear order or a chain). Many advanced properties of posets are interesting mainly for non-linear orders. While many familiar orders are linear, some are only partial orders.

Partial orders:
- *subset order* on a set
- *the divisibility relation* yields a partial order
- *the identity relation* (=) on any set.

The **identity relation** on a set is a partial order in which every two distinct elements are *incomparable*. It is also the only relation that is *both a partial order and an equivalence relation*.

## Visualizing a poset

*Hasse diagrams* can visually represent the elements and relations of a partial ordering. In Hasse diagrams, the vertices are the elements of a poset and the ordering relation is indicated by the edges and the relative positioning of the vertices.

Orders are drawn bottom-up: if an element `x` precedes `y` then there exists a path from `x` to `y` that is directed upwards. It is often necessary for the edges connecting elements to cross each other, but elements must never be located within an edge.

Even some infinite sets can be diagrammed by superimposing an ellipsis on a finite sub-order. This works well for ℕ but fails for ℝ which have no immediate successor above 0.


```
             60

      30     20   12

15    10     6    4

5      3     2

       1
```

Hasse diagram of the set of all divisors of 60, partially ordered by divisibility.
