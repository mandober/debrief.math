# Alternating Series Test

An alternating decreasing series whose absolute value has a limit of 0, converges.

We start with a positive, decreasing series `Σaₙ`, and derive an alternating series from it by adding the sign control expresion, `Σ (-1)ⁿ aₙ`. Since `Σaₙ` is a series of all positive terms it is the same as `Σ|aₙ|`. Now, if the series `Σaₙ` has a limit which is 0, then the alternating series converges, provided it is a descending series.


A derived alternating series, `Σ (-1)ⁿ aₙ`, converges, 
if the precursor series, `Σaₙ`, is:
- positive
- decreasing, `aₙ ≥ aₙ﹢₁`
- has limit 0 (by divergence test)

The derived series will be decreasing as well, but we need not use it but the precursor series to show that it decreases. The same goes for determining the limit: we use the precursor series (not the derived series) with the divergence test to check if the limit is 0.

The fact that a series has the limit 0 means it has good chances to be convergent. But just because the limit is 0 is not enough for ocnvergence, as the harmonic series demonstrates. However, if add 2 more constraints - that it is alternating and descending - then the series converges fo sho.

The constrain that the series is descending means that the initial term will have the biggest value in the series. Since the series is alternating, the second term is subtracted from the first, and that will give a value larger than zero because the first term is larger then the second. The partial sums will ping-pong within the limit defined by the value of the initial term and 0, until they eventually converge somewhere in the middle of that interval.

To show a series is decreasing we can use the first derivative test: if the first derivative is negative, it is function is decreasing; if it is positive, the function is increasing.
