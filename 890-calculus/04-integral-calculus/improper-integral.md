# Improper integral

An integral is called improper is the indegrand function is not continuous.

An integral may be improper because:
1. one or both bounds of integration are undefined (±∞)
2. integrand function has an infinite discontinuity over the interval [a,b]

The latter case measn that fn is not defined for some value(s) in the interval; the limit on either side of the function will be `±∞`.

If the function has inputs in the interval for which it is undefined, or if it is undefined for one of the bounds, then the integral is improper.

## Resolving improper integrals

Improper integrals are handled by replacing the undefined bound (±∞) with a new variable that will be made to tend to the undefined bound it replaces.

Getting a finite value out of an improper intgral means it *converges*; otherwise, the integral *diverges*.

1. `f(x)` is continuous on `[a,∞)`

```
⌠∞          lim ⌠ᵇ
⌡ₐ f(x) dx = b→∞ ⌡ₐ f(x) dx
```

The upper bound of integration is undefined (∞), so we replace it with a new variable `b` in the integration symbol. Then we introduce an overall limit where `b` approaches the replaced bound, `lim{b→∞}`.

2. `f(x)` is continuous on `(-∞,b]`

```
⌠ᵇ           lim  ⌠ᵇ
⌡-∞ f(x)dx = a→-∞ ⌡ₐ f(x)dx
```

Similarly, if the lower bound of integration is undefined (-∞), we replace it with a new variable `a` in the integration symbol. Then we introduce an overall limit where `a` approaches the replaced bound, `lim{a→-∞}`.

3. `f(x)` is continuous on `(-∞,∞)`

```
⌠∞           ⌠c           ⌠∞
⌡-∞ f(x)dx = ⌡-∞ f(x)dx + ⌡c f(x)dx
```

If both bounds are undefined, we pick a value, `c`, between `-∞` and `∞` (so any value), and rewrite the integral as a sum of two integrals: one over the interval `(-∞, c]`, and the other over the interval `[c, ∞)`.


## Examples

### Example 1

```
⎛∞   1
⎟   ---- dx
⎠₁   x²
```


### Example 2

```
⎛∞   1
⎟   ---- dx
⎠₁   x
```

### Example 3

```
⎛¹   4
⎟   ---- dx
⎠₀   x²
```

This is also improper integral due to `x≠0`, and 0 is also the lower bound. This makes this integral improper.
