# Constant functor

A constant functor, `K`, maps category C to category D, `K : C -> D` by mapping every object `x` in C to object `K x = k` in D, and every morphism `f : a -> b` in C to the identity morphism of object `K x`, i.e. of `k`, i.e. to `1ᵏ`.

Constant functors are denoted by `Δ`. Since a constant functor is fully determined by the image object `k`, to which it maps all pre-image objects, it is often denoted the image object `k` subscribed, `Δ ₖ` or `Δᵏ`.

Constant functors thus correspond to constant functions, in that they also collapse everything (all args) to a single point.

```
ℂ               𝔻
        Δ
x -------------> k
↓ᶠ - - - - - - → 1ᵏ
y -------------> k

Δ(x)  = k
Δ(y)  = k
Δ(1ˣ) = 1ᵏ
Δ(1ʸ) = 1ᵏ
Δ(f)  = 1ᵏ
```

## In Haskell

### `Const` type

The `Const` functor is defined in the module `Data.Functor.Const` ...
https://hackage.haskell.org/package/base-4.19.0.0/docs/src/Data.Functor.Const.html

...but imported from the module `Control.Applicative`
https://hackage.haskell.org/package/base-4.19.0.0/docs/Control-Applicative.html


It is called the `Const` functor, even though `Const` is a data type that has a `Functor` instance; thus it is a functor, but also a `Foldable` and a (restricted) `Applicative`. It is not a `Monad`, though (unlike `Identity` type, which pretty much has an instance of every class).

```hs
-- defined in Data.Functor.Const
newtype Const v u = Const { getConst :: v }

instance Functor (Const v) where
  fmap :: (a -> b) -> Const v a -> Const v b
  fmap _ (Const v) = Const v
```

In other words, constant functor doesn't do shit. The type `Const v u` is a functor in the second type arg `u`, which is not used. This means that a similar type, but with type args swapped is a more insteresting functor.

### Flipped `Const` type

```hs
-- flipped (Const v u)
newtype Konst u v = Konst { getKonst :: v }

instance Functor (Konst u) where
  fmap :: (a -> b) -> Konst u a -> Konst u b
  fmap f (Konst u) = Konst (f u)
```

Flipped `Const` type, i.e. `Konst` behaves similarly to the identity functor.


### Entire code

Constant newtype has instances of Functor, Foldable, and Applicative. Actually, it is an Applicative provided its first type param is a Monoid.

```hs
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE PolyKinds #-}

newtype Const a b = Const { getConst :: a }
    deriving ( Bits       -- ^ @since 4.9.0.0
             , Bounded    -- ^ @since 4.9.0.0
             , Enum       -- ^ @since 4.9.0.0
             , Eq         -- ^ @since 4.9.0.0
             , FiniteBits -- ^ @since 4.9.0.0
             , Floating   -- ^ @since 4.9.0.0
             , Fractional -- ^ @since 4.9.0.0
             , Generic    -- ^ @since 4.9.0.0
             , Generic1   -- ^ @since 4.9.0.0
             , Integral   -- ^ @since 4.9.0.0
             , Ix         -- ^ @since 4.9.0.0
             , Semigroup  -- ^ @since 4.9.0.0
             , Monoid     -- ^ @since 4.9.0.0
             , Num        -- ^ @since 4.9.0.0
             , Ord        -- ^ @since 4.9.0.0
             , Real       -- ^ @since 4.9.0.0
             , RealFrac   -- ^ @since 4.9.0.0
             , RealFloat  -- ^ @since 4.9.0.0
             , Storable   -- ^ @since 4.9.0.0
    )

-- | @since base-4.7.0.0
instance Foldable (Const m) where
  foldMap :: Monoid m => (a -> m) -> Const m a -> m
  foldMap _ _ = mempty

-- | @since base-2.01
instance Functor (Const m) where
  fmap :: (a -> b) -> Const m a -> Const m b
  fmap _ (Const v) = Const v

-- | @since base-2.0.1
instance Monoid m => Applicative (Const m) where
  pure :: a -> Const m a
  pure _ = Const mempty

  liftA2 :: (a -> b -> c) -> Const m a -> Const m b -> Const m c
  liftA2 _ (Const x) (Const y) = Const (x `mappend` y)

  (<*>) :: Const m (a -> b) -> Const m a -> Const m b
  (<*>) = coerce (mappend :: m -> m -> m)
  -- This is pretty much the same as:
    Const f <*> Const v = Const (f `mappend` v)
  -- but guarantees that `mappend` for `Const a b` will have the same arity
  -- as the one for `a`; it won't create a closure to raise the arity to 2.
```
