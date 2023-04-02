# Haskell :: Concepts :: Functors

Functors are one of the central concepts in category theory, where a functor is a structure-preserving map between categories, that maps objects and arrows in the source category `𝒞`, to objects and arrows in the target category `𝒟`. Thus, this functor is denoted by `F ∶ 𝒞 -> 𝒟`. A functor preserves structure by preserving composition of arrows and the identity arrows.

## Definition of a functor

- A functor `F ∶ 𝒞 -> 𝒟` is a mapping between categories `𝒞` and `𝒟`
- `F` maps objects and arrows in the source category `𝒞`
  to objects and arrows in the target category `𝒟`
- `F` maps each object `X` in `𝒞` 
  to an object `F(X)` in `𝒟`, 
- `F` maps each morphism `f : X -> Y` in `𝒞` 
  to a morphism `F(f) : F(X) -> F(Y)` in `𝒟` 
  such that these two conditions hold: 
  1. ∀X ∈ 𝒞. `F(1ₓ) = 1ꜰₓ`
  `F` preserves identity morphisms 
  by mapping each object's (`m`) id arrow (`1ₘ`), `1ₘ ⟼ 1ꜰₘ`
  2. ∀f,g ∈ 𝒞. `f : X → Y` and `g : Y -> Z`, `F (g ∘ f) = F(g) ∘ F(f)` in 𝒟
  `F` preserves composition of morphisms 
  by mapping compositions of arrows in C to compositions of arrows in D.



```
categories
  C, D
functor F
  F : C -> D
objects in C
  a, b, c ∈ Ob(C)
arrows in C
  f, g ∈ Ar(C)
  1ₘ ∈ Ar(C)
objects in D
  F a, F b, F c ∈ Ob(D)
arrows in D
  F f, F g ∈ Ar(D)
  F 1ₘ = 1ꜰₘ ∈ Ar(D)
-----------------------
∀m ∈ Ob(𝒞). m ⟼ F m
∀m ∈ Ob(𝒞). 1ₘ ⟼ 1ꜰₘ
∀f,g ∈ Ar(𝒞). f ⟼ F f, g ⟼ F g 
-----------------------
∀ f g ∈ Ar(𝒞).
  f : a -> b
       g : b -> c
-----------------------
∃ F f, F g ∈ Ar(𝒟).
  F f : F a -> F b
         F g : F b -> F c
-----------------------
  F (g ∘ f) = F g ∘ F f


               𝒞 ------F----> 𝒟
∀m ∈ Ob(𝒞)     m -----------> F m
∀m ∈ Ob(𝒞)    1ₘ -----------> 1ꜰₘ
```
