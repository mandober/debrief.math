# Eulers formula

- exponential function, `eˣ`
- Eulers formula, `eⁱˣ = cosx + isinx`
- basic trig functions
- power series

## Exponential function

The exponential function, `eˣ`, is its own derivative and its own integral (up to the constant integration).

```js
// exponential function eˣ as a power series
     ⎲∞    xⁿ
eˣ = ⎳ₙ₌₀ ----
            n!

      x⁰     x¹     x²     x³     x⁴     x⁵     x⁶     x⁷
eˣ = ---- + ---- + ---- + ---- + ---- + ---- + ---- + ---- + …
      0!     1!     2!     3!     4!     5!     6!     7!

              x²     x³     x⁴     x⁵     x⁶     x⁷
eˣ = 1 + x + ---- + ---- + ---- + ---- + ---- + ---- + …
              2      6      24     120   720    5040
```

### Differentiating exponential function

We can differentiate the exponential function by first expanding it its polynomial form and then differentiating it term-by-term.

```js
// term-by-term differentiation:
(c)′ = 0 where `c` is const
(0)′ = 0   (1)′ = 0    (6)′ = 0
(x)′ = 1   (1x)′ = 1   (4x)′ = 4

// (x¹/1!)′ = 1x⁰/1! = x⁰/0! = 1/1 = 1
(x²/2!)′ = 2x¹/2! = x¹/1! = x/1 = x
(x³/3!)′ = 3x²/3! = x²/2!
(x⁴/4!)′ = 4x³/4! = x³/3!
(x⁵/5!)′ = 5x⁴/5! = x⁴/4!
(xᵏ/k!)′ = kxᵏ⁻¹/k! = xᵏ⁻¹/(k-1)!

// Collecting these term we get the overall derivative
// which is the same polynomial we started from:
                3x²     4x³    5x⁴
(eˣ)′ = 1 + x + ---- + ---- + ---- + …
                 6      24    120
// thus
(eˣ)′ = eˣ
```

### Integrating exponential function

Similarly, to integrate `eˣ`, we first expand it into the polynomial form and then integrate it term-by-term.

```js
              x²     x³     x⁴     x⁵     x⁶     x⁷
eˣ = 1 + x + ---- + ---- + ---- + ---- + ---- + ---- + …
              2      6      24     120   720    5040

// integrating eˣ
∫ eˣ dx

// integrating it term-by-term:
∫ 1 dx = x
∫ x dx = x²/2
∫ x²/2  dx = x³/3×5  = x³/6
∫ x³/6  dx = x⁴/4×6  = x⁴/24
∫ x⁴/24 dx = x⁵/5×24 = x⁵/120
…

// Coolecting these antiderivatives we get the integral
               x²     x³     x⁴     x⁵
∫ eˣ dx = x + ---- + ---- + ---- + ---- + …
               2      6      24    120

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
