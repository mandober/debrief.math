# Functor

A **functor** is a structure-preserving mapping from one category into another. It maps objects into objects and morphisms into morphisms.

https://bartoszmilewski.com/2015/01/20/functors/

A functor is a mapping between categories. Given two categories, `C` and `D`, a functor `F` maps objects in `C` to objects in `D`, it's a function on objects. If `a` is an object in `C`, we'll write its image in `D` as `F a`.

But a category is not just made of objects - it contains objects and morphisms between these objects. And a functor also maps morphisms, it's a function on morphisms. However, it doesn't map morphisms willy-nilly - it preserves connections.

If a morphism `f` in `C` connects object `a` to object `b`, we denote this by `f :: a -> b`, and the image of `f` in `D`, `F f`, will connect the image of `a` to the image of `b`, denoted by `F f :: F a -> F b`.

As you can see, a functor preserves the structure of a category: what's connected in one category will be connected in the other category.

However, that' nt all, there's something more to the structure of a category; there's also *composition of morphisms*. If `h = g . f`, then we want its image under `F` to be a composition of the images of `f` and `g`, `F h = F g . F f`.

And finally, we want all *identity morphisms* in C to be mapped to identity morphisms in D, `F idᴀ = idꜰᴀ`. Here, `idᴀ` is the identity at the object `a`, and `idꜰᴀ` the identity at `F a`.

- F functor has taken `a` (in C) and mapped it into `F a` i.e. `Fa` (in D)
- obj `a`  (in C) has its identity arrow `1a`
- obj `Fa` (in D) has its identity arrow `1Fa`
- F functor has taken `1 a` (in C) and mapped it into `1 Fa` (in D)
- `1Fa == F1a`


```hs
     g :: (a -> b)
+  F g :: Functor f => f a -> f b
--------------------------------- all together now:
= fmap :: (a -> b)  -> f a -> f b
```

The conditions a transformation must fullfilled to be a **functor**:
- it must map objects (in C) to objects (in D) 
  `a ⟼ F a`
- it must map arrows (in C) to arrows (in D) 
  `f ⟼ F f`
- it must map composition of arrows (in C) to composition of arrows (in D) 
  `g . f ⟼ F g . F f`
- it must map identity arrows (in C) to identity arrows (in D) 
  `1a ⟼ F 1a == 1 Fa`


These conditions make functors much more restrictive than regular functions. Functors must preserve the structure of a category.

If you picture a category as a collection of objects held together by a network of morphisms, a functor is not allowed to introduce any tears into this fabric. It may smash objects together, it may glue multiple morphisms into one, but it may never break things apart.

This no-tearing constraint is similar to the continuity condition you might know from calculus. In this sense functors are "continuous" (although there exists an even more restrictive notion of continuity for functors).

Just like functions, functors may do both collapsing (surjectivity) and embedding (injectivity). The embedding aspect is more prominent when the source category is much smaller than the target category.

In the extreme, the source can be the trivial singleton category - a category with one object and one morphism (the identity). A functor from the singleton category to any other category simply selects an arbitrary object in the latter category. This is fully analogous to the property of morphisms from singleton sets selecting elements in target sets.

> The maximally collapsing functor is called the constant functor `Δc`.

It maps every object in the source category to a selected object `c` in the target category. It also maps every morphism in the source category to the identity morphism `1c`. It acts like a black hole, compacting everything into one singularity.

...

* An isomorphism is invertible, a general functor is not. It can map multiple objects to one object and multiple morphisms to one morphism. You cannot invert such a mapping. A collapsing or an embedding mapping is not invertible.

* Any two non-empty categories can be mapped using the `Const` functor.

* A functor is a mapping of objects and morphisms. Every object and every morphism from C must be mapped. But not all objects and morphism in D have to be covered. This is similar ot functions: they need not to be strictly subjective or injective.
