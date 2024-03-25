# Category

https://en.wikipedia.org/wiki/Category_(mathematics)

## Summary

Let
- ℂ be a category
- x,y,z ∈ Ob(ℂ)
- f: a → b, g: b → c ∈ Ar(ℂ)

- h : a → c ∈ Ar(ℂ)

Properties of category
- collection[^¹] of objects, `Ob(ℂ)`
- collection of arrows between these objects, `Ar(ℂ)`
- the existence of an identity arrow for each object
- the ability to compose arrows associatively
- such that, f: a → b ∈ Ar(ℂ)


[^¹]: The term "collection" is used vaguely instead of a more concrete container of elemnts such as set, class or even conglomerate. This has to do with CT being unable to get rid of ST. Even from the get go, we must consider what kind of collection the elements of a category make, primarily the objects and arrows. In fact, a *small category* is one whose objects constitute a set, while a *large category* is one whose objects constitute a class. There is still a problem of clearly defining bigger collections, especially the category of (all) categories, so even terms like *conglomerate* are thrown around (they are even larger than classes. Adding another level after classes suggests a hierarchy of further levels heading toward the infinity à la primordial Russell's type theory). Most books on CT, if they even mention this problem, give no clear resolution, or hint that using the vonNeumann-Bernays-Gödel, or another set theory with classes, could save the day. Hand at heart, this problem has to do more with the nature of collection, than with CT, but still it gets inconvenient having a footnote run for several pages explaining these basic matters. In math, one certainly cannot mention any kind of collection without getting into the specifics regarding its size, and, God forbid, the possible implications of collection of (all) collections.

## Introduction

A **category** (sometimes called an **abstract category** to distinguish it from a *concrete category*) is a collection of "objects" that are linked by "arrows".

A category has two basic properties:
- the ability to compose the arrows associatively
- the existence of an identity arrow for each object

A simple example is the category of sets, `Set`, whose objects are sets and whose arrows are total functions on sets.

*Category theory* is a branch of mathematics that seeks to generalize all of mathematics in terms of categories, independent of what their objects and arrows represent. Virtually every branch of modern mathematics can be described in terms of categories, and doing so often reveals deep insights and similarities between seemingly different areas of mathematics. As such, category theory provides an alternative *foundation for mathematics* to set theory and other proposed axiomatic foundations.

In general, objects and arrows may be abstract entities of any kind, and the notion of category provides a fundamental and abstract way to describe mathematical entities and their relationships.

In addition to formalizing mathematics, category theory is also used to formalize many other systems across sciences, such as the semantics of programming languages in computer science, the semantics of natural languages in linguistics.

*Two categories are the same* if they have
- the same collection of objects
- the same collection of arrows
- the same associative method of composing any pair of arrows

Two different categories may also be considered *equivalent* for purposes of category theory, even if they don't have exactly the same structure.

Well-known categories are denoted by a short capitalized word or abbreviation in bold or italics. Examples include `Set`, the category of sets and set functions; `Ring`, the category of rings and ring homomorphisms; `Top`, the category of topological spaces and continuous maps. These three categories have the *identity map* as *identity arrows* and *composition* as the *associative operation on arrows*.

The classic and still much used text on category theory is Categories for the Working Mathematician by Saunders Mac Lane. Other references are given in the References below. The basic definitions in this article are contained within the first few chapters of any of these books.
