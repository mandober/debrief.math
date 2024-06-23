# Whiskering

https://en.wikipedia.org/wiki/Natural_transformation#Whiskering

**Whiskering** is an external binary operation between a functor and a natural transformation.

https://proofwiki.org/wiki/Definition:Whiskering
https://ncatlab.org/nlab/show/whiskering


If `η : F ⇒ G` is a natural transformation between functors `F,G : C → D`, and `H : D → E` is another functor, then we can form the NT `Hη : H ∘ F ⇒ H ∘ G` by defining `(Hη)X = H(ηX)`.

If on the other hand `K : B → C` is a functor, the NT `ηK : F ∘ K ⇒ G ∘ K` is defined by `(ηK)X = ηK(X)`.


It's also a horizontal composition where one of the natural transformations is the identity natural transformation:

`Hη = id_H ∗ η` and `ηK = η ∗ id_K`

Note that `id_H` (resp. `id_K`) is generally not the left (resp. right) identity of horizontal composition `∗`, i.e. `Hη ≠ η` and `ηK ≠ η` in general, except if `H` (resp. `K`) is the identity functor of the category D (resp. C).
