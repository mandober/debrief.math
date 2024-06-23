# Type theory :: Index :: Implication

```
A type    B type
----------------- ⇒F              Formation
 (A ⇒ B) type


   [x: A]
     ⁞
    e: B
------------------ ⇒I             Introduction
λx.e : (A ⇒ B)


f : A ⇒ B   x : A
------------------- ⇒E            Elimination
      f x : B
```


* Introduction, ⇒I

If, assuming `x` of type `A`, 
we conclude some exp `e` of type `B` 
than 
we can discharge the assumption `x` 
and introduce the implication 
`λx.e` of type `A ⇒ B`.
