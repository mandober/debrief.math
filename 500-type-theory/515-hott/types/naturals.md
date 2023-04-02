# Natural numbers type

https://www.youtube.com/watch?v=GW0jV0l5NB4&list=PLtIZ5qxwSNnzpNqfXzJjlHI9yCAzRzKtx&index=10

For the type of natural numbers, `ℕ`, we have the usual 4 kinds of rules.

The formation rule has no assumptions and just states that `ℕ` is a type, which can also be expressed (in a type theory with universe of types) as `ℕ : 𝒰`.

```hs
-- ℕ-formation:

------- ℕf       (OR)        ------- ℕf
ℕ : 𝒰                        ℕ type


-- ℕ-introduction:

------- ℕi-Z
0 : ℕ

Γ ⊢   n : ℕ
------------- ℕi-S
Γ ⊢ S n : ℕ


-- ℕ-elimination (induction principle):

Γ, x:ℕ         ⊢                              D(x) type
Γ              ⊢ a                          : D(0)
Γ, x:ℕ, y:D(x) ⊢ b{- b deps on x and y -}   : D(S x)
---------------------------------------------------------- ℕe
Γ, x:ℕ         ⊢ ind (a,b,x)                : D(x)

-- Conclusion of ℕ-elim indeed is a pi-type, Π (n:ℕ) D(n)
-- obtained by abstracting over n:ℕ in the premise
-- (while ignoring the ind(a,b,x) term?!)


-- ℕ-computation:

Γ, x:ℕ         ⊢                                      D(x) type
Γ              ⊢ a                                  : D(0)
Γ, x:ℕ, y:D(x) ⊢ b                                  : D(S x)
------------------------------------------------------------------ ℕ-β
Γ              ⊢ ind (a, b, 0)   = a                : D(0)
Γ              ⊢ ind (a, b, S x) = b[y:=ind(a,b,x)] : D(S x)
```





## Refs

https://www.youtube.com/watch?v=ZMF_2Hr16M0&list=PL-47DDuiZOMCRDiXDZ1fI0TFLQgQqOdDa

https://www.youtube.com/watch?v=VWmXF-P4-Z8&list=PL1-2D_rCQBarjdqnM21sOsx09CtFSVO6Z&index=13

http://www.cs.cmu.edu/~rwh/courses/hott/
