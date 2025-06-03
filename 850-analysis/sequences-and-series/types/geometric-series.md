# Geometric series

A geometric series `Σ{aₖ}` is a series for which the ratio of each two consecutive terms `aₖ﹢₁/aₖ` is a constant function of the summation index `k`.

The more general case of the ratio a rational function of the summation index `k` produces a series called a *hypergeometric series*.


The general form of the geometric series: `Σ{n=0..∞} arⁿ`

```js
// LIMIT of an INFINITE geometeric series (that starts at 0)
⎲∞                                    a
⎳ₖ₌₀ arᵏ = a + ar + ar² + ar³ + ⋯ = ------ iff |r| < 1
                                      1 - r

// LIMIT of an INFINITE geometeric series (that starts at 1)
⎲∞                                      a
⎳ₖ₌₁ arᵏ⁻¹ = a + ar + ar² + ar³ + ⋯ = ------ iff |r| < 1
                                       1 - r

// SUM of a FINITE geometeric series (that starts at 0)
⎲ₙ                                         a₀(1 - rⁿᐩ¹)
⎳ₖ₌₀ arᵏ = a + ar + ar² + ar³ + ⋯ + arⁿ = -------------
                                               1 - r

// SUM of a FINITE geometeric series (that starts at 1)
⎲ₙ                                           a₁(1 - rⁿ)
⎳ₖ₌₁ arᵏ⁻¹ = a + ar + ar² + ar³ + ⋯ + arⁿ = ------------
                                                1 - r
```

A geometric series `Σ{n=0..∞} arⁿ` converges to `a/(1-r)` iff `|r| < 1`.
- `a` is a constant coefficient and the first term
- `r` is the common ratio

Geometric series
- sum of an infinite geometric sequence
- constant ratio between consecutive terms
- each term is a geometric mean of two neighboring terms, `b=√ac in a+b+c`


**Geometric series** is an infinite series derived from a type of sequence called *geometric progression*.

**Geometric series** is a series summing the terms of an *infinite geometric sequence*, in which the ratio of consecutive terms is constant.


>As with any infinite series, the **sum of the series** is defined to mean the *limit* of *the partial sum* of the first `n` terms.

For example, the series `1/2 + 1/4 + 1/8 + ⋯` is a geometric series with common ratio ⁠1/2⁠, which converges to the sum of ⁠1⁠. Each term in a geometric series is the *geometric mean* of two terms surrounding it, similarly to how each term of an arithmetic series is the arithmetic mean of its neighbors.

So, it should hold that 1/4 = √(1/2 × 1/8):   
√(1/2 × 1/8) = √1/16 = 1/√16 = 1/4   
which it does.  

**Geometric series** is a sum of infinitely many terms of geometric sequence: it starts from an initial term `a`, and the next term is obtained by multiplying the initial term by a constant number called the common ratio, `r`.

Equivalently, geometric series is a power series with a constant coefficient `a`, which is also the first term, and a variable, `r`, raised to progressively increasing powers starting with 0. Since `ar⁰ = a`, the first term is just `a`. The `r` is also a common ratio beween consequtive terms.

The *sum of a finite initial segment* of an infinite geometric series is called a *finite geometric series*.
