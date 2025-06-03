# Sequences and Series :: GLOSSARY

<!-- TOC -->

- [Absolute convergence](#absolute-convergence)
- [Arithmetic mean](#arithmetic-mean)
- [Cauchy sequence](#cauchy-sequence)
- [Cauchy criterion for convergence](#cauchy-criterion-for-convergence)
- [Center of the series](#center-of-the-series)
- [Conditional convergence](#conditional-convergence)
- [Cubic mean](#cubic-mean)
- [Divergence test](#divergence-test)
- [Geometric mean](#geometric-mean)
- [Geometric sequence](#geometric-sequence)
- [Harmonic mean](#harmonic-mean)
- [Interval of convergence](#interval-of-convergence)
- [Norm](#norm)
- [Partial sum of series](#partial-sum-of-series)
- [Pythagorean means](#pythagorean-means)
- [Quadratic mean](#quadratic-mean)
- [Radius of convergence](#radius-of-convergence)
- [Smooth function](#smooth-function)
- [Sum-free sequence](#sum-free-sequence)
- [Sum of series](#sum-of-series)
- [Sum of reciprocals](#sum-of-reciprocals)
- [Taylor series](#taylor-series)
- [Taylor polynomial](#taylor-polynomial)
- [Unconditional convergence](#unconditional-convergence)

<!-- /TOC -->

## Absolute convergence
An infinite series is absolutely convergent if the sum of the absolute values of the terms (summands) is finite. A convergent series that is not absolutely convergent is conditionally convergent. Absolute convergence is important for the study of infinite series, because its definition guarantees that a series has some "nice" behaviors of finite sums that not all convergent series possess. For instance, rearrangements do not change the sum, which is not necessarily true for conditionally convergent series.

## Arithmetic mean
Any 3 consequtive terms of AP are related by arithmetic mean: in `a, b, c`, term `b` is the average of `a` and `c` terms, `b = (a+c)/2`. In general, the AM of any 3 numbers is `(a+b+c)/3`.

## Cauchy sequence
In a Cauchy sequence, the terms become arbitrarily close to each other as the sequence progresses. More precisely, given any small positive distance `δ`, all (except perhaps a finite number of terms) are less than `δ` distance away from each other.

## Cauchy criterion for convergence
A series is convergent iff its tails can be made arbitrarily small in norm.

## Center of the series
A center of the series is a point in the middle of the interval of convergence. It is a point about which a function is approximated. This point is usually 0, and in that case we talk about Maclaurin series, which is always centered at 0. Taylor series are more general and can be centered at any point. The notion of the center of the series also comes about with power series in general.

## Conditional convergence
A series is conditionally convergent if it converges but different orderings do not all converge to that same value. In contrast, a series is unconditionally convergent if all reorderings of the series converge to the same value. A convergent series that is not absolutely convergent is conditionally convergent. Rearrangements may change the sum of a conditionally convergent series, and associativity and commutativity of addition fail.

## Cubic mean
Cubic mean of a set of values is the cube root of the AM of cubes. Given 3 numbers a, b, c, their cubic mean is `³√((a³+b³+c³)/3)`.

## Divergence test
Divergence test is about taking the limit of a series as the iterator (usually variable `n`) goes to infinity, so `lim {n→∞} aₙ = L`. If `L ≠ 0`, the series diverges. If `L = 0`, the test is inconclusive. Many series do diverge when the limit is 0, but not all. For one, harmonic series has the limit 0 but it still diverges. Sometimes, the divergence test is included as one of the conditions that a series must satisfy. A series is said to "pass" the divergence test when the test result come out as "inconclusive".

## Geometric mean
Any 3 consequtive terms of GP are related by geometric mean: in `a, b, c` sequence, term `b = √ac`. In general, the GM of any 3 numbers is `³√abc`.

## Geometric sequence
Geometric Progression (GP) is a sequence of numbers where the ratio of any two adjacent terms is constant, and called the common ratio. Each term in a GP is found by multiplying the previous one by the common ratio.

## Harmonic mean
The harmonic mean is the reciprocal of the arithmetic mean of the reciprocals. Any 3 consequtive terms of a Harmonic sequence are related by harmonic mean: in `a, b, c`, term `b = ((a⁻¹ + c⁻¹)/2)⁻¹`. In general, `((a⁻¹+b⁻¹+c⁻¹)/3)⁻¹` is the HM of any 3 numbers.

## Interval of convergence
In relation to Taylor polynomials, an interval of convergence (IOC) is a specific part of the domain of the modelled function over which the approximation (as a Taylor polynomial of some degree) accurately represents that function. Immediately outside that interval, the approximation usually rapidly diverges from the true values (of the modelled function), becomeing unusable. Within the interval, however, it is a very accurate representation.

## Norm
A norm is a function from a real or complex vector space to the ℝᐩ that behaves in certain ways like the distance from the origin: it commutes with scaling, obeys a form of the triangle inequality, and zero is only at the origin. In particular, the Euclidean distance in a Euclidean space is defined by a norm on the associated Euclidean vector space, called the Euclidean norm (magnitude or length of the vector). This norm can be defined as the square root of the inner product of a vector with itself.

## Partial sum of series
A partial sum of an infinite series is the summation of an initial segment of the series up to the term with the specified index. Since we cannot always find out the infinite sum of an infinite series, we can at least figure out the sum of the terms of an initial segment, which gives the finite sum of the series, aka a partial sum ("partial" because it is not the true sum obtained by summing up the entire series). The "true" infinite sum of the entire infinite series is denoted by `S` or `S∞`, where `∞` should be written as a subscript to imitate the form of partial sums, `Sₙ` (where `n` is the index of the final term). In fact, `Sₙ` is a general form - an example of a concrete partial sum is `S₉` which sums up the initial 9 terms, as denoted by `S₉ = Σ{n=1..9} aₙ`, where `aₙ` is the (original underlying) infinite series.

## Pythagorean means
The three classical Pythagorean means are the arithmetic mean (AM), the geometric mean (GM), and the harmonic mean (HM).

## Quadratic mean
Quadratic Mean or Root Mean Square (RMS) of a set of values is the square root of the set's mean square. Given 3 numbers a, b, c, RMS is `√((a²+b²+c²)/3)`.

## Radius of convergence
The interval of convergence is centered at the point called the center of the series, and it spans (in both directions around that point) as determined by the radius of convergence (ROC). An example of an ROC is R=1, which means the IOC is (-1, 1), if the center is at 0. The ROC can also be 0 in which case the IOC consists of a single point - the center point - so it is [C, C]. The ROC can be `∞` as well, in which case the IOC is (-∞, ∞), i.e. the entire set ℝ.

## Smooth function
A smooth function is a function that is
- continuous
- infinitely differentiable
- and its derivatives are smooth

A smooth function has continuous derivatives up to some desired order over some domain. This means we don't really need the function to be smooth everywhere but only over a specific interval; and the same goes for its derivatives. Graphically, a smooth function of a single variable can be plotted as a single continuous line with no abrupt bends or breaks. The graphs of polynomial functions are both continuous and smooth.

We need functions to be smooth in order to obtain their representations as Taylor series. Then, a finite partial sum consistutes a Taylor polynomial which approximates that function but it does it sufficiently accurately only over a specific interval of convergence.

## Sum-free sequence
A sum-free sequence is an increasing sequence of positive integers, such that no term can be represented as a sum of any subset of the preceding elements of the sequence. This differs from a *sum-free set*, where only pairs of sums must be avoided, but where those sums may come from the whole set rather than just the preceding terms. The powers of two is a sum-free sequence: each term in the sequence is one more than the sum of all preceding terms, and so cannot be represented as a sum of preceding terms.

## Sum of series
As with any infinite series, the sum of a series is defined to mean the limit of the partial sum of an initial segment.

## Sum of reciprocals
A set of positive integers is said to be *large* if the sum of its reciprocals diverges, and *small* if it converges.

A set of integers is said to be small if the sum of its reciprocals converges to a finite value. For instance, by the prime number theorem, the prime numbers are not small. Paul Erdős (1962) proved that every sum-free sequence is small, and asked how large the sum of reciprocals could be. For instance, the sum of the reciprocals of the powers of two (a geometric series) is 2.

## Taylor series
A Taylor series is an infinite power series that approximates a non-polynomial function exactly over the entire original domain. This is unlike a Taylor polynomial which is a partial sum of the Taylor series that approximates that function only over some specific interval.

## Taylor polynomial
A Taylor polynomial of an `n`-th degree is a finite partial sum of the first `n` terms of a Taylor series. While the entire infinite Taylor series approximates a non-polynomial function exactly, a Taylor polynomial of some degree approximates it only accurately within some interval of convergence. The more terms of the Taylor series we admit into a Taylor polynomial, the more accurate it becomes over a larger interval; e.g. a Taylor polynomial of the 4th degree is more accurate (especially near the edges of the interval) then a Taylor polynomial of the 3rd degree, and it has a larger interval of convergence.

## Unconditional convergence
In functional analysis, a series is unconditionally convergent if all reorderings of the series converge to the same value. In contrast, a series is conditionally convergent if it converges but different orderings do not all converge to that same value. Unconditional convergence is equivalent to absolute convergence in finite-dimensional vector spaces, but is a weaker property in infinite dimensions.
