# Epimorphism

# Endomorphism

https://en.wikipedia.org/wiki/Endomorphism

A morphism `f: A → A`, that is, a morphism with identical source and target objects, is an **endomorphism** of object `A`.

An endomorphism that is also an isomorphism, is an **automorphism**.

A *split endomorphism* is an *idempotent endomorphism* `f` if `f` admits a decomposition `f = h ∘ g` with `g ∘ h = id`.

In particular, *the Karoubi envelope* of a category splits every idempotent morphism.

## Summary
- epimorphism, epic
- `f ∘ e = g ∘ e ⟹ f = g`
- epic is precomposed
- *surjections* (onto)
- right-cancellative
- retractions are epimorphisms


An **epimorphism** (also called an *epic* or, colloquially, an *epi*) is a morphism `e : X → Y` that is *right-cancellative* in the sense that, for all objects `Z` and all morphisms `f, g: Y → Z`, we have 

`f ∘ e = g ∘ e ⟹ f = g`

```
           e                   f
X -----------------> Y -----------------> Z
                     Y -----------------> Z
                               g
```

Epimorphisms are categorical analogues of **onto** or **surjective functions**, and in the category of sets the concept corresponds exactly to the surjective functions.

However, they may not exactly coincide in all contexts. For example, the inclusion `ℤ → ℚ` is a *ring epimorphism*.


Many authors in abstract algebra and universal algebra define an epimorphism simply as an *onto or surjective homomorphism*. Every epimorphism in this algebraic sense is an epimorphism in the sense of category theory, but the converse is not true in all categories.


## Contents

- Examples
- Properties
- Related concepts
- Terminology

## Duality

The dual of an epimorphism is a monomorphism; i.e. an epimorphism in a category `C` is a monomorphism in the dual category `Cᵒᵖ`.

Every *section* is a monomorphism, and every *retraction* is an epimorphism.

```
           e                   f                    m
W -----------------> X -----------------> Y -----------------> Z
                     X -----------------> Y
                               g
```

>m ∘ f = m ∘ g ⟹ f = g     monic

>f ∘ e = g ∘ e ⟹ f = g     epic


An arrow e : W → X is epic if, postcomposed with functions f, g : X → Y, makes them functions the same, f = g.

An arrow m : Y → Z is monic if, precomposed with functions f, g : X → Y, makes them functions the same, f = g.

## Examples

## Properties

## Related concepts

## Terminology





## Refs

https://en.wikipedia.org/wiki/Monomorphism
https://en.wikipedia.org/wiki/Epimorphism
https://en.wikipedia.org/wiki/List_of_category_theory_topics
https://ncatlab.org/nlab/show/epimorphism
https://ncatlab.org/nlab/show/monomorphism
