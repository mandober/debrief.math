# Domain theory

https://ncatlab.org/nlab/show/domain+theory

Domain theory has its origin in the problem in finding a viable denotational semantics for certain theories of computability (such as the untyped lambda calculus) which resist straightforward interpretations in terms of sets and functions. It has since grown into an area which weaves together diverse strands in logic, computability, lattice theory, general topology, and category theory.

Domain theory can be said to have come into existence with Dana Scott's solution for interpreting untyped lambda calculus in terms of continuous lattices. In rough terms, the problem can be set out as follows:

* Lambda calculus is a syntax of functions and functional application, whose basic constituents are types, terms of types, and type and term formation schemes with which one can speak of product types `A×B` and the types of function spaces, `A -> B`.

* One problem is to construct a semantics for this syntax in terms of the "actual" elements and functions. In category-theoretic terms, lambda calculus is naturally modeled by cartesian closed categories, in which types are interpreted as objects `A` and terms are interpreted as (generalized) elements or "functions" `X -> A`.

* In an untyped lambda calculus (whose syntax is closely connected with the theory of computability and recursive functions), all terms may be regarded as being of the same type `D` (which therefore need not be mentioned - it's an "untyped" language), so that intuitively speaking, elements of `D` and functions on `D` are treated on the same footing.

* The problem Scott solved is to faithfully model untyped lambda calculus; in categorical terms, the basic problem is to construct a cartesian closed category with just one object `D` (or rather, two objects: `D` and a terminal object `1`), so that `D` is closed under formation of products and function spaces: `D ≅ D×D` and `D ≅ D -> D`. In the category of sets, the only solution is to take `D ≅ 1`, so that all terms become equal (algorithmic inconsistency). This is not a faithful modeling of untyped lambda calculus, which has provably unequal terms.

In 1969, Dana Scott solved this problem topologically: the terms were interpreted as *continuous functions* on a suitable space `D` isomorphic to its own function space. This `D` is called a *domain*. We now know many techniques for constructing such domains as suitable objects in cartesian closed categories, but Scott's basic insight, that *computability could be interpreted as continuity*, continues to exert a decisive influence today.

## Introduction

Domains are special types of posets that have played an important role in theoretical computer science since the late 1960s when they were discovered by Dana Scott for the purpose of providing a semantics for the lambda calculus. They are partially ordered sets that carry intrinsic (order theoretic) notions of completeness and approximation.

The basic intuition is that an order relation captures the idea of approximation qualitatively. There is an abstract notion of a finite piece of information, or of a finite approximation, which plays the key role in the analysis of computation.

These posets have a number of topologies defined on them: the Scott topology and the interval topology, in particular. *The Scott topology* is particularly important in that continuity with respect to this topology captures some of the information processing aspects of computability.

*Scott continuous function* has the property that a finite piece of information about the output requires only a finite piece of information about the input.

While this doesn't completely reduce Turing computability to topology, it captures a very crucial aspect of information processing aspect of computable functions.

## Domains, continuous posets and topology

A poset is a partially ordered set: a set together with a reflexive, antisymmetric and transitive relation.

[Def.1] Let `(P, ⊑)` be a partially ordered set. 
A nonempty subset `S ⊆ P` is *directed* if `∀x,y ∈ S. ∃z ∈ S. x,y ⊑ z` (notation `x,y ⊑ z` means that `x` and `y` come "before" `z` in the partial order). 
The *supremum*, `⨆ S`, of `S ⊆ P` is its least upper bound (lub), provided one exists, and it is denoted by `⨆ S`.

These ideas have duals: 
a nonempty `S ⊆ P` is *filtered* if `∀x,y ∈ S. ∃z ∈ S. z ⊑ x,y` (notation `z ⊑ x,y` means that `z` comes before `x` and `y` in the partial order). 
The *infimum* `⋀ S` of `S ⊆ P` is its greatest lower bound (glb), provided one exists.

(...)

## Origins

The problems that gave rise to Domain Theory.

1. Least fixpoints as meanings of recursive definitions

Recursive definitions of functions and data structures abound in programming, with recursion being a very effective mechanism for describing infinite computational behaviour in finite terms. Given a recursive definition, how can we describe its meaning in a non-circular way?

`X = ...X...`   (1)

Suppose we are working in a mathematical structure `D`. We want to find an element `d ∈ D` so that substituting `d` for `x` in (1) yields a valid equation.

The rhs of (1) can be interpreted as a function of `X`, i.e. semantically as `f : D -> D`. This reveals that we're actually looking for an element `d ∈ D` such that `d = f(d)`, i.e. `d` is a fixpoint of `f`.

Moreover, we want a uniform canonical method for constructing such fixpoints for arbitrary structures `D` and functions `f : D -> D` within our framework.

Elementary considerations show that the usual categories of mathematical structures either fail to meet this requirement at all (sets, topological spaces) or meet it in a trivial fashion (groups, vector spaces).

2. Recursive domain equations
