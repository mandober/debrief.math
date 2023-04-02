# Representable functors

- https://hackage.haskell.org/package/adjunctions-4.4.2/docs/Data-Functor-Rep.html#t:Representable
- https://hackage.haskell.org/package/adjunctions-4.4.2/docs/src/Data.Functor.Rep.html#Representable

Representable endofunctors over the category of Haskell types are isomorphic to the reader monad and so inherit a very large number of properties for free.


```hs
-- | A 'Functor' @f@ is 'Representable' if 'tabulate' and 'index' witness an isomorphism to @(->) x@.
--
-- Every 'Distributive' 'Functor' is actually 'Representable'.
--
-- Every 'Representable' 'Functor' from Hask to Hask is a right adjoint.
--
-- @
-- 'tabulate' . 'index'  ≡ id
-- 'index' . 'tabulate'  ≡ id
-- 'tabulate' . 'return' ≡ 'return'
-- @
class Distributive f => Representable f where
  -- | If no definition is provided, this will default to 'GRep'.
  type Rep f :: *
  type Rep f = GRep f

  -- |
  -- @
  -- 'fmap' f . 'tabulate' ≡ 'tabulate' . 'fmap' f
  -- @
  --
  -- If no definition is provided, this will default to 'gtabulate'.
  tabulate :: (Rep f -> a) -> f a
  default tabulate :: (Generic1 f, GRep f ~ Rep f, GTabulate (Rep1 f))
                   => (Rep f -> a) -> f a
  tabulate = gtabulate

  -- | If no definition is provided, this will default to 'gindex'.
  index    :: f a -> Rep f -> a
  default index :: (Generic1 f, GRep f ~ Rep f, GIndex (Rep1 f))
                => f a -> Rep f -> a
  index = gindex
```


```hs
instance Representable Identity where
  type Rep Identity = ()
  index (Identity a) () = a
  tabulate f = Identity (f ())

instance Representable m => Representable (ReaderT e m) where
  type Rep (ReaderT e m) = (e, Rep m)
  index (ReaderT f) (e,k) = index (f e) k
  tabulate = ReaderT . fmap tabulate . curry
```
