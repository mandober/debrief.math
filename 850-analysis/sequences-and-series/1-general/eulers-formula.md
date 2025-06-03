# Eulers formula

- exponential function, `eˣ`
- *Eulers formula*, `eⁱˣ = cosx + isinx`
- basic trig functions
- power series

## Exponential function

The exponential function, in the long form `exp(x)` or just `eˣ`, is its own derivative and its own integral (up to a constant of integration). The latter should be repeated lest not forget the constant of integration `C` and the condition that `k` must not be zero: `∫ xᵏ dx = xᵏᐩ¹/k+1 + C` for `k≠0`.


The exponential function may be expressed or defined as a power series, which in sigma notation is `Σ{n=0..∞} xⁿ/n!`. Like for other functions, representing a function as a power series allows us to expand up to a number of terms thereby approaximating the original function very faithfully within some interval of the domain.

```js
// exponential function `exp` as power series
         ⎲∞    xⁿ
exp(x) = ⎳ₙ₌₀ ----
                n!

// expanding a few initial terms
      x⁰     x¹     x²     x³     x⁴     x⁵     x⁶     x⁷
eˣ = ---- + ---- + ---- + ---- + ---- + ---- + ---- + ---- + …
      0!     1!     2!     3!     4!     5!     6!     7!

              x²     x³     x⁴     x⁵     x⁶     x⁷
eˣ = 1 + x + ---- + ---- + ---- + ---- + ---- + ---- + …
              2      6      24     120   720    5040
```

The factorials come about due to the repeated differentiation of a high-power term, like a term `x⁷`, possibly with a coefficient, `c₇x⁷`. By repeatedly differentiating `x⁷` the power rule generates `7!`:

```js
x⁷                  // 0th derivative is the function itself
7x⁶                 // 1st derivative
6×7x⁵               // 2nd derivative
5×6×7x⁴             // 3rd derivative
4×5×6×7x³           // 4th derivative
3×4×5×6×7x²         // 5th derivative
2×3×4×5×6×7x  = 7!x // 6th derivative
1×2×3×4×5×6×7 = 7!  // 7th derivative
0                   // 8th and higher derivatives
```

When `x=1`, the series converges to `e¹`, i.e. to the Euler's constant `e` itself. In fact, the more terms we expand and add together, the better approximation we get, which in the case of the Euler's constant means more precision of `e` in the digits after the radix point (more digits after the radix will match the true value of` e`). Since `e` is an irrational number, it has no definitive (final or finite) value - it is only ever expressed with more or less precision. In practice, we don't need but a few acurate digits after the radix mark.

In general, the principle that we should follow in trying to understand statements such as the definition of `eˣ` is to pretend that it is a long polynomial, a polynomial of unbounded degree.

## Differentiating exponential function

We can differentiate the exponential function by first expanding it into a long polynomial form, and then differentiating it term-by-term.

```js
// (1) exponential function eˣ as a power series. xⁿ/n!
         ⎲∞    xⁿ
exp(x) = ⎳ₙ₌₀ ----
                n!

// (2) expanding it into a long polynomial form
                  x²     x³     x⁴     x⁵     x⁶     x⁷     x⁸
exp(x) = 1 + x + ---- + ---- + ---- + ---- + ---- + ---- + ---- + …
                  2!     3!     4!     5!     6!     7!     8!

// (3) differentiating term-by-term, each one obtains the form nxⁿ⁻¹/n!
 d                    2x     3x²    4x³    5x⁴    6x⁵    7x⁶
----exp(x) = 0 + 1 + ---- + ---- + ---- + ---- + ---- + ---- + …
 dx                   2!     3!     4!     5!     6!     7!

// (4) after simplification, each term gets the form xⁿ⁻¹/(n-1)!
 d                    x²     x³     x⁴     x⁵     x⁶
----exp(x) = 1 + x + ---- + ---- + ---- + ---- + ---- + …
 dx                   2!     3!     4!     5!     6!


exp(x) = Σ{n=0..∞} xⁿ／n!
exp′(x) = Σ{n=0..∞} nxⁿ⁻¹／n! = Σ{n=0..∞} xⁿ⁻¹／(n-1)!
```

Finding derivates of each term of a long polynomial gives us the terms, which after some cleanup and simplification, reveal that we get the exact series back. This proves that the exponential function is its own derivative. It makes no sense to repeat this to find the second derivative when the series remains the same after finding the first. Any n-order derivative of the exponential function is the exponential function, `exp⁽ⁿ⁾(x) = exp(x)`, no matter what `n` is.

