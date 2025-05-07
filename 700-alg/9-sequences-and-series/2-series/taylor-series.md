# Taylor Series

https://www.youtube.com/watch?v=fUbBKN70Ag8&list=PLKc2XOQp0dMwj9zAXD5LlWpriIXIrGaNb&index=5

## Functions as Taylor series

Every resonable function can be represented as a Taylor series

```js
/* Taylor series */
       ⎲∞
f(x) = ⎳ᵢ₌₀ cᵢxⁱ = c₀x⁰ + c₁x¹ + c₂x² + …  // for constants cᵢ

/* Taylor series at x=0 */
       ⎲∞  f⁽ᵏ⁾(0)
f(0) = ⎳  -------- xᵏ
       ᵏ⁼⁰    k!


// k-th coefficient of f(x), cₖ, is equal to the k-th derivative
// of f(x) evaluated at x=0 (vertical line) and divided by fac(k)
      f⁽ᵏ⁾(0)     1   dᵏf   |
cₖ = --------- = ---- ---- |
        k!        k!  dxᵏ  |₀
```

## Polynomials as Taylor series

Polynomials have the polynomial Taylor series, i.e. polynomials can be expressed as Taylor series. A polynomial that is run through the Taylor series sigma generator ends up the same - the same polynomial is produced.

```js
// Taylor series at x=0
       ⎲∞  f⁽ᵏ⁾(0)
f(0) = ⎳  -------- xᵏ
       ᵏ⁼⁰    k!

       f⁽⁰⁾(0)      f⁽¹⁾(0)    f⁽²⁾(0)     f⁽³⁾(0)
f(0) = -------x⁰ + -------x¹ + -------x² + -------x³ + …
          0!           1!         2!          3!


// a polynomial
f(x) = 5 - x + 2x² + x³

// 0th derivative is fn itself
f⁽⁰⁾(x) = f(x)
// 0th derivative evaluated at x=0
f⁽⁰⁾(0) = f(0) = 5 - 0 + 2(0)² + 0³ = 5

// 1st derivative
f⁽¹⁾(x) = -1 + 4x + 3x²
// 1st derivative evaluated at x=0
f⁽¹⁾(0) = -1 + 4(0) + 3(0)² = -1

// 2nd derivative
f⁽²⁾(x) = 4 + 6x
// 2nd derivative evaluated at x=0
f⁽²⁾(0) = 4 + 6(0) = 4

// 3rd derivative
f⁽³⁾(x) = 6
// 3rd derivative evaluated at x=0
f⁽³⁾(0) = 6

// 4th and higher derivatives are 0
f⁽⁴⁾(x) = 0
// 4th and higher derivative evaluate at x=0 to 0
f⁽⁴⁾(0) = 0

// now we assemble the terms of the Taylor series
                           f⁽²⁾(0)     f⁽³⁾(0)
f(0) = f(0) + f⁽¹⁾(0) x¹ + -------x² + -------x³ + 0 + 0 + …
                              2!          3!

// we get back exactly the same function (polynomial)
f(0) = 5 - 1x + 4x²/2 + 6x³/6 = 5 - x + 2x² + x³
```

## Calculating with Taylor series

Some functions are easier to work with when represented as Taylor series. For example, `1/x cos(x²)`. We could expand it similarly to the expansion of the `cos` function as Taylor series, but we can also work with the sigma notation directly.

```js
/* sin */
       ⎲∞          x²ⁿᐩ¹
sinx = ⎳ₙ₌₀ (-1)ⁿ -------
                   (2n+1)!

// we have the function
f(x) = 1/x cos(x²)
1/x = x⁻¹
//     ↓                  ↓
           ⎲∞          (x²)²ⁿᐩ¹
f(x) = x⁻¹ ⎳ₙ₌₀ (-1)ⁿ ----------
                       (2n+1)!

/* f(x) = 1/x cos(x²) as Taylor series */
       ⎲∞          x⁴ⁿᐩ¹
f(x) = ⎳ₙ₌₀ (-1)ⁿ --------
                    (2n+1)!
```

## Hyperbolic trig functions as Taylor series

### cosh as Taylor series

Normally, `cosh` is defined in terms of `exp` function, `cosh(x) = (eˣ+e⁻ˣ)/2`. So we can re-express it as `1⁄2eˣ + 1⁄2e⁻ˣ` and then express both summands as expansions of `exp` function, `cosh(x) = 1⁄2(…eˣ…) + 1⁄2(…e⁻ˣ…)`. 

The first expansion, `exp(x)` is just the expansion of the exponential. For the second expansion, `exp(-x)`, we need to be careful cos the arg is `-x`; this will influence the signs of terms in that the signs will alternate starting with the positive term (1), then a negative term (-x), and so on. Then we sum the two expansion, and if have lined them up, we see that the odd-degree terms cancel out, and then the two halves (due to `1⁄2`) of each remaining even-degree term gives a whole term.

