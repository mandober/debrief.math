# Taylor series

Various functions expressed as Taylor series and Taylor polynomials.

## Taylor series

General form of Taylor series.

```js
// Taylor series (general form)
       ⎲∞  f⁽ⁿ⁾(a)
f(x) = ⎳ₙ₌₀------- (x-a)ⁿ
              n!

// expanding a few terms (no simplification)
       ⎲∞   f⁽ⁿ⁾(a)         f⁽⁰⁾(a)         f⁽¹⁾(a)         f⁽²⁾(a)
f(x) = ⎳ₙ₌₀ -------(x-a)ⁿ = -------(x-a)⁰ + -------(x-a)¹ + -------(x-a)² + ⋯
                n!              0!              1!              2!

// expanding a few terms (simplified)
       ⎲∞   f⁽ⁿ⁾(a)                                f⁽²⁾(a)
f(x) = ⎳ₙ₌₀ -------(x-a)ⁿ = f(a) + f⁽¹⁾(a)(x-a)¹ + -------(x-a)² + ⋯
                n!                                     2!


// simplified
       ⎲∞  f⁽ⁿ⁾(a)                f′(a)         f′′(a)         f′′′(a)
f(x) = ⎳ₙ₌₀-------(x-a)ⁿ = f(a) + -----(x-a) + -----(x-a)² + -----(x-a)³ + ⋯
               n!                    1!           2!            3!

// or
              f′(a)         f′′(a)         f′′′(a)
f(x) = f(a) + -----(x-a) + -----(x-a)² + -----(x-a)³ + …
                1!           2!            3!
```

where
- `f` function we are modelling as a Taylor series/polynomial
- `x` input values
- `a` an x-value about which we are approximating `f`
- `f⁽⁰⁾` is the 0th derivative of `f`, i.e. `f` itself
- `f⁽¹⁾` or `f′` is the 1st derivative of `f`
- `f⁽²⁾` or `f′′` is the 2nd derivative of `f`
- `f⁽³⁾` or `f′′′` is the 3rd derivative of `f`
- `f⁽ⁿ⁾` is the `n`th derivative of `f`

## Maclaurin series

Maclaurin series is a TS with `a=0`.

```js
// Maclaurin series (general form)
       ⎲∞  f⁽ⁿ⁾(a)
f(x) = ⎳ₙ₌₀------- xⁿ
              n!
```


## Taylor polynomial

```js
// Taylor polynomial of k-th degree (partial sum of TS up to k-th term)
        ⎲ᵏ  f⁽ⁿ⁾(a)
Tₖ(x) = ⎳ₙ₌₀------- (x-a)ⁿ
               n!

        ⎲ᵏ  f⁽ⁿ⁾(a)
Tₖ(x) = ⎳ₙ₌₀------- (x-a)ⁿ = f(a) + f⁽¹⁾(a)(x-a) + ⋯ + f⁽ᵏ⁾(a)(x-a)ᵏ/k!
               n!

/* Taylor polynomials */
// Taylor polynomial of 0th degree: constant approx
T₀(x) = f(x)
// Taylor polynomial of 1st degree: linear approx
T₁(x) = f(x) + f⁽¹⁾(a)(x-a)
// Taylor polynomial of 2nd degree: quadratic approx
T₂(x) = f(x) + f⁽¹⁾(a)(x-a) + f⁽²⁾(a)(x-a)²/2
// Taylor polynomial of 3rd degree: cubic approx
T₃(x) = f(x) + f⁽¹⁾(a)(x-a) + f⁽²⁾(a)(x-a)²/2! + f⁽³⁾(a)(x-a)³/3!
```

## Exponential function

Exponential function, `exp(x) = eˣ`, as a Taylor series.

```js
// Taylor series of function exp(x)
         ⎲∞    xⁿ
exp(x) = ⎳ₙ₌₀ ----
                n!

// expanding a few terms
         ⎲∞
exp(x) = ⎳ₙ₌₀ xⁿ/n! = 1 + x + 1/2! x² + 1/3! x³ + 1/4! x⁴ + 1/5! x⁵ + ⋯

// expanding a few terms
         ⎲∞
exp(x) = ⎳ₙ₌₀ xⁿ/n! = 1 + x + x²/2! + x³/3! + x⁴/4! + x⁵/5! + ⋯


/* Taylor polynomials of function exp(x) */

// Taylor polynomial of 0th degree: constant approximation
T₀(x) = 1
// Taylor polynomial of 1st degree: linear approximation
T₁(x) = 1 + x
// Taylor polynomial of 2nd degree: quadratic approximation
T₂(x) = 1 + x + x²/2
// Taylor polynomial of 3rd degree: cubic approximation
T₃(x) = 1 + x + x²/2 + x³/3!
// Taylor polynomial of 4th degree: quartic approximation
T₄(x) = 1 + x + x²/2! + x³/3! + x⁴/4!
```

## Trig functions

Hyperbolic function as Taylor series differ from their trig pairs by not having alternating-sign terms. `sin(x)` and `sinh(x)` are the same except for the alternating sign in the former. And similarly for `cos(x)` and `cosh(x)`.

```js
/* Trig */

         ⎲∞         x²ⁿ
cos(x) = ⎳ₙ₌₀ (-1)ⁿ -----
                     (2n)!

         ⎲∞          x²ⁿᐩ¹
sin(x) = ⎳ₙ₌₀ (-1)ⁿ -------
                     (2n+1)!

/* Hyperbolic */

          ⎲∞    x²ⁿ
cosh(x) = ⎳ₙ₌₀ ------
                 (2n)!

          ⎲∞    x²ⁿᐩ¹
sinh(x) = ⎳ₙ₌₀ --------
                 (2n+1)!

/* Derivative of cosh as Taylor series */

           ⎲∞    x²ⁿᐩ¹
cosh′(x) = ⎳ₙ₌₀ --------
                  (2n+1)!

// Derivative of cosh as Taylor series needs to
// expand as odd-degree terms starting with x.


/* Derivative of sinh as Taylor series */

           ⎲∞     x²ⁿ
sinh′(x) = ⎳ₙ₌₀ -------
                  (2n)!

// Derivative of sinh as Taylor series needs to
// expand as even-degree terms starting with 1.
```