The infinite power series remains the same although it has actually shifted one term to the left because the first term, 1, has disappeared by collapsing to 0. However, then the pattern from step (3) kicks in. Namely, each term that initially had the form `xⁿ/n!`, after differentiation, becomes `nxⁿ⁻¹/n!`. The pattern in question is the opportunity to cancel out the `n`'s in the nominator and the denomintor, since `n! = n×(n-1!)`. So each term obtains its final form `xⁿ⁻¹/(n-1)!`. Although this looks different then `xⁿ/n!`, it actually amounts to the series.

## Integrating exponential function

Similarly, to integrate `eˣ`, we first expand it into the polynomial form and then integrate it term-by-term.

```js
// (1) exponential function eˣ as a power series. xⁿ/n!
         ⎲∞    xⁿ
exp(x) = ⎳ₙ₌₀ ----
                n!

// (2) expanding it into a long polynomial form
                  x²     x³     x⁴     x⁵     x⁶     x⁷     x⁸
exp(x) = 1 + x + ---- + ---- + ---- + ---- + ---- + ---- + ---- + …
                  2!     3!     4!     5!     6!     7!     8!

// integrating eˣ (on a term-by-term basis)
             ⎛  x⁰     x      x²     x³     x⁴     x⁵     x⁶     x⁷      ⎞
∫ exp(x)dx = ⎜ ---- + ---- + ---- + ---- + ---- + ---- + ---- + ---- + … ⎟
             ⎝  0!     1!     2!     3!     4!     5!     6!     7!      ⎠

// it is more convenient to separate the coefficients:
             ⎛  1       1       1       1       1       1       1      ⎞
∫ exp(x)dx = ⎜ ---x⁰ + ---x¹ + ---x² + ---x³ + ---x⁴ + ---x⁵ + --- + … ⎟
             ⎝  0!      1!      2!      3!      4!      5!      6!     ⎠

// integration
        1   x¹    1   x²    1   x³    1   x⁴    1   x⁵    1   x⁶
F(x) = ---×--- + ---×--- + ---×--- + ---×--- + ---×--- + ---×--- + … + C
        0!  1     1!  2     2!  3     3!  4     4!  5     5!  6

// simplification
        x¹     x²     x³     x⁴     x⁵     x⁶     x⁷     x⁸
F(x) = ---- + ---- + ---- + ---- + ---- + ---- + ---- + ---- + … + C
        1!     2!     3!     4!     5!     6!     7!     8!



// initially, the terms had the form:
xⁿ／n! = 1／n! × xⁿ
// integrating, they gain the form:
1／n! × xⁿᐩ¹／(n+1) = xⁿᐩ¹／n!(n+1) = xⁿᐩ¹／(n+1)!
// we use the fact that:
n!(n+1) = (n+1)!





// integrating it term-by-term:
∫ 1 dx = x
∫ x dx = x²/2
∫ x²/2  dx = x³/3×5  = x³/6
∫ x³/6  dx = x⁴/4×6  = x⁴/24
∫ x⁴/24 dx = x⁵/5×24 = x⁵/120
…


∫ eˣ dx = eˣ - 1      // we get
∫ eˣ dx = eˣ - 1 + C  // oops forgot +C
∫ eˣ dx = eˣ + C - 1  // roll C and 1 into new constant C
∫ eˣ dx = eˣ + C      // in the end, eˣ is indeed its own integral
```

When we collect the antiderivatives what we get is 1 shy of `eˣ`, i.e. we are missing the first term `1 +`. So the resulting integral actually corresponds to `eˣ - 1`. Fortunatelly, as usual, we also forgot the constant of integration `C`! Thus, `∫ eˣ dx = eˣ - 1 + C`. And since `C + 1` is also a constant, we can roll these two constant into one, keep calling it `C`, so in the end we actually do get the exponential function - the exp function `eˣ` is indeed its own integral!

## Eulers formula

The Eulers formula relates applying the exponential function to the argument `ix`, where `i` is the imaginary value, `i = √-1`, equating it to the formula in terms of `cos` and `sin` functions.

`eⁱˣ = cosx + isinx`

