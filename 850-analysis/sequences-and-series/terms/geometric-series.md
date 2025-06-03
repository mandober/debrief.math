# Geometric series

https://en.wikipedia.org/wiki/Geometric_series

A **geometric series** is a series summing the terms of an infinite geometric sequence, in which the ratio of consecutive terms is constant.

For example, the series `1/2 + 1/4 + 1/8 + ⋯` is a geometric series with *common ratio* ⁠1/2⁠, which converges to the sum of ⁠1⁠. Each term in a geometric series is the *geometric mean* of two terms surrounding it, similarly to how each term of an arithmetic series is the arithmetic mean of its neighbors.

While Zeno's paradoxes about time and motion (5th century BCE) have been interpreted as involving geometric series, such series were formally studied and applied a century or two later by Greek mathematicians, for example used by Archimedes to calculate the area inside a parabola (3rd century BCE).

Though geometric series most commonly involve real or complex numbers, there are also important results and applications for matrix-valued geometric series, function-valued geometric series, p-adic number geometric series, and most generally, geometric series of elements of abstract algebraic fields, rings, and semirings.

## Contents

- Definition and examples
- Convergence of the series
- Proof of convergence of the series
- Connection to the power series
- Background
- Applications
- Beyond real and complex numbers

## Definition

**Geometric series** is an infinite series derived from a type of sequence called *geometric progression*.

Geometric series is a sum of infinitely many terms of geometric progression: it starts from an *initial term* `a`, and the next term is obtained by multiplying the initial term by a constant number called the *common ratio*, `r`.

Equivalently, a geometric series is a power series with constant *coefficient* `a` and *parameter* `x` raised to progressively increasing powers, starting with 0. Since `ax⁰ = a`, the first term is just `a`.

Geometeric series may be expressed in sigma notation where `r`, possibly with a coefficient `a`, is raised to the iterator variable that starts at 0, `n=0..∞`, 

```js
⎲∞
⎳ₖ₌₀ arᵏ = a + ar + ar² + ar³ + ⋯
```

The **initial term** is said to be `a`, which is true only if the iterator `k` starts from 0. Then the first term is `ar⁰ = a`. But what if `k` start from 1? Then the initial term would not be `a` since `ar¹ = ar ≠ a`.



The *sum of a finite initial segment* of an infinite geometric series is called a *finite geometric series*, that is:

```js
⎲ⁿ
⎳ₖ₌₀ arᵏ = a + ar + ar² + ar³ + ⋯ + arⁿ
```

Note that the upper bound is not `∞` but a finite constant number `n`, so `arⁿ` is the last term of this finite geometeric series.

When `r > 1` it is called a *growth rate* or *rate of expansion*.

When `0 < r < 1`, it is often called a *decay rate* or *shrink rate*, where the idea that it is a "rate" comes from interpreting `k` as a sort of discrete time variable.

When an application area has specialized vocabulary for specific types of growth, expansion, shrinkage, and decay, that vocabulary will also often be used to name `r` parameters of geometric series. In economics, for instance, rates of increase and decrease of price levels are called inflation rates and deflation rates, while rates of increase in values of investments include rates of return and interest rates.


When summing infinitely many terms, the geometric series can either be convergent or divergent. *Convergence* means there is a value after summing infinitely many terms, whereas *divergence* means no value after summing.

The convergence of a geometric series can be described depending on the value of a *common ratio* (see § Convergence of the series and its proof). 

### Example 1: Grandi's series

*Grandi's series* is an example of a *divergent series* that can be expressed as an alternating series of 1's (1-1+1-1+⋯), where the initial term is `1` and the common ratio is `−1`; this is because it has three different values.

```js
⎲ⁿ
⎳ₖ₌₀ (-1)ᵏ = 1 - 1 + 1 - 1 + ⋯  = DNE // no limit, diverges
     ↓   ↘
    a=1   r = -1
//  a=1 implicitly
```

- type: geometric series
- name: Grandi's series
- desc: alternating series of 1's
- initial term (a₀): 1 (implicit, read off the form)
- common ratio: -1 (read off the form)
- coefficient (`a`): 1 (implicit)
- base (`r`): -1
- iterator starts at: 0
- convergence: diverges
- limit: DNE


### Example 2: Decimal expansion

Decimal numbers that have repeated patterns that continue forever can be interpreted as geometric series and thereby converted to expressions of the ratio of two integers.

