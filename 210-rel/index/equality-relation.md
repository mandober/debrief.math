# Equality relation

*Equality axioms* regulate the use of the equality relation in mathematical proofs. These axioms assert the reflexivity of the equality relation and the possibility of substituting equals for equals. Symbolically the equality axioms are written:
- x = x
- [x = y ∧ ϕ(v:=x)] ⇒ ϕ(v:=y)
- [x = y ⇒ t(v:=x)] = t(v:=y)

where
- `ϕ` is a formula
- `t` is a term in the language in question
- `x`, `y` and `v` are variables ranging over the same non-empty domain
- `ϕ(v:=x)` means replacing all free occurrences of `v` by `x` in exp `ϕ`

Using equality axioms, the *symmetry* and *transitivity* of the equality relation can be proved. To do this take
- `ϕ` to be the formula `y = v` in the first case
- `ϕ` to be the formula the formula `v = z` in the second case

```hs
-- 1. case
[x = y ∧ ϕ(v:=x)] ⇒ ϕ(v:=y)
[x = y ∧ (y = v)(v:=x)] ⇒ (y = v)(v:=y)
[x = y ∧ (y = x)] ⇒ (y = y)
(x = y ∧ y = x) ⇒ y = y

-- 2. case
[x = y ∧ ϕ(v:=x)] ⇒ ϕ(v:=y)
[x = y ∧ (v = z)(v:=x)] ⇒ (v = z)(v:=y)
[x = y ∧ (x = z)] ⇒ (y = z)
(x = y ∧ x = z) ⇒ y = z
```


If the formulas and terms of the language in question are constructed from atomic formulas and terms using logical connectives, then the *reduced equality axioms* can be derived from their particular cases when `ϕ` and `t` are atomic formulas and terms. Symbolically:
- [xᵢ = yᵢ ∧ P(x₁ … xᵢ … xₙ)] ⇒ P(x₁ … yᵢ … xₙ)
- [xᵢ = yᵢ ⇒ f(x₁ … xᵢ … xₙ)] = f(x₁ … yᵢ … xₙ)

where `P` and `f` are `n`-place predicate and function symbols.
