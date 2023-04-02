# Epimorphism
https://ncatlab.org/nlab/show/epimorphism

## Idea
In category theory, the concept of epimorphism is a generalization or strengthening of the concept of surjective functions on sets (epimorphisms in `Set` are precisely the surjective functions). The dual concept of epimorphism is monomorphism (which is related to the concept of injective functions).

## Def

A morphism `f : a → b` in a category is an epimorphism iff for all objects `c` and for all (parallel) morphisms `g₁,g₂ : b -> c` it holds that 
`(g₁ ∘ f = g₂ ∘ f) ⟹ g₁ = g₂`.







# Epimorphism
https://en.wikipedia.org/wiki/Epimorphism

An epimorphism or epi (adjective epic) is categorical analog of surjection (surjective homomorphism) and is sometimes denoted by `↠` or `->>`.


An epimorphism is a morphism `f : X → Y` 
that is *right-cancellative* 
in the sense that, for all objects `Z` 
and all morphisms `g₁, g₂: Y → Z`, 
`g₁ ∘ f = g₂ ∘ f → g₁ = g₂`

In category theory, an **epimorphism** (also called an epic morphism or epi) is a morphism `f : a -> b` that is *right-cancellative* in the sense that, for all objects `∀c` and for all morphisms `∀g₁,g₂ : b -> c` it holds that

>(g₁ ∘ f = g₂ ∘ f) ⟹ g₁ = g₂

So, if we have a category C, with a,b,c ∈ Ob(C), and f,g₁,g₂ ∈ Ar(C), and for all objects `∀c` and for all morphisms `∀g₁,g₂ : b -> c`, if it holds that the equality of post-composition of each `g` after `f`, i.e. `g₁ ∘ f = g₂ ∘ f`, implies the equality of `g` functions, i.e. `g₁ = g₂`, then `f : a ->> b`, i.e. `f` is an epimorphism.

```
∀c. ∀(g₁,g₂: b -> c). ∃(f : a -> b).
  ((g₁ ∘ f = g₂ ∘ f) ⟹ g₁ = g₂)
    ⟹ (f : a ->> b)
```



Epimorphisms are categorical analogues of onto or surjective functions (and in `Set` the concept corresponds exactly to the surjective functions), but they may not exactly coincide in all contexts.

For example, the inclusion `Z → Q` is a ring epimorphism. The dual of an epimorphism is a monomorphism; i.e. an epimorphism in a category `C` is a monomorphism in the dual category `Cᵒᵖ`.

Many authors in abstract algebra and universal algebra define an epimorphism simply as an onto or surjective homomorphism. Every epimorphism in this algebraic sense is an epimorphism in the sense of category theory, but the converse is not true in all categories.

In this article, the term "epimorphism" will be used in the sense of category theory given above. For more on this, see § Terminology below.
