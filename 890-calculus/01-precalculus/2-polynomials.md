# Polynomials

## Factoring and roots

Given the expression `x² + 3x + 2`, one may ask "what are the values of `x` that make this expression 0?" Factoring gets us `x2 + 3x + 2 = (x + 2)(x + 1)`.

If x=−1 or x=−2, then one of the factors on the right becomes zero. Therefore, the whole must be zero. So, by factoring we have discovered the values of `x` that render the expression zero. These values are called *roots*.

In general, given a *quadratic polynomial* `px² + qx + r` that can be factored as `px² + qx + r = (ax + c)(bx + d)`, then `x = −c/a` and `x = −d/b` are roots of the original polynomial.

A special case to be on the look out for is the square difference, `a²−b²`, in which case we can always factor it as `(a+b)(a−b)`.

For example, consider `4x² − 9`. On initial inspection we would see that both `4x²` and 9 are squares of `2x` and 3, respectively. Applying the previous rule we have `4x² − 9 = (2x + 3)(2x − 3)`.

## The AC method

Another way of simplifying the process of factoring is using the AC method. Suppose that a quadratic polynomial has a formula of `x² + qx + r`. If there are numbers `a` and `b` that satisfy both `ab=r` and `a+b=q`, then the result of factoring `x² + qx + r` is `(x+a)(x+b)`.

## The quadratic formula

Given any quadratic equation `ax² + bx + c = 0` with a≠0, all solutions of the equation are given by the quadratic formula: `x = (−b ± √(b²−4ac))/2a`.

The value of `b²−4ac` will affect the number of real solutions of the equation:
- if `b²−4ac > 0` there are 2 real solutions to the equation
- if `b²−4ac = 0` there is only 1 real solution to the equation
- if `b²−4ac < 0` there are no real solutions to the equation

Finding the roots of a polynomial `ax² + bx + c` is equivalent to solving the equation `ax² + bx + c = 0`.

Example: Factor the polynomial `4x² + 7x − 2`.

We already know from the previous example that the polynomial has roots `x=1/4` and `x=−2`. Our factorization will take the form `C(x+2)(x−1/4)`.

All we have to do is set this expression equal to our polynomial and solve for the unknown constant `C`:

```js
C(x + 2)(x − 1/4) = 4x² + 7x − 2
C(x² -1⁄4x + 2x − 2⁄4) = 4x² + 7x − 2
C(x² + 7⁄4x − 1⁄2) = 4x² + 7x − 2
```

You can see that `C = 4` solves the equation. So the factorization is
```js
4x² + 7x − 2 =
4(x + 2)(x − 1⁄4) =
(x + 2)(4x − 1)
```

## Vieta's formulae

Vieta's formulae relate the coefficients of a polynomial to sums and products of its roots. It is very convenient because under certain circumstances when the sums and products of the quadratic's roots are provided, one does not require to solve the whole quadratic polynomial.

Vieta's formulae in quadratic polynomials: given any quadratic equation `ax² + bx + c = 0` (with a≠0), the roots `x₁`, `x₂` of the quadratic polynomial satisfy `x₁+x₂ = −b/a`, `x₁x₂ = c/a`

## Rational expressions

When we take the quotient of the two polynomials 
- `p(x) = aₙxⁿ + aₙ˗₁xⁿ⁻¹ + ⋯ + a₁x + a₀`
- `q(x) = bₙxⁿ + bₙ˗₁xⁿ⁻¹ + ⋯ + b₁x + b₀`

we obtain `p(x)/q(x)`, i.e.

```js
p(x)   aₙxⁿ + aₙ˗₁xⁿ⁻¹ + ⋯ + a₁x + a₀
---- = ------------------------------
q(x)   bₙxⁿ + bₙ˗₁xⁿ⁻¹ + ⋯ + b₁x + b₀
```

The ratio of two polynomials is called a *rational expression*.

Many times we'd like to simplify rational expressions. For example, say we are given `(x² − 1)/(x + 1)`. We may simplify this in the following way:

```js
(x² − 1) / (x + 1)
= (x + 1)(x − 1) / (x + 1)
= x − 1 // provided x ≠ −1
```

## Misc formulas

Some useful formulas for solving polynomial problems:
- a² − b² = (a − b)(a + b)

- `(a ± b)² = a² ± 2ab + b²`
-  (a + b)² = a² + 2ab + b²
-  (a - b)² = a² - 2ab + b²

- `(a ± b)³ = a³ ± 3a²b + 3ab² ± b³`
-  (a + b)³ = a³ + 3a²b + 3ab² + b³
-  (a - b)³ = a³ - 3a²b + 3ab² - b³

