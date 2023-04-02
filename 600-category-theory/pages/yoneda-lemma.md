# Yoneda lemma

https://bartoszmilewski.com/2013/05/15/understanding-yoneda/
http://blog.sigfpe.com/2006/11/yoneda-lemma.html
https://www.haskellforall.com/2012/06/gadts.html


A functor in Haskell is type ctor that maps types to types, and `fmap` that maps functions to functions. A type contructor is a mapping between types, like `[]`, `Maybe`, etc.

In category theory, when we say one category is like another category, we usually mean that there is a mapping between the two. For this mapping to be meaningful, it should preserve the structure of the category, and a functor just that that - it maps every object from one category to an object in another category and also maps morphisms such that the composition and identity morphisms are preserved.

However, instead of asking if every category is like the `Set` category, we can ask a more precise question: which categories can be mapped to `Set` by some functor? Such categories are called *representable categories*, meaning they have a representation in the `Set` category.

The *Yoneda Lemma* relates a category `C` with the functors from `C` to `Set`. Before we can introduce the lemma we will introduce a number of concepts:
- a class of functors called hom-functors
- the notion of representable functors
- Yoneda embedding
- Yoneda Lemma

## Hom-functors

The **hom-functor** for some fixed object `c` in `C`, is a functor that sends every object `a` to the hom-set `hom(c,a)`. For each object in `C` we get an associated object in `Set`, but what should this functor, `F = hom(c,−)`, do with arrows? Say we have an arrow `f : a → b`

```
a        F        hom(c,a)
○ --------------> ●
|                 |
|f                |?
↓                 ↓
○ --------------> ●
b        F        hom(c,b)
```

The arrow with a question mark is an arrow in `Set`. Arrows in sets are functions, which we can define by saying what it does on elements. The elements of the hom-sets are arrows in `C`. Given some element of `hom(c,a)`, i.e. an arrow in `C` category, `g : c → a`, we need to obtain an element of `hom(c,b)`, i.e. an arrow from `c → b`.

```
          F (f ∘ g)
┌─────────────────────────────┐
↑                             ↓
● -----------> ● - - - - - -> ●
c       g      a      f       b
```

We can go to `a` from `c` via `g`, but then we need a way to get from `a` to `b` - and we already have the arrow `f : a → b` that we started with. We only need to compose them. This motivates the following definition:

(def) Let `C` be a category, `c ∈ C` and `f : a → b` ∈ C. 
We define the hom-functor `hom(c, −) : C → Set` as 

```js
hom(c,−)(a) = hom(c,a)              // maps objects
hom(c,−)(f) : hom(c,a) → hom(c,b)   // maps arrows
              g ⟼ f ∘ g
```


## Yoneda embedding

One of the things Yoneda showed is there is at least one *canonical functor* from any locally small category into Set category.

This functor should map every object in category `C` into a set. A set of what? It doesn't really matter, a set is a set, so how about using a set of morphisms?

The Yoneda embedding: object `X` is mapped by the functor into the set `Hᴀ(X)`. The elements of the set correspond to morphisms from `A` to `X` i.e. `hom(A,X)`.

- `Hᴀ : C -> Set` functor `Hᴀ`
- `hom(A,-)` outgoing arrows, i.e. `∀X.hom(A,X)`
- `∀X.hom(A,X)` ⟼ `Hᴀ(X)`

We designate the set `hom(A,-)` to be the image of `X` under the functor we are constructing - functor `Hᴀ`. There is one element in the set `Hᴀ(X)` for every morphism from `A` to `X`.
