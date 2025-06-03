# Sequences and Series

## Geometric sequence

A geometric sequence or geometric progression (GP) has terms that are related to each other in that the next term is obtained by multiplying the current term by the *common ratio*, `r`.

The general form is {arⁿ}{n=1..∞}

## Geometric series

A **geometric series** is a series summing the terms of an infinite geometric sequence, in which the ratio of consecutive terms is constant.

A geometric series `Σ{n=0..∞} arⁿ` converges to `a/(1-r)` iff `|r| < 1`.
- `a` is a constant coefficient and the first term
- `r` is the common ratio

Geometric series
- sum of an infinite geometric sequence
- constant ratio between consecutive terms
- each term is a geometric mean of two neighboring terms, `b=√ac in a+b+c`


## Geometric series

A **geometric series** is a series summing the terms of an *infinite geometric sequence*, in which the ratio of consecutive terms is constant.

As with any infinite series, the **sum of the series** is defined to mean the *limit* of *the partial sum* of the first `n` terms.

## Geometric series example: reciprocals of powers of two

https://en.wikipedia.org/wiki/1/2_%2B_1/4_%2B_1/8_%2B_1/16_%2B_%E2%8B%AF

The following geometric series (that we refer to as `g`) is based on a geometric progression of fractions with 1 in the nominator and powers of 2 in the denominator. It could be called *reciprocals of powers of two*. It is related to philosophical questions considered in antiquity regarding the possibility of motion called Zeno's paradoxes.

    g = 1, 1/2, 1/4, 1/8, 1/16, 1/32, …, 1/2ⁿ, … (a sequence)

By exchanging commas for plus signs, we get an infinite geometric series (we call `Z`), that *converges absolutely* to 2.

```js
// if the lower bound is 0 (n=0..∞), it converges to 2
     ⎲∞
S₀ = ⎳ₙ₌₀ (1⁄2)ⁿ = 1 + 1⁄2 + (1⁄2)² + (1⁄2)³ + (1⁄2)⁴ + …

S₀ = 1 + 1/2 + 1/4 + 1/8 + 1/16 + 1/32 + …

// if the lower bound is 1 (n=1..∞), it converges to 1
     ⎲∞
S₁ = ⎳ₙ₌₁ (1⁄2)ⁿ = 1⁄2 + (1⁄2)² + (1⁄2)³ + (1⁄2)⁴ + …

S₁ = 1/2 + 1/4 + 1/8 + 1/16 + 1/32 + …
```

As with any infinite series, the sum is defined as the *limit of the partial sum of the first `n` terms*. So to check that is actually converges to 2 (or to 1 depending on the power bound), we take the partial sum up to the tern `n`. The goal is to get a compact expression and then to evaluate the limit on it.

```js
S  = 1 + 1/2 + 1/4 + 1/8 + 1/16 + 1/32 + … + 1/2ⁿ⁻¹ + 1/2ⁿ
2S = 2 + 2/2 + 2/4 + 2/8
```




The sequence of the partial sums of the Z series:

is `Σ{n=0..∞} (1⁄2)ⁿ` 

    Z = Σ{n=0..∞} (1⁄2)ⁿ

an initial segment of `Z` expands as:

    Z = 1 + 1/2 + 1/4 + 1/8 + 1/16 + 1/32 + …

As with any infinite series, the sum is defined to mean the *limit of the partial sum of the first `n` terms*. This is the sequence of partial sums of Z:

    Zₛ = (1, 3/2, 7/4, 15/8, 31/16, 63/32, 127/64, 255/128, …)

The formula to obtain a partial sum of Z up to `n` is `2ⁿᐩ¹-1 ÷ 2ⁿ`.




