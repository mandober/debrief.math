# Type theory :: Index :: Disjunction

```
A type    B type
----------------- ⋁F              Formation
 (A ⋁ B) type


    a : A
----------------- ⋁I₁             Introduction (of the left disjunct, A)
inl a : (A ⋁ B)

    b : B
----------------- ⋁I₂             Introduction (of the right disjunct, B)
inr b : (A ⋁ B)



s: A ⋁ B   f: A ⇒ C   g: B ⇒ C
-------------------------------------- ⋁E   Elimination (by case analisys)
          cases s f g : C



           [x: A]   [y: B]
             ⁞        ⁞
s: A ⋁ B   u : C    v : C
-------------------------------------- ⋁E'
     vcases'ˣʸ  s u v : C



           [x: A]               [y: B]
             ⁞                    ⁞
p: A ⋁ B    u: C[inl x ⟼ z]     v: C[inr y ⟼ z]
--------------------------------------------------- ⋁E''
     vcases''ˣʸ  p u v : C[p ⟼ z]



p: A ⋁ B   q: (∀x: A). C[inl x ⟼ z]   r: (∀y: B).C[inr y ⟼ z]
------------------------------------------------------------------ ⋁E˙
          cases˙ p q r : C[p ⟼ z]
```
