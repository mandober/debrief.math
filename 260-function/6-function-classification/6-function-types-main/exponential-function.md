# Exponential function

https://en.wikipedia.org/wiki/Exponential_function

## Summary

- Function: exp(x) = eˣ
- Definitions:
  - product limit: `lim{n→∞} (1+x/n)ⁿ`
  - Talor series: `Σ{n=0..∞} xⁿ/n!`
  - Inverse of logarithm integral
- Domain and range
  - domain: ℝ or ℂ
  - range: x ∈ ℝ ⇒ (0, ∞), i.e. x ≥ 0
  - range: x ∈ ℂ ⇒ ℂ∖{0}, i.e. x ≠ 0
- Specific values
  - exp(0) = 1
  - exp(1) = e
- Fixpoints
  - `-Wₙ(-1)` (Lambert W function) for n ∈ ℤ
- Related functions
  - reciprocal: exp(-x)
  - inverse: `ln(x)`
- Derivative: exp′(x) = exp(x)
- Antiderivative: ∫ exp(x) dx = `exp(x) + C`
- As a series:
  - As a Taylor series: `Σ{n=0..∞} xⁿ/n!`
- Graph
  - x-intercept: ∅
  - y-intercept: (0,1)
  - h-asymptotes: x-axis
- Parity: neither odd nor even
- Monotonicity: (-∞, ∞) increasing



## Exponential function

The exponential function is the unique real function which maps zero to one and has a derivative everywhere equal to its value.

The exponential of a variable ⁠`x`⁠ is denoted ⁠`exp(x)` or ⁠`eˣ`⁠, with the two notations used interchangeably.

It is called exponential because its argument can be seen as an exponent to which a constant number e ≈ 2.718, the base, is raised. There are several other definitions of the exponential function, which are all equivalent although being of very different nature.

The exponential function converts sums to products: it maps the additive identity 0 to the multiplicative identity 1, and the exponential of a sum is equal to the product of separate exponentials, ⁠`exp(x+y) = exp(x)⋅exp(y)`.

The inverse of `exp` is the function `ln`. The natural logarithm, ⁠`ln`⁠⁠, converts products to sums: ⁠`ln(x⋅y) = ln(x) + ln(y)⁠`.

The exponential function is occasionally called the *natural exponential function*, matching the name natural logarithm, to distinguish it from other exponential functions. These functions have the form ⁠`f(x) = bˣ`⁠, which is exponentiation with a fixed base ⁠`b`⁠.

More generally, and especially in applications, functions of the general form ⁠`f(x) = abˣ`⁠ are also called exponential functions. They grow or decay exponentially in that the rate that ⁠`f(x)`⁠ changes when ⁠`x`⁠ is increased is proportional to the current value of ⁠`f(x)`⁠.

The exponential function, `exp`, can be generalized to accept complex args. This reveals relations between multiplication of complex numbers, rotations in complex plane, and trigonometry. Euler's formula ⁠`exp(iθ) = cos(θ) + isin(θ)⁠` expresses and summarizes these relations.

The exponential function can be even further generalized to accept other types of arguments, such as matrices and elements of Lie algebras.

## Contents

- 1. Graph
- 2. Definitions and fundamental properties
  - 2.1. Differential equation
  - 2.2. Inverse of natural logarithm
  - 2.3. Power series
  - 2.4. Functional equation
  - 2.5. Limit of integer powers
  - 2.6. Properties
- 3. General exponential functions
  - 3.1. In applications
  - 3.2. Equivalence proof
- 4. Compound interest
- 5. Differential equations
- 6. Complex exponential
  - 6.1. Relationship with trigonometry
  - 6.2. Plots
- 7. Matrices and Banach algebras
- 8. Lie algebras
- 9. Transcendency
- 10. Computation
  - 10.1. Continued fractions
- 11. See also
- 12. Notes
- 13. References
- 14. External links

## 1. Graph

The graph of `y = eˣ` is upward-sloping, and increases faster than every power of ⁠`x`⁠.

