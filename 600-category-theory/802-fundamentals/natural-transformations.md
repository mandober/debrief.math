# Natural transformation

https://en.wikipedia.org/wiki/Natural_transformation
https://ncatlab.org/nlab/show/natural+transformation

Just as a functor is a morphism between categories, a natural transformation is a 2-morphism between two functors.

Natural transformations are the 2-morphisms in the 2-category Cat.

## Definition

### Explicit definition

Given categories `C` and `D` 
and functors `F,G : C → D`, 
a natural transformation between them 
  `α : F ⇒ G` 
is an assignment 
to every object `x` in `C` 
  of a morphism `αˣ : F x → G x` in `D`, 
  called the component of `α` at `x`, 
such that 
  for any morphism `f : x → y` in `C`, 
  the following diagram commutes

```
F b     αᵃ      G b
● --------------> ●
↑                 ↑
|                 |
|F f           G f|
|                 |
|                 |
● --------------> ●
F a     αᵇ      G a
```

### Composition

Natural transformations between 
functors `F : C → D` and `G : D → E` 
compose in the obvious way 
to natural transformations `G ∘ F : C → E` 
(this is their **vertical composition** in the 2-category `Cat`) 
and functors `F : C → D` with natural transformations 
between them form the *functor category*, `[C,D] ∈ Cat`.

The notation alludes to the fact that this makes `Cat` a *closed monoidal category*. Since `Cat` is in fact a *Cartesian Closed Category*, another common notation is `Dᶜ`. 

There is also a **horizontal composition of natural transformations**, 
which makes `Cat` a 2-category (the Godement product).

In fact, `Cat` is a 2-category (a Cat-enriched category) 
because it is (cartesian) closed: 
closed monoidal categories are automatically 
enriched over themselves, via their internal hom.

### In terms of arrow-wise components

An alternative but ultimately equivalent way 
to define a natural transformation `α : F → G` 
is as an assignment 
to every morphism `m : x → y` in `C` 
of a morphism `α(m) : F x → G y`, 
in such a way as that 
`G(m₁) α(m₀) = α(m₁) F(m₀)` 
for every binary composition `m₁m₀` in `C`; 
or, equivalently, 
`α(m₂ m₁ m₀) = G(m₂) α(m₁) F(m₀)` 
for every ternary composition `m₂m₁m₀` in `C`.

The relation of this to the previous definition is that 
the commutative squares in the previous definition 
for any morphism `f` 
give the value `α(f) = G f ∘ αˣ = αʸ ∘ F f`, 
and the identity morphisms for any object `x` 
give the component `αˣ = α(1ˣ)`.
