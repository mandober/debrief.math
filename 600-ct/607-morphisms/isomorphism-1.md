# Isomorphism

https://en.wikipedia.org/wiki/Isomorphism

Almost universally in mathematics, one regards two objects of the same category to be the same when they are isomorphic, in a precise categorical sense.

(definition) An **isomorphism** in a category is a morphism `f : X → Y` for which there exists a morphism `g: Y → X` so that `g ∘ f = 1x` and `f ∘ g = 1ʏ`.

The objects `X` and `Y` are isomorphic whenever there exists an isomorphism between them, in which case one writes `X ≅ Y`.

An *endomorphism*, which is a morphism whose domain equals its codomain, that is also an isomorphism, is an **automorphism**.



The concept of *isomorphism* and the property of *uniqueness up to an isomorphism*, as well as *uniqueness up to a unique isomorphism*, is often encountered in category theory.

Definition: a morphism `f ∶ a → b` in a category `𝒞` is an **isomorphism**
if there is an inverse morphism `f⁻¹ ∶ b → a` such that `f⁻¹ ∘ f = 1ᴀ` and `f ∘ f⁻¹ = 1ʙ`. Objects `a` and `b` are isomorphic if there is at least one isomorphism `f ∶ a → b`.

*Isomorphic objects* are often said to be identical up to isomorphism. Similarly, an object with some property is said to be unique up to isomorphism if every object satisfying the property is isomorphic to it.

In Set category, isomorphisms are bijections.

Isomorphisms are important in category theory since arrow-theoretic descriptions usually determine an object only up to some isomorphism. Thus isomorphisms are the degree of "sameness" that we wish to consider in categories.

## Bijection

In set theory, the equality between two sets can be established by finding a map `f` that associates each element in domain with each element in codomain such that all the associations are pair-wise distinct.

One such map is `f`:

```
A               B
x . --------> . 1
y . --------> . 2
z . --------> . 3
```


The crucial property that `f` has is that there's an *inverse map* `g` for the map `f`.

The important thing is that `g` and `f` are related by two equations: 
`g ∘ f = 1ᴀ` and `f ∘ g = 1ʙ`. Neither of these equations alone guarantees that the two sets `A` and `B` have the same size - we need both.

Definition: a map `f ∶ a → b` in is an **isomorphism** or **invertable map** if there is an inverse map `g ∶ b → a` such that `g ∘ f = 1ᴀ` and `f ∘ g = 1ʙ`. A map `g` related to `f` that satisfies these 2 equations is an *inverse map* for `f`. The sets `a` and `b` are **isomorphic** if there is at least one such isomorphism.

Other bijective mappings between these two sets exist, but to show that these sets are equivalent we only need to find one (any) bijection. By the way, in this example,`A -> B`, there is a total of `3³ = 27` maps, and among these `6` are bijective maps; btw, only 1 map is `id` map; there are constant mappings.

```
A -> B
1       2         3       4         5       6         bijections
x ⟼ 1  x ⟼ 1    x ⟼ 2  x ⟼ 2    x ⟼ 3  x ⟼ 3
y ⟼ 2  y ⟼ 3    y ⟼ 1  y ⟼ 3    y ⟼ 1  y ⟼ 2
z ⟼ 3  z ⟼ 2    z ⟼ 3  z ⟼ 1    z ⟼ 2  z ⟼ 1
```