```js
// exp as Taylor series
     ⎲∞
eˣ = ⎳ₙ₌₀ xⁿ/n!

cosh(x) = 1⁄2(eˣ + e⁻ˣ)
cosh(x) = 1⁄2 eˣ + 1⁄2 e⁻ˣ

          1⁄2 (1 + x + 1⁄2x² + 1⁄6x³ + 1⁄24x⁴ + …)
        + 1⁄2 (1 - x + 1⁄2x² - 1⁄6x³ + 1⁄24x⁴ - …)
        =     1     + 1⁄2x²        + 1⁄24x⁴ + …  // even-degree terms survive

cosh(x) = 1 + 1⁄2 x² + 1⁄24 x⁴ + …

// re-expressing this expansion as Taylor series, we get
/* cosh(x) as Taylor series */
          ⎲∞    x²ⁿ
cosh(x) = ⎳ₙ₌₀ ------ = 1 + 1⁄2 x² + 1⁄24 x⁴ + …
                 (2n)!
```

### sinh as Taylor series

Expressing `sinh` as Taylor series follows the similar procedure like for cosh, except that the two expansions need to be subtracted, `sinh(x) = 1⁄2(…eˣ…) - 1⁄2(…e⁻ˣ…)`. 

```js
sinh(x) = 1⁄2(eˣ - e⁻ˣ)
sinh(x) = 1⁄2eˣ - 1⁄2e⁻ˣ

          1⁄2 (1 + x + 1⁄2x² + 1⁄6x³ + 1⁄24x⁴ + …) // 1⁄2(…exp(x) expanded…)
        - 1⁄2 (1 - x + 1⁄2x² - 1⁄6x³ + 1⁄24x⁴ - …) // 1⁄2(…exp(-x) expanded…)
        =         x        + 1⁄6x³         - …  // odd-degree terms survive

sinh(x) = x + 1⁄6 x³ + 1⁄120 x⁵ + …

/* sinh(x) as Taylor series */
          ⎲∞    x²ⁿᐩ¹
sinh(x) = ⎳ₙ₌₀ -------- = x + 1⁄6 x³ + 1⁄120 x⁵ + …
                 (2n+1)!
```

### Derivative of cosh as Taylor series

To express `cosh′(x)` as Taylor series, we consider the sigma notation for `cosh` and work with it directly to find its derivative.

Since we want the (first) derivative with respect to `x`, we only need to consider the terms that contain `x`, which is only the nominator, `x²ᵏ`; the denominator, `(2k)!`, can be left alone since it does not mention `x`.

We can apply the power rule, so `x²ᵏ` becomes `2k x²ᵏ⁻¹`. This is a problem because the iterating variable `k` is set to start from 0; when `k=0`, the first term becomes zero:

    2k x²ᵏ⁻¹ / (2k)!
    0 x⁻¹ / 0!
    0 x⁻¹ / 1
    0 / 1
    0

```js
// cosh as Taylor series
          ⎲∞    x²ᵏ
cosh(x) = ⎳ₖ₌₀ ------ = 1 + 1⁄2 x² + 1⁄24 x⁴ + …
                 (2k)!

           ⎲∞       x²ᵏ⁻¹
cosh′(x) = ⎳ₖ₌₀ 2k -------- // this is a problem when k=0
                     (2k)!

// the intermediate step above has the iterator k=0..∞
// but when k=0 the first term will collapse to 0
// when it should be 1 (as we'll see later)
// So, the iterator must be adjusted to start at k=1..∞
//
// And when iterator starts at 1 (instead of 0)
// other terms must also be adjusted, namely denominator
// x²ᵏ instead of x²ᵏ⁻¹

           ⎲∞       x²ᵏ
cosh′(x) = ⎳ₖ₌₁ 2k --------
                     (2k)!

// Now we can procede to simplify this
           ⎲∞     x²ᵏ
cosh′(x) = ⎳ₖ₌₁ --------
                  (2k-1)!


// cosh(x) as Taylor series 
          ⎲∞    x²ⁿ
cosh(x) = ⎳ₙ₌₀ ------
                 (2n)!

/* In the end we need to get this */

           ⎲∞    x²ⁿᐩ¹
cosh′(x) = ⎳ₙ₌₀ -------
                  (2n+1)!
```

Derivative of `cosh` as Taylor series needs to expand as *odd-degree* terms starting with `x`.


### Derivative of sinh as Taylor series

Differentiating `sinh` and expressing the resulting function as a Taylor series. We start with the `sinh(x)` function represented as a Taylor series.

```js
/* sinh(x) as Taylor series */
          ⎲∞    x²ⁿᐩ¹
sinh(x) = ⎳ₙ₌₀ --------
                 (2n+1)!

// expansoin
sinh(x) = x + 1⁄6 x³ + 1⁄120 x⁵ + …
sinh(x) = x + x³/3! + x⁵/5! + x⁷/7! +  …

// If we differentiate it term-by-term, we get
sinh′(x) = 1 + 3x²/3! + 5x⁴/5! + 7x⁶/7! + …
sinh′(x) = 1 + x²/2! + x⁴/4! + x⁶/6! + x⁸/8! + …


// Deriving sinh′(x) as Taylor series
           ⎲∞   2n+1 x²ⁿᐩ¹⁻¹    ⎲∞     x²ⁿ
sinh′(x) = ⎳ₙ₌₀ ------------- = ⎳ₙ₌₀ ---------
                   (2n+1)!             (2n+1-1)!

/* sinh′(x) as Taylor series */
           ⎲∞   x²ⁿ
sinh′(x) = ⎳ₙ₌₀ ------
                 (2n)!

sinh′(x) = 1 + 1⁄2 x² + 1⁄24 x⁴ + …
```

Derivative of `sinh` as Taylor series needs to expand as *even-degree* terms starting with `1`.
