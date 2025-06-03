# Direct comparison test of convergence

The basic idea of the direct comparison test is comparing the series, whose convergence we want to determine, with a series (e.g. p-series or geometric series) whose convergence status is already known. This should tell us if the original series converges or diverges.

If we set up things so a smaller series with unknown convergence status is compared to a bigger series whose status is known, then they should share the convergence attribute.

`bₙ ≥ aₙ > 0` where
- `bₙ` is a big series
- `aₙ` is a small series

The two series can affect each other:
- `bₙ` converges ⇒ `aₙ` converges
- `aₙ` diverges ⇒ `bₙ` diverges

If the big series converges, the small series converges as well. 
If the small series diverges, the big series diverges as well.

For example, the series `Σaₙ` is defined as `Σ{n=1..∞} 1/(4+3ⁿ)`. Analysing it, we can compare it to the derived series `Σbₙ` defined as `Σ{n=1..∞} 1/3ⁿ` (the constant 4 is dropped from the denumerator). The series `{aₙ}` is a small one since the series `{bₙ}` has a smaller denumerator. The other, `1/3ⁿ = (1/3)ⁿ`, is a geometric series, and geometric series converge iff `|r| < 1`, which it is (1/3 < 1). Thus, since the big series `{bₙ}` converges, the small series `{aₙ}` converges as well.
