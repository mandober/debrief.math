# Products

https://www.youtube.com/watch?v=fY02LIW8fvk

In this video we explain how to define the categorical product, by starting with the Cartesian product in set theory. We see the categorical product in action within preordered sets, and see how the greatest common divisor emerges as an example. We also define the product of monoids, and the product of categories. We also show that any two categorical products of a given pair of objects will be isomorphic to each other.

## Categorical product

>(def) **The categorical product**   
Let `A,B,P,X ∈ Ob(𝒞)`. 
In a category `𝒞`, 
the product of objects `A` and `B`, 
is the object `P = A⨯B`, 
along with the two outgoing projection arrows 
where
  `π₁ : A⨯B -> A` and 
  `π₂ : A⨯B -> B` 
such that 
  for any other candidate object `X` 
  (candidate for the product object) 
  that also has two outgoing projections arrows
  `f : X -> A` and
  `g : X -> B` 
  there exists the unique arrow 
  `m : X -> A⨯B` 
  such that 
  `π₁ ∘ m = f` and 
  `π₂ ∘ m = g`.


- The product is a categorical construction.
- The product is a categorical object.
- The product is an object in a category.
- The product object is an object in a category.

- A product is a triple: the product object and 2 (outgoing) projection arrows.

- `A <-------A⨯B-------> B`
  - objects: `P` = `A⨯B`, `A` and `B`
  - arrows: `π₁` and `π₂`

  ∃a ∈ Ob(𝒞). 
  ∃b ∈ Ob(𝒞). 
    πᵢ ∈ Ar(𝒞). 
    πᵢ ∈ Ar(A⨯B, i)
      π₁ : A⨯B -> A
      π₂ : A⨯B -> B 


- Each arrow ends at an object that is a component of the product.
  `π₁ : A⨯B -> A`
  `π₂ : A⨯B -> B` 

- The definite article "the" (in "the product" and "the product object") is justified by the existence of isomorphisms between multiple product objects; that is, if a category has multiple product objects then all are isomorphic.

- Whether the product exists may depend on `𝒞`, or on `A` and `B`. If it does exist, the product is *unique up to the canonical isomorphism* due to the universal property - justifying the definite aricle (as in "the product").



The real product is recognized by there existing a unique arrow from any candidate product to the real product object. In other words, all "fake" products can be factorized trought the real one. `m x = (f x, g x)`.

We can express `f` as a composition `π₁ ∘ m`, but we cannot expres `π₁` as something else (as a composition). And similarly for `g` and `π₂`.

However, if it happens that several objects satisfy the product definition then there are several products but all are isomorhic to each other (so it doesn't treally matter which one you pick).

## Product of categories

The product of categories 𝓒 and 𝓓, `𝓒 ⨯ 𝓓`, 
has objects `⟨a, a'⟩` 
for each obj `a` in 𝓒 
and each obj `a'` in 𝓓, 
and arrows 
`⟨f, f'⟩ : ⟨a, a'⟩ -> ⟨b, b'⟩`, 
for each arrow `f : a -> b` in 𝓒 
and each arrow `g : a' -> b'` in 𝓓, 
such that the identity arrows and 
composition is preserved, 
`⟨g, g'⟩ ∘ ⟨f, f'⟩ = ⟨g ∘ f, g' ∘ f'⟩`

The identity arrows are preserved: 
the id arrow of object `⟨a, a'⟩`, `a ⨯ a'`, is 
`⟨Ida , Ida'⟩ = Id ⟨a, a'⟩`