For example, the repeated decimal fraction `0.7777…` can be written as the geometric series where the initial term is `a = 7⁄10` and the common ratio is `r = 1⁄10`.

```js
0.7777… = 7⁄10 + 7⁄10 (1⁄10) + 7⁄10 (1⁄10)² + 7⁄10 (1⁄10)³ + ⋯
0.7777… = 7⁄10 + 7⁄100 + 7⁄1000 + 7⁄10000 + ⋯
0.7777… = Σ{k=0..∞} 7⁄10 (1⁄10)ᵏ

⎲ⁿ
⎳ₖ₌₀ 7⁄10 (1⁄10)ᵏ
       ↓    ↓
       a    r

7⁄10 = 0.7
7⁄100 = 0.07
7⁄1000 = 0.007
7⁄10000 = 0.0007
```

- type: geometric series
- name: decimal expansion
- desc: decimal expansion of a number with a repeating digit, 0.77777…
- initial term (a₀): 7⁄10 (explicit, read off the form)
- common ratio: 1⁄10 (explicit, read off the form)
- coefficient (`a`): 7/10 (explicit)
- base (`r`): 1/10
- iterator starts at: 0
- convergence: converges since `|r| < 1` (1⁄10 < 1)
- limit: `a/(1-r)`, 7⁄10 / (1 - 1⁄10)


### Example 3: reciprocals of powers of two

```js
⎲ⁿ
⎳ₖ₌₀ arᵏ = a + ar + ar² + ar³ + ⋯ + arⁿ
```


### Example 4: reciprocals of even powers of two

The geometric series `Σ{k=1..∞} (1⁄2)²ᵏ` expands as 
(1⁄2)² + (1⁄2)⁴ + (1⁄2)⁶ + (1⁄2)⁸ + ⋯ = 
1⁄4 + 1⁄16 + 1⁄64 + 1⁄256 + ⋯

If we imagine a square divided into 4 equal subsquares, 
the first term (1/4) fills the lower left subsquare, `◱`, 
coloring it purple. 
Now we divide the upper right subsquare into 4 equal squares, 
so the second terms (1/8) fills the lower left subsquare, `◱`, 
coloring it purple. 
Then we divide the upper right square, repeating this process. 

Each of the purple squares (they are laid out on the aux diagonal) has ⁠1/4 of the area of the next larger square: 1⁄2×1⁄2=1⁄4, 1⁄4×1⁄4=1⁄16, etc. Thus, the sum of the purple squares' area is 1/3 of the overall square area.

```
┌───────────┬─────┬──┬──┐
│           │     ├──┼──┤
│           ├─────┼──┴──┤
│           │ 1/8 │     │
├───────────┼─────┴─────┤
│           │           │
│    1/4    │           │
│           │           │
└───────────┴───────────┘
```


## Convergence of the series and its proof

>The convergence of the infinite sequence of partial sums of the infinite geometric series depends on the **magnitude of the common ratio `r` alone**.

1. If `|r| < 1`, the series converges 
since the terms approach 0 (becoming smaller and smaller in magnitude), and the sequence of partial sums converge to the limit `a/(1−r)`.

2. If `|r| > 1`, the series diverges 
since the terms become larger and larger and the partial sums of the terms also get larger and larger in magnitude.

3. If `|r| = 1`, the series does not converge 
as the terms of the series become no larger or smaller in magnitude and the sequence of partial sums of the series does not converge.

- When `r = 1`, all terms are the same, and the sequence of partial sums moduli `|Sn|` grow to infinity.

- When `r = −1`, the terms take two values `a` and `−a` alternately, and so the sequence of partial sums oscillates between the two values `a` and `0` (e.g. like in the Grandi's series).

- When `r = i` and `a = 1`, the partial sums circulate periodically among the values (1, 1+i, i, 0, 1, 1+i, i, 0, …), never converging to a limit.

- Generally, when `r = e^(2πi/τ)` for any integer `τ` and with any `a ≠ 0`, the partial sums of the series will circulate indefinitely with a period of `τ`, never converging to a limit.

### Rate and order of convergence

>**Rate of convergence** shows how the sequence quickly approaches its limit.

In the case of the geometric series - the relevant sequence is `Sn` and its limit is `S` - the rate and order of convergence are found via

```js
     |Sₙ﹢₁ - S|
lim -----------
n→∞  |Sₙ - S|ʷ
```

where `w` represents the *order of convergence*.
