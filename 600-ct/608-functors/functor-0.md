# Functor

In CT, functor is a structure-preserving mapping between categories. A functor `F : C -> D` maps objects in category `C` to objects in category `D`

, and arrows to arrows


In Haskell, `Functor` is defined as a type class.

```hs
-- In Haskell, Functor is defined as a type class
class Functor f where
  fmap :: (a -> b) -> f a -> f b

-- fmap of function functor is just composition
instance Functor ((->) r) where
  mapf :: (a -> b) -> (r -> a) -> r -> b
  mapf ab ra = ab . ra
```


Two interpretations of a functor:

1. A functor `F` takes a regular function `f :: a -> b` and applies it to a functorful of `a`'s, returning a functorful of `b`'s.

2. A functor `F` "lifts" a regular function `f :: a -> b` to work on a functorial container (context) `fmap f :: f a -> f b`.

```
a        Fᵃ        F a
● ┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄→ ●
│                    │
│f                   │ Fᶠ
↓                    ↓
● ┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄→ ●
b        Fᵇ        F b
```

Fᶠ ∘ Fᵃ = Fᵇ ∘ f
