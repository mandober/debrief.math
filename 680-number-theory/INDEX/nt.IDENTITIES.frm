# Number theory ∷ Identities

## Exponentiation

- exponentiation is iterated multiplication
- exp (pow) may be defined recursively in term of multiplication
- exp is a primitive recursive function and thus guaranteed to always terminate

```js
pow m 0  = 1
pow m Sn = mul m (pow m n)


a ⨯ a ⨯ … ⨯ a = aⁿ
└───┬────────┘
  n times

aⁿᐩ¹ = aⁿ∙a¹

result = base ᵉˣᵖ

log   result
  ᵇᵃˢᵉ



```


x^a^c == x^(a^c) != (x^a)^c

(x^a)^c == (x^c)^a == x^ac

∀n(n ∈ ℕᐩ --> 0ⁿ = 0)
∀n(n ∈ ℕᐩ --> 1ⁿ = 1)

when base is 1
- 1³ = 1² = 1¹ = 1⁰ = 1 = 0⁰
when base is 0
- 0³ = 0² = 0¹ = 0 ≠ 0⁰
when base and power are 0
- 0⁰ = 1 quite arbitrary due to multiplicative identity and combinatorics
