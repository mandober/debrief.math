# Functor

https://en.wikipedia.org/wiki/Functor

A **functor** is a structure-preserving mapping. It is a mapping because it maps objects and arrows in a source category to objects and arrows in a target category. And it is a structure-preserving mapping because it preserves composition and identity.

Of course, the mappings are not arbitrary: if `a`, `b` and `c` are objects, and `f : a -> b` and `g : b -> c` are arrows in a source category `C`, and if a functor `F : C -> D` (where `D` is a target category) maps `a` to object `F a` in `D` and `b` to object `F b` in `D`, then it must map the arrow `f : a -> b` to an arrow in `D` that goes from `F a` to `F b`, `F f : F a -> F b`.

```
a         F         F a
o------------------->o
|                    |
|                    |
|f                   | F f
|                    |
|                    ↓
o------------------->o
b         F         F b
```



defined as `f : a -> b` and `g : b -> c`

a functor `F` maps an object `a` in a source category to an object `F a` in a target category, and an object `b` in a source category to an object `F b` in a target category.


```
  a           F           F a
    o------------------->o
    ||                  ||
    ||                  ||
  f ||                  || F f
    ||                  ||
    ||        F         |↓
  b o|- - - - - - - - ->|o F b
    ||                  ||
    || g∙f        Fg∙Ff || = F(g∙f)
    ||                  ||
  g ||                  || F g
    ↓↓                  ↓↓
    o------------------->o
  c          F            F c
```

Let `𝓒` category with
- `a b c ∈ Obj(𝓒)`
- `f g ∈ Arr(𝓒)`
  - `f : a -> b`
  - `g : b -> c`
  - `g ∘ f : a -> c`


## Functors in FPLs

FPLs, primarily Haskell, takes inspiration from CT and AA and implements a lot of concepts from those areas, in particular, to model the hierarchy of type classes.

A part of Haskell's type class hierarchy is modelled after the algebraic structures (Eq, Ord, Semigroup, Monoid), and another part is modelled after CT (functor and its many variants, monad and its many variants).

Pretending that Hask is a proper category (ignoring bottom) means that Haskell's types are objects and functions between them are arrows, therefore these are actually functions on types (or type functions).
