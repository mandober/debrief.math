# Adjunctions

This is part 18 of Categories for Programmers
https://bartoszmilewski.com/2016/04/18/adjunctions/

In mathematics we have various ways of saying that one thing is like another.

The strictest is **equality**. Two things are equal if there is no way to distinguish one from another. One can be substituted for the other in every imaginable context. For instance, we have used equality of morphisms when discussing commuting diagrams and that is because morphisms form a set (hom-set) and set elements can be compared for equality.

However, equality is often too strong of a constraint. There are many things that are the same for intents and purposes under consideration, without actually being equal; they are equal **up to**.

For instance, the type `(Bool, Char)` is not strictly equal to `(Char, Bool)`, but we understand that they contain the same information. This concept is best captured by an **isomorphism** between two types, which is an invertible morphism. And since it is a morphism, it preserves the structure; and being "iso-" means that it is part of a round trip that lands you in the same spot, no matter where you start. In the case of pairs, this isomorphism may be called `swap`, which is its own inverse.

```hs
swap :: (a,b) -> (b,a)
swap (a,b) = (b,a)
```


## Adjunction and (co)unit pair

When we say that two categories are isomorphic, we express this in terms of mappings between categories, i.e. *functors*. We'd like to say that two categories `C` and `D` are isomorphic if there exists an *invertible functor* `R` ("right") from `C` to `D`. In other words, there exists another functor `L` ("left") from `D` back to `C` which, when composed with `R`, is equal to the identity functor `I`. There are two possible compositions, `R ∘ L` and `L ∘ R`; and two possible *identity functors*: one in `C` and another in `D`.


⟲ Iᴄ   L     ⟳ Iᴅ
┌───┐<----┌───┐
│ C │     │ D │
└───┘---->└───┘
       R

ᴬᴮ-ᴰᴱ-ᴳ
