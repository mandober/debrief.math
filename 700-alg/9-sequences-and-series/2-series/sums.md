# Sums

An infinite series sums up an infinite number of terms, from 0 to ∞, which may be denoted by `sum [0..]` in Haskell. In math, there is the sigma notation for this. Instead of an unbounded series we can use a number `n ∈ ℕ` as the upper bound , summing the terms up to and including the `n`-th term, `sum [1..n]`.

In the sigma notation, `Σ` acts as a binding site, binding the iterator variable `k` (`i`, `j`, `n`, `m`, etc.) that iterates through the natural numbers starting usually from 0 (or 1), although any number may be put as the lower bound, `i = 0`, under the sigma sign. The upper bound is written over the sigma sign - when the iterator reaches this number the summation stops - for bounded series. For unbounded series, the upper bound is marked as ∞.

The main expression (the body) in the sigma notation tells how the terms of the series are calculated.

```js
// sigma notation with a constant expr
// This counts from 0 to 3, each time adding a 1 to the running sum.
// k=0: s=1
// k=1: s=1+1=2
// k=2: s=1+1+1=3
// k=3: s=1+1+1+1=4
 ₃
⎲
⎳ 1 = 1 + 1 + 1 + 1 = 4
ᵏ⁼⁰

// unbounded sums
sum [0..]

 ∞
⎲
⎳ k = 0 + 1 + 2 + 3 + …
ᵏ⁼⁰

// bounded sums

sum [0..n]
 n
⎲
⎳ k = 1 + 2 + 3 + … + (n-1) + n
ᵏ⁼¹

// sum of natural numbers up to n
⎲ⁿ                               n(n + 1)    n² + n
⎳ₖ₌₀ k = 0 + 1 + 2 + 3 + … + n = --------- = ------- = 1⁄2(n² + n)
                                      2          2

// sum of squares up to n. Note the lower bound is 1 instead of 0
⎲ⁿ                                n(n + 1)(2n + 1)
⎳ₖ₌₁ k² = 1² + 2² + 3² + … + n² = ----------------
                                           6

// sum of cubes up to n. Note the lower bound is 1 instead of 0
⎲ⁿ                                n²(n + 1)²
⎳ₖ₌₁ k³ = 1³ + 2³ + 3³ + … + n³ = ----------
                                        4

```
