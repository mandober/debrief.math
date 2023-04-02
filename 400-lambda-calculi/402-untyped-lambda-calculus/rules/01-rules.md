# Lambda calculus :: Rules

The rules
- The major rules
  - α-equivalence
  - β-reduction
  - η-conversion
- The minor rules
  - δ-rule
  - ζ-rule
  - ξ-rule
  - ξ*-rule
  - μ-rule


Some laws of λ-calculus
- (α)       λx.τ     = λy.τ[y:=x]
- (β)      (λx.τ)(y) = τ[y:=x]
- (η)             y  = λx.y x
- (ξ)       λx.τ     = λx.σ              iff ∀x.τ = σ
- (ξ*)      λx.τ     ⊆ λx.σ              iff ∀x.τ ⊆ σ
- (μ) x ⊆ y ⋀ u ⊆ v => u(x) ⊆ v(y)

## Reduction rules

The reduction rules are the uninvertable rules.
- β-reduction

The rule of β-reduction reduces a redex `(λab.a)(λx.x)` into `(λb.λx.x)`, which is uninvertable process since we cannot go from `(λx.x)` to the original redex; we have no idea what it was really.

```hs
-- (λs z. z)
-- (λs z. s (s z))
-- <~~ (λx.x) (λx.x)

succ one
= (λn s z. s (n s z)) (λs z. s z)
= (λs z. s ((λs z. s z) s z))     -- reduction under lambda
```

## Conversion rules

The conversion rules are the invertable rules:
- α-conversion
- η-conversion

The η-conversion consists of two opposite rules:
- η-expansion
- η-contraction

The η-expansion expands a lambda term, `f` into `λx. f x`.

The η-contraction contracts a lambda term, `λx. f x` into `f`.
