# Definitions


## Class of objects
In category theory, a **class of objects** of a category `C` is denoted by `Ob(C)`.

## Object
In category theory, **objects** are abstractions of mathematical objects. Category theory is a high-level abstraction of mathematics - it's so high that ordinary mathematical objects, like sets, look like tiny points from this perspective. The structure of mathematical objects cannot be discern from this height, thus the objects are represented by dots (points). Actually, at this level of abstraction, the objects (as points) serve only as anchors for arrows. It is the arrows alone, that relate different objects as connections between them, that let us derive any information about the objects. In CT, we learn about the objects only through their relations with other objects, relations which are revealed by arrows.

## Morphisms
Morphisms or arrows are relations between objects. They are the main element of a category, not objects. Assuming objects `a` and `b` belong to a category `C`, object `a` may be related to `b` via an arrow `f : a -> b`. Morphisms are directional, so object `a` is called the source object or a domain, and object `b` is called the target object, or a codomain.

## Homeset
The set of arrows between objects `a` and `b` in a category `C` is denoted by `Ar(a,b)`. The set of all arrows in a category `C` is denoted by `hom(C)`.

## Diagram
A diagram in a category `C` is a collection of vertices and directed edges where the vertices correspond to the objects of `C` and edges consistently correspond to the morphisms. "Consistently" means that an edge `f` has endpoints `a` and `b`, where `f` is a morphism in `C`, and `a` is domain of `f`, while `b` is codomain of `f`.

## Commutative diagram
A diagram in category `C` is said to commute if all directed paths in the diagram, with the same starting and endpoint, are the same, i.e. lead to the same object either by themselves or when composed.

## Small category
A category `C` is small if both `Ob(C)` and `hom(C)` are sets.

## Locally small category
A category `C` is locally small if `hom(C)` is a set. The set is called **homset**.

## Initial object
An initial object of a category `𝒞` is an object `i ∈ 𝒞`, such that, for every object `a ∈ C`, there exists precisely one morphism `i -> a`.

A initial object in a category is an object with a single outgoing arrow from it to any other object in the category.

## Terminal object
A terminal object of a category `𝒞` is an object `t ∈ 𝒞`, such that, for all objects `a ∈ 𝒞`, there exists exactly one morphism `a -> t`.

A terminal object in a category is an object with a single incomming arrow from any other object in the category.
