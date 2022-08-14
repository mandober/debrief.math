# Foundations 2: Category Theory

https://www.youtube.com/watch?v=Yz6XsqixvCo

In this video, we introduce category theory, the category Set, and the idea of terminal objects.

An object `1` is a terminal object in a category if every object in the category has exactly one arrow into it. This implies that the terminal object has only one arrow into itself, which is the identity arrow (it can't have any additional arrows `1 -> 1`).

A way to denote each of these unique arrows: `!ᴀ : A -> 1`, `!ʙ : B -> 1`, etc. So `!₁ : 1 -> 1` ≡ `1₁ : 1 -> 1`.

Not every category has a terminal object.

If a category has more than one terminal object, they are then actually isomorphic, so we can just pick any one of them as `1`.

The terminal object is crucial in Set category as it allows us to probe the inner structure of objects: an object `X` that has `n` elements will induce `n` arrows going from `1 to X`; each such arrow corresponds to an element of `X`. For example , `a : 1 -> X` identifies the element `a ∈ X`.

`a ∈ X  ≅  a : 1 -> X`
