# Functor

- a functor is a mapping between categories, `F ∶ 𝒞 → 𝒟`
- an identity functor maps a category back to itself, `F ∶ 𝒞 → 𝒞`
- a functor does the mapping by using 2 morphisms:
  - `Fₒ : a -> F a` for mapping objects to objects
  - `Fₘ : f -> F f` for mapping arrows to arrows


Functors are one of the fundamental elements of category theory. Functors allow for translation between different branches of mathematics and they play an important role in FP where they, among other things, facilitate defining container types, or, more generally, type constructors.

A functor (also called "morphism of categories") is a mapping between categories, `F ∶ 𝒞 → 𝒟` : not only it maps objects in `𝒞` to objects in `𝒟`, but it also maps morphisms in `𝒞` to morphisms in `𝒟`.

The *identity functor* maps a category, `𝒞`, back to itself, `1ꜰ : 𝒞 → 𝒞` by mapping each object in `𝒞` to itself, and each arrow in `𝒞` to itself.

A functor `F` maps between categories `𝒞` and `𝒟` using its two component morphisms: one for mapping objects and the other for mapping arrows:
- component morphism `Fₒ` that maps each object `a` in `𝒞` to an object `F a` in `𝒟` with signature `Fₒ : a → F a`
- component morphism `Fₘ` that assigns to each arrow `f : a → b` in `𝒞`, an arrow `F f : F a → F b` in `𝒟` such that `F (g ◦ f) = F g ◦ F f` and `1ₐ = 1ꜰₐ`

===============================================================================

<fieldset><legend>Definition</legend>

Let `𝒞` and `𝒟` be categories. 
A functor `F ∶ 𝒞 → 𝒟` 
(consisting of two "subfunctors", `Fₒ` for maping obj, and `Fₘ` for arrows)
assigns 
to each object `a` in `𝒞` 
  an object `Fₒ a` in `𝒟`, and 
to each morphism `f ∶ a → b` in `𝒞` 
  a morphism `Fₘ f ∶ Fₒ a → Fₒ b` in `𝒟`, 
such that
  forall objects `a` in 𝒞: `Fₒ(1ₐ) = 1ꜰₐ`
and
  forall morphisms `f ∶ a → b` and `g ∶ b → c` in `𝒞`:
  `Fₘ (g ∘ f) = Fₘ (g) ∘ Fₘ (f)`

</fieldset>

===============================================================================

Functors are composable which allows us to define the category of (small) categories, `𝗖𝗮𝘁`, where objects are categories, morphisms are functors, and identity arrows are identity functors.


[FAQ] Objects in a category are connected by arrows, and object across categories are connected by functors. However, an identity functor maps objects to themselves in a category, meaning objects can be mapped by arrows *and* functors (just saying).

A functor from a category to itself is called an *endofunctor*.

An example of functors is the power set operation, which yields an endofunctor in Set.
