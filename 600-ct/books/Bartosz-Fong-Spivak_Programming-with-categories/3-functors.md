# 3. Functors, natural transformations, and type polymorphism

## Functors

A **functor** is a structure-preserving mapping that maps one category into another by mapping the objects into objects and morphisms into morphisms.


## Natural transformations



## Polymorphic functions as natural transformations

Considering type constructors as functors, we can consider a natural transformation as a mapping between type constructors.

A natural transformation `alpha` is something that maps `F a` to `G a`, that is, `alpha :: F a -> G a`.

Implicitly, we are discussing a component of `alpha` at the type `a`; since this function is polymorphic, the right component gets picked by the compiler.

For example, say we have a list of type `a`, i.e. `[a]`, and we want to get its head element. If the list is empty, then there is no such element, otherwise we get an `a` as the return value `Maybe a`:

```hs
alpha :: f    a -> g     a
head  :: List a -> Maybe a

head :: [a] -> Maybe a
head []     = Nothing
head (x:xs) = Just x
```

So here we have a natural transformation between `List` and `Maybe` functors.

The corresponding *naturality square* in this context is:

```
    alphaₐ
Fa --------> Ga
|            |
|Ff          |Gf
|            |
↓            ↓
Fb --------> Gb
    alphaᵦ

µₐ and µᵦ = alpha
Ff = fmapₗ f :: F a -> F b
Gf = fmapₘ f :: F a -> F b

fmapₗ = fmap of the List functor
fmapₘ = fmap of the Maybe functor
```

and we'd have to show that `fmap f . alpha = alpha . fmap f`

Let us revisit our `head :: [a] -> Maybe a` example, and consider the naturality
condition which says that `(fmap @Maybe) f . head = head . (fmap @[]) f`. Here, the fmap on LHS corresponds to the `Maybe` functor, while on RHS it corresponds to the list functor. The LHS can be read "take the first element of the list, then apply `f` on it". The RHS can be read as "apply the function `f` to the entire list, then take the first element". The result is the same.
