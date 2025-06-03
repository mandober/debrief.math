# Convergence testing for series

General approaches to find whether a series converges or diverges.

1. `Σ 1/nᵖ` p-series test: if `p > 1` converges, else (`p ≤ 1`) diverges.
2. `Σ arⁿ` geometric series test: `|r| < 1` converges, else inconclusive.
3. If a series is similar to p-series or geometric series
4. By inspection, if `lim{n→∞} aₙ ≠ 0`, use divergence test
5. `Σ (-1)ⁿ ⋅ bₙ` use alternating series test
6. factorial or other produces: use ratio test
7. `aₙ` has the form `(bₙ)ʳ`, use root test
8. `aₙ = f(x)` and `∫ {1..∞} f(x) dx` can be found: use integral test


There are several methods to test whether a series converges or diverges:
- geometric series test
- p-series test
- telescoping series test
- integral test
- ratio Test
- root Test
- alternating series test




## P-series

```js
⎲∞    1
⎳ₙ₌₁ ----
       nᵖ
```

- p > 1 ⇒ converges
- p ≤ 1 ⇒ diverges

## Telescoping series

```js
// e.g.
⎲∞
⎳ₙ₌₁ aₙ = 1 - 1/2 + 1/2 - 1/3 + 1/3 - 1/4 …

⎲∞    1      1
⎳ₙ₌₁ ---- - ------
       n     n + 1
```

Generally, the terms in between the first and last cancel out in a telescoping series. If the limimt is a finite value then it converges; otherwise, if the limit is ±∞ or if the limit DNE, it diverges.

## Integral test

If the integral converges then the corresponding series also converges. 
If the integral diverges the series also does.

    ∫{1..∞} f(x) dx converges ⇒ Σ{n=1..∞} aₙ converges


f(x) = 1/x then the integral is: 
∫{1..∞} 1/x dx = lim{a→∞} ln x |ᵃ₁ = ln a - ln 1 = ∞ - 0 = ∞
the integral diverges so the harmonic series does too.

## Integral test

The *integral test* for the convergence of series can be used if the function that describes the series is
- positive
- continuous
- decreasing (if first derivative is negative)

Then, if the integral converges, so does the series; if the integral diverges to infinity, the series diverges.


## Integral test

If the integral converges then the corresponding series also converges. 
If the integral diverges the series also does.

    ∫{1..∞} f(x) dx converges ⇒ Σ{n=1..∞} aₙ converges


f(x) = 1/x then the integral is: 
∫{1..∞} 1/x dx = lim{a→∞} ln x |ᵃ₁ = ln a - ln 1 = ∞ - 0 = ∞
the integral diverges so the harmonic series does too.

## Divergence test

If the limit of a sequence `aₙ` is not 0, the corresponding series diverges. 
If the limit of `aₙ` is 0, the corresponding series may converge or diverge.

- lim{n→∞} aₙ ≠ 0 ==> Σaₙ diverges
- lim{n→∞} aₙ = 0 ==> Σaₙ inconclusive (may diverge or converge)

>If the limit of a sequence is not 0, the corresponding series diverges.



## Ratio Test

```js
         | aₙ﹢₁  |
lim{n→∞} | ---- | = L
         |  aₙ   |
```

- if L < 1       ⇒ converges absolutely
- if L > 1 or +∞ ⇒ diverges
- if L = 1       ⇒ inconclusive

`-∞` cannot happen due to taking the absolute value of the ratio, `|aₙ﹢₁/aₙ|`.

## Root Test

`lim{n→∞} ⁿ√|aₙ| = L`

- if L < 1 ⇒ converges
- if L > 1 ⇒ diverges
- if L = 1 ⇒ inconclusive


## Direct Comparison Test

`0 ≤ aₙ ≤ bₙ`

- if Σbₙ converges then Σaₙ converges as well
- if Σbₙ diverges then Σaₙ diverges as well


## Limit Comparison Test

With two series aₙ and bₙ, we take the limit of the ratio

`lim{n→∞} aₙ/bₙ = L`

If `L` is a finite value, both series converge.

If we know that one series converges and L is a finite value then the other series converges as well.

- if Σaₙ converges then Σbₙ converges as well
- if Σaₙ diverges then Σbₙ diverges as well
