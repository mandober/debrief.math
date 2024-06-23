# CT :: Identities

Notions of identity in category theory.

- morphisms
  - morphism (arrow)
  - homomorphism
  - hom-set
  - endomorphism
  - identity morphism
- functor
  - endofunctor
  - identity functor
  - hom-functor
- natural transformation
  - endo-NT
  - identity natural transformation
  - endo-natural transformation
- internal and external homsets
  - internal homsets
  - external homsets
  - exponential objects vs functions as arrows
  - homsets as both arrows and objects (besides "normal" sets) in `Set`
  - isn't it possible to construct an infinite descending chain or other pathological object if the homsets are themselves objects (instead of corresponding in some natural way to objects in the category)?



## Morphisms

- Morphisms convey relations between the objects of a category.
- Morphisms are restricted to a single category.
- A *morphism is a map* between two objects (in the same category).
- A *morphism maps* an object to an object (in the same category).
- A morphism `f` maps an object `a` to an object `b` in a category `ℂ`.
- Morphisms are restricted to the same category.
- The collection of all morphisms in a category forms a set (class).
- The collection of all morphisms from an object `a` to an object `b` (in a category `ℂ`) is a hom-set, denoted `Hom(a, b)`; it forms a set (class).
- The collection of all morphisms from some fixed object `a` to any object (in a category `ℂ`) is denoted `Hom(a, -)`.
- The collection of all morphisms from any object to some fixed object `a` (in a category `ℂ`) is denoted `Hom(-, a)`.
- The collection of all morphisms from any object to any object (in a category `ℂ`) is denoted `Hom(-, =)`.
- A morphism is a map from one object to another (in the same category).
- A morphism is a map from one object to another (in the same category).
- A morphism is a map from one object to an object within the same category.
- Morphisms are mappings restricted to a single category.
- Morphisms are relations between the objects of a category. 
- A category `ℂ` that has objects `a` and `b`, `a,b ∈ Ob(ℂ)`, a morphism `f` maps an object `a` to object `b`, denoted (in function style) by `f : a -> b`.
- Morphisms are maps between objects in a category. Morphisms map one object to another (in the same category).
- Then, endomorphisms map objects to themselves. An endomorphism `m` maps an object `x` in a category `ℂ` to the same object `x`

>A **hom-set** is the collection of all arrows from an object `a` to object `b` in a category C, denoted `Hom(a, b)`.
So, then, what is the name of all arrows in a category? `Hom`? Or does it not have a specific name, but could be denoted by `Hom(-, =)`?



## Identity functor


## Identity natural transformation



---

## Hom functors and a glimpse of Yoneda
https://www.johndcook.com/blog/2018/08/06/hom-functors/

Morphisms are a generalization of functions. Often morphisms are functions, but they might not be. But still, they have to be things that compose like functions.

The prefix `Hom-` is a shortened from of "homomorphism." Different areas of math have different names for structure-preserving functions, and category theory wanted to have one name for them all. It used "Hom" as an allusion to what structure-preserving functions are called in group theory. "Morphism" is also a shorted form of "homomorphism." I suppose the goal was to use names reminiscent of group theory, but different enough to remind the reader that the category theory counterparts are distinct. Incidentally, "homomorphism" comes from the Greek roots meaning "similar" and "shape." A homomorphism is a function between similar objects (objects in the same category) that preserves structure (shape).

### Hom sets

>A **hom-set** is the collection of all arrows from an object `a` to object `b` in a category C, denoted `Hom(a, b)`.

Given two objects A and B, `Hom(A, B)` is the set of functions between A and B.

To make this statement precise, we need to say what kinds of objects and what kinds of functions we are talking about. That is, we specify a category C that the object belong to, and the functions are the morphisms of that category.

For example, in the context of groups, `Hom(A, B)` would be the set of group homomorphisms between A and B, but in the context of continuous groups (Lie groups), we would restrict `Hom(A, B)` to be continuous group homomorphisms.

To emphasize that *Hom* refers to a set of morphisms in a particular category, sometimes the name of the category is subscripted, as in `Homᶜ(A, B)`.

>So, then, what is the name of all arrows in a category? `Hom`? Or does it not have a specific name but could be denoted by `Hom(-, =)` or `C(-, =)`?

- *Hom* is a set
- `Homᶜ(A, B)`, Hom(A, B), C(A, B) is a set of all arrows from A to B
- `Homᶜ(A, -)`, Hom(A, -), C(A, -) is a set of all arrows from A
- `Homᶜ(-, B)`, Hom(-, B), C(-, B) is a set of all arrows into B
- `Homᶜ(-, =)`, Hom(-, =), C(-, =) is a set of all arrows


## Hom functors

So far *Hom* has been a set, but we also see *Hom* as a functor.

