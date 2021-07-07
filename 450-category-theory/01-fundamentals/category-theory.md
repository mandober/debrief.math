# Category theory fundamentals

## Introduction

Category theory was developed in the 1940's by *Eilenberg* and *MacLane*. Eilenberg was an algebraic topologist and MacLane was an algebraist. They both realized that they were doing the same calculations in different areas of mathematics, which led them to lay the foundations of category theory.

Broadly, category theory is a convenient and powerful conceptual framework and a formal language for studying and discussing structures and systems of structures. The language of category theory has been used to formalize concepts of other high-level abstractions such as sets, rings, and groups.

Category theory allows us to formulate definitions and theories of concepts, to analyze the coherence of existing formulations, to discover and exploit relations with other fields, to deal with abstraction and representation independence, to formulate conjectures and research directions, to unify concepts.

In CS, category theory contributes to areas that include automata theory, domain theory, functional programming, polymorphism, semantics, type theory.

In programming language theory, category theory can be viewed as a formalization of operations on data types and a foundational theory of functions, providing the general framework for functional programming. CT has hugely influenced functional programming language Haskell, providing it with the solution to pure I/O handling in the form of monads.

Category theory may be used as an axiomatic foundation for mathematics, thereby replacing, or at least, providing an alternative to set theory.


## Foundations

Informally, category theory is a general theory of functions. In category theory, morphisms obey conditions specific to category theory itself.

A category is a generalisation of a graph with a transitive closure.

CT is very abstract, far more abstract than set theory. Being at a very high level of abstractions, objects in a category are often said to be opaque sets because their internal structure is unknown to us most of the time; perhaps, when working in the category of sets we can know more about the involved sets, but, in general, the internals of objects are opaque.

Despite this, we can still infer many facts about a category and its objects just by examining the arrows that relate different objects.

## Fundamental concepts

The three fundamental concepts at the heart of category theory are
- *category* with its objects and arrows
- *functor* is a mapping between categories
- *natural transformation* is a mapping between functors

## Intro

Category theory is founded upon the abstraction of the arrow, `f : a → b`. Here `a` and `b` are called objects and `f` is an arrow whose source is object `a` and target is object `b`.

Such directional structures occur widely in set theory, algebra, topology and logic. For example, `a` and `b` may be sets and `f` a total function from `a` to `b`; or `f` may be a partial function from set `a` to set `b`; or `a` and `b` may be algebras of the same type and `f` a homomorphism between them; or `a` and `b` may be topological spaces and `f` a continuous map; or, `a` and `b` may be propositions and `f` a proof of `a |- b`.

It is by describing structure in terms of the existence and properties of arrows that category theory achieves its wide applicability.

Math usually gives descriptions by referring to the internal structure of objects, which makes the applicability of such descriptions limited to objects that have such structure.

Categorical descriptions make no assumption about the internal structure of objects; they are given purely in terms of transformation and relations maintained by arrows. They are data-independent descriptions: the same description may apply to sets, graphs, algebras or anything else that can be considered a category.

Particularly amenable to description in terms of arrows are *canonical constructions*, which are common throughout mathematics. For example, canonical constructions in graph theory are the *transitive closure* of a graph and the *strongly-connected components* of a graph; in algebra, *free and generated algebras* are common; in group theory, *abelianization* of a group; in topology, *compactification of spaces*. An arrow-theoretic description of such constructions captures all the ingredients, including the sense in which the construction is considered to be canonical.

This generality of descriptions in term of arrows is countered by the absence of practical application, and so a considerable effort is put to unravelling categorical descriptions in a particular setting.




## Related

```
CT -------- HCT
|            |
|            |
|            |
DTT ------- HTT

CT  Category theory
HCT Higher Category theory
DTT Dependent Type Theory
HTT Homotopy Type Theory
```
