# Isomorphism of categories

https://en.wikipedia.org/wiki/Isomorphism_of_categories

Two categories `C` and `D` are isomorphic 
if there exist functors 
`F : C → D` and `G : D → C` 
which are mutually inverse to each other, i.e. 
`F ∘ G = 1ᴅ` (the identity functor on `D`) and 
`G ∘ F = 1ᴄ` (the identity functor on `C`).

```
            F
1ᴄ ↪ C -----------> D ↩ 1ᴅ
       <-----------
            G
```

This means that both the objects and the morphisms of `C` and `D` stand in a 1:1 correspondence to each other. Two isomorphic categories share all properties that are defined solely in terms of category theory; for all practical purposes, they are identical and differ only in the notation of their objects and morphisms.

Isomorphism of categories is a very strong condition and rarely satisfied in practice. Much more important is the notion of equivalence of categories; roughly speaking, for an equivalence of categories we don't require that `F ∘ G` is equal to `1ᴅ`, but only naturally isomorphic to `1ᴅ`, and likewise that `G ∘ F` is not equal to `1ᴄ` but only naturally isomorphic to `1ᴄ`.
