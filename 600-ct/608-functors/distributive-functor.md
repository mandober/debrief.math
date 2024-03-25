# Distributive functors

- https://hackage.haskell.org/package/distributive-0.6.2.1/docs/Data-Distributive.html#t:Distributive
- https://hackage.haskell.org/package/distributive-0.6.2.1/docs/src/Data.Distributive.html#Distributive

This is the categorical dual of `Traversable`.

Due to the lack of non-trivial comonoids in Haskell, we can restrict ourselves to requiring a `Functor` rather than some Co-Applicative class.

Categorically, every Distributive functor is actually a *right adjoint*, and so it must be `Representable` endofunctor and preserve all limits. This is a fancy way of saying that it is isomorphic to `((->) x)` for some `x`.

To be distributable, a container will need to have a way to consistently zip a potentially infinite number of copies of itself. This effectively means that the holes in all values of that type, must have the same cardinality, fixed sized vectors, infinite streams, functions, etc. and no extra information to try to merge together.


```hs
class Functor g => Distributive g where
  {-# MINIMAL distribute | collect #-}

  -- The dual of Data.Traversable.sequenceA
  --   distribute [(+1), (+2)] 1 == [2, 3]
  --
  -- >>> distribute = collect id
  -- >>> distribute . distribute = id
  distribute  :: Functor f => f (g a) -> g (f a)
  distribute  = collect id

  -- collect f = distribute . fmap f
  -- fmap f = runIdentity . collect (Identity . f)
  -- fmap distribute . collect f = getCompose . collect (Compose . f)
  collect     :: Functor f => (a -> g b) -> f a -> g (f b)
  collect f   = distribute . fmap f

  -- The dual of Data.Traversable.sequence
  -- >>> distributeM = fmap unwrapMonad . distribute . WrapMonad
  distributeM :: Monad m => m (g a) -> g (m a)
  distributeM = fmap unwrapMonad . distribute . WrapMonad

  -- >>> collectM = distributeM . liftM f
  collectM    :: Monad m => (a -> g b) -> m a -> g (m b)
  collectM f  = distributeM . liftM f
```


```hs
instance Distributive Identity where
  collect :: Functor f => (a -> Identity b) -> f a -> Identity (f b)
  collect = coerce fmap

  distribute :: Functor f => f (Identity a) -> Identity (f a)
  distribute = Identity . fmap runIdentity


instance Distributive ((->) e) where
  distribute :: Functor f => f (e -> a) -> e -> (f a)
  distribute a e = fmap ($ e) a

  collect :: Functor f => (a -> e -> b) -> f a -> e -> (f b)
  collect f q e = fmap (flip f e) q
```
