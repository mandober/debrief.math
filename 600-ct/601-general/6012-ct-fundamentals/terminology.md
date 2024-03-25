# CT :: Fundamentals :: Terminology

The basic notions and terminology of CT.

- category
- object
- morphism

## Category

A category is a collection of two kinds of entities: objects and morphisms betwen them.

It is interesting to compare set theory and CT, particularly the category of sets and funxtions between them, called `Set`. It can be said that set theory uses a *microscope* to inspect sets directly. The structure of sets is exposed, and we can directly inspect sets and see their elements, especially in terms of fucntions over sets. Given a function, we can clearly see which element of the domain set is associated with which element of the codomain set. In a sense, set theory is thus very low-level; it is said that set theory is the assembly language of mathematics.

On the other hand, CT tries to find commonalities between very different areas of mathematics. To do that, it must employ a lot of abstractions to reach a view that is "high" enough so it fits diverse areas of math. It could be said that the view of CT is so high-level as if it uses a *telescope* to inspect things.

For example, if we consider a particular set `A`, it ST the set A can be readily inspected; we see its interal structure, we can count its elements and see how it interacts with functions.

But if we then take a look at it from the categorical view, working within the category of sets, called `Set`, that set appears only as a featureless blob due to the high level of abstraction. In fact, we can't see shit. The entire set has collapsed into a structureless featureless point. What we can still see, however, are the functions between sets. A function between two sets that looks like a rich capillary network of element-wise connections in ST, has now collapsed into a single line between two objects.

The main promise of CT is that all the interesting features of objects (e.g. sets), that could be directly inspected in set theory, can also be inferred just by studying the arrows that connect the objects. Amazingly, since this really turned out to be true, CT allows strudying different mathematical structures within a single framework, providing an opportunity to discover commonalities between very diverse structures.

>A category consists of objects and arrows between objects, such that each object has an identity arrow, and arrows are composable.

We may consider the set of arrows as the carrier set and composition as the attached binary operation; identity arrows are then units of composition, and composition is associative, transitive, and closed over the carrier set.

In fact, objects and arrows are the roles that different entities play. In `Set`, objects are sets and arrows are functions. One level up, functors become objects and NTs become arrows, and so on.

## Objects

In category theory, objects are abstractions of mathematical objects. Category theory is a high-level abstraction of mathematics - it's so high that ordinary mathematical objects, like sets, look like tiny points from this perspective. The structure of mathematical objects cannot be discern from this height, thus the objects are represented by dots (points).

## Morphisms

At this level of abstraction, the objects (as points) serve only as anchors for arrows. It is the arrows alone, that relate different objects as connections between them, that let us derive any information about the objects. In CT, we learn about the objects only through their relations with other objects, relations which are revealed by arrows.



## Class of objects

In category theory, a class of objects of a category `C` is denoted by `Ob(C)`.


## Morphisms
Morphisms or arrows are relations between objects. They are the main element of a category, not objects. Assuming objects `a` and `b` belong to a category `C`, object `a` may be related to `b` via an arrow `f : a -> b`. Morphisms are directional, so object `a` is called the source object or a domain, and object `b` is called the target object, or a codomain.


Morphisms are also called arrows, sometimes mappings or maps.

Morphisms are to be interpreted as relations between objects. 

We best avoid the standard set-theoretical notation `f(a) = b` because it may lead to false conclusions; e.g. `f : a → b` and `g : a → b` are two different morphisms (functions). The notation `f(a) = b` and `g(a) = b` leads to the incorrect conclusion that `f = g`.

For instance, if `a = b = ℝ` then two functions `f(x) = x` and `g(x) = −x` define two different orderings on `ℝ` and must not be considered the same function (morphism).

Given `f : a → b`, obj `a` is domain, `dom f`, and `b` is codomain, `cod f`.

## Homeset
The set of arrows between objects `a` and `b` in a category `C` is denoted by `Ar(a,b)`. The set of all arrows in a category `C` is denoted by `hom(C)`.

## Diagram
A diagram in a category `C` is a collection of vertices and directed edges where the vertices correspond to the objects of `C` and edges consistently correspond to the morphisms. "Consistently" means that an edge `f` has endpoints `a` and `b`, where `f` is a morphism in `C`, and `a` is domain of `f`, while `b` is codomain of `f`.

## Commutative diagram
A diagram in category `C` is said to commute if all directed paths in the diagram, with the same starting and endpoint, are the same, i.e. lead to the same object either by themselves or when composed.

## Small category
A category `C` is small if both `Ob(C)` and `hom(C)` are sets.

- A category `C` is *locally small* if `hom(C)` is a set; this is a *homset*.
- A category `C` is *small* if both `Ob(C)` and `Hom(C)` are sets.
- A *homset* `Hom(C)` is a set of morphisms in a locally small category.

## Locally small category
A category `C` is locally small if `hom(C)` is a set. The set is called **homset**.

## Initial object
An initial object of a category `𝒞` is an object `i ∈ 𝒞`, such that, for every object `a ∈ C`, there exists precisely one morphism `i -> a`.

A initial object in a category is an object with a single outgoing arrow from it to any other object in the category.

## Terminal object
A terminal object of a category `𝒞` is an object `t ∈ 𝒞`, such that, for all objects `a ∈ 𝒞`, there exists exactly one morphism `a -> t`.

A terminal object in a category is an object with a single incomming arrow from any other object in the category.
