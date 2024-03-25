# Diagrams :: functors

## Functor

```
F a     F f       F b
○ --------------> ●
|                 |
|                 |
|                 |
|                 |
○ --------------> ●
a        f        b
```

A functor `F` lifts a function `f : a -> b` into `F f : F a -> F b`

In Haskell, a functor is a type ctor `f` (in `class Functor f`) along with the `fmap` method.

```hs
class Functor f where
  fmap : (a -> b) -> (f a -> f b)
```



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

## composition of arrows under a functor

```
a           F           F a
o------------------->o
|                    |
|                    |
|f                   | F f
|                    |
|                    |
↓                    ↓

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
