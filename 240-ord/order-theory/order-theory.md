# Order theory

https://en.wikipedia.org/wiki/Order_theory

*Order theory* investigates the intuitive notion of order using binary relations.

*Order theory* provides a formal framework for describing statements such as "this is less than that" or "this precedes that".

This article introduces the field and provides basic definitions.

A list of order-theoretic terms can be found in the order theory glossary:
https://en.wikipedia.org/wiki/Glossary_of_order_theory

An outline of order theory topics:
https://en.wikipedia.org/wiki/List_of_order_theory_topics

## Contents

- 1. Background and motivation
- 2. Basic definitions
  - 2.1. Partially ordered sets
  - 2.2. Visualizing a poset
  - 2.3. Special elements within an order
  - 2.4. Duality
  - 2.5. Constructing new orders
- 3. Functions between orders
- 4. Special types of orders
- 5. Subsets of ordered sets
- 6. Related mathematical areas
  - 6.1. Universal algebra
  - 6.2. Topology
  - 6.3. Category theory
- 7. History


## Background and motivation

Orders are everywhere in mathematics and related fields like computer science. The first order often discussed is the standard order on the natural numbers (LE, GE). This intuitive concept can be extended to orders on other sets of numbers, such as the integers and the reals. The idea of being GT or LT another number is one of the basic intuitions of number systems in general. Familiar examples of orderings are the alphabetical order of words in a dictionary and the genealogical property of lineal descent within a group of people.

The notion of order is very general, extending beyond contexts that have an immediate, intuitive feel of sequence or relative quantity. In other contexts, orders may capture notions of containment or specialization. Abstractly, this type of order amounts to the inclusion (subset) relation.

Some orders, like "less-than" on the natural numbers and alphabetical order on words, have a special property that each element can be compared to any other element. These are *total orders*.

However, many other orders don't have the property that any pair of elements can be compared. For example, the *subset order* on a collection of sets: though the set of birds and the set of dogs are both subsets of the set of animals, neither the birds nor the dogs constitutes a subset of the other. Orders with incomparable elements are *partial orders*.

>*Order theory* captures the intuition of orders in general by specifying the properties a *relation* must have to be an order.

This abstract approach allows deriving theorems generally, without focusing on the details of any particular order. These insights can then be transferred to many specialized, less abstract, applications.

Driven by the wide practical use of orders, many kinds of *ordered sets* have been defined, some of which have grown into mathematical fields of their own. Additionally, order theory does not restrict itself just to the various classes of *ordering relations*, but also considers *functions between orders*. An example of an order-theoretic property of functions comes from the field of mathematical analysis where monotone functions are frequently found.

## Definitions

This section introduces ordered sets by building upon the concepts of set theory, arithmetic and binary relations.

>Orders are binary relations with specific properties (such as reflexivity, symmetry, transitivity, dichotomy).

Orders are identified by a specific set of the properties they posses.

A set `X` with a binary relation `⊑` on it is:
- **Preorder**             iff `⊑` is refl, transitive
- **Equivalance relation** iff `≡` is refl, transitive, symmetric
- **Partial order**        iff `⩽` is refl, transitive, antisymmetric
- **Identity relation**    iff `=` is refl, transitive, (anti/symmetric ?!)
- **Total order**          iff `⩽` is refl, transitive, antisymmetric, total

A preorder is the simplest ordering relation on a set that just requires reflexivity, i.e. each element is comparable to itself, `∀a. a ⊑ a`, and transitivity, i.e. `∀abc. a ⊑ b ∧ b ⊑ c -> a ⊑ c`. An equivalance relation is a preorder that is also symmeteric, `∀ab. a ⊑ b → b ⊑ a`. A partial order is a preorder that is antisymmetric, `∀ab. a ⊑ b ∧ b ⊑ a → a = b`. A total order is a partial order that is total, `∀ab. a ⊑ b ∨ b ⊑ a`.

- a generic ordering relation can be denoted `R`, `r`, `⊰`, `⊑`, `≤`, `⩽`, …
- an equivalence relation is usually denoted by `≡`.
- the fact that two elements are *incomparable* can be denoted by `a ‖ b`.
- partial and total orders can be denoted by `⩽`, `≤`
- identity relation on a set is denoted `=`


### Partial order

Suppose that `P` is a set and that `⩽` is a relation on `P` (where "relation on a set" means a "relation between its elements"). Then `⩽` is a *partial order* if it is reflexive, antisymmetric, and transitive. A set with a partial order on it is called a *partially ordered set* (poset), or, more generally, an *ordered set*.

A partial order with the additional property that any two elements are *comparable*, `∀a,b ∈ P. a ⩽ b ⋁ b ⩽ a`, is a *total order* (linear order, chain).

Partial orders:
- *subset order* on a set
- *divisibility relation* yields a partial order
- *identity relation* (=) on any set

The **identity relation** on a set is a partial order in which any two distinct elements are *incomparable*; it is the only relation that is **both a partial order and an equivalence relation** (wha? both symmeteric and antisymmetric?!).


## Visualizing a poset

*Hasse diagrams* can visually represent the elements and relations of a partial ordering. In Hasse diagrams, the vertices are the elements of a poset, and the ordering relation is indicated by the edges and the relative positioning of the vertices. If an element `x` precedes `y` then there exists a path from `x` to `y`. It is often necessary for the edges connecting elements to cross each other, but elements must never be located within an edge.

Even some infinite sets can be diagrammed by superimposing an ellipsis on a finite sub-order. This works well for ℕ but fails for ℝ which have no immediate successor above 0.

Hasse diagram of the set of divisors of 60, (partially) ordered by divisibility:

```
           60

      30    20  12

15    10  6    4

 5    3    2

      1


   f
 ⟋  ⟍
d    e
┆  ⟋ ┆
b⟋   c
 ⟍ ⟋
  a
```

Hasse fiagram of a partially ordered set:
- `d ‖ e`
- `a ⊑ c`
- `f ⊑ f`
- `b ⊓ c = a`
- `d ⊔ e = f`
