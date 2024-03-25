# CT :: Categories

Categories may be simple, like the discrete category `𝟙` that only has a single object, `a`, and no arrows except the necessary identity arrow, `1ᵃ`, but we get categories of increasing complexity consisting of almost all elements of CT that became objects in such categories.

At the basic level we get plain ol' categories of objects and arrows, where objects are abstract objects and arrows are sufficiently function-like. Here, arrows are maps between the objects in the category. But then we have functors that are maps between categories. A functor maps objects in one category to objects in another category, and arrows in the first to arrows in the second, including the identity arrows. Then functors induce a category of functors.

A *category of (covariant) functors*, `[ℂ, Set]`, has hom-functors, `ℂ(a, -)`, as objects and NTs as arrows.

A *category of contravariant functors*, `[Set, ℂ]` or `[ℂᴼᴾ, Set]` has contravariant hom-functors, `ℂ(-, a)`, as objects and NTs as arrows.

There is also a category `[ℂᴼᴾ ⨯ ℂ -> Set]`, with objects such as `ℂ(-,=)`.

A category itself also induces a category, so there is a category of categories, `Cat`.
