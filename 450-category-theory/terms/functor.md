# Functor

https://en.wikipedia.org/wiki/Functor

A functor is a mapping between categories.

Functors were first considered in algebraic topology, where algebraic objects (such as the fundamental group) are associated to topological spaces, and maps between these algebraic objects are associated to continuous maps between spaces. Nowadays, functors are used throughout modern mathematics to relate various categories. Thus, functors are important in all areas within mathematics to which category theory is applied.

## Definition

Let 𝒞 and 𝒟 be categories: a functor F is a mapping between categories 𝒞 and 𝒟, `F ∶ 𝒞 -> 𝒟`, such that the identity morphisms and composition of morphisms are preserved.

A functor `F ∶ 𝒞 -> 𝒟` is a mapping between categories 𝒞 and 𝒟. It maps objects to objects, and arrows to arrows. It associates each object X in 𝒞 to an object F(X) in 𝒟, it also associates each morphism `f : X -> Y` in 𝒞 to a morphism `F(f) : F(X) -> F(Y)` in 𝒟, such that these two conditions hold (that is, functors preserve identity morphisms and composition of morphisms):
1. ∀ objects X in 𝒞, `F(1ₓ) = 1ꜰₓ`
2. ∀ arrows `f : X -> Y` and `g : Y -> Z` in 𝒞, `F(g ∘ f) = F(g) ∘ F(f)` in 𝒟

Functor `F ∶ 𝒞 -> 𝒟`
- ∀X( X ∈ Obj(𝒞) -> F(X) ∈ Obj(𝒟) )
- ∀f( f ∈ Arr(𝒞) -> F(f) ∈ Arr(𝒟) )
- ∀X( X ∈ Obj(𝒞) -> F(1ₓ) = 1ꜰₓ ⋀ 1ꜰₓ ∈ Obj(𝒟) )
- ∀f∀g( g ∘ f ∈ Arr(𝒞) -> F(g ∘ f) ∈ Arr(𝒟) ⋀ F(g ∘ f) = F(g) ∘ F(f) )


A functor does the mapping by using 2 morphisms:
- `Fₒ : a -> F a` for mapping objects to objects (`a` to `F a`)
- `Fₘ : f -> F f` for mapping arrows to arrows (`f` to `F f`)

The *identity functor* maps a category, `𝒞`, back to itself, `1ꜰ : 𝒞 → 𝒞` by mapping each object in `𝒞` to itself, and each arrow in `𝒞` to itself.




## See also

* https://en.wikipedia.org/wiki/Pointed_set

* https://hackage.haskell.org/package/category-extras-0.52.0/docs/Control-Functor-Pointed.html

## See more

* https://bartoszmilewski.com/2014/10/28/category-theory-for-programmers-the-preface/

* https://boxbase.org/entries/2020/jul/27/can-you-church-encode-a-stream/

* http://blog.ezyang.com/2010/07/flipping-arrows-in-coburger-king/

* https://stackoverflow.com/questions/39179830/how-to-use-pointed-functor-properly

* https://www.youtube.com/watch?v=A9z0T7UmJIQ&list=TLPQMDEwMjIwMjKCYvPOqpyt4w&index=11

## Functors in JS

* FP jargon
https://github.com/hemanth/functional-programming-jargon

* Monad Mini-Series: Functors
https://www.youtube.com/watch?v=pgq-Pfg6ul4&list=PLORgiZG0dpd9sS0baeoH3lTC16ZZYSXeW

* https://gist.github.com/NWCalvank/ac51252e0da6c9901d7834f308299ec9

* HomeFunctor, Pointed Functor, Monad and Applicative Functor in JS
https://leandromoreira.com/2016/09/08/functor-pointed-functor-monad-and-applicative-functor-in-js/
