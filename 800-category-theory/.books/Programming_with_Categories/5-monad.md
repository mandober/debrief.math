# 5. Monads

A monad is a special type of functor, from a category to that same category, that supports some additional structure.



`join` and `>>=` are definable in terms of each other:

```hs
join :: Monad m => m (m a) -> m a
join mma = mma >>= id

(>>=) :: Monad m => m a -> (a -> m b) -> m b
ma >>= amb = join (fmap f x)
```
