# Functors

A category is a collection of objects and arrows between the objects. 
Arrows map objects to objects in the same category; each object has an *identity arrow* that maps that object back to itself.

So in a category `ℂ`, there are objects `a,b,c ∈ Ob(ℂ)`, and there are arrows, e.g. `f : a -> b` and `g : b -> c`, so `f,g ∈ Ar(ℂ)`, where the compatible arrows (like f and g) are composed as `g ∘ f`. And identity arrows map objects back to themselves, e.g. `1ᵃ : a -> a`.



At a higher level, we have *functors* that map between categories. A functor that maps a category back to itself is an *endofunctor*. In general, a functor `F` maps a category `ℂ` to a category `𝔻` by mapping:

A functor `F : ℂ -> 𝔻` maps
- objects in ℂ to objects in 𝔻
  - a,b,c ∈ Ob(ℂ)
  - a ⟼ F a
  - b ⟼ F b
- arrows in ℂ to arrows in 𝔻
  - f : a -> b ∈ Ar(ℂ)
  - f ⟼ F f
  - 1ᵃ ⟼ F 1ᵃ = 1 ꜰₐ

Functors are in fact structure-preserving mappings, meaning they preserve:
- identities, 1ᵃ ⟼ F 1ᵃ and `F 1ᵃ = 1 ꜰₐ`
- composition
  - f : a -> b ∈ Ar(ℂ), so f ⟼ F f
  - g : b -> c ∈ Ar(ℂ), so g ⟼ F g
  - g ∘ f : a -> c ∈ Ar(ℂ), so g ∘ f ⟼ F (g ∘ f), and `F (g ∘ f) = F g ∘ F f`

There is a special endofunctor called the **identity functor**, `I` that maps a category back to itself, `Iᶜ : ℂ -> ℂ`, or `Iᴰ : 𝔻 -> 𝔻`.

>The identity functor on a category `ℂ` is the functor `Iᶜ : ℂ → ℂ` that maps each object and morphism of `ℂ` back to itself.

The identity functor on a category ℂ is denoted `Iᶜ` (or `1ᶜ` or `idᶜ`).

The identity functors are the identities of composition of functors in `Cat`.

*Composition of functors* (in `Cat`)
- identity functors are units of composition of functors
- F : ℂ -> 𝔻
- G : 𝔻 -> 𝔼
- `G ∘ F : ℂ -> 𝔼`
