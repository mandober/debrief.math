# Category Theory :: Formulae

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


## Associativity

Composition of arrows is associative

```
h ∘ (g ∘ f) = (h ∘ g) ∘ f = h ∘ g ∘ f

(g ∘ f) x = g (f x)

x |> f |> g = g (f x)

```

## Transitivity closure

Composition of arrows is is closed under the transitivity relation:

```
∀ f g ∈ Ar(𝒞).
  ∃ h ∈ Ar(𝒞).
    (f : a -> b ⋀ g : b -> c)
      => (g ∘ f : a -> c)
```

## components

```
category 𝒞
  a,b,c ∈ Ob(𝒞)
  f,g,h,1ᵃ,1ᵇ ∈ Ar(𝒞)
  f : a -> b
  g : b -> c
  h = g ∘ f : a -> c
  1ᵃ : a -> b
  1ᵇ ∘ f = f = f ∘ 1ᵃ
  Iᴄ : 𝒞 -> 𝒞          identity functor on 𝒞
  E : 𝒞 -> 𝒞           endofunctor on 𝒞

category 𝒞ᴼᴾ
  a,b,c ∈ Ob(𝒞ᴼᴾ)
  f⁻¹,g⁻¹,h⁻¹,1ᵃ,1ᵇ ∈ Ar(𝒞)
  f⁻¹ : b -> a
  g⁻¹ : c -> b
  h⁻¹ = f ∘ g : c -> a
  1ᵃ : a -> b
  1ᵃ ∘ f⁻¹ = f⁻¹ = f⁻¹ ∘ 1ᵇ
  Iᴄᴼᴾ : 𝒞ᴼᴾ -> 𝒞ᴼᴾ            identity functor on 𝒞ᴼᴾ, unit of F composition
  E : 𝒞ᴼᴾ -> 𝒞ᴼᴾ               endofunctor on 𝒞ᴼᴾ

  O : 𝒞 -> 𝒞ᴼᴾ                functor from 𝒞 to 𝒞ᴼᴾ (?)
  Oᴼᴾ : 𝒞ᴼᴾ -> 𝒞              functor from 𝒞ᴼᴾ to 𝒞 (?)


category 𝒞, 𝒟
  F : 𝒞 -> 𝒟                 functor from 𝒞 to 𝒟

2-category, Cat
  𝒞,𝒟 ∈ Ob(Cat)
  F,G,H, T,I ∈ Ar(Cat)        horizontal composition of functors
  α,β, μ,η ∈ NT(Cat)          vertical composition of functors
  η : a -> T a                unit of NT composition
  μ : T² -> T
```
