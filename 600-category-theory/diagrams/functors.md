# Diagrams :: functors

## Functors

A functor `F : C -> D` maps:
- all objects in cat `C` to objects in cat `D`
- all arrows in cat `C` to arrows in cat `D`
in such a way that the identity arrows and composition of arrows in C is preserved in D.

1. A functor `F : C -> D` maps all objects in a source category C to objects in a target category D, `∀a ∈ Ob(C). a ⟼ F a`.

2. A functor maps all arrows in a source category C to arrows in a target category D, `∀f:a→b ∈ Ar(C). f ⟼ F f`.

3. A functor preserves idenety arrows in C by mapping them to identity arrows in D such that 1ₐ ⟼ `1ꜰₐ = F 1ₐ`.

4. A functor preserve the composition of arrows `g ∘ f` in C by mapping it to the composition of arrows in D, such that g ∘ f ⟼ `F (g ∘ f) = F g ∘ F f`.

```
a          F         F a
● -----------------> ●
│                    │
│                    │
│f                   │ F f
│                    │
│                    │
↓                    ↓
● -----------------> ● F b
│          F         │
│                    │
│g                   │F g
│                    │
│                    │
↓                    ↓
● -----------------> ● F c
c          F


g ∘ f ⟼ F (g ∘ f) = F g ∘ F f
```


## Functors

We say that a functor F "lifts" 
an arrow `f : a -> b` in C to 
an arrow `F f : F a -> F b` in D.

```hs
a        F        F b
● --------------> ●
│                 │
│f                │ F f
│                 │
↓                 ↓
● --------------> ●
b        F        F b

  f ::   a ->   b
F f :: F a -> F b
```


>In Haskell, a functor is a type ctor, belonging to the class `Functor`, along with its implementation of `fmap`.

```hs
class Functor f where
  fmap :: (a -> b) -> (f a -> f b)

-- Maybe functor can lift a function on (plain) types to a function on Maybes:
instance Functor Maybe where
  fmap :: (a -> b) -> (Maybe a -> Maybe b)
  fmap f = \mx -> case mx of
    Nothing -> Nothing -- the second Nothing has type Maybe b
    Just x  -> Just (f x)

-- So a function on plain types
:t ord :: Char -> Int
-- can be lifted to a function on these plain types wrpped in Maybe
:t fmap ord :: Maybe Char -> Maybe Int
```



```
a         F         F a
o------------------->o
│                    │
│                    │
│f                   │ F f
│                    │
│                    ↓
o------------------->o
b         F         F b
```
