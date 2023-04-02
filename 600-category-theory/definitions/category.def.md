# Category theory :: Definitions :: Category

A category is a collection of objects and arrows between them.

- category, ℂ, 𝔻, 𝔼
- objects, `∀c ∈ Ob(ℂ)` all objects in a cat ℂ
- arrows
- identity arrows
- composition of arrows
- Law of associativity: associativity of composition of arrows
- Law of identity: unit of arrow composition
- composition of arrows is closed under transitivity relation

- A category `ℂ` is called small if both ob(C) and hom(C) are Sets

## Definition ♯ 1

A category `C` consists of 3 components:

1. A class¹ of objects `Ob(C)`   
   (¹ or a set if the category is "small")

2. A set² of morphisms `hom(a,b)` for every pair of objects in `Ob(C)`   
   (² there may be any number of arrows between a certain `a` and `b`)

3. Composition of arrows, `hom(a,b) ⨯ hom(b,c) -> hom(a,c)`, 
   for all `a b c ∈ Ob(C)`, denoted by `g ∘ f`. If 
   `f : a -> b` denotes an arrow `f ∈ hom(a,b)` and 
   `g : b -> c` denotes an arrow `g ∈ hom(a,b)` then 
   `h : a -> c` denotes their composition `h ∈ hom(a,b)` and `h = g ∘ f`


```js
∀ f ∈ hom(a,b).
  ∀ g ∈ hom(b,c).
    ∃ h ∈ hom(a,c).
      h = g ∘ f

f : a -> b, f ∈ hom(a,b)
g : b -> c, g ∈ hom(a,b)
-----------------------------------
h : a -> c, h ∈ hom(a,b), h = g ∘ f
```

Additionally, the above must be defined so that

1. >The hom-sets are each pairwise disjoint.

2. for every object `a`, there is an identity morphism `1ᵃ ∈ hom(a,a)` 
   such that `f ∘ 1ᵃ = f` and `1ᵇ ∘ f = f` for all `f : a -> b`

3. Composition is associative.




## The elemens of a category

A category, `𝒞`, is a collection of:

1. Objects, `Ob(𝒞)`, and
2. Arrows between these objects, `Ar(𝒞)`
    - An arrow `f : a -> b` is an arrow in a category `𝒞`, `f ∈ Ar(𝒞)`, and   
    - it is an arrow between objects `a` and `b` in `𝒞`, `f ∈ Ar(a,b)`,    
      where   
      - `a` is a source object    
      - `b` is a target object    
      of the arrow `f : a -> b`
3. Each object in a category has an identity arrow, `∀a ∈ Ob(𝒞). ∃1ₐ : a -> a`
4. A category is endowed with a single binary operation of **composition**, `∘`
    - Two arrows compose if 
      - the target object of an arrow `f ∈ Ar(𝒞)` is   
      - the source object of an arrow `g ∈ Ar(𝒞)`.    
    - If `f : a -> b` and `g : b -> c`    
      - then there **must be an arrow** `h ∈ Ar(𝒞)`    
      - that is their composition, `h = g ∘ f : a -> c`,    
    - A category is closed under the transitivity of composition.

## The axioms of category

1. **The law of closure**:    
   A category is closed under the transitivity of composition:    
   `∀f,g ∈ Ar(𝒞). ∃h ∈ Ar(𝒞). (f : a → b ⋀ g : b → c) ⇒ (h = g ∘ f) : a → c`
2. **The law of associativity**:   
   Composition of arrows must be associative:    
   `h ∘ (g ∘ f) = (h ∘ g) ∘ f`
3. **The law of identity**:   
   `1ʸ ∘ f = f = 1ˣ ∘ f`    
   **The identity arrows act as units of composition**.    
   For each (non-identity) arrow `f : x -> y` in `𝒞`,    
   there are two identity arrows, `1ˣ : x -> x` and `1ʸ : y -> y`.   
   The *left unit* (identity) of composition:  `1ˣ ∘ f = f`    
   The *right unit* (identity) of composition: `1ʸ ∘ f = f`.    
   That is,   
   **Post-composing** an arrow `f : x -> y` with   
   the identity arrow `1ˣ` of the source object `x`,   
   gives back the same arrow `f`:    
   `1ˣ ∘ f = f`   
   **Pre-composing** an arrow `f : x -> y` with    
   the identity arrow `1ʸ` of the target object `y`,    
   gives back the same arrow `f`:    
   `1ʸ ∘ f = f`   
   Therefore, composition has both left and right identity,    
   i.e. it is the total identity:    
   `1ʸ ∘ f = f = 1ˣ ∘ f`
