# Identity functions

In set theory, sets are entites with an internal structure in terms of elements they contain. Functions carry the various relations sets have wit heach other. However, in set theory, functions are sets as well (of ordered pairs).

Moving to category theory, sets are the objects in the category of sets, `Set`, and functions are the arrows. But since functions are also sets, they play a double role of being the objects of the category in which they also act as morphisms. So confusing.

In fact, in may categories based on sets and function-like arrows, collections of arrows also forms a set - and thus, an object in `Set`. Actually, collections of objects form a set as well, and thus an object in `Set` as well? This complicates things for category theory for we immediately have to wrestle with the concept of the set of all sets. They say such set doesn't exist, but the category of all sets, `Set`, does.

When we speak of identity functions in terms of PLs, depending on a language, we may mean the countless set of identity functions - one for each type, e.g. `idInt : Int -> Int`, `idBool : Bool -> Bool`, etc., or just the one *polymorphic identity function*, `id : a -> a` (where `a` is a type variable standing for any and all types).


understanding that an identity function just returns the value it takes. 

The previous sentence suggests that there are infinitely many identity functions - one identity function for each type. 

However, in PLs that support generics (polymorphism is also assumed in the notation used in type theory and logic), we usually think of a single identity function; for example, in Haskell, it is defined as

```hs
id :: forall a. (a -> a)
id x = x
```

```agda
id :: {A : Set} A -> A
id x = x
```