```js
// geometric sequence
Z = (1, 1/2, 1/4, 1/8, 1/16, 1/32, …, 1/2ⁿ, …)

// example of geometric series whose partial sums converge to 2
// and thus the entire series converges to 2
    ⎲∞
S = ⎳ₙ₌₀ (1⁄2)ⁿ = 1 + 1⁄2 + (1⁄2)² + (1⁄2)³ + (1⁄2)⁴ + …

S = 1 + 1/2 + 1/4 + 1/8 + 1/16 + 1/32 + …

// sequence of partial sums of S
lim{n→∞} (1⁄2)ⁿ = (1, 3/2, 7/4, 15/8, 31/16, 63/32, 127/64, 255/128, …) = 2

// converges to 2 logically, but how to eval the limit to see this?
          2ⁿᐩ¹ - 1    2×2ⁿ - 1
lim{n→∞} --------- = ---------
            2ⁿ          2ⁿ



S = 1 + 1/2 + 1/4 + 1/8 + 1/16 + 1/32 + …

S₀ = 1
S₁ = 1 + 1/2 = 3/2
S₂ = 1 + 1/2 + 1/4 = 3/2 + 1/4 = 7/4
S₃ = 1 + 1/2 + 1/4 + 1/8 = 3/2 + 1/4 + 1/8 = 15/8
S₄ = 1 + 1/2 + 1/4 + 1/8 + 1/16 = 3/2 + 1/4 + 1/8 + 1/16 = 31/16
Sₙ = 2ⁿᐩ¹-1 ÷ 2ⁿ
S₅ = 2⁵ᐩ¹-1 ÷ 2⁵ = 2⁶-1/32 = 63/32
S₆ = 2⁶ᐩ¹-1 ÷ 2⁶ = 2⁷-1/64 = 127/64
```

The partial sums of the series get the form `2ⁿᐩ¹-1 ÷ 2ⁿ`.



## Geometric series in sigma notation, general form

```js
// example of geometric series that converges to 2
⎲∞
⎳ₙ₌₀ (1⁄2)ⁿ = 1 + 1⁄2 + (1⁄2)² + (1⁄2)³ + (1⁄2)⁴ + … = 2

// geometric series, general form
⎲∞           1
⎳ₙ₌₀ xⁿ = ------- = 1 + x + x² + x³ + ⋯
            1 - x

// Take the series S and mult it by x.
// Then shift the terms of xS to the right by one term to align
// the two series for subtraction of the second from the first, S - xS
 S = 1 + x + x² + x³ + ⋯
xS =     x + x² + x³ + ⋯
// All terms when subtracting (S - xS) cancel out except term (1) in S
S - xS = 1
S(1 - x) = 1
S = 1/(1 - x)
```






```js
// sum
    ⎲∞
S = ⎳ₙ₌₀ arⁿ

    ⎲∞
S = ⎳ₙ₌₁ arⁿ⁻¹


// sum of an finite geometric series
// a₁ is the first term, r is the ratio
     a₁(1 - rⁿ)
Sₙ = -----------
        1 - r

// sum of an infinite geometric series
      a
S = ------   if |r| < 1
    1 - r
```

## Finite Geometric Series

S = arⁿ
S = a/(1-r)

The terms of a geometric series have a common ratio, `r`. To find the **ratio** divide two consequtive terms, *current by previous*, `r = a₂/a₁`.

```js
     a₂
r = ----
     a₁
```

The ratio of a sequence is usually the value in parens, when the body of the sigma notation for a series is of the form `arⁿ`.

Formula for summing a **finite geometric series**:

```js
// finite geometric series
     a₁(1 - rⁿ)
Sₙ = -----------
        1 - r

// a₁ is the value of the first term
// r is the ratio
```

### Example

A series Sₙ = 2 + 6 + 18 + 54 + 162 + 486 + ⋯

```js
// manually, the sum is:
S₆ = 728
// find ratio
r = 6/2 = 3
r = 18/6 = 3
// check sum using the formula:
S₆ = 2(1 - 3⁶) / (1 - 3) = 2(1 - 729)/-2 = 728 ✔
```

### Example 2

Evaluate first few terms of the series

```js
⎲³⁰
⎳ⁿ⁼¹ 27(1/3)ⁿ⁻¹
// same as using the initial value 0
⎲³⁰
⎳ⁿ⁼⁰ 27(1/3)ⁿ
           ↑
           r
r = 9/27 = 1/3, r = 3/9 = 1/3

a₀ = 27
a₁ = 27/3 = 9
a₂ = 27/9 = 3
a₃ = 27/27 = 1
a₄ = 27/81 = 3/4

(27, 9, 3, 1, 3/4, …)

S₀ = 27
S₁ = 27 + 9 = 36
S₂ = 36 + 3 = 39
S₃ = 39 + 1 = 40
S₄ = 40 + 3/4 = 40 3⁄4

// using the formula for S₄

// first term is a₁ = 27
// ratio r = 1/3
// n = 30

       27(1 - (1/3)³⁰)    27(1 - 1/3³⁰)   27(1 - 0)     81
S₃₀ = ----------------- = ------------- = ---------- ≈ -----
           1 - 1/3             2/3           2/3         2
```

## Infinite Geometric Series

Formula for sum of an **infinite geometric series**:

```js
// infinite geometric series
      a
S = ------  if |r| < 1
    1 - r
```
