# Power series: the main theorem

3-part theorem about power series.

## Part 1

1. The domain of `f` is an interval centered at `a`.

If `R` is the length of the interval centered at `a`, then the interval can be
- open,        `(a-R, a+R)`
- closed,      `[a-R, a+R]`
- half-open,   `(a-R, a+R]`
- half-closed, `[a-R, a+R)`
- `ℝ` (all reals)
- `{a}` (only `a`)

This should make sense because the farther away `x` is from `a`, the larger `x-a` is, and therefore the more likely the series diverges. Whereas, the smaller `x-a` is, the closer it is to zero, which makes it more likely that the series converges.

The domain is called the *interval of convergence* (IC) of `f`.

The *radius of convergence* is the length `R` of the interval centered at `a`, and it could be `0 ≤ R ≤ ∞`. It is 0 in case the domain is a single point `a`; it is `∞` in case the domain is `ℝ`.

## Part 2

2. In the interior of the IC, the series is absolutely convergent.

- in the interior of the IC, the series is absolutely convergent
- in the exterior of the IC, the series is divergent
- anything is possible at endpoints

```hs
               ?                                 ?
diverges       │      absolutely converges       │     diverges
←──────────────┼────────────────┬────────────────┼──────────────→
              a-R               a              a+R
```

## Part 3

3. In the IC, power series can be treated "like polynomials".

In particular, they may be differentiated or integrated term-by-term, and this does not change the radius of convergence.

```js
        ∞
       ⎲
f(x) = ⎳ cₙ xⁿ = c₀ + c₁x + c₂x² + c₃x³ + …
       ⁿ⁼⁰

         ∞
        ⎲
f′(x) = ⎳ cₙ nxⁿᐩ¹ = c₁ + 2c₂x + 3c₃x² + …
       ⁿ⁼⁰

              ∞
⌠ˣ           ⎲    xⁿᐩ¹          x         x²        x³        x⁴
⌡₀ f(t) dt = ⎳ cₙ ----- === c₀----- + c₁----- + c₂----- + c₃----- + …
             ⁿ⁼⁰   n + 1         1         2         3         4
```
