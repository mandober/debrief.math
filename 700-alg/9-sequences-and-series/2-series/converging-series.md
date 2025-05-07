# Converging series

## Convergence of series

General approaches to find whether a series converges or diverges.

```js
1. Σ 1/nᵖ // p-series: converges when p > 1

2. Σ arⁿ // geometric: converges when |r| < 1 (r is common ratio)

3. Series similar to p-series or geometric series

4. By inspection, if lim{n→∞} aₙ ≠ 0, use divergence test

5. Σ (-1)ⁿ ⋅ bₙ // use alternating series test

6. factorial or other produces: use ratio test

7. aₙ has the form (bₙ)ʳ // use root test

8. aₙ = f(x) and ∫{1..∞} f(x) dx can be found: use integral test
```

## Convergence of a power series

```js
 n
⎲
⎳ cₙ(x - a)ⁿ
ⁿ⁼⁰
```

1. a power series converges if `x = a`
2. it may converge for all values of `x`
3. if `|x-a| < R`

Radius of convergence, `R`

```js
|x-a| < R
-R < x-a < R
-R+a < x < R+a
```

`(-R+a, R+a)` is the *interval of convergence*.
