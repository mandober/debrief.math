# Monomorphism

## Summary

- monomorphism, monic
- `m ∘ f = m ∘ g ⟹ f = g`
- monic is postcomposed
- *injections*
- left-cancellative
- sections are monomorphisms
- arrow is monomorphism if idempotent wrt pullbacks


In the context of abstract algebra or universal algebra, a monomorphism is an *injective homomorphism*. A monomorphism from X to Y is often denoted with the notation `X ↪ Y`.

In the more general setting of category theory, a **monomorphism** (also called a *monic*) is a *left-cancellative* morphism. That is, an arrow `m : X → Y`, such that, for all objects `Z` and all morphisms `f, g: Z → X` we have

`m ∘ f = m ∘ g ⟹ f = g`

```
          f                     m
Z -----------------> X -----------------> Y
  ----------------->
          g
```

An arrow `m : Y → Z` is monic if, postcomposed with functions `f, g : X → Y`, makes them the same, `f = g`.

By contraposition we have `f ≠ g ⟹ m ∘ f ≠ m ∘ g`. So `f` and `g` are different functions if the postcompositions of each with `m` are different.

Mnemonic for monic:
```
m ∘ n = m ∘ nʹ ⟹ n = nʹ
^^^^^
m o n EQ
```


Monomorphisms are a categorical generalization of *injective* functions (also called "one-to-one functions"); in some categories the notions coincide, but monomorphisms are more general.

In the setting of posets intersections are idempotent: the intersection of anything with itself is itself. Monomorphisms generalize this property to arbitrary categories.
>A morphism is a monomorphism if it is idempotent with respect to pullbacks.

## Contents

- Duality
- Relation to invertibility
- Examples
- Properties
- Related concepts
- Terminology

## Duality

Every *section* is a monomorphism, and every *retraction* is an epimorphism.

The categorical dual of a monomorphism is an epimorphism, that is, a monomorphism in a category `C` is an epimorphism in the dual category `Cᵒᵖ`.

```
           e                   f                    m
W -----------------> X -----------------> Y -----------------> Z
                     X -----------------> Y
                               g
```

>f ∘ e = g ∘ e ⟹ f = g     epic
>m ∘ f = m ∘ g ⟹ f = g     monic

An arrow e : W → X is epic if, precomposed with functions f, g : X → Y, makes them functions the same, f = g.

An arrow m : Y → Z is monic if, postcomposed with functions f, g : X → Y, makes them functions the same, f = g.

## Relation to invertibility



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
