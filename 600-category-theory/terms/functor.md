# Functor

- A functor is a mapping between categories.
- Any type that is parameterized by another type is a candidate for a functor. 

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
