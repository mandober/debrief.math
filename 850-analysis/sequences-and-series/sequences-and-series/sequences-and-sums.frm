# Sequences and partial sums

https://mathalino.com/reviewer/advance-engineering-mathematics/infinite-series

https://mathalino.com/reviewer/algebra/arithmetic-geometric-and-harmonic-progressions

## Note

This abuses the sigma notation to define a sequence (sequence are delimited by comma not by plus, but the sigma notation has a very convenient incrementing facilities useful for defining both sequences and series).




We first define a primary sequence, `aₙ`, and then we see what the sequence of its partial sums (i.e. series), `sₙ`, is.

In general,
- `a₀` i.e. index 0 is the first index so `a₀` is the first (zeroth) term
- `aₙ`   is the     n-th (current)  term of seq `(aₙ)`
- `sₙ`   is the     n-th (current)  term of seq/series `(sₙ)`
- `sₙ₋₁` is the (n-1)-th (previous) term of sequence
- `sₙ﹢₁` is the (n+1)-th (next)     term of sequence

Series
- s₀ = a₀
- s₁ = a₀ + a₁
- s₂ = a₀ + a₁ + a₂
- s₃ = a₀ + a₁ + a₂ + a₃
- s₄ = a₀ + a₁ + a₂ + a₃ + a₄ = s₃ + a₄
- s₅ = s₄ + a₅

In general,
- sⱼ   = a₀   + a₁ + … + aⱼ₋₁ + aⱼ
- sⱼ₋₁ = a₀   + a₁ + … + aⱼ₋₁
- sⱼ   = sⱼ₋₁ + aⱼ
- sⱼ₊₁ = sⱼ   + aⱼ₊₁

In general, the term of the series `(sₙ)` with index `k` is
- the sum of the first `k` terms of sequence `(aₙ)` if `(aₙ)` uses 1-indexing
- the sum of the first `k-1` terms of sequence `(aₙ)` if `(aₙ)` uses 0-indexing



```js
(aₙ) = 0, 1, 2, 3, 4, …   // a sequence (aₙ)
(sₙ) = 0, 1, 3, 6, 10, …  // sequence (sₙ) of partial sums of the seq (aₙ)

// indexing the seq (aₙ)
a₀ = 0
a₁ = 1
a₄ = 4

// indexing the seq (sₙ)
s₀                               = 0
s₁ =  1 = a₀ + a₁                = 0 + 1
s₂ =  3 = a₀ + a₁ + a₂           = 0 + 1 + 2
s₃ =  6 = a₀ + a₁ + a₂ + a₃      = 0 + 1 + 2 + 3
s₄ = 10 = a₀ + a₁ + a₂ + a₃ + a₄ = 0 + 1 + 2 + 3 + 4
```

## Series of triangular numbers

```js
// SERIES: Triangular numbers
⎲∞
⎳ᵢ₌₀ i = 0 + 1 + 2 + 3 + 4 + …

(aₙ) = 0, 1, 2, 3, 4, …
(sₙ) = 0, 1, 3, 6, 10, …

s₀ = 0 = a₀
s₁ = 1 = a₀ + a₁
s₂ = 3 = a₀ + a₁ + a₂
s₃ = 6 = a₀ + a₁ + a₂ + a₃
```

## Power Series variant 1

```js
// SERIES: Power Series variant 1
⎲∞          2ⁱ
⎳ᵢ₌₀ (-1)ⁱ ----
             i!

(aₙ) = 1 + (-2) + 2 + (-4/3) + 2/3 + (-4/15) + 4/45 + (-8/315) + 2/315 - …
(aₙ) = 1 - 2 + 2 - 4/3 + 2/3 - 4/15 + 4/45 - 8/315 + 2/315 - …
(aₙ) = 1 - (2 - 2) - (4/3 - 2/3) - (4/15 - 4/45) - (8/315 - 2/315) - …


a₀ = (-1)⁰ 2⁰/0! =    1/1    =  1
a₁ = (-1)¹ 2¹/1! =   -2/1    = -2
a₂ = (-1)² 2²/2! =    4/2    =  2
a₃ = (-1)³ 2³/3! =   -8/6    = -4/3
a₄ = (-1)⁴ 2⁴/4! =   16/24   =  2/3
a₅ = (-1)⁵ 2⁵/5! =  -32/120  = -4/15
a₆ = (-1)⁶ 2⁶/6! =   64/720  =  4/45
a₇ = (-1)⁷ 2⁷/7! = -128/5040 = -8/315
a₈ = (-1)⁸ 2⁸/8! = 256/40320 =  2/315

s₀ =  1 = a₀
s₁ = -1 = a₀ + a₁ = 1 - 2 = -1
s₂ =  1 = a₀ + a₁ + a₂ = 1 - 2 + 2
s₃ =    = a₀ + a₁ + a₂ + a₃ = 1 - 2 + 2

```
