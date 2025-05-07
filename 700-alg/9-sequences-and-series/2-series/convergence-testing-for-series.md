# Convergence testing for series

There are several methods to test whether a series converges or diverges:
- Test for geometric series
- P-series
- Telescoping series
- Integral test
- Ratio Test
- Root Test
- Alternating Series Test



## Test for geometric series

```js
⎲∞
⎳ₙ₌₁ arⁿ⁻¹
```

- |r| < 1 ⇒ converges
- |r| ≥ 1 ⇒ diverges

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

## Ratio Test

```js
         | aₙ﹢₁  |
lim{n→∞} | ---- | = L
         |  aₙ   |
```

- if the limit L < 1       ⇒ series converges
- if the limit L > 1 or +∞ ⇒ series diverges
- if the limit L = 1       ⇒ the test is inconclusive

`-∞` cannot happen due to taking the absolute value of the ratio, `|aₙ﹢₁/aₙ|`.

## Root Test

`lim{n→∞} ⁿ√|aₙ| = L`

- if L < 1 ⇒ converges
- if L > 1 ⇒ diverges


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



## Alternating Series Test
