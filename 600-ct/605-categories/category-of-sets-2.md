# Category of sets

https://en.wikipedia.org/wiki/Category_of_sets

## Summary

`Set` - category of sets and functions
- objects: sets
- arrows: total functions
- composition: `∘`, functional composition, `(g ∘ f) x = g (f x)`
- identity: `id` function is the unit of composition
- epimorphisms: surjections
- monomorphisms: injections
- isomorphisms: bijections
- initial object: `∅` with empty functions as morphisms
- terminal object: `{a}`, singleton sets with selection functions


## Introduction

`Set` is the category with sets as objects, and functions between sets as arrows.

The arrows between sets A and B are the *total functions* from A to B, and the composition of morphisms is the composition of functions.

The axioms of a category are satisfied by `Set` because composition of functions is associative, and because every set `X` has an identity function `idₓ : X → X `which serves as identity element for function composition.

Many other categories (such as the category of groups, with group homomorphisms as arrows) add structure to the objects of the category of sets and/or restrict the arrows to functions of a particular kind.

## About `Set`

`Set` is a very special category, because we can peek inside its objects (inside sets to see its internal structure and its elements). Since category theory is at the highest level of mathematical abstraction, normally we can't see shit. We see objects of a category as unstructured blobs, and any information about them we can only infer from arrows - we infer things about objects from their relations. However, since objects in `Set` are plain ol' sets, we can switch between the very far (categorical) and very close (set theoretical) vantage points (at least until we devolop some intuition and technics re inference from arrows alone).

`Set` is also a fundamental category because the objects of any category form a set (or a class), as do the arrows. In fact, this difference (whether they form a set or a class) makes for small (set) and large cats (class). However, there is a category of all categories, but it is unclear how it avoids the paradoxes. At some level, *conglomerates* are introduced after *classes*, but that just means that such a hierarchy of containers can go on forever (it is certainly not the case that 3 containers - set, class and conglomerate - are enough).

`Set` is a very special category, because we can actually peek inside its objects and get a lot of intuitions from doing that. For instance, we know that an empty set has no elements. We know that there are special one-element sets. We know that functions map elements of one set to elements of another set. They can map two elements to one, but not one element to two. We know that an identity function maps each element of a set to itself, and so on. The plan is to gradually forget all this information and instead express all those notions in purely categorical terms, that is in terms of objects and arrows.

## Properties of `Set`

- epimorphisms are surjections
- monomorphisms are injections
- isomorphisms are the bijections
- initial object: ∅ with empty functions as morphisms
- terminal object: `{a}` with selection functions
- zero objects: none


The empty set serves as the *initial* object in Set with *empty functions* as morphisms. For every set `X`, there is a unique function, called the *empty function*, from ∅ to `X`. The graph of an empty function is the empty set.

`∀X ∈ 𝙎𝙚𝙩. ϵ : ∅ → X` (ϵ is empty function).

```hs
-- In Haskell, Void is the empty type (set)
absurd :: Void -> a
absurd _ = undefined
-- this function cannot be called
```



Every singleton set, `{a}`, is a *terminal* object, with the functions mapping all elements of the source sets to the single target element as morphisms.

`∀X ∈ Set. X -> unit`

```hs
data Unit = Unit

-- where Set a is a singleton set, {0}
k : Bool -> Unit
k true = Unit
k false = Unit
-- or just:
k _ = ()
```


There are thus no *zero objects* in Set.

The category Set is complete and co-complete. The product in this category is given by the cartesian product of sets. The coproduct is given by the disjoint union: given sets Ai where i ranges over some index set I, we construct the coproduct as the union of Ai×{i} (the cartesian product with i serves to ensure that all the components stay disjoint).

Set is the prototype of a concrete category; other categories are concrete if they are "built on" Set in some well-defined way.

Every two-element set serves as a subobject classifier in Set. The power object of a set A is given by its power set, and the exponential object of the sets A and B is given by the set of all functions from A to B. Set is thus a topos (and in particular cartesian closed and exact in the sense of Barr).

Set is not abelian, additive nor preadditive.

Every non-empty set is an injective object in Set. Every set is a projective object in Set (assuming the axiom of choice).

The finitely presentable objects in Set are the finite sets. Since every set is a direct limit of its finite subsets, the category Set is a locally finitely presentable category.

If C is an arbitrary category, the contravariant functors from C to Set are often an important object of study. If A is an object of C, then the functor from C to Set that sends X to HomC(X,A) (the set of morphisms in C from X to A) is an example of such a functor. If C is a small category (i.e. the collection of its objects forms a set), then the contravariant functors from C to Set, together with natural transformations as morphisms, form a new category, a functor category known as the category of presheaves on C.



## Refs

https://en.wikipedia.org/wiki/Category_of_sets
https://en.wikipedia.org/wiki/Set