This is where the notation takes a little more interpretation. You may see the hom-functor denoted by 'h' or 'H' with objects as superscripts or subscripts:
- `Hᵃ = Home(a, -)`, or hᵃ = Home(a, -), or hᵃ = C(a, -)
- `Hₐ = Home(-, a)`, or hₐ = Home(-, a), or Hₐ = C(-, a)

The dash is a placeholder for an object that varies.

The hom-functor `Hom(A, -)` acts on an object `B` mapping it to a set of morphisms `Hom(A, B)`.

The hom-functor `Hom(-, A)` acts on an object `B` mapping it to a set of morphisms `Hom(B, A)`.

>Actually, is `Hom(A, -)` a hom-functor at all? Is it a functor at least? Or is it just a set of morphisms?
Since `Hom(A, -)` maps an object `B` into a set of morphisms `Hom(A, B)`, then `Hom(A, -)` must be a functor, no?

The two *functors*, `Hom(A, -)` and `Hom(-, A)`, each *take an object* (in the category `C`) *to a set of morphisms*. Note, however, that "a set of morphisms", being a set, is an object in the `Set` category.

This is what these two functors do to objects, but functors also map morphisms in one category to morphisms in the anther category (and they do so in a way that the interactions between the maps of objects and morphisms interact coherently - they preserve structure).

Let `f : Y → X` (note the reversed order) and an arrow `g` in `Hom(X, A)`. Then the composition `g ∘ f` is an element in `Hom(Y, A)`.

Earlier, we had `f` after `g`, but now we are *precomposing* with `f`, applying `g` after `f`, i.e. `g ∘ f`.

So if we have an arrow `f : A -> B`, and an arrow induced by the functor `Hom(a, -)`, that acts on object `c` to yield `Hom(a, c)`, i.e. arrow `g ∘ f : a -> c`, then the missing arrow `g` is `g : b -> c`. We need to precompose `f` with this `g` to get `g ∘ f : a -> c`, which is an element in `Hom(a, c)`.


Similarly, if you have a function from Y to X and a function from X to A, the composition is a function from Y to A.

>`Hᵃ` is a *covariant* functor, but `Hₐ` is a *contravariant* functor.


---

- *identity morphisms*
  - `∀a(a ∈ Ob(ℂ) ⇒ ∃! 1ₐ : a -> a)`
  - identity morphism `1ₐ`, for all objects `a` in ℂ
  - identity morphism is an endomorphism
  - identity morphism maps an obj to itself, `1ₐ : a -> a`
- *identity functor*
  - `∀F(F : ℂ -> ℂ ⇒ ∃! I : ℂ -> ℂ)` such that `I` maps all objects `a ∈ Ob(ℂ)` to themselves, `I a = a`, and all arrows `f ∈ Ar(ℂ)` to themselves, `I f = f`.
  - ∀a∀b(a,b ∈ Ob(ℂ) ⇒ f : a -> b ∈ Ar(ℂ) ∧ I a = a ∧ I f = f)
  - identity functor, `I : ℂ -> ℂ`
  - identity functor is an endofunctor
  - among the endofunctors, there is only one, unique, identity functor
  - identity functor acts as identity morphism:
  - for all objects,   `a`, it maps it to itself, `∀a ∈ Ob(ℂ). I a = a`
  - for all arrows,    `f`, it maps it to itself, `∀f ∈ Ar(ℂ). I f = f`
  - for all id arrows, `1`, it maps it to itself, `∀1 ∈ Ar(ℂ). I 1 = 1`
  - what it does to composition and id arrows is redundant, all in all:
  - identity functor doesn't do shit
  - identity functor on cat `ℂ` is also denoted by `Iᶜ : ℂ -> ℂ` in order to 
    be distinguished form other endofunctors on ℂ, `T : ℂ -> C`
- *endofunctors*
  - endofunctor, `T : ℂ -> ℂ`, also denoted by `Tᶜ`
  - `T` maps on obj `a` to obj `T a`
    `a ⟼ T a`
- *NT*
  - NTs map functors
  - a NT `α` maps a functor to a functor
  - a NT `α` maps a functor `F` to a functor `G`
  - `α : F => G`
  - a NT `α` maps a functor `F : ℂ -> 𝔻` to a functor `G : 𝔼 -> 𝔽`
    (functors are completely distinct) [does-it-even-exist?]
  - a NT `β : F -> G` may map functor `F : ℂ -> 𝔻` to functor `G : 𝔻 -> 𝔼`
    (functors related by cod/dom category)
  - a NT `γ : F -> G` may map functor `F : ℂ -> 𝔻` to functor `G : ℂ -> 𝔻`
    (diff functors between the same dom/cod categories)
  - a NT `η : F -> F` may map functor `F : ℂ -> 𝔻` to functor `F : ℂ -> 𝔻`
    (functors are the same), in which case it is the **identity NT**


- `η : Iᶜ -> T` maps the id functor `Iᶜ` on ℂ to an endofunctor `T : ℂ -> ℂ`
- `μ : T² -> T` maps an endofunctor `T : ℂ -> ℂ` to itself.