- `a³ ± b³ = (a ± b)(a² ∓ ab + b²)`
-  a³ - b³ = (a - b)(a² + ab + b²)
-  a³ + b³ = (a + b)(a² - ab + b²)

In general, for `aⁿ + bⁿ`, use *binomial theorem*; `n` is the row of Pascal's triangle that gives the coefficients in the expanded equation.

## Polynomial Long Division

Suppose we would like to divide one polynomial by another. The procedure is similar to long division of numbers.

We can use polynomial long division to factor a polynomial if we know one of the factors in advance.

For example, suppose we have a polynomial `P(x)` and we know that `r` is a root of `P`. If we perform polynomial long division using `P(x)` as the dividend and `(x−r)` as the divisor, we will obtain a polynomial `Q(x)` such that `P(x) = (x−r)Q(x)`, where the degree of `Q` is one less than the degree of `P`.

## Breaking up a rational function

Similar to the way we can convert an improper fraction into an integer plus a proper fraction, we can convert a rational fn `P(x)` whose numerator `N(x)` has degree `n` and whose denominator `D(x)` has degree `d`, with `n ≥ d`, into a polynomial plus a rational function whose numerator has degree `ν` and denominator has degree `δ`, with `ν < δ`.
Similar to the way we can convert an improper fraction into an integer plus a proper fraction, we can convert a rational fn `P(x)` whose numerator `N(x)` has degree `n` and whose denominator `D(x)` has degree `d`, with `n ≥ d`, into a polynomial plus a rational function whose numerator has degree `ν` and denominator has degree `δ`, with `ν < δ`.

Suppose that `N(x)` divided by `D(x)` has quotient `Q(x)` and remainder `R(x)`. That is `N(x) = D(x)Q(x) + R(x)`. Dividing both sides by `D(x)` gives 
`N(x)D(x) = Q(x) + R(x)/D(x)`. And `R(x)` will have degree less than `D(x)`.

(x-1)/(x-3) = 1 + 2/(x-3)

## Rational functions

https://en.wikibooks.org/wiki/Calculus/Rational_functions
https://tutorial.math.lamar.edu/Classes/Alg/GraphRationalFcns.aspx

**Rational function** is any function which can be defined by a *rational fraction*, i.e. an *algebraic fraction* such that both the numerator and the denominator are polynomials.

(Definition). A function `f(x)` is called a rational function if and only if it can be written in the form `f(x) = P(x)/Q(x)` where `P` and `Q` are polynomials in `x` and `Q` is not the zero polynomial. The domain of a function `f` is the set of all points `x` for which the denominator `Q(x)` is not zero.

Every polynomial function `f(x) = P(x)` is a trivially a rational function by setting `Q(x) = 1`. Functions that cannot be written in this form, such as `f(x) = sin(x)`, are not rational functions. The adjective "irrational" is not generally used for functions.

It can be proved that sum, product and quotient (except division by the zero polynomial which will cause the function to be undefined) of rational functions produce rational functions as well.

### Examples

Consider these functions
- f₁(x) = x²/x
- f₂(x) = x
- g(x) = π
- h(x) = tan(x)

Only `h` is not a rational function, even if we express it as `tan(x)/1`, because `tan(x)` is not a polynomial.

Is `f₁` = `f₂`? Although `x²/x = x`, the domains of functions `f₁` and `f₂` are different, because the domain of `f₁` is the set of all nonzero real numbers, while the domain of `f₂` is the set of all real numbers. Therefore, they are not equal as they have different doamins. When we are solving the function `f₁`, we have to record and propagate the fact that `x` cannot be 0, `x≠0`, even if we simplify `x²/x` to `x`. This means that `f₂` is continuous everywhere, while `f₁` has a hole at `x=0`.

The function `g` is compatible with these functions:
- [x] g₁(x) = 3π/3
- [x] g₂(x) = π/1
- []  g₃(x) = πx/x
- []  g₄(x) = 0π/0
- [x] g₅(x) = π²/π

It is not compatible with `g₃` because it has a restricted domain as `x≠0`. It is not compatible with `g₄` because `0π/0` = `0/0` is undefined (indeterminate form).

### Example 2

The rational function `f(x) = (x³ − 2x) / 2(x² − 5)` is not defined at `x² = 5` i.e. at `x = ±√5`. It is asymptotic to `y = x/2`, meaning it gets closer and closer to `y = x/2` as `x` approaches `±∞`.

### Example 3

A rational function `f(x) = (x² + 2)/(x² + 1)` is defined if its domain is ℝ.

However, it is not defined for domain ℂ, since if `x` were a square root of −1 (imaginary unit `i` or its negative `-i`), then its evaluation would give division by zero as `1/0`, which is undefined.

f(i) = (i² + 2)(i² + 1) = (−1 + 2)(−1 + 1) = 1/0
