# Identity morphism

**Identity morphism** is a map from an object back to itself. Each object in a category must have a unique identity morphism:

>∀x.x ∈ Ob(C) ⇒ ∃! 1ˣ : x -> x

otherwise, that structure is not a category. So when we assume the existence of some objects in a category, it is automatically assumed that each has own identity arrow.

Identity arrows are units of categorical composition - composing any arrow `f` in a category C with a compatible identity arrow, gives back `f`. If `a` and `b` are objects in C, and `f : a -> b` is an arrow in C, then

>1ᵇ ∘ f = f = f ∘ 1ᵃ

This means that identity arrow is both a *left and right unit of composition*.

>Left unit: 1ᵇ ∘ f = f
>Right unit: f ∘ 1ᵃ = f

Without labelling things, we could say that given any arrow (f : a -> b) in a category, the identity morphism of its *target object* (1ᵇ), when *postcomposed* with the arrow (1ᵇ ∘ f), gives back that same arrow (f); similarly, the identity morphism of the arrow's *souce object* (1ᵃ), when *precomposed* with the arrow (f ∘ 1ᵃ), gives back that same arrow (f).

>Identity arrow of the target object postcomposes with any arrow to give it back unchanged. Identity arrow of the souce object precomposes with any arrow to give it back unchanged.
or
>Any arrow precomposed with the identity of its target object gives back itself.Any arrow postcomposed with the identity of its ource object gives back itself.


In Haskell, in the category Hask, we don't identify identity arrow at each type (types are objects), but we talk about a single, but polymorphic, identity function, `id`, which when composed with any function, gives that function back, `id . f = f = f . id`.




## Identifying identity arrows

A category may have a lot of arrows, evan a small category such as a monoid with all the arrows going from the only object back to itself. We don't know which one of all these arrows is the identity morphism, but we can probe for it by composing different arrows. The identity arrow is gonna be the one that when composed with any other arrow, `f`, gives back that arrow right back. That is exactly what the identity axiom wrt the composition is saying.

Generally, it is expressed with any arrow `f` between two objects `A` and `B`:

`1ʙ ∘ f = f = f ∘ 1ᴀ`


In a one-object category it is:

`1ᴀ ∘ f = f = f ∘ 1ᴀ`

Besides probing for the identity arrow, we also probe a category (by composing different arrows) to find out info about the structure of a particular category, especially in `Set`. For example, we can use a singleton set that acts like an *element selector*, or a 2-element set that acts like a *pair selector*. Just by using composition we can find a great deal about a category.



```
1ᵃ ↻ a -------------> b ↺ 1ᵇ


1ᵃ      ╭ a -------ᶠ------> b ╮  1ᵇ
      ╰ a <------ᵍ------- b ╯


a      f       b
╭------------->╮
│1a            │1ᵇ
╰<-------------╯
a      fʹ      b
```
