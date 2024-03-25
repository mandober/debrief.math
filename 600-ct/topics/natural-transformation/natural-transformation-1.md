# Natural transformation

https://en.wikipedia.org/wiki/Natural_transformation
https://ncatlab.org/nlab/show/natural+transformation

A **natural transformation** provides a way of transforming one functor into another while respecting the internal structure of the categories involved. Hence, a natural transformation can be considered as a morphism of functors.

Informally, the notion of a natural transformation states that a particular map between functors can be done consistently over an entire category. Indeed, this intuition can be formalized to define functor categories.

Natural transformations are, after categories and functors, one of the most fundamental notions of category theory and consequently appear in the majority of its applications.

Just as a functor is a morphism between categories, a natural transformation is a 2-morphism between two functors. Natural transformations are the 2-morphisms in the 2-category Cat.

## Contents

- 1. Definition
- 2. Examples
  - 2.1. Opposite group
  - 2.2. Modules
  - 2.3. Abelianization
  - 2.4. Hurewicz homomorphism
  - 2.5. Determinant
  - 2.6. Double dual of a vector space
  - 2.7. Finite calculus
  - 2.8. Tensor-hom adjunction
- 3. Unnatural isomorphism
  - 3.1. Example: fundamental group of torus
  - 3.2. Example: dual of a finite-dimensional vector space
- 4. Operations with natural transformations
  - 4.1. Vertical composition
  - 4.2. Horizontal composition
  - 4.3. Whiskering
  - 4.4. Interchange law
- 5. Functor categories
  - 5.1. More examples
- 6. Yoneda lemma
- 7. Historical notes


## Definition of NT

```
         F x             F y
x        o ──────────────→ o
│        │       F f       │
│        │        ║        │
│f       │        ║        │
│        │αx      ║α       │αʸ
│        │        ↓        │
↓        ↓       G f       ↓
y        o ──────────────→ o
         G x             G y
```

A diagram of a NT `α : F ⇒ G` between two parallel functors `F` and `G`.

`αˣ` is called a component of the NT `α` at object `x` (in category C), which the functor `F` maps to an object `F x` (in category D). The functor `G` maps `x` (from C) to `G x` (in D), and `y` (from C) to `G y` (in D). Arrow `f : x -> y` (in C) is mapped by `F` to `F f` (in D) and by `G` to `G f` (in D).

The **naturality condition**, that every NT must satisfy, says that the square above commutes, i.e. that `G f ∘ αˣ = αʸ ∘ F f`.


### Explicit definition

Given two categories C and D and two functors F,G : C → D, 
a natural transformation `α : F ⇒ G` between the two functors, 
is an assignment: 
to every object x in C 
  a morphism `αˣ : F x → G x` in D, 
  called the component of `α` at `x`, 
such that 
  for any morphism `f : x → y` in C, 
  the diagram above commutes, 
  i.e. that `G f ∘ αˣ = αʸ ∘ F f`.

∀x.x ∈ Ob(C) ⇒ αˣ : F x → G x ∈ Ar(D)


### Composition of NTs

Natural transformations between functors `F : C → D` and `G : D → E` compose in the expected way to give a natural transformation `G ∘ F : C → E`. This is their **vertical composition** in the 2-category `Cat`.

Functors from C to D with natural transformations between them form a *functor category*, denoted `[C,D] ∈ Cat`. The notation alludes to the fact that this makes Cat a *closed monoidal category*; since Cat is in fact a *Cartesian Closed Category*. Another denotation is `Dᶜ`.

There is also a **horizontal composition** of natural transformations, which makes Cat a 2-category (the Godement product).

In fact, Cat is a 2-category (a Cat-enriched category) because it is (Cartesian) closed: *closed monoidal categories* are automatically enriched over themselves, via their *internal hom*.

### In terms of arrow-wise components

An alternative but ultimately equivalent way 
to define a natural transformation `α : F → G` 
is as an assignment: 
to every morphism `f : x → y` in C 
  a morphism `α(f) : F x → G y`, 
  such that `G(f₁) ∘ α(f₀) = α(f₁) ∘ F(f₀)`, 
  for every binary composition `f₁ ∘ f₀` in C. 

Or, equivalently, 
`α(f₂ ∘ f₁ ∘ f₀) = G f₂ ∘ α f₁ ∘ F f₀` 
for every ternary composition `f₂ ∘ f₁ ∘ f₀` in `C`.

The relation of this to the previous definition is that 
the commutative squares in the previous definition 
for any morphism `f` 
give the value `α f = G f ∘ αˣ = αʸ ∘ F f`, 
and the identity morphisms for any object `x` 
give the component `αˣ = α 1ˣ`.
