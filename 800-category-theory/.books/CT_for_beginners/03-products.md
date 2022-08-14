# Products

https://www.youtube.com/watch?v=fY02LIW8fvk

In this video we explain how to define the categorical product, by starting with the Cartesian product in set theory. We see the categorical product in action within preordered sets, and see how the greatest common divisor emerges as an example. We also define the product of monoids, and the product of categories. We also show that any two categorical products of a given pair of objects will be isomorphic to each other.

## Categorical product

The **categorical product** 
of objects `a` and `b`, i.e. `a ⨯ b`
is an object `P` 
(claiming that it is the real product) 
with two projections (arrows), 
`π₁ : P -> a` and `π₂ : P -> b`, 
such that, 
for any other pretender object `X` 
(claiming that it is in fact the product) 
with its two projections `f : X -> a` and `g : X -> b`, 
there exists the unique arrow `m : X -> P` 
such that 
`π₁ ∘ m = f` and `π₂ ∘ m = g`.

Note: a candidate for the product is a triple, an object and two projections.

So, the real product is recognized by there existing a unique arrow from any "fake" product to it. In other words, all "fake" products can be factorized trought the real one. `m x = (f x, g x)`.

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
