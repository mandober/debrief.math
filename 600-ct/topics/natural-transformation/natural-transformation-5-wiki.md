# Natural transformation

https://en.wikipedia.org/wiki/Natural_transformation

A **natural transformation** provides a way of transforming one functor into another while respecting the internal structure of the categories involved.

Hence, a natural transformation can be considered to be a *morphism of functors*. Informally, the notion of a natural transformation states that a particular map between functors can be done consistently over an entire category. This intuition can be formalized to define so-called functor categories.

Natural transformations are, after categories and functors, one of the most fundamental notions of category theory and consequently appear in the majority of its applications. In fact, NTs were initially the primary object of exploration, with other categorical notions being invented just to support them.

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

If `F` and `G` are parallel functors between categories `C` and `D`, then a NT called eta, `η : F -> G`, is a *family of morphisms* that satisfies 2 axioms:
1. It must associate, to every object `a` in `C`, a morphism `ηᵃ : F a -> G a`, between objects of D; the arrow `ηᵃ` is called a *component* of `η` at `a`.
2. Components of a NT must be such, that for every morphism `f : a -> b` in C, the *naturality condition* holds: `ηᵇ ∘ F f = G f ∘ ηᵃ`

The last equation can be conveniently expressed by the commutative diagram called the **naturality square**:

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

* In other words, a NT `µ` between two parallel functors `F,G : C → D` is a *family of morphisms indexed by objects* in C, such that, for all morphisms, `f : a → b`, the above diagram commutes.

* A natural transformation `µ` consists of a set of components (arrows):

`µ = { µₐ : F a → G a | ∀a ∈ Ob(𝒞) }`

* A NT maps each object to an arrow, and each arrow to a commuting diagram.

∀a.a ∈ Ob(𝒞) ⇒ ∃! µₐ : F a → G a, where Fa,Ga ∈ Ob(D), µₐ ∈ Ar(D)


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
