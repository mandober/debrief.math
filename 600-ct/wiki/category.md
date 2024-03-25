# Category

https://en.wikipedia.org/wiki/Category_(mathematics)

a category (sometimes called an abstract category to distinguish it from a concrete category) is a collection of "objects" that are linked by "arrows". A category has two basic properties: the ability to compose the arrows associatively and the existence of an identity arrow for each object. A simple example is the category of sets, whose objects are sets and whose arrows are functions.

Category theory is a branch of mathematics that seeks to generalize all of mathematics in terms of categories, independent of what their objects and arrows represent. Virtually every branch of modern mathematics can be described in terms of categories, and doing so often reveals deep insights and similarities between seemingly different areas of mathematics. As such, category theory provides an alternative foundation for mathematics to set theory and other proposed axiomatic foundations. In general, the objects and arrows may be abstract entities of any kind, and the notion of category provides a fundamental and abstract way to describe mathematical entities and their relationships.

In addition to formalizing mathematics, category theory is also used to formalize many other systems in computer science, such as the semantics of programming languages.

Two categories are the same if they have the same collection of objects, the same collection of arrows, and the same associative method of composing any pair of arrows. Two different categories may also be considered "equivalent" for purposes of category theory, even if they do not have precisely the same structure.

Well-known categories are denoted by a short capitalized word or abbreviation in bold or italics: examples include Set, the category of sets and set functions; Ring, the category of rings and ring homomorphisms; and Top, the category of topological spaces and continuous maps. All of the preceding categories have the identity map as identity arrows and composition as the associative operation on arrows.

The classic and still much used text on category theory is Categories for the Working Mathematician by Saunders Mac Lane. Other references are given in the References below. The basic definitions in this article are contained within the first few chapters of any of these books.

Any monoid can be understood as a special sort of category (with a single object whose self-morphisms are represented by the elements of the monoid), and so can any preorder.

## Contents

- 1. Definition
- 2. Small and large categories
- 3. Examples
- 4. Construction of new categories
  - 4.1. Dual category
  - 4.2. Product categories
- 5. Types of morphisms
- 6. Types of categories

## Definition

There are many equivalent definitions of a category. One commonly used definition is as follows.

A category `C` consists of
- a collection (class) `Ob(C)` of objects
- a collection (class) `Ar(C)` of morphisms
- a source class function `dom: Ar(C) → Ob(C)`
- a target class function `cod: Ar(C) → Ob(C)`
- for every 3 objects `a,b,c ∈ C`, a binary operation     
    Hom(a, b) × Hom(b, c) → Hom(a, c)    
called *composition of morphisms*.    
Here `Hom(a, b)` denotes the subclass of morphisms `f` in `Ar(C)`, Hom(a, b) ⊆ Ar(C), called the **hom-set** (set of all arrows from `a` to `b`; then `f ∈ Hom(a, b)` is a member of this homset), such that `dom(f) = a` and `cod(f) = b`. Morphisms in this subclass are written `f : a → b`, and the composite of `f : a → b` and `g : b → c` is often written as `g ∘ f` or `gf`.

such that the following axioms hold:
- the associative law: if f : a → b, g : b → c and h : c → d then 

    h ∘ (g ∘ f) = (h ∘ g) ∘ f

- the left and right unit laws or just the unit law:

  ∀x ∈ Ob(C). 1ₓ : x -> x

i.e. for every object `x`, there exists a morphism `1ˣ` or `idₓ`, called the identity morphism for `x`, such that every morphism `f : a → x` satisfies `1ₓ ∘ f = f`, and every morphism `g : x → b` satisfies `g ∘ 1ₓ = g`.

  ∀f:a→x ∈ Hom(a,x). 1ₓ ∘ f = f

  ∀g:x→b ∈ Hom(x,b). g ∘ 1ₓ = g


We write `f: a → b`, and we say that `f` is a morphism from `a` to `b`.

We write `Hom(a, b)` or `C(a, b)` to denote the hom-set (hom-class) of all morphisms from `a` to `b`.

From these axioms, one can prove that there is exactly one identity morphism for every object.

Often the map assigning each object its identity morphism is treated as an extra part of the structure of a category, namely a class function 

    i : Ob(C) → Ar(C)

    ∀x ∈ Ob(C). i : x -> x

Some authors use a slight variant of the definition in which each object is identified with the corresponding identity morphism. This stems from the idea that the fundamental data of categories are morphisms, not objects. In fact, categories can be defined without reference to objects at all using a partial binary operation with additional properties.

## Small and large categories

* A category is called **small category** if both Ob(C) and Ar(C) are *sets*
* A category is called **large category** if Ob(C) ∧ Ar(C) are *proper classes*
* A **locally small category** is a category such that for all objects `a` and `b`, the collection of arrows `Hom(a, b)` is a *set*, called a homset

- Ob(C) ∧ Ar(C) collections are sets ⇒ small category
- Ob(C) ∧ Ar(C) are proper classes   ⇒ large category
- ∀a,b ∈ Ob(C). Hom(a, b) is a set   ⇒ locally small category

Many important categories in mathematics (such as `Set`), although not small, are at least locally small. Since, in small categories, the objects form a set, a small category can be viewed as an algebraic structure similar to a monoid but without requiring closure properties. Large categories on the other hand can be used to create "structures" of algebraic structures.

## Examples
## Construction of new categories
### Dual category
### Product categories
## Types of morphisms
## Types of categories