```js
// exponential function eˣ as a power series
     ⎲∞    xⁿ
eˣ = ⎳ₙ₌₀ ----
            n!

// expanding the power series eⁱˣ
      ⎲∞   iⁿxⁿ
eⁱˣ = ⎳ₙ₌₀ -----
             n!

      i⁰x⁰    i¹x¹    i²x²     i³x³    i⁴x⁴    i⁵x⁵
eⁱˣ = ----- + ----- + ------ + ----- + ----- + ----- + …
       0!      1!      2!       3!     4!      5!

// raising 'i' to various powers cycles to the 4 results:
i⁰ = 1       i² = -1 // by def
i¹ = i       i³ = i²i = -1i = -i

// as mod, all congruent powers are 4n+k where n ∈ ℕ, k=0..3
/* i⁴ⁿᐩᵏ where n=0..∞, k=0..3 */

i⁴ ≡ i⁰ ≡ i⁴ⁿ   ≡  1 (mod 4)
i⁵ ≡ i¹ ≡ i⁴ⁿᐩ¹ ≡  i (mod 4)
i⁶ ≡ i² ≡ i⁴ⁿᐩ² ≡ -1 (mod 4)
i⁷ ≡ i³ ≡ i⁴ⁿᐩ³ ≡ -i (mod 4)

// simplifying with the above in mind
// we can reduce the polynomial into:

                x²    ix³     x⁴    ix⁵    ix⁶
eⁱˣ = 1 + ix - ---- - ---- + ---- + ---- - ---- + …
                2      3!     4!     5!     6!

/*
(1 i -1 -i    1 i -1 -i  …)
 ↓ ↓  ↓  ↓    ↓ ↓  ↓  ↓
(+ +  -  -    + +  -  -  …)
i.e. signs flip every two terms: (+ + - -)
*/

// now we can separate the real from the imaginary part
// which gives us exactly the cos and sin parts.

/* cos */
            x²     x⁴     x⁶     x⁸
cosx = 1 - ---- + ---- - ---- + ---- - …
            2!     4!     6!     8!

// sign flips every term: (+ - + -)

/* cos in sigma notation */
       ⎲∞         x²ⁿ
cosx = ⎳ₙ₌₀ (-1)ⁿ -----
                   (2n)!


/* sin */
              x³     x⁵     x⁷     x⁹
sinx = i(x - ---- + ---- - ---- + ---- - …)
              3!     5!     7!     9!

// sign flips every term: (+ - + -)

/* sin */
       ⎲∞          x²ⁿᐩ¹
sinx = ⎳ₙ₌₀ (-1)ⁿ -------
                   (2n+1)!



```

In the end, we got out the equations for `sin` and `cos` functions as power series.

When using this power series to represent the `cos` function, the first term (constant term, linear term) is `1`, so the graph is a horizontal line at y=1.

The second (quadratic) term of the series is `1 + x²/2` which is a concave down parabola whose vertex is at (0,1) which is a point shared with `cosx`. The dome of the parabola matches in a part the `cos` function.

When the third (quartic) term of the series is added, `1 + x²/2 - x⁴/4!`, we get almost a complete cycle of the `cos` function matched, after which the approximation diverges from the path that `cosx` takes very quickly.

The more terms we add, we get better and better approximation of the `cosx` function - we get more and more complete cos cycles. However, we'll never get a perfect resemblence.

The approximations of sin and cos by polynomials from a power series work best near 0. To approximate a large (e.g. large x-value) value of `cos`, we'd need to sum up many, many terms.

>Polynomials have themselves as Taylor series.

Polynomials have polynomial Taylor series. This is going to connect to some deep properties concerning polynomial approximation. Our strategy, therefore, for working with functions, is to think of Taylor expansion, not as a function itself, but as something like an operator, as something that takes as its input a function and returns as its output something that is in the form of a long polynomial, or better, a series. Why do we want to do this? Well, series thought of as long polynomials are simple to work with, whereas some functions can be obtuse and very difficult, maybe even unknown in a specific form. Taylor expansion helps us convert such objects into a form that is easier to work with.

In fact, some functions cannot be defined well except as a Taylor series, for example *Bessel's function* `J₀`.

```js
     ⎲∞            x²ⁿ
J₀ = ⎳ₙ₌₀ (-1)ⁿ ----------
                  2²ⁿ(n!)²

            x²        x⁴         x⁶         x⁸         x¹⁰         x¹²
J₀ = 1 - ------- + -------- - -------- + -------- - --------- + --------- - …
         2²(1!)²   2⁴×(2!)²   2⁶×(3!)²   2⁸×(4!)²   2¹⁰×(5!)²   2¹²×(6!)²
```

This lesson has given us a new definition - that of Taylor series, as well as a new perspective the idea that
expanding out a function into to a long
polinomial or series is advantageous
next time we'll consider the question of
how one can effectively compute these
Taylor series
