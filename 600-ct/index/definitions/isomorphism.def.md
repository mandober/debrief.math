# Category theory :: Definitions :: Isomorphism

In a category `C`, 
two objects `a` and `b` 
with 2 arrows between them
- `f ∈ hom(a,b)` i.e. `f : a -> b`
- `g ∈ hom(b,a)` i.e. `g : b -> a`
are isomorphic iff
- `g ∘ f = 1ᵃ`
- `f ∘ g = 1ᵇ`

* In that case
  - `g` is an inverse of `f` denoted `g = f⁻¹`
  - `f` is an inverse of `g` denoted `f = g⁻¹`
  and thus
  - `g ∘ f = 1ᵃ` i.e. `f⁻¹ ∘ f = 1ᵃ` i.e. `g ∘ g⁻¹ = 1ᵃ`
  - `f ∘ g = 1ᵇ` i.e. `f ∘ f⁻¹ = 1ᵇ` i.e. `g⁻¹ ∘ g = 1ᵇ`


>Thus, an isomorphism between two objects `a` and `b` consists of
>two arrows, `f : a -> b` and `f⁻¹ : b -> a`, 
>which are each other's inverses as confirmed by 
>`f⁻¹ ∘ f = 1ᵇ` and `f ∘ f⁻¹ = 1ᵃ`.


```
           f
    -------------->
a ●                 ● b 
    <--------------
           g


m is an monomorphism iff
  ∀ f g ∈ hom(x,a).
    ∃ m ∈ hom(a,b).
      (m ∘ f = m ∘ g) -> f = g
```

## Natural isomorphism

natural isomorphism (≃), `a ≃ b`
