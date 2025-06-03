# Harmonic series

Harmonic series: 1 + 1/2 + 1/3 + 1/4 + 1/5 + ⋯

```js
// Harmonic Series must start from a lower bound
// so that the denominator is never 0
⎲∞    1
⎳ₙ₌₁ ---- = 1 + 1/2 + 1/3 + 1/4 + 1/5 + ⋯
       n

         3     11    25   137   49    363   761   7129   7381   83711
Sₙ = 1, ----, ----, ----, ----, ----, ----, ----, -----, -----, ------, …
         2     6     12   60    20    140   280   2520   2520   27720

Sₙ = ln(n) + γ // where γ ≈ 0.577

// Partial sum of non-consequtive term that gives 2
         1      1      1       1
2 = 1 + ---- + ---- + ---- + ----
         2      4      5      20
```


n  | 1/n    | Sn (frac)   | Sn(dec)| Rn     | ln(n)  | ln(n)+γ |
---|--------|-------------|--------|--------|--------|---------|
1  | 1      |     1       | 1.0    | 1      | 0      | 0.577   |
2  | 0.5    |     3/2     | 1.5    | 0.5    | 0.6931 | 1.2701  |
3  | 0.3333 |    11/6     | 1.83   | 0.33   | 1.0986 | 1.6756  |
4  | 0.25   |    25/12    | 2.083  | 0.253  | 1.3863 | 1.9633  |
5  | 0.2    |   137/60    | 2.283  | 0.2    | 1.6094 | 2.1864  |
6  | 0.1666 |    49/20    | 2.45   | 0.167  | 1.7918 | 2.3688  |
7  | 0.1428 |   363/140   | 2.593  | 0.143  | 1.9459 | 2.5229  |
8  | 0.125  |   761/280   | 2.7179 | 0.1249 | 2.0794 | 2.6564  |
9  | 0.1111 |  7129/2520  | 2.829  | 0.1111 | 2.1972 | 2.7742  |
10 | 0.1    |  7381/2520  | 2.929  | 0.1    | 2.3026 | 2.8796  |
11 | 0.0909 | 83711/27720 | 3.0199 | 0.0909 | 2.3979 |         |
12 | 0.0833 |             | 3.1032 | 0.0833 | 2.4849 |         |
13 | 0.0769 |             | 3.1801 | 0.0769 | 2.5649 |         |
14 | 0.0714 |             | 3.2516 | 0.0715 | 2.6390 |         |
15 | 0.0666 |             | 3.3182 | 0.0666 | 2.7080 |         |
16 | 0.0625 |             | 3.3807 | 0.0625 | 2.7726 |         |
17 | 0.0588 |             | 3.4396 | 0.0588 | 2.8332 |         |
18 | 0.0556 |             | 3.4951 | 0.0555 | 2.8904 | 3.4674  |
19 | 0.0526 |             | 3.5477 | 0.0526 | 2.9444 |         |
20 | 0.05   |             | 3.5977 | 0.05   | 2.9957 |         |


where
- `Sn` is the partial sum up to term `n`, as a fraction and as decimal
- `Rn` is the difference between two consequetive terms of the sequence `Sn`

* https://en.wikipedia.org/wiki/List_of_sums_of_reciprocals

* The sum of reciprocals is generally computed for the reciprocals of some or all of the natural numbers, i.e. it is a sum of unit fractions.

* The harmonic mean of a set of positive integers is the number of numbers times the reciprocal of the sum of their reciprocals. In harmonic sequence, each term is the harmonic mean of its neighbor terms, `b = ((a⁻¹ + c⁻¹)/2)⁻¹`. Term `1/b` can also be calculated as `b = (a+c)/2 = 3`, so 1/b = 1/3 (i.e. the denominator of any term is the average of denominators of its 2 neighbors).


