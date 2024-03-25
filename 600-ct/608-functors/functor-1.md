# Functor

https://en.wikipedia.org/wiki/Functor

## TL/DR

- a functor is a mapping between categories
- a functor is a structure-preserving mapping
- it maps objects to objects, and arrows to arrows





## Functor in CT

A functor is a structure-preserving mapping between categories:
- it maps objects in source category to objects in target category
- it maps arrows in source category to arrows in target category
- it preserves structure by preserving composition and identity:
  - 

A functor, `F`, is a structure-preserving mapping between categories `C` and `D`, denoted by `F : C -> D`.

1. A functor maps objects to objects

- A functor maps objects to objects
- A functor maps objects (in source category) to objects (in target category)


A functor maps all objects in source category to objects in target category


`F` functor takes an object `a` in `C` and maps it to object `F a` in `D`.

∀ a ∈ Ob(C). ∃ (F a) ∈ Ob(D). a ⟼ F a

∀ a b ∈ Ob(C). ∀ f ∈ homᶜ(a, b). ∃ F f ∈ hom(F a, F b)



∀ f ∈ Ob(a,b).

∀ a ∈ Ob(C). ∃ (F 1ᵃ) ∈ Ob(D). 1ᵃ ⟼ F 1ᵃ = 1ꜰₐ


F : C -> D
F a = Fa
F f = Ff



```
F a     F f       F b
○ --------------> ●
|                 |
|                 |
|                 |
|                 |
○ --------------> ●
a        f        b
```

A functor `F` lifts a function `f : a -> b` into `F f : F a -> F b`

## Functors in Haskell

In Haskell, functors are represented by a type class. 

All types that support some notion of structure-preserving mapping may declare themselves an instance of the `Functor` class.


A class `Functor` 


a functor is a type ctor `f` (in `class Functor f`) along with the `fmap` method.

```hs
class Functor f where
  fmap : (a -> b) -> (f a -> f b)
```
