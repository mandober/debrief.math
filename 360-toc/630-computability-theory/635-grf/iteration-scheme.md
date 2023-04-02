# Iteration scheme

(paper `Iteration and primitive recursion in categorical terms`, 2007, Herman Geuvers, Erik Poll)

Two ways of using the inductive building up of a type to define functions on that type can be distinguished, the iterative way and the primitive recursive way.

An **iterative function** 
is defined by induction 
on the building up of the type 
by defining the function value 
in terms of the previous values.

A **primitive recursive function** 
is also defined by induction, 
but now by defining the function value 
in terms of the previous values 
*and the previous inputs*.


For functions on the natural numbers:

```hs
-- | iterative scheme
h :: Nat -> a
h    0  = c           -- c :: a
h (S n) = f (h n)     -- f :: a -> a

-- | primitive recursive scheme
h :: Nat -> a
h    0  = c           -- c :: a
h (S n) = f (h n) n   -- g :: A × Nat -> A
```

The difference is the availability of `n` arg in the call to `f` in PR, 
`f (h n) n`, vs iteration's `f (h n)`.

If one has pairing, the recursive functions can be defined using just iteration. But if we work in a typed lambda calculus this translation of recursion in terms of iteration only works for certain inputs and becomes inefficient.
