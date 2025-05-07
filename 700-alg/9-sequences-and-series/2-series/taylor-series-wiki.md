# Taylor series

https://en.wikipedia.org/wiki/Taylor_series

The **Taylor series** (or **Taylor expansion**) of a function is an infinite sum of terms that are expressed in terms of the function's *derivatives* at a single point (usually this point is denoted by `a`). For most common cases, the function and the sum of its Taylor series are equal near this point (`a`).

Taylor series are named after Brook Taylor, who introduced them in 1715. A Taylor series is also called a *Maclaurin series* when 0 is the point where the derivatives are considered, after Colin Maclaurin, who made extensive use of this special case of Taylor series in the 18th century.

The partial sum formed by the first `n+1` terms of a Taylor series is a polynomial of degree `n` that is called the *nth Taylor polynomial* of the function. *Taylor polynomials* are approximations of the modelled function, which become generally more accurate as `n` increases. *Taylor's theorem* gives quantitative estimates on the error introduced by the use of such approximations.

If the Taylor series of a function is convergent, its sum is the limit of the infinite sequence of the Taylor polynomials. A function may differ from the sum of its Taylor series, even if its Taylor series is convergent.

A function is *analytic at a point `x`* if it is equal to the sum of its Taylor series in some open interval containing `x`. This implies that the function is analytic at every point of the interval.

## Contents

- 1. Definition
- 2. Examples
- 3. History
- 4. Analytic functions
- 5. Approximation error and convergence
  - 5.1. Generalization
- 6. List of Maclaurin series of some common functions
  - 6.1. Exponential function
  - 6.2. Natural logarithm
  - 6.3. Geometric series
  - 6.4. Binomial series
  - 6.5. Trigonometric functions
  - 6.6. Hyperbolic functions
  - 6.7. Polylogarithmic functions
  - 6.8. Elliptic functions
- 7. Calculation of Taylor series
  - 7.1. First example
  - 7.2. Second example
  - 7.3. Third example
- 8. Taylor series as definitions
- 9. Taylor series in several variables
  - 9.1. Second-order Taylor series in several variables
  - 9.2. Example
- 10. Comparison with Fourier series
- 11. See also
- 12. Notes
- 13. References
- 14. External links

## 1. Definition

The Taylor series of a real-valued function `f(x)` that is infinitely differentiable at a real number `a` is the power series

```js
 ∞
⎲ f⁽ⁿ⁾(a)                 f′(a)          f′′(a)           f′′′(a)
⎳ ------- (x-a)ⁿ = f(a) + ----- (x-a) + ------ (x-a)² + ------ (x-a)³ + …
ⁿ⁼⁰   n!                     1!            2!              3!
```

The function `f⁽ⁿ⁾(a)` denotes the `n`-th derivative of `f` evaluated at the point `a`. The derivative of order zero of `f` is defined to be `f` itself, and `(x−a)⁰` and `0!` are both defined to be 1.

This series can be written by using sigma notation, as in the right side formula. With `a=0`, the Maclaurin series takes the form:

```js
 ∞
⎲ f⁽ⁿ⁾(0)                 f′(0)         f′′(0)          f′′′(0)
⎳ ------- (x-0)ⁿ = f(0) + ----- (x-0) + ------ (x-0)² + ------ (x-0)³ + …
ⁿ⁼⁰   n!                     1!            2!              3!

 ∞
⎲ f⁽ⁿ⁾(0)             f′(0)     f′′(0)      f′′′(0)
⎳ ------- xⁿ = f(0) + ----- x + ------ x² + ------ x³ + …
ⁿ⁼⁰   n!                 1!        2!          3!
```

## Examples

The Taylor series of any polynomial is the polynomial itself.

The Maclaurin series of ⁠`1/1−x`⁠ is the geometric series

    1 + x + x² + x³ + ⋯

By substituting `x` for `1−x`, the Taylor series of ⁠`1/x⁠` at `a=1` is

    1 − (x−1) + (x−1)² − (x−1)³ + ⋯

Integrating this Maclaurin series, we find the Maclaurin series of `ln(1−x)`

    -x -1⁄2x² - 1⁄3x³ - 1⁄4x⁴ - ⋯

The corresponding Taylor series of `ln x` at `a = 1` is

    (x-1) -1⁄2(x-1)² + 1⁄3(x-1)³ - 1⁄4(x-1)⁴ + ⋯

and more generally, the corresponding Taylor series of `ln x` at an arbitrary but nonzero point `a` is:

```js
          1            1   (x-a)²
ln(a) + ----- (x-a) - ---- ------ + ⋯
          a            a²    2
```

The Maclaurin series of the exponential function `eˣ` is

```js
               ∞                 ∞
              ⎲  e⁽ᵏ⁾(0)       ⎲  xᵏ
exp(x) = eˣ = ⎳ -------- xᵏ =  ⎳ ----
              ᵏ⁼⁰    k!         ᵏ⁼⁰  k!

                       x²     x³     x⁴     x⁵
exp(x) = eˣ = 1 + x + ---- + ---- + ---- + ---- + ⋯
                       2!     3!     4!     5!
```

