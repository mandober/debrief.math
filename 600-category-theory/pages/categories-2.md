# CT :: Categories

Categories may be simple, like the discrete category `𝟙` that only has a single object, `a`, and no arrows except the necessary identity arrow, `1ᵃ`, but we get categories of increasing compolexity consisting of almost all elements of CT that became objects in such categories.

At the basic level we get plain ol' categories of objects and arrows, where objects are abstract objects and arrows are sufficiently function-like. Here, arrows are maps between the objects in the category. But then we have functors that are maps between categories. A functor maps objects in one category to objects in another category, and arrows in the first to arrows in the second, including the identity arrows. Then functors induce a category of functors.

A category of functors may be a category of functors from some category `ℂ` to the category `Set`, denoted `[ℂ, Set]`. The objects in this functor category are *hom-functors* like `ℂ(a, -)`, `ℂ(b, -)`, `ℂ(c, -)` and the arrows are NTs. There is also a category `[Set, ℂ]` where objects are `ℂ(-, a)` and `ℂ(-, b)`. And there is also a category `[ℂᴼᴾ ⨯ ℂ -> Set]`, with objects such as `ℂ(-,=)`.

A category itself also induces a category, so we have a category of categories, `Cat`.
