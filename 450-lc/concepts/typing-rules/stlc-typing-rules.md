# Typing rules :: STLC

Curiously, to form an abstraction, we take a (free) variable and an arbitary expression and join them together as a new lambda term called abstraction, by letting the variable capture the same-named occurrences in the expression. That expression then becomes the body of the abstraction and the variable claims its binding role (for its free occurrences in the exp) by being placed next to the lambda binder (`λ`) in the abstraction's head. This is described by the abstraction formation rule (or abs typing rule),

```
Γ, x ⊢ e                   Γ, x : τ ⊢ e : σ
--------- Abs              ----------------- T∙Abs
Γ ⊢ λx.e                   Γ ⊢ λx.e : τ
```

Propositional logic has the same rule, only with terms stripped, called implication introduction (⇒I)

```
  [P]¹
   ⁝
   Q
-------- ⇒I
P¹ ⇒ Q
```

but there is some discrpancy since in PL, `P` may be any proposition 
