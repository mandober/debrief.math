# Category

https://en.wikipedia.org/wiki/Category_(mathematics)
https://ncatlab.org/nlab/show/category
https://ncatlab.org/nlab/show/category+theory


## Definition

A category is a collection of objects together with morphisms connecting these objects.

A category `C` is given by a collection `C₀` of objects and a collection `C₁` of arrows, which have the following structure:
- each arrow has an object as source and target, `f: A -> B`
- identity: each object has identity arrow, `1ₐ` or `Iₐ`
- transitivity: if there is an arrow `a -> b` and an arrow `b -> c` then there must be an arrow `a -> c`

## Examples of categories

- Ordered categories: sets and relations (relations as arrows)
- Category of sets and functions (functions as arrows)
- Hask category quasi-categery of Haskell types (function as arrows)

---

A category C is an algebraic structure consisting of a class of objects (denoted by A, B, C, etc.), and a class of arrows (denoted by f, g, h, etc.), together with three total and one partial operation.

The first two total operations are called *target* and *source*; both assign an object to an arrow. We write `f : A <- B` (pronounced "f has type A from B") to indicate that the target of the arrow `f` is `A` and the source is `B`.

The third total operation takes an object `A` to an arrow `idᴀ : A <- A`, called the *identity* arrow on `A`.

The partial operation is called *composition* and takes two arrows to another one. The composition `f ∘ g` (read "f after g") is defined iff `f : A <- B` and `g : B <- C` for some objects A, B, C, in which case `f ∘ g : A <- C`. In other words, if the source of `f` is the target of `g`, then `f ∘ g` is an arrow whose target is the target of `f` and whose source is the source of `g`.

Composition is required to be associative and to have identity arrows as units:

∀fgh. (f: A <- B) ∧ (g: B <- C) ∧ (h: C <- D) .    
f ∘ (g ∘ h) = (f ∘ g) ∘ h = f ∘ g ∘ h

∀f. f: A <- B .     
idᴀ ∘ f = f = f ∘ idʙ
