# TT :: Basic notions :: Type theory

The fundamental idea behind type theory is to gain the ability to distinguish between different types of objects.

A *type system* is a formal system in which every *term* has a property called *type*, which defines the meaning of that term and the operations that may be performed on it.

That a term `x` has a type `A` is denoted by `x : A`; it is one of the 4 fundamental *judgements* in TT.

Type theory studies *types*, which may be thought of as sets, but with richer structure and additional features. Analogous to elements of a set, are *terms* of a type. In most type theories, each term belongs to a single type, which is another difference from sets where an object may belong to multiple sets. However, *non-commulative type hierarchy* breaks this fundamental rule, allowing a term to belong to an infinite number of subsequent type universes.

Starting at the base universe, `𝒰₀`: the base universe contains the usual terms and types that classify them: Nat, Int, Char, String, pairs, lists, functions and functions types, etc. Each term has a type - a base type. The collection of all base types makes 𝒰₀. However, than the terms and types become relative roles: the types of 𝒰₀ become terms at 𝒰₁, and they are classified by higher and higher types.

    𝒰₀ < 𝒰₁ < 𝒰₂ < … < 𝒰ᵢ

An **inhabited type** contains at least one term, otherwise it is uninhabited.
