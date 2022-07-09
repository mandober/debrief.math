# Number theory: THEOREMS

(Def.1) **Divisibility**   
An integer `a` is a *multiple* of an integer `b` if `a = bq`, for some integer `q`, denoted by `b ∣ a`. We say that 
  `b` divides `a`, 
  `b` is a *divisor* of `a`, 
  `b` is a *factor* of `a`, 
  `a` is divisible by `b`. 
Otherwise, `a ≠ bq` so `b ∤ a`.

* `(a = bq) -> b ∣ a` ⋁ `(a ≠ bq) -> b ∤ a` …where a,b,q ∈ ℤ
* `a = bq` -> `a` is a multiple of `b` ⋀ `b` is a factor of `a`
* The set of all multiples of an integer `a` is
  `aℤ = { m ∈ ℤ | ∃q ∈ ℤ. m = aq }`
  `aℤ = { 0, ±a, ±2a, ±3a, … }`
  e.g. `3ℤ = { 0, ±3, ±6, ±9, … } = {…, -9, -6, -3, 0, 3, 6, 9, …}`
* The set of all factors of an integer `a` is
  `{1} ⋃ { b | b ∣ a, a,b ∈ ℤ } ⋃ {a}`

If a ≠ 0 and b|a, then |b| <= |a| 
since |b| <= |b| ⨯ |q| = |a|, for q ∈ ℤ. 
It follows that 
if b|a and a|b, then |b| = |a| so b = ±a. Thus, 
if b|1, then since it is always true that 1|b, so we must have b = ±1.

```
for a,b,q ∈ ℤ

1|b is always ⟙
b|b is always ⟙

a ≠ 0 ⋀ b|a
--> |a| = |b| ⨯ |q|
--> 1 <= |b| <= |a|

b|a ⋀ a|b -> |b| = |a| <=> b = ±a
b|1 --> 1|b <=> b = ±1
```

(Axiom.1) **Well-Ordering Principle**   
Every nonempty set of natural numbers contains a smallest element.
