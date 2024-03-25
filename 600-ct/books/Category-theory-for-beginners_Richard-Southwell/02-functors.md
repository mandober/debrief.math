# Functors and the Category of Categories

https://www.youtube.com/watch?v=HN-bfUGFmFQ

We introduce more categories of structured sets (the category of graphs, and 𝗠𝗼𝗻 the category of monoids, and 𝗣𝗿𝗲, the category of preordered sets). We also define isomorphisms. We define functors between categories, and discuss the category of categories, which is called 𝗖𝗮𝘁.

## Terminal object

A terminal object, `T`, is an object in a category, such that for each obj `X` in that category there is an arrow `T -> X`. It could happend that a category has more than one terminal objects, but in any case, they are always isomorphic to each other.

A the `Set` category, singleton sets are terminal objects. There is only 1 function from any other set (type) to a singleton set (type) since `1ˣ = 1`. If a set `X` has `x` elements then there are `x` functions from a singleton set to `X`, since `x¹ = x`. Each such function becomes an arrow, and these arrows act as element selectors - they select elements from the set, in category now object, `X`. That way we can recreate internal structures of sets just by following the arrows around a category.

## Isomorphism

An isomorphism between objects `A` and `B` is defined by a pair of arrows, `f : A -> B` and `g : B -> A` such that `g ∘ f = 1ᴀ` and `f ∘ g = 1ʙ`.

In programming, these are `from` and `to` functions that convert between two types (objects).

## Functor

A functor is one of the crucial concepts in CT; it is a mapping between a category C to a category D, `F : C -> D`. In fact, a functor consists of two mappings: it maps obj in C to obj in D, and arrows in C to arr in D. However, it maps obj and arr such that composition and identity arrows are preserved.
- for all obj X in C . F(X) = F X in D
  - `a` in C is mapped to `F a` in D
  - `b` in C is mapped to `F b` in D
  - `c` in C is mapped to `F c` in D
- for all arr φ in C . F(φ) = F φ in D
  - `f : a -> b` in C is mapped to `F a -> F b` in D
  - `g : b -> c` in C is mapped to `F b -> F c` in D
- for all arr `1x` in C mapped to `F 1x` in D
  - `1ᴀ : a -> a` in C is mapped to `F 1ᴀ : F a -> F a` in D
  - `1ʙ : b -> b` in C is mapped to `F 1ʙ : F b -> F b` in D
- composition: `f ∘ g` in C is mapped to `F f ∘ F g` in D
  - `g ∘ f : a -> c` in C mapped to `F g ∘ F f = F (g ∘ f) : F a -> F c` in D


>Functors are the principle tool to compare categories and to recognize patterns from one category in another.


Functors map one category to another, and we can also compose them. First, a functor `F` sends an obj `A` in a cat C to obj `F(A)` in D, then a functor `G` maps it into an obj `G(F(A))` in cat E.

## Category of categories

A category of categories has categories as objects and functors as arrows.

__Cat__ denotes the category of small categories, while __CAT__ denotes the very large category, which has categories like __Set__ and __Mon__, as objects.

Unlike regular categories, a category of categories has an additional feature called *natural transformation* (a NT is an arrow between parallel functors, but we'll study it later).

The __Mon__ category, a category of structured sets, contains monoids as objects, and functors between them as arrows.

Some monoids
- Sum =     `(ℕ, +, 0)`
- Product = `(ℕ, ⨯, 1)`
- All = `(𝔹, ∧, F)`
- All = `(𝔹, ∨, T)`

So a *monoidal functor* would map the sum monoid to the product monoid, 
`F : (ℕ, +, 0) -> (ℕ, ⨯, 1)` (or vice versa).

The __Pre__ category (a category without parallel arrows) has preordered sets as objects and functors between them as arrows. When considering pre-ordered sets, some people express that there's an arrow `a -> b` by writing `a ≤ b`, such that, if `a ≤ b`, then `F(a) ≤ F(b)`.
