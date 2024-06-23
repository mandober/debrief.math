# Type theory :: Index :: Conjunction

```
A type    B type
----------------- ⋀F              Formation
 (A ⋀ B) type


a : A      b : B
----------------- ⋀I              Introduction
(a, b) : (A ⋀ B)


  p : A ⋀ B
----------------- ⋀E₁             Elimination (of the right conjunct, B)
  fst p : A


  p : A ⋀ B
----------------- ⋀E₂             Elimination (of the left conjunct, A)
  snd p : B
```
