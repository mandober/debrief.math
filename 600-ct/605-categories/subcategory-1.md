# Subcategory

https://en.wikipedia.org/wiki/Subcategory

A subcategory of a category C is a category S whose objects are objects in C and whose morphisms are morphisms in C with the same identities and composition of morphisms.

Intuitively, a subcategory of C is a category obtained from C only by "removing" some of its existing objects and arrows.

## Contents

- Formal definition
- Examples
- Embeddings
- Types of subcategories

## Formal definition

A subcategory S of a category C is given by
- a subset (subcollection) of objects of C, denoted Ob(S),
- a subset (subcollection) of morphisms of C, denoted Hom(S), Ar(S) or Mor(S)

such that
- ∀X ∈ Ob(s)         . idˣ ∈ Hom(S)
- ∀f: X → Y ∈ Hom(S) . X,Y ∈ Ob(S)
- ∀f,g ∈ Hom(S)      . g ∘ f ∈ Home(S)

These conditions ensure that S is a category in its own right: its collection of objects is Ob(S), its collection of morphisms is Hom(S), and its identities and composition are as in C.


There is an obvious *faithful functor*, `I : S → C`, called the **inclusion functor** which takes objects and morphisms to themselves.

Let S be a subcategory of a category C. We say that S is a **full subcategory** of C if for each pair of objects X and Y of S, it holds that 
`HomS(X,Y) = HomC(X,Y)`.

A **full subcategory** is one that includes *all morphisms* in C between objects of S.

For any collection of objects A in C, there is a **unique full subcategory** of C whose objects are those in A.


## Examples


## Embeddings


## Types of subcategories