The graph always lies above the x-axis, but becomes arbitrarily close to it for large negative `x`; thus, the *x-axis is a horizontal asymptote*. The fact that its derivative is `exp′(x) = exp(x)` means that the slope of the tangent to the graph at each point is equal to its height (its y-coordinate) at that point.

## 2. Definitions and fundamental properties

See also: Characterizations of the exponential function
https://en.wikipedia.org/wiki/Characterizations_of_the_exponential_function

There are several equivalent definitions of the exponential function, although of very different nature.

### 2.1 Differential equation

One of the simplest definitions is:
>The exponential function is the unique differentiable function that equals its derivative, and takes the value 1 for the value 0 of its variable.

This "conceptual" definition requires a uniqueness proof and an existence proof, but it allows an easy derivation of the main properties of the exponential function.

Uniqueness: If ⁠`f(x)`⁠ and ⁠`g(x)`⁠ are two functions satisfying the above definition, then the derivative of `f/g`⁠ is zero everywhere because of the quotient rule. It follows that ⁠`f/g`⁠ is constant; this constant is 1 since ⁠`f(0) = g(0) = 1`⁠.

Existence is proved in each of the two following sections.

### 2.2 Inverse of natural logarithm

The exponential function is the inverse function of the natural logarithm. The inverse function theorem implies that the natural logarithm has an inverse function, that satisfies the above definition. This is a first proof of existence. Therefore, one has `ln(exp(x)) = x`, `exp(ln(y)) = y` for every real number `x` and every positive real number `y`.

### 2.3 Power series

The exponential function is the sum of the power series.

As a Taylor series: `Σ{n=0..∞} xⁿ/n!`.

This series is absolutely convergent for every `x` per the ratio test. So, the derivative of the sum can be computed by term-by-term differentiation, and this shows that the sum of the series satisfies the above definition.

This is a second existence proof, and shows, as a byproduct, that the exponential function is defined for every ⁠`x`⁠, and is everywhere the sum of its Maclaurin series.

### 2.4 Functional equation

The exponential satisfies the functional equation: 

    exp(x+y) = exp(x)⋅exp(y)

This results from the uniqueness and the fact that the function 

    f(x) = exp(x+y) / exp(y) 

satisfies the above definition.

It can be proved that a function that satisfies this functional equation has the form ⁠

    x ↦ exp(cx)⁠

if it is either continuous or monotonic. It is thus differentiable, and equals the exponential function if its derivative at 0 is 1.

### 2.5 Limit of integer powers

The exponential function is the limit, as the integer `n` goes to infinity,

    lim{n→∞} (1+x/n)ⁿ

By continuity of the logarithm, this can be proved by taking logarithms and proving

    lim{n→∞} ln(1+x/n)ⁿ = lim{n→∞} n ln(1+x/n)

for example with Taylor's theorem.

### 2.6 Properties

*Reciprocal*: The functional equation implies ⁠`eˣe⁻ˣ = 1`⁠. Therefore ⁠`eˣ ≠ 0`⁠ for every ⁠`x`⁠ and `1/eˣ = e⁻ˣ`.

*Positiveness*: `eˣ > 0`⁠ for every real number ⁠`x`⁠. This results from the intermediate value theorem, since ⁠`e⁰ = 1`⁠ and, if one would have ⁠`eˣ < 0`⁠ for some ⁠`x`⁠, there'd be an ⁠`y`⁠ such that ⁠`eʸ = 0`⁠ between ⁠0⁠ and `x`⁠. Since the exponential function equals its derivative, this implies that the exponential function is monotonically increasing.

*Extension* of exponentiation to positive real bases: Let `b` be a positive real number. The exponential function and the natural logarithm being the inverse each of the other, one has `b = exp(ln(b))`. If `n` is an integer, the functional equation of the logarithm implies

    bⁿ = exp(ln(bⁿ)) = exp(n⋅ln(b))

