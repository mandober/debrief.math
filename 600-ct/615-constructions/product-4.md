# Product

https://en.wikipedia.org/wiki/Product_(category_theory)

The product of two objects in a category is a notion designed to capture the essence behind constructions in other areas of mathematics such as the Cartesian product of sets, the direct product of groups or rings, and the product of topological spaces. Essentially, the product of a family of objects is the "most general" object which admits a morphism to each of the given objects.

## Product construction

Let `a` and `b` be objects in category `C`. 
A product of `a` and `b` 
is an object `p = a ⨯ b`, 
equipped with a pair of arrows (projections) 
`π₁ : (a ⨯ b) -> a` and `π₂ : (a ⨯ b) -> b`, 
satisfying the following universal property: 
for every object `p❜` in C, 
and every pair of morphisms 
`f₁ ∶ p❜ -> a` and `f₂ ∶ p❜ -> b`, 
there is a unique morphism 
`m ∶ p❜ -> (a × b)`
such that `f₁ = π₁ ∘ m` and `f₂ = π₂ ∘ m`, 
or, such that the following diagram commutes

```
         p❜
        /|\
       / | \          m = ⟨f₁ ⋆ f₂⟩
      /  |  \
  f₁ /   |   \ f₂     f₁ = m ∘ π₁
    /  m |    \       f₂ = m ∘ π₂
   /     |     \
  /      |      \     π₁ : a ⨯ b -> a
 ↙   π₁  ↓   π₂  ↘    π₂ : a ⨯ b -> b
a <----- p -----> b
       a ⨯ b
```

The entire category may be a haystack of objects and arrows, but we need to find a needle represented by the pattern involving 3 distinct objects and 2 distinct arrows.

Whether a product exists may depend on C or on `a` and `b`. If it does exist, it is unique up to canonical isomorphism, because of the universal property, so one may speak of the product.

The morphisms `π₁` and `π₂` are called the *canonical projections* or *projection morphisms*. Given `p❜`, and `f₁` and `f₂`, the unique morphism `m` is called the **product of morphisms** `f₁` and `f₂` and denoted by `⟨f₁ , f₂⟩`.

## Equational definition

Alternatively, binary product may be defined with equations
- existence of `m` is guaranteed by existence of the operation `⟨⋅ , ⋅⟩`
- commutativity of the diagram above is guaranteed by the equality: 
  forall `f₁`, `f₂` and all `i ∈ {1,2}`, `πᵢ ∘ ⟨f₁ ,f₂⟩ = m`
- uniqueness of `m` is guaranteed by the equality: 
  forall `g : p❜ -> a ⨯ b`, `⟨π₁ ∘ g, π₂ ∘ g⟩ = g`

## Examples

* In the category of sets, the product (in the category theoretic sense) is the Cartesian product.

* In the category of relations, the product is given by the disjoint union. (This may come as a bit of a surprise given that the category of sets is a subcategory of the category of relations.)

* A partially ordered set can be treated as a category, using the order relation as the morphisms. In this case the products and coproducts correspond to greatest lower bounds (meets) and least upper bounds (joins).
