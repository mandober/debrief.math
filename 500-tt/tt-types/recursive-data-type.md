# Recursive data type

https://en.wikipedia.org/wiki/Recursive_data_type
https://en.wikipedia.org/wiki/Mutual_recursion#Data_types
https://en.wikipedia.org/wiki/Recursion_(computer_science)#Recursive_data_structures_(structural_recursion)
https://en.wikipedia.org/wiki/Course-of-values_recursion

In type theory, a recursive type has the general form `μα.τ` where the type variable `α` may appear in the type `τ` and stands for the entire type itself.

*Unfolding* a recursive type means replacing the type variable `α` with the whole expression:

```
  μα.τ(α)
= μα.τ(μα.τ(α))
= μα.τ(μα.τ(μα.τ(α)))
= μα.τ(μα.τ(μα.τ(μα.τ(α))))
= …
```

For example, the type Nat is defined in Haskell as

```hs
-- as ADT
data Nat = Zero | Succ Nat
-- as GADT
data Nat where
  Zero :: Nat
  Succ :: Nat → Nat
```

and algebraically, this type is `N = 1 + N`.

Expressed type-theoretically it is the type `nat = μα.1 + α`, where the two arms of the sum type represent the `Zero` and `Succ` data ctors.

`Zero` is a nullary data ctor isomorphic to the unit type, `𝟙`. It takes no args, so it stands for the natural 0 by itself.

`Succ` ctor takes one arg that must be a Nat. So `Succ Zero` represents nat 1, `Succ (Succ Zero)` represents nat 2, and so on.

```hs
N = 1 + N                    -- 0 or …
N = 1 + (1 + N)              -- 0 or 1 or …
N = 1 + (1 + (1 + N))        -- 0 or 1 or 2 or …
N = 1 + (1 + (1 + (1 + N)))  -- 0 or 1 or 2 or 3 or …
```

## Isorecursive and equirecursive types

There are two forms of recursive types that differ in how the terms are introduced and eliminated:
- isorecursive types
- equirecursive types
