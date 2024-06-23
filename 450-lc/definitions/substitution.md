# Substitution

(λx.B)A ⟶ᵦ [x:=A]B

- (λx.x)(λa.a)    ⟶ᵦ [x:=λa.a]x      ≡ᵦ λa.a
- (λx.λy.x)(λa.a) ⟶ᵦ [x:=λa.a](λy.x) ≡ᵦ λy.λa.a


Substitution `[x:=A]B` means replacing all free occurrences of var `x` in lambda body `B` with arg `A`.

Substitution is defined by structural induction on the structure of lambda terms (`x,y` are vars, `M,N` are arbitrary exp):

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
