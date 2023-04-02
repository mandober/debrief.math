# Church list

A Church-encoded list is a way of representing a list via a function that resembles both folding and CPS. In fact, Church list is identified with the `foldr` function, that is, `ChurchList` = `runCList` = `foldr`.


```hs
type   ChurchList a  = forall r. (a -> r -> r) -> r -> r
runCList :: CList a -> forall r. (a -> r -> r) -> r -> r
foldr ::                         (a -> r -> r) -> r -> [a] -> r

newtype CList a = CList { runCList :: forall r. (a -> r -> r) -> r -> r }


```

The `a -> r -> r` farg handles the cons, and `r` arg handles the nil, while the final `r` represents the result.

For illustration as to how this corresponds to a list, here is an isomorphism that has `O(n)` time complexity.

```hs
fromList :: [a] -> CList a
fromList xs = CList $ \cons nil -> foldr cons nil xs

toList :: CList a -> [a]
toList cl = runCList cl (:) []
```
