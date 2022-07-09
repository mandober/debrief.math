# Universes and families

1. Foundations : 1.1. Type theory : 1.3 Universes and families

A **universe** is a type whose elements are types.

As in naive set theory, we might wish for a universe of all types `𝓤∞` including itself (that is, with `𝓤∞ : 𝓤∞`). However, as in set theory, this is unsound, i.e. we can deduce from it that every type, including the empty type representing the proposition False), is inhabited. For instance, using a representation of sets as trees, we can directly encode Russell's paradox.

To avoid the paradox we introduce a *hierarchy of universes* 
where every universe `𝓤ᵢ` is an element of the next universe `𝓤ᵢ﹢₁`:

`𝓤₀ : 𝓤₁ : 𝓤₂ : …`

Moreover, we assume that the *universes are cumulative*, that is that all the elements of the `i`th universe are also elements of the `i + 1`th universe, 
i.e. if `A : 𝓤ᵢ` then also `A : 𝓤ᵢ﹢₁` and thus also `A : 𝓤ᵢ﹢₂` and so on.
This has the consequence that elements *no longer have unique types*.

When we say that `A` is a type, we mean that it inhabits some universe `𝓤ᵢ`.

We usually want to avoid mentioning the *level* `i` explicitly, and just assume that levels can be assigned in a consistent way, so we write `A : 𝓤` omitting the level. This way we can even write `𝓤 : 𝓤`, which can be read as `𝓤ᵢ : 𝓤ᵢ﹢₁`, having left the indices implicit. Writing universes in this style is referred to as *typical ambiguity*. It is convenient but a bit dangerous, since it allows us to write valid-looking proofs that reproduce the paradoxes of self-reference. If there is any doubt about whether an argument is correct, the way to check it is to try to assign levels consistently to all universes appearing in it.

When some universe `𝓤` is assumed, we may refer to types belonging to `𝓤` as **small types**.

To model a collection of types varying over a given type `A`, we use functions `B : A → 𝓤` with a universe as the codomain. These functions are **families of types**, or **dependent types**, corresponding to set families of set theory.

An example of a type family is the *family of finite sets*, 
`Fin : ℕ → 𝓤` 
where `Fin n` is a type with exactly `n` elements. 
We denote the elements of `Fin n` by `0ₙ, 1ₙ, …, (n − 1)ₙ`, 
with subscripts to emphasize that 
the elements of `Fin(n)` 
are different from those of `Fin m` 
if `n` is different from `m`, 
and all are different from the ordinary natural numbers.

Anotyher example of a type family is the *constant type family* at a type 
`B : 𝓤`, which is the constant function `(λx. B) : A → 𝓤`.

As a non-example, there is no type family `λ(i : ℕ). 𝓤ᵢ`. Indeed, there is no universe large enough to be its codomain. Moreover, we don't even identify the indices `i` of the universes `𝓤ᵢ` with the natural numbers of type theory.