The above expansion holds because the derivative of `eˣ` with respect to `x` is also `eˣ`, and `e⁰` equals 1. This leaves the terms `(x − 0)ⁿ` in the numerator and `n!` in the denominator of each term in the infinite sum.

## History

The ancient Greek philosopher Zeno of Elea considered the problem of summing an infinite series to achieve a finite result, but rejected it as an impossibility; the result was Zeno's paradox. Later, Aristotle proposed a philosophical resolution of the paradox, but the mathematical content was apparently unresolved until taken up by Archimedes, as it had been prior to Aristotle by the Presocratic Atomist Democritus. It was through Archimedes's method of exhaustion that an infinite number of progressive subdivisions could be performed to achieve a finite result. Liu Hui independently employed a similar method a few centuries later.

In the 14th century, the earliest examples of specific Taylor series (but not the general method) were given by Indian mathematician Madhava of Sangamagrama. Though no record of his work survives, writings of his followers in the Kerala school of astronomy and mathematics suggest that he found the Taylor series for the trigonometric functions of sine, cosine, and arctangent (see Madhava series). During the following two centuries his followers developed further series expansions and rational approximations.

In late 1670, James Gregory was shown in a letter from John Collins several Maclaurin series (`sin(x)`, `cos(x)`, `arcsin(x)` and `x⋅cot(x)`) derived by Isaac Newton, and told that Newton had developed a general method for expanding functions in series.

Newton had in fact used a cumbersome method involving long division of series and term-by-term integration, but Gregory did not know it and set out to discover a general method for himself.

In 1671, Gregory discovered something like the general Maclaurin series and sent a letter to Collins including series for
- `arctan(x)`
- `tan(x)`
- `sec(x)`
- `ln(sec(x))`         integral of tan
- `ln(tan1⁄2(1⁄2π + x))` integral of sec, inverse Gudermannian function
- `arcsec(√2eˣ)`
- `2 arctan(eˣ − 1⁄2π)` the Gudermannian function

However, thinking that he had merely redeveloped a method by Newton, Gregory never described how he obtained these series, and it can only be inferred that he understood the general method by examining scratch work he had scribbled on the back of another letter from 1671.

In 1691-1692, Isaac Newton wrote down an explicit statement of the Taylor and Maclaurin series in an unpublished version of his work "De Quadratura Curvarum". However, this work was never completed and the relevant sections were omitted from the portions published in 1704 under the title "Tractatus de Quadratura Curvarum".

It was not until 1715 that a general method for constructing these series for all functions for which they exist was finally published by Brook Taylor, after whom the series are now named.

The Maclaurin series was named after Colin Maclaurin, a Scottish mathematician, who published a special case of the Taylor result in the mid-18th century.

## Analytic functions

https://en.wikipedia.org/wiki/Analytic_function

If `f (x)` is given by a convergent power series in an open interval on the real line centred at `b`, it is said to be analytic in this region.

Thus for `x` in this region, `f` is given by a convergent power series

```js
        ∞
       ⎲
f(x) = ⎳ aₙ(x - b)ⁿ
       ⁿ⁼⁰
```

Differentiating by `x` the above formula `n` times, then setting `x=b` gives:

```js
f⁽ⁿ⁾(b)
------- = aₙ
  n!
```

and so the power series expansion agrees with the Taylor series.

>A function is analytic in an open interval centered at `b` iff its Taylor series converges to the value of the function at each point of the interval.

If f (x) is equal to the sum of its Taylor series for all x in the complex plane, it is called entire. The polynomials, exponential function ex, and the trigonometric functions sine and cosine, are examples of entire functions. Examples of functions that are not entire include the square root, the logarithm, the trigonometric function tangent, and its inverse, arctan. For these functions the Taylor series do not converge if x is far from b. That is, the Taylor series diverges at x if the distance between x and b is larger than the radius of convergence. The Taylor series can be used to calculate the value of an entire function at every point, if the value of the function, and of all of its derivatives, are known at a single point.

Uses of the Taylor series for analytic functions include:
- The partial sums (the Taylor polynomials) of the series can be used as approximations of the function. These approximations are good if sufficiently many terms are included.
- Differentiation and integration of power series can be performed term by term and is hence particularly easy.
- An analytic function is uniquely extended to a holomorphic function on an open disk in the complex plane. This makes the machinery of complex analysis available.
- The (truncated) series can be used to compute function values numerically, (often by recasting the polynomial into the Chebyshev form and evaluating it with the Clenshaw algorithm).
- Algebraic operations can be done readily on the power series representation; for instance, Euler's formula follows from Taylor series expansions for trigonometric and exponential functions. This result is of fundamental importance in such fields as harmonic analysis.
- Approximations using the first few terms of a Taylor series can make otherwise unsolvable problems possible for a restricted domain; this approach is often used in physics.

## Approximation error and convergence

Main article: Taylor's theorem
https://en.wikipedia.org/wiki/Taylor%27s_theorem



## Generalization


## List of Maclaurin series of some common functions

See also: List of mathematical series
https://en.wikipedia.org/wiki/List_of_mathematical_series

Σ(n=0, 5, 1÷(1-x))
