# λ-calculus :: Typing rules

- context (term-type pairings): `Γ`
- variables: `x`, `y`, `z`          @ value level
- λ-terms: `t`, `T`, `M`, `N`       @ value level
- types: `σ`, `τ`                   @ type level


```hs
-- Simply-Typed Lambda Calculus
-- * A term may depend on a term.

Γ, x : σ |- T : τ
----------------------- (λ)
Γ |- (λ x . T) : σ → τ

-- System F:
-- * A term may depend on a term.
-- * A term may depend on type.

Γ |- T : σ
----------------------- (Λ)     if α ∉ FV(Γ)
Γ |- (Λ α . T) : Π α . σ

-- Lambda Π
-- The crucial introduction rule:

Γ, x : A |- B : *
----------------------- (ΛΠ)
Γ |- (Π x : A . B) : *

```
