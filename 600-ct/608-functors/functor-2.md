# Functor

https://en.wikipedia.org/wiki/Functor

## Summary

- *functor* is a mapping between categories
- *endofunctor* maps a category to itself
- endofunctor `T : ℂ -> ℂ` maps a category to itself
- *identity functor* is an endofunctor that maps a category back to itself
- a single, unique endofunctor is the identity functor
- identity functor `I` maps each object `a` in `ℂ` to `I a` which is just `a`
- identity functor `I` maps each fn `f` in `ℂ` to `I f` which is just `f`
- functors are structure-preserving maps
- functors preserve the identity arrows and the composition of arrows

In Haskell
- any type parameterized by a type may be a functor
- any type that can be mapped may be functor
- if `F a` is a type parameterized by type `a` then `F` is a functor, i.e. the type `F a` can be mapped by a function `f : a -> b` into type `F b`.


```hs
-- standalone sig of fmap
fmap :: Functor f => (a -> b) -> f a -> f b

-- sig of fmap as a method of the Functor class
class Functor f where
  fmap :: (a -> b) -> f a -> f b
```



## Functor - Summary





## Functor

*Functors* are structure-preserving maps.
Let F, G, …, range over functors.

Since a category consists of objects and arrows, a functor `F: C → D` is 
(1) a mapping on objects and (2) mapping on arrows.
It is common practise to denote both mappings by the same symbol, e.g. `F`.
We also loosely speak of F's arrow part as a 'map'.

The action on arrows mujst agreee with types: 
if `f ∈ C(A, B)`, then `F f ∈ D(F A, F B)`

F must preserve identity `F idᴀ = id ꜰₐ` and 
composition `F (g ∘ f) = F g ∘ F f`
The force of *functoriality* lies in the action on arrows 
and in the preservation of composition.

There is an *identity functor*, `Idᶜ: C → C`. 

Functors are *composable*:
`(G ∘ F) A = G (F A)` (composition acting on objects) and 
`(G ∘ F) f = G (F f)` (composition acting on arrows)

This data turns small categories and functors into a category `Cat`.

# Functors in CT

A functor is a mapping between categories.

Given two categories, C and D, a functor `F : C -> D`, 
is both a function on objects and a a function on morphisms.

`F` maps objects in C to objects in D: 
if `a` is an object in C, 
it is mapped by the functor `F` 
to an object `F a` in D, `a ⟼ F a`, 
`F a : a -> F a`

`F` maps morphisms in C to morphisms in D: 
if `f : a -> b` is an arrow in C, 
it is mapped by the functor `F` 
to an arrow `F f` in D, `f ⟼ F f`, 
`F f : F a -> F b`
The mapping `F f` must connect 
the image of `a` to the image of `b` 
(it must preserve the original connection/endpoints).

**Lifting**: when a function `f : a -> b` in C 
is applied by the functor `F`, 
we say that the functor "lifts" it to the function 
`F f : F a -> F b`

Normally, `f` can only be applied to objects `a`, 
but a functor can lift `f` into `F f` 
which can than be applied 
to objects in a context/container.

An example in Haskell shows that a function `f :: a -> b` can be applied to a suitable value `x` directly, as `f x`. But if value(s) are in a context (`IO`, `List`, `Maybe`, etc.), we need to lift `f` first before we can apply it.

```hs
x1 = f  $        5  -- applying f to a value directly
x2 = f <$> (Just 5) -- applying the lifted f to a value in the Maybe context
x3 = f <$> [5]      -- applying the lifted f to a value in the List context
x3 = f <$> [4,5]    -- applying the lifted f to values in the List context
```

## Refs

https://en.wikipedia.org/wiki/Functor
https://en.wikipedia.org/wiki/Profunctor
