# Integral Calculus :: Integration :: Integrals :: Improper integrals

>The most common type of an improper integral is one with the upper bound of integration being `∞`.

An integral is called improper if the indegrand function is not continuous.

An integral may be improper because:
1. one or both bounds of integration are undefined (±∞)
2. integrand function has an infinite discontinuity over the interval [a,b]

The latter case means that the function is not defined for some values in the interval of convergence; the limit on either side of the function will be `±∞`.

If the function has inputs in the interval for which it is undefined, or if it is undefined for one of the bounds, then the integral is improper.

## Types of improper integrals

Improper integrals are commonly divided into two types:
- Type I: with infinite discontinuity (± is a bound)
- Type II: with disco integrand

**Improper integrals of Type I** have an infinite discontinuity (aka ±∞) as one or both bounds.

Examples (where `k` is a constant)
- upper bound is +∞: from  `k` to `∞`
- lower bound is -∞: from `-∞` to `k`
- both bounds are ∞: from `-∞` to `∞`

**Improper integrals of Type II** have a discontinuous integrand, meaning one of the bounds is a constant restricted by the domain of the function (e.g. `x≠0` yet the lower bound is 0); meaning there is at least one disco on the interval of integration.




## Resolving improper integrals

Improper integrals are handled by replacing the undefined bound with a fresh variable made to be the limiting value that tends to the undefined bound it replaces.

In definite integrals, by convention (at least on this page), the lower bound is represented by `α` and the upper bound by `β`. So any definite integral is bounded by `{α..β}`, e.g. `∫ {α..β} f(x) dx`.

If any bound is literally a variable, then `a` is used for the lower bound and `b` for the upper bound (if the choice of a variable's name is otherwise inconsequential).

*Undefined bounds* are both kinds of infinity (`-∞` or `∞`), or a constant `k` in case the domain of the function restricts input `x`. A common restriction is enforcing input `x` to never be zero, i.e. `x≠0`, which is crucial to a function like `1/xⁿ`. More generally, restrictions of the form `x ≠ k`, where `k` is not necessarily zero, are placed on the domain of a function; e.g. the constraint for `1/x+2` is `x ≠ -2`. Whenever a restricted constant is placed as a bound on an integral, that bound must be revised via a limit.


When the upper bound is either infinity or a restricted constant `k`, it will be resolved with a limit. In case the upper bound is `∞`, we introduce a limit and set a fresh variable `b` to tend to `∞`, as `lim{b→∞}`. Then we put `b` as the upper bound in the integral (replacing `∞` there).


```js
/* Example with infinity as the upper bound */
⌠∞          lim ⌠ᵇ
⌡ₐ f(x) dx = b→∞ ⌡ₐ f(x) dx


/* Example with negative infinity as the lower bound */
⌠ᵇ            lim ⌠¹
⌡-∞ f(x) dx = b→∞ ⌡ₐ f(x) dx

/* Example with negative infinity as the lower bound */
⌠∞            lim  ⌠ᶜ             lim ⌠ᵇ
⌡-∞ f(x) dx = a→-∞ ⌡ₐ f(x) dx  +  b→∞ ⌡ᶜ f(x) dx



/* Example with the restricted constant (x≠0) as the lower bound */
⌠¹           lim  ⌠¹
⌡₀ 1/x² dx = a→0ᐩ ⌡ₐ 1/x² dx
```



```js
// In case of an integral like
⌠+∞
⌡-∞ f(x) dx

// Use function domain and discontinuity points
// to transform the expression with the formula:
⌠ᶜ           ⌠ᶜ           ⌠ᵇ
⌡ₐ f(x) dx = ⌡ₐ f(x) dx + ⌡ₐ f(x) dx
```





Getting a finite value out of an improper intgral means it converges; otherwise, the integral diverges.

1. `f(x)` is continuous on `[a, ∞)`

```js
// f is continuous on [a, ∞)
⌠∞          lim ⌠ᵇ
⌡ₐ f(x) dx = b→∞ ⌡ₐ f(x) dx
```


The upper bound of integration is undefined (`∞`), so we replace it with a fresh variable `b`, while introducing a limit where b tends to the origianal upper bound (i.e. `b→∞`).

. Then we introduce the overall limit where `b` approaches the undefined bound, i.e. `lim{b→∞}`.

```js
⌠∞          lim ⌠ᵇ
⌡ₐ f(x) dx = b→∞ ⌡ₐ f(x) dx
```



2. `f(x)` is continuous on `(-∞, b]`

Similarly, if the lower bound of integration is undefined (`-∞`), we replace it with a fresh variable `a` at the bottom of the integration symbol. Then we introduce the overall limit where `a` approaches the bound, `lim{a→-∞}`.

```js
⌠ᵇ            lim   ⌠ᵇ
⌡-∞ f(x) dx = a→-∞ ⌡ₐ f(x) dx
```

Note: `-∞` denotes negative infinity, `-∞⁻` means approaching negative infinity from the left i.e. from the negative direction.



3. `f(x)` is continuous on `(-∞,∞)`

```js
⌠∞           ⌠c           ⌠∞
⌡-∞ f(x)dx = ⌡-∞ f(x)dx + ⌡c f(x)dx
```

If both bounds are undefined, we pick a value `c` between `-∞` and `∞` (so any value really) to split the bounds at. We rewrite the integral as a sum of two integrals: one over the interval `-∞` up to `c`, i.e. `(-∞, c]`, and the other over the interval from `c` onwards, i.e. `[c, ∞)`.
