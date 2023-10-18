# Injectivity of constructors

==============================================================================
Injectivity of constructors, but which ctors? 
data ctors is understandable, i guess...
but it cannot be injectivity of type ctors, can it? *it is*!
Injectivity of *type ctors* to what?

Injectivity of *data ctors* to what? well, to that type. As in all data ctors of a type are disjoint: each ctor creates a paerticular set of values of that type, which no other data ctor can. Right? right... can there be a type whose data ctors are not disjoint?

==============================================================================
e.g. the type Nat has 2 ctors, zero and suc, and each creates the values the other one cannot. so, all naturals are either zero or successors. After all, data ctors are disjoint which secures checking the exhaustion of pattern matching in functions. So a function on Nat (like isZero) has two equations and each has the pattern that is matched against the corresponding Nat ctor.

```hs
data Nat where
  Z :: Nat
  S :: Nat → Nat

isZero :: Nat → Bool
isZero Z     = true
isZero (S n) = false
-- or, since the last equation has the only left data ctor;
-- i.e. since a Nat is either a Zero or a Succ
isZero _     = false
```

But patterns are matched in the order of appearance of their enclosing equations, so pattern matching (as a concept) can survive even if data ctors are not disjoint.

==============================================================================
back to the Q: Is there a type with non disjoint ctors?

```hs
data NonDisjoint a where
  Ac :: (Eq a) => a → NonDisjoint Bool
  Bc ::           a → NonDisjoint a
```

==============================================================================
* In Haskell: injectivity of (type or data?) ctors in the presence of type
  https://github.com/ekmett/eq/blob/master/src/Data/Eq/Type.hs
families is provided by a generalization of a trick by Oleg Kiselyov:
  http://www.haskell.org/pipermail/haskell-cafe/2010-May/077177.html
