# CT :: Topics :: Natural transformations

## Summary

A natural transformation is a mapping between functors.

Given two parallel functors, `F,G : C → D`, a NT `α : F => G` is a family of arrows, such that for each object a ∈ C there is an arrow `αᵃ : F a -> G a` in D, called the component of `α` at object `a`.

Given two parallel functors, `F,G : C → D`, a NT `α : F => G` maps functor `F` to functor `G` by mapping:
- *objects* (in src cat C) *to arrows* (in tgt cat D)
- *arrows* (in src cat C) *to commuting diagrams* (in tgt cat D)

```
         F x             F y
x        o ──────────────→ o
│        │       F f       │
│        │        ║        │
│f       │αx      ║α       │αʸ
│        │        ↓        │
↓        ↓       G f       ↓
y        o ──────────────→ o
         G x             G y
```

**Naturality condition**: `G f ∘ αˣ = αʸ ∘ F f` (i.e. naturality square).


Just like a functor is a 1-morphism between categories, a NT is a 2-morphism between functors. 0-morphism is an object in a category.

A **natural isomorphism** is a NT in which every component is an isomorphism. Two functors `F` and `G` are called *naturally isomorphic* if there exists a natural transformation from `F` to `G` such that each its component, `ηᵃ`, is an isomorphism for all objects `a` in C.

```
         F x             F y
x        o ──────────────→ o
│        ↑       F f       ↑
│        │        ║        │
│f       │αx      ║α       │αʸ
│        │        ↓        │
↓        ↓       G f       ↓
y        o ──────────────→ o
         G x             G y
```

In a natural isomorphism all components of a NT are isomorphisms (invertable) - not the arrows mapped by functors (i.e. `F x -> F y` stay as is).


*Binatural transformations* are generalizations of NTs.


## Introduction

A functor "embeds" or "models" a source cat in a target cat. But imagine if we had two "parallel" functors, `F,G : C → D` - how are they be related? They must preserve the structure of the source cat C in the target cat D, but, are their images allowed to deviate from one another and by how much. To answer that we need a way to compare their images, although it is immediately obvious that if one functor is fully faithful and the other is constant, their images will be drastically different.

NTs are exactly that tool; a NT is a mapping between functors which also has to preserve structures - both the structure of the parallel functor's source cat and the structure of their target cat - which imposes certain conditions on a natural transformation.

A NT between two parallel functors may not exists, but if it does, it implies that the two functors are similar in some way.The more morphisms a (target) category has, the more opportunities for NTs to exist. `Set` is a category particularly rich in morphisms - between almost any two objects there is a bunch of morphisms - so there should be a lot of NTs there. The same is true for `Hask` category which has types as objects and a lot of arrows in between, so it should also have numerous NTs.

A NT usually goes form a functor that makes the "hi-fi" image of the source category (in the target category) to a functor that makes a "lo-fi" image of the source category (in the target category). Thus, NT are not invertable in general. Howevere, when they are, they are called **natural isomorphisms**. A natural isomorphism is a NT in which every component is an isomorphism.

So there a cat may or may not have many/some/few NTs. In Haskell, there are a lot, but not between just any two functors. This is because some functors do strange things; also, most are covariant, but some are contravariant. *Binatural transformations* are generalizations of NTs.


## NTs in Haskell

>Given any two functors in Haskell is there always a NT between them? No.
- Identity ⇔ Maybe      ✔
- Maybe ⇒ Identity      ✘
- Identity ⇔ Either e
- Identity ⇔ Reader r
- Reader r ⇔ []
- Reader r ⇔ Const
- Writer w ⇔ Reader r
- Reader r ⇔ State s
- State s  ⇔ Cont r

>In Haskell, pretty much any non-flat type is a functor, so is there at least one NT between any pair of functors?

No, e.g. the `Maybe` functor cannot be mapped to `Identity` functor.

```hs
F,G :: Hask -> Hask
F Int = Maybe Int
G Int = Identity Int

α :: F -> G
α (Maybe Int) = Identity Int

maybeId (Just n) = Identity n
maybeId Nothing  = Identity ??? -- Identity 0 (?)
```

This is an example of an univertable NT.

However, in Haskell, due to parametric polymorphism, naturality condition is automatically satisfied - in fact, polymorphism is even a stronger condition then naturality - so we need not worry about it.


### NT from list to Maybe functor

In Haskell, there is a NT from the list functor to the `Maybe` functor (realized, e.g., as the function `maybeHead`); a component of this NT at the type `Int` is `αᵢₙₜ : [Int] -> Maybe Int`.

```
F = []
G = Maybe
α : F -> G
α : [] -> Maybe
Int, Bool ∈ Ob(Hask)
αᵢₙₜ : [Int] -> Maybe Int
αᵢₙₜ : [Bool] -> Maybe Bool
```

Does the existence of any compoenent of a NT imply the existence of all other components of that NT? That is, since Haskell types are objects in cat Hask, a NT `α : [] -> Maybe`, with a possible component at `Int`, implies the existence of all other components, components at all possible cominations of types in the "template" `α : [a] -> Maybe a`. So all these exist:
- α : [-] -> Maybe (-)
- α : [Int] -> Maybe Int
- α : [Bool] -> Maybe Bool
- α : [Int -> Bool] -> Maybe (Int -> Bool)
- α : [Either Char String] -> Maybe (Either Char String)

well yes, all these components are possible - they may all be based on `maybeHead`.

## Composition of NTs

NTs compose - given 3 parallel functors `F,G,H : C -> D`, with `α : F -> G` and `β : G -> H`, we can compose their components, and thus also compose them (NTs), making sure the naturality condition is satisfied.

Since NT compose, and their composition is associative (because their components are morhisms whose composition is already associative). Also, there are identity NTs that map a functor to itself. Thus we have a category with functors as objects and NT as arrows. Such category is denoted by [C,D] or `Dᶜ`, where `C` is the source cat and `D` a target cat of functors (which suggests that all functor-objects map the same source, namely `C`, to the same target category, namely `D`).

On the other hand, in the cat of cats, `Cat`, objects are cats and arrows are functors. Here, a cat/object is a 0-morphism (or 0-cells), functors are 1-morphisms (or 1-cells), and NTs are 2-morphisms (or 2-cells). In general, 2-morphisms are morphisms between morphisms. This kind of structure is called a **2-category**. Hom-set in this cat is a set of functors. Moreover, a hom-set in `Cat` is not only a set, but also a category, and thus an element of `Cat`. Unlike a hom-set of some arbitrary category that is an element of `Set`, here, the hom-sets are elements of the enclosing category. Thus they are called internal hom-sets, as opposed to external hom-sets.
