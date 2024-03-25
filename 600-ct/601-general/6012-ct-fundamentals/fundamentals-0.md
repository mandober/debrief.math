# CT :: Fundamentals

## Morphisms


### Identity morphisms

>∀x ∈ Ob(C). ∃!1ₓ : x -> x

∀f ∈ Ar(C). (src f = tgt f = a) ⇒ (f = 1ᵃ)

src 1ᵃ = tgt 1ᵃ ⇒ 1ᵃ



## Composition

Two arrows `f` and `g` are *composable* or *compatible*, denoted `g ∘ f`, iff `tgt f = src g`.

The composition of two compatible arrows is not a question of possibility - the composite arrow corresponding to their composition must exists; otherwise, their enclosing structure is not a category. In other words, if we can find that two arrows can be composed, but there is no arrow corresponding to their composition - we do not have a category!

>If an arrow corresponding to the composition of two (other) arrows is missing, the structure is not a category.

For any two arrows `f` and `g` in a category C, if `tgt f = src g` then there must be an arrow `g ∘ f`.

>∀f,g ∈ Ar(C). (tgt f = src g) ⇒ g ∘ f


Two arrows `f` and `g` are *composable* or *compatible*, denoted `g ∘ f`, 

The composite (composed) arrow, e.g. `g ∘ f`, resulting from the composition of two composable arrows `f` and `g`, must have already existed - if it does not exist, we do not have a category.

Two arrows that can be composed must have already been composed.

The composition of two *compatible* arrows

## Static and operational views

An arrow `f : a -> b` can be interpreted *statically*, in that its source and target object are evident/given/static; e.g. we can see (it is evident) that the source of `f` is object `a`. Or, *operationally* in that we use operators `src` and `tgt` to query an arrow for its *enpoints*; e.g. `src f = a`.

Similarly, identity arrows may be interpreted *statically*, as given/evident, e.g. `1ᵃ` is the identity morphism of object `a`; or *operationally*, resulting from queries, e.g. `id a = 1ᵃ`, where `id` is an operator that given an object produces the object's identity arrow; and, at the same time, an operator that given an identity arrow produces its source/target object, `id 1ᵃ = a`, in which case it behaves like the `src`/`tgt` operators, `src 1ᵃ = tgt 1ᵃ = a`.
