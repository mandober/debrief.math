# Substitution

Substitution, written B[x:=A], is the process of replacing all free occurrences of the variable `x` in the body `B` with arg exp `A`. Substitution on terms of the lambda calculus is defined by recursion on the structure of terms (`x` and `y` are variables, while `M` and `N` are arbitrary lambda exp):

```hs
[x:=N]x      = N                      since x = x
[x:=N]y      = y                      since x ≠ y

[x:=N](λx.M) = λx.M                   since x = x
[x:=N](λy.M) = λy.(M[x:=N])           since x ≠ y ⋀ if y ∉ fv(N)

[x:=N](A B)  = (A[x:=N]) (B[x:=N])
```

Substitution:
-       x [x:=N] ≡ N        (if x = y)
-       y [x:=N] ≡ y        (if x ≠ y)

- (M₁ M₂) [x:=N] ≡ (M₁[x:=N]) (M₂[x:=N])

-  (λx.M) [x:=N] ≡ λx.M
-  (λy.M) [x:=N] ≡ λy.(M[x:=N]), if `x ≠ y` and `y ∉ FV(N)`

To substitute into an Abs, it is sometimes necessary to α-convert the exp. For example, it is not correct for `(λx.y)[y:=x]` to result in `(λx.x)`, because the substituted `x` was supposed to be free but ended up being bound. The correct substitution in this case is `(λz.x)`, up to α-equivalence. Notice that substitution is defined uniquely up to α-equivalence.

## Naive substitution

Problem with naive substitution is that free vars may be captured:

(λx.λy.x)y --/->ᵦ λy.y

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
