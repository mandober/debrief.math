# Functor

# Functors

The notion of a functor is best introduced by first explaining the behavior of a "nice" functor - officially called a *fully faithful functor* - which is the analogue of a bijective function, in that it doesn't collapse objects, allowing us to draw a nice diagram for it.

```
a        Fᵃ        F a
● ┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄→ ●
│                    │
│f                   │ Fᶠ
↓                    ↓
● ┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄→ ●
b        Fᵇ        F b
```




A functor is a mapping between two categories C and D. Philosophically, a functor images (paints) the source category in the target category. "Regular" (non-standard term) functors are the ones that do the best possible job at that, unlike constant functors that like to collapse a bunch of source objects into a single target object, making the image unrecognizable.

A functor `F : C -> D` maps
1. objects in C to objects in D
2. arrows in C to arrows in D
3. identity arrows in C are preserved
4. composition of arrows in C is preserved

>Each functor follows its specific logic how it does the mapping.

1. `F` acts on each object `a ∈ C`, denoted `F(a)`, and maps it to an object in `D` which is denoted by `F a`. Thus, `F(a) = F a`, but remember that `a ∈ C`, while `F a ∈ D`.

2. `F` acts on each arrow `f ∈ C`, denoted `F(f)`, and maps it to an arrow in `D` denoted by `F f`. Thus, `F(f) = F f`. In this case, we presume there is an arrow `f : a -> b ∈ Ar(C)`, for some objects `a` and `b` in C. The mapping of arrows warrents precise description: an arrow `f : a -> b` exists among `Ar(C)`, and `a, b ∈ Ob(C)`. Functor `F` maps an object `a` in C to `F a` in D, and `b` in C to `F b` in D. *This means that an arrow from `a` to `b` must be mapped to an arrow from `F a` to `F b` - that is, an arrow in `D` from the image of `a` to the image of `b`, thus preserving the source and target objects of arrows.* An arrow `a -> b` in C cannot be mapped to an arrow `F b -> F a` in D, i.e. to an arrow that reverses its relative direction (flips the images of src and tgt object). This is true for functors whose full name is **covariant functors**. It is exactly their **covariance** that makes sure of this property. On the other hand, a **contravariant functor** will necessarily flip the images of src and tgt objects of an arrow in C thereby reversing its direction in D.

```hs
fmap      ::       Functor f => (a -> b) -> (f a -> f b)
contramap :: Contravariant f => (a -> b) -> (f b -> f a)

-- Flipping either arrow is yields equivalent results.
-- In the sig above, the direction of the lifted arrow is flipped.
-- In this sig below, the direction of the unlifted arrow is flipped.
contramap :: Contravariant f => (b -> a) -> (f a -> f b)
```

Having two equivalent ways to denote the signature of `contramap` is also reflected in CT. There, the signature of a contravariant functor `F` is preferably denoted `F : Cᴼᴾ -> D`, i.e. as a normal functor from a category `C` opposite to a category `D` - which corresponds to the Haskell's signature with the unlifted arrow reversed, (b -> a).

>**Functoriality** is the fact that arrows in the functor's source category *lift* up to the target category, along with their compositionality and their identity morphisms (and associativity).


```
F : C -> D
- In C:
  - a, b, c ∈ Ob(C)
  - f, g, 1ᵃ, 1ᵇ, 1ᶜ ∈ Ar(C)
  - f : a -> b
  - g : b -> c
  - g ∘ f : a -> c
  - 1ᵃ : a -> a
  - 1ᵇ : b -> b
  - 1ᶜ : c -> c
- In D:
  - F a, F b, F c ∈ Ob(D)
  - F f, F g, F 1ᵃ, F 1ᵇ, F 1ᶜ ∈ Ar(D)
  - F f : a -> b
  - F g : b -> c
  - F g ∘ F f : F a -> F c,  s.t. F g ∘ F f = F (g ∘ f)
  - F 1ᵃ : F a -> F a,       s.t. F 1ᵃ = 1ꜰₐ
  - F 1ᵇ : F b -> F b,       s.t. F 1ᵇ = 1ꜰᵇ
  - F 1ᶜ : F c -> F c,       s.t. F 1ᶜ = 1ꜰᶜ
- Ob(C) ⟼ Ob(D)
  - F(a) ⟼ F a
- Ar(C) ⟼ Ar(D)
  - F(f) ⟼ F f
  - F(g . f) ⟼ F (g . f) = F g . F f
  - 1ᵃ ⟼ F 1ᵃ = 1ꜰₐ
```


## Endofunctors

If the two categories coincide, then a functor is called an *endofunctor*. There may be a bunch of endofunctors, but only one among them is the special *identity functor*.

A category `M` of one object, `m ∈ Ob(M)`, has the special *identity morphism*, `1ᵐ : M -> M ∈ Ar(M)`, among a bunch of other endomorphisms, `f: M -> M ∈ Ar(M)`. What does an identity functor `E` on `M` behave like? Well, it maps objects to objects: an object `x` to an object `E x`. But since there is only one object, `E` can only map it to itself, and thus `E(m) = E m = m`, i.e. the image of object `m` is the object `E m`, which is just `m`. On objects, the identity functor `E` behaves like an identity morphism. A functor also maps arrows to arrows: `E` maps an arrow `f : m -> m ∈ Ar(M)` to an arrow `E f : m -> m ∈ Ar(M)`, and these two arrows will, in general, be distinct. The identity arrow `1ᵐ` is mapped to itself, `E(1ᵐ) = E 1ᵐ = 1ᵐ`. The composition of any two arrows `f, g : m -> m ∈ Ar(M)` is preserved.
