# Identity morphism


A category may have a lot of arrows, evan a small category such as a monoid with all the arrows going from the only object back to itself. We don't know which one of all these arrows is the identity morphism, but we can probe for it by composing different arrows. The identity arrow is gonna be the one that when composed with any other arrow, `f`, gives back that arrow right back. That is exactly what the identity axiom wrt the composition is saying.

Generally, it is expressed with any arrow `f` between two objects `A` and `B`:

`1ʙ ∘ f = f = f ∘ 1ᴀ`

but in a one-object category, it is:

`1ᴀ ∘ f = f = f ∘ 1ᴀ`

Besides probing for the `id` arrow, we also probe a category (by composing different arrows) to find out info about the structure of a particular category, especially in Set category. For example, we can use a singleton set that acts like an element selector, or a 2-element set that acts like a pair selector. Byu relying just on the arrows and their composition we can actually find out a lot about a category.
