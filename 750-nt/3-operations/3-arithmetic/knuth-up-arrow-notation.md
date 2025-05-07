# Knuth's up-arrow notation

https://en.wikipedia.org/wiki/Knuth%27s_up-arrow_notation

m ↑ᵏ n

Addition

```hs
-- m + n
m + 0   = m
m + S n = S (m + n)
```

Mult

```hs
-- m × n = mn
m * 0   = 0
m * 1   = m
m * S n = m + (m * n)
```

Exp

```hs
-- mⁿ = m^n
m ^ 0   = 1
m ^ 1   = m
m ^ S n = m * (m ^ n)
```

Tetration

```hs
-- ⁿm = m^n^n^n^…^n
-- ³2 = 2^(2^2) = 2⁴ = 16
-- ⁴3 = 3^(3^(3^3)) = 3^(3^9) = 3^19,683
-- ⁰m = m⁰ = 1
-- ¹m = m¹ = m
-- ²m = mᵐ
m ↑ 1   = 1
m ↑ S n = m ^ (m ↑ n)
```


Exponentiation:
    mⁿ = m × (mⁿ)
    m ^ n = m × (m ^ n)
    m ↑ n = m × (m ↑ n)


m ↑ᵏᐩ¹ n = m ↑ᵏ (m ↑ᵏᐩ¹ n)


m ↑ n

m ↑↑ n = m ↑² n
