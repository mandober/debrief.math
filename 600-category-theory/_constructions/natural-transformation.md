# Natural transformation

https://en.wikipedia.org/wiki/Natural_transformation

A natural transformation provides a way of transforming one functor into another while respecting the internal structure (the composition of morphisms) of the categories involved.

Hence, a natural transformation can be considered as a "morphism of functors". Indeed, this intuition can be formalized to define the so-called *functor categories*.

Natural transformations, with categories and functors, are the three most fundamental notions in category theory, and consequently appear in the majority of categorical applications.

## Definition

If `F` and `G` are functors between the categories `C` and `D`, then a natural transformation `η : F -> G` is a *family of morphisms* that satisfies (2):

1. The natural transformation must associate, to every object `a` in `C`, a morphism `ηᵃ : F a -> G a` between objects of `D` (arrow `ηᵃ` is called the component of `η` at `a`).

2. Components of the natural transformation must be such, that for every morphism `f : a -> b` in `C`, the naturality condition holds:

`ηᵇ ∘ F f = G f ∘ ηᵃ`

The naturality condition may be conveniently expressed by the commutative diagram, called the *naturality square*:

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




A natural transformation, `µ`, between two functors, `F, G : C → D`, is a **family of morphisms indexed by objects** in `𝒞`, such that, for all morphisms `f : a → b` the above diagram, called the **naturality square**, commutes.

A natural transformation `µ` consists of components: 
`µ = { µₐ : F a → G a | ∀a ∈ Ob(𝒞) }`

A natural transformation maps each object to an arrow, 
and each arrow to a commuting diagram.


## Natural Transformation

A NT maps objects in `C` to arrows in `D`: 
`αₐ : F A -> G A`
arrows are indexed by objects; 
and arrows in `C` 
`f : A -> B` 
to communting diagrams in `D`: 
F A → G A, F B → G B

The naturality condition: `αᵦ ∘ F f = G f ∘ αₐ`




## Refs

* Natural transformation @ncatlab
https://ncatlab.org/nlab/show/natural+transformation

* Natural transformation - Batrosz Milewski
https://www.youtube.com/watch?v=2LJC-XD5Ffo