Since the right-most expression is defined if `n` is any real number, this allows defining ⁠`bˣ`⁠ for every positive real number b and every real number x:

    bˣ = exp(x⋅ln(b))

In particular, if `b` is the Euler's number `e =  exp(1)`, one has `ln(e) = 1` (inverse function) and thus `eˣ = exp(x)`. This shows the equivalence of the two notations for the exponential function.

## 3. General exponential functions

A function is commonly called *an exponential function* (with an indefinite article) if it has the form ⁠`x ↦ bˣ`⁠, that is, if it is obtained from exponentiation by fixing the base and letting the exponent vary.

More generally and especially in applied contexts, the term expxonential function is commonly used for functions of the form ⁠`f(x) = abˣ`⁠. This may be motivated by the fact that, if the values of the function represent quantities, a change of measurement unit changes the value of ⁠`a`⁠, and so, it is nonsensical to impose ⁠`a=1⁠`.

These most *general exponential functions* are the differentiable functions that satisfy the following equivalent characterizations:
- `⁠f(x) = abˣ`⁠ for every ⁠`x`⁠ and some constants ⁠`a,b > 0`
- ⁠`f(x) = aeᵏˣ`⁠ for every ⁠`x`⁠ and some constants ⁠`a`⁠ and ⁠`k`
- The value of `f′(x)/f(x)` is independent of `x`
- For every `d`, the value of `f(x+d)/f(x)` is independent of `x`; 
  i.e. `f(x+d)/f(x) = f(y+d)/f(y)` for every `x` and `y`.

The base of an exponential function is the base of the exponentiation that appears in it when written as ⁠`x → abˣ`⁠, namely ⁠`b`⁠. The base is ⁠`eᵏ`⁠ in the second characterization, `exp(f′(x)/f(x))` in the third one, and `(f(x+d)/f(x))^1/d` in the last one.

### 3.1. In applications

The last characterization is important in empirical sciences, as allowing a direct experimental test whether a function is an exponential function.

Exponential growth or exponential decay-where the variable change is proportional to the variable value-are thus modeled with exponential functions. Examples are unlimited population growth leading to Malthusian catastrophe, continuously compounded interest, and radioactive decay.

If the modeling function has the form ⁠`x ↦ aeᵏˣ`,⁠ or, equivalently, is a solution of the differential equation ⁠`y′ = ky`⁠, the constant ⁠`k`⁠ is called, depending on the context, the decay constant, disintegration constant, rate constant, or transformation constant.

### 3.2. Equivalence proof

## 4. Compound interest

## 5. Differential equations

## 6. Complex exponential
### 6.1. Relationship with trigonometry
### 6.2. Plots

## 7. Matrices and Banach algebras

## 8. Lie algebras

## 9. Transcendency

## 10. Computation

The Taylor series definition is generally efficient for computing (an approximation of) `eˣ`. However, when computing near the argument x=0, the result will be close to 1, and computing the value of the difference `eˣ-1` with floating-point arithmetic may lead to the loss of (possibly all) significant figures, producing a large relative error, possibly even a meaningless result.

Following a proposal by William Kahan, it may thus be useful to have a dedicated routine, often called `expm1`, which computes `eˣ-1` directly, bypassing computation of `eˣ`. For example, one may use the Taylor series with the first term (1) moved to the left side, so it is `exp(x) - 1 = x + x²/2! + x³/3! + ⋯ + xⁿ/n!`.

In addition to base e, the IEEE 754-2008 standard defines similar exponential functions near 0 for base 2 and 10: `2ˣ−1` and `10ˣ−1`.

A similar approach has been used for the logarithm, `log1p`.

An identity in terms of the hyperbolic tangent,

  expm1(x) = eˣ−1 = 2tanh(x/2) / 1−tanh(x/2)

gives a high-precision value for small values of x on systems that do not implement `expm1(x)`.


### 10.1. Continued fractions

The exponential function can also be computed with continued fractions.

A continued fraction for `eˣ` can be obtained via an identity of Euler:

(...)
