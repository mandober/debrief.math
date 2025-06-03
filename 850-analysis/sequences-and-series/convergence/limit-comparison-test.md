# Limit comparison test of convergence

The limit comparison test involves two series - one series, by conventin `Σaₙ`, is a series whose convergence we'd like to find out. The other series, `Σbₙ`, should be one whose convergence status is known. The test consists of taking a limit of the ratio of the two series, `lim aₙ/bₙ`. If the limit exists then the convergence status of the two series is the same: either they both converge or they both diverge. That is why the other series, `Σbₙ`, should be one with a known convergence status; then the series `Σaₙ` will have the same status.

Again, the fact that the limit of the ratio of two the series exists does NOT means that either series converges or diverges. It just means that the two series are so close together that their convergence statuses are tied together.

Both series must be positive, `aₙ > 0` and `bₙ > 0`.

## Example

If the series `Σaₙ` is defined by `Σ {n=1..∞} 1/(√n+1)` and has unknown convergence status, we should use the limit comparison test to compare it with a series `Σbₙ` that is known to converge/diverge; then the series `Σaₙ` will also converge/diverge.

We should preferrably compare the series `Σaₙ` with a series that is very similar to it as that will help us reduce the expression more easily. However, it is not a requirement that the other series is similar, that only makes the process easier.

The series `Σbₙ` defined by `Σ {n=1..∞} 1/√n` is an excellent candidate because it is very similar to the first series, but, more importantly, we already know it is a devergent series. It is a p-series and according to the p-series test, it diverges if `p ≤ 1`, which its `p` value is `p=1/2` (√n = n¹′²). Moreover, with the iterator `n > 0`, it is a positive series, as is the first one, `Σaₙ`.

```js
// series Σaₙ with unknown convergence
⎲∞     1
⎳ₙ₌₁ -------
      √n + 1

// series Σbₙ known to diverge
⎲∞    1
⎳ₙ₌₁ ----
       √n

// take the limit of the ratio of two series
        1
     ------
     √n + 1            √n               1           1
lim ---------- = lim -------- = lim ---------- = ------- = 1
n→∞     1             √n + 1         1 + 1/√n     1 + 0
      -----
       √n
```

The limit exists and it is a constant (1), meaning that the two series have the same convergence status. However, because the series `Σbₙ` is divergent, the series `Σaₙ` is divergent as well.