* The first `n` terms of harmonic series sum up to approximately `Sₙ≈ln(n)+γ`, where `γ ≈ 0.577` is the Euler-Mascheroni constant. It's a shite approximation in the start but gets more precise the bigger the `n` gets. e.g. `S₁₈=3.4951` and the approx says `3.4674`, which is `ln(18)+γ` (2.8904 + 0.577 = 3.4674). So, not really amazeballz but better then others.
* Another approximation is `Sₙ ≈ ln(n+1)`; shite as well, e.g. `S₁₈ = 3.4951` but `ln(19) = 2.9444` (it's off by 0.5).
* Seems the proper *formula for a partial sum approximation* is `Sₙ≈ln(n+1)+γ`.

* Harmonic series, aka the series of reciprocals of the natural numbers, `1/ℕ`.

* Harmonic sequence aka Harmonic Progression (HP) gives rise to Harmonic series, the finite partial sums of which are called Harmonic numbers.

* If the general formula is `1/n` then the counting must start from 1 lest encounter division by zero.

* Harmonic series yields a divergent sum (the sum diverges into +∞) of all positive unit fractions. Unit fractions are fractions with 1 in the nominator.

* Harmonic sequence, which the harmonic series is derived from, has terms (unit fraction) that eventually tend to zero because 1 divided by very large number is close to 0.

* Harmonic series is a prime example illustarting that the eventual tendency of terms to converge toward zero (as denominators gets larger and larger) is not sufficient to guarantee the convergence of a series.

* Harmonic series diverges to infinity but does it veeery slowly.
>Is HP the slowest growing series?
Obviously not, since we can remove terms and still get a diverging series.

* To get to 100, we need to accumulate a rather large number of terms. The index `N` when the partial sum up up to `N` gives 100 is a known number, but too big to reproduce here.

* Considering a sequence of partial sums of HP, except for the first term (1), all other terms are rational numbers, never integers, because they have the form `odd/even`, and an odd number dividied by an even number can never give an integer.
* József Kürschák proved in 1918 that the sum of the reciprocals of consecutive natural numbers (whether starting from 1 or not) is never an integer.
* In fact, summing a run of consequtive terms of any length, anywhere in the HS, gives a fraction with odd nominator and even denominator (adding a run of terms, e.g. 1⁄6+1⁄7+1⁄8+…+1⁄20, always gives a fraction of the form `odd/even`).
* Sum of reciprocals of the first `n` primes is not an integer for any `n`.

* Harmonic Series (HS) diverges even if significantly deplated! 
* Removing every second term from HS still diverges. 
* Removing 9 out of 10 terms from HS still diverges. 
* However, a deplated HS, where all terms that have 9 anywhere in their denominator are removed, can be shown to converge. This yields the so-called *Kempner series* that converges to ~ `22.92`.

* List of formulae involving π: https://en.wikipedia.org/wiki/List_of_formulae_involving_%CF%80

* A sum-free sequence of increasing positive integers is one for which no number is the sum of any subset of the previous ones. The sum of the reciprocals of the numbers in any sum-free sequence is less than `2.8570`.

* The sum of the reciprocals of the perfect powers (including duplicates) is `1`. The sum of the reciprocals of the perfect powers (excluding duplicates) is approximately `0.8745`. https://en.wikipedia.org/wiki/Perfect_power#Examples_and_sums

* The sum of the reciprocals of the powers `nⁿ`, i.e. `1/nⁿ` is approximately equal to `1.2913`. The sum is exactly equal to a definite integral `∑ {n=1..∞} 1 nⁿ` = `∫ {1..0} dx/xˣ`.

* The n-th partial sum of the harmonic series, which is the sum of the reciprocals of the first `n` positive integers, diverges as `n` goes to infinity, albeit extremely slowly: the sum of the first 10⁴³ terms is less than 100. The difference between the cumulative sum and `ln(n)` converges to the Euler-Mascheroni constant, `γ ≈ 0.5772`.

* The sum of the reciprocals of the primes diverges.



## Harmonic series

https://en.wikipedia.org/wiki/Harmonic_series_(mathematics)

The harmonic series is the infinite series formed by summing all positive unit fractions.

The first `n` terms of the harmonic series sums up to approximately `ln n + γ`, where `γ ≈ 0.577` is the *Euler-Mascheroni constant*.

Because the logarithm has arbitrarily large values, the harmonic series does not have a finite limit: it is a divergent series.

Its divergence was proven in the 14th century by Nicole Oresme using a precursor to the *Cauchy condensation test* for the convergence of infinite series. It can also be proven to diverge by comparing the sum to an integral, according to the *integral test for convergence*.

Applications of the harmonic series and its partial sums include Euler's proof that there are infinitely many prime numbers, the analysis of the coupon collector's problem on how many random trials are needed to provide a complete range of responses, the connected components of random graphs, the block-stacking problem on how far over the edge of a table a stack of blocks can be *cantilevered*, and the average case analysis of the quicksort algorithm.

## Contents

- 1. History
- 2. Definition and divergence
  - 2.1. Comparison test
  - 2.2. Integral test
- 3. Partial sums
  - 3.1. Growth rate
  - 3.2. Divisibility
  - 3.3. Interpolation
- 4. Applications
  - 4.1. Crossing a desert
  - 4.2. Stacking blocks
  - 4.3. Counting primes and divisors
  - 4.4. Collecting coupons
  - 4.5. Analyzing algorithms
- 5. Related series
  - 5.1. Alternating harmonic series
  - 5.2. Riemann zeta function
  - 5.3. Random harmonic series
  - 5.4. Depleted harmonic series
- 6. References
- 7. External links

## 1. History

The name of the harmonic series derives from the concept of overtones or harmonics in music: the wavelengths of the overtones of a vibrating string are 1/2, 1/3, 1/4, etc., of the string's fundamental wavelength. Every term of the harmonic series after the first is the *harmonic mean* of the neighboring terms, so the terms form a *harmonic progression*; the phrases harmonic mean and harmonic progression likewise derive from music.

Beyond music, harmonic sequences have also had a certain popularity with architects. This was so particularly in the Baroque period, when architects used them to establish the proportions of floor plans, of elevations, and to establish harmonic relationships between both interior and exterior architectural details of churches and palaces.

The divergence of the harmonic series was first proven in 1350 by Nicole Oresme. Oresme's work, and the contemporaneous work of Richard Swineshead on a different series, marked the first appearance of infinite series other than the geometric series in mathematics.

However, this achievement fell into obscurity. Additional proofs were published in the 17th century by Pietro Mengoli and by Jacob Bernoulli. Bernoulli credited his brother Johann Bernoulli for finding the proof, and it was later included in Johann Bernoulli's collected works.

The partial sums of the harmonic series were named *harmonic numbers*, and given their usual notation `Hₙ`, in 1968 by Donald Knuth.

## 2. Definition and divergence

The harmonic series is the infinite series `Σ {n=1..∞} 1/n`

    1 + 1/2 + 1/3 + 1/4 + 1/5 + ⋯

where the terms are all positive unit fractions.

*The harmonic series is divergent*: as more terms of the series are included in the partial sums of the series, the values of these partial sums grow arbitrarily large, beyond any finite limit.

Because it is a divergent series, it should be interpreted as a formal sum, an abstract mathematical expression combining the unit fractions, rather than as something that can be evaluated to a numeric value. There are many different proofs of the divergence of the harmonic series, surveyed in a 2006 paper by S. J. Kifowit and T. A. Stamps. Two of the best-known are listed below.

### 2.1 Comparison test

One way to prove divergence is to compare the harmonic series with another divergent series, where each denominator is replaced with the next-largest power of two:



Grouping equal terms shows that the second series diverges (because every grouping of convergent series is only convergent):



Because each term of the harmonic series is greater

than or equal to the corresponding term of the second series (and the terms are all positive), and since the second series diverges, it follows (by the comparison test) that the harmonic series diverges as well.

The same argument proves more strongly that, for every positive integer 

    ∑ {n=1..2ᵏ} 1/n ≥ 1 + k/2

This is the original proof given by Nicole Oresme in around 1350.

The Cauchy condensation test is a generalization of this argument.

### 2.2 Integral test

It is possible to prove that the harmonic series diverges by comparing its sum with an improper integral.

Specifically, consider the arrangement of rectangles where each rectangle is 1 unit wide and `1n` units high, so if the harmonic series converged then the total area of the rectangles would be the sum of the harmonic series.

The curve `y = 1x` stays entirely below the upper boundary of the rectangles, so the area under the curve (in the range of `x` from one to infinity that is covered by rectangles) would be less than the area of the union of the rectangles.

However, the area under the curve is given by a divergent improper integral,

    ∫ {1,∞} 1/x dx = ∞

Because this integral does not converge, the sum cannot converge either.

...

Generalizing this argument, any infinite sum of values of a *monotone decreasing positive function* of `n` (like the harmonic series) has partial sums that are within a bounded distance of the values of the corresponding integrals.

>Therefore, the sum converges if and only if the integral over the same range of the same function converges.

When this equivalence is used to check the convergence of a sum by replacing it with an easier integral, it is known as the *integral test for convergence*.

## 3. Partial sums

Adding the first `n` terms of the harmonic series produces a partial sum, called a *harmonic number* and denoted `Hn`.

### 3.1. Growth rate

These numbers grow very slowly, with *logarithmic growth*, as can be seen from the integral test.

### 3.2. Divisibility

### 3.3. Interpolation
