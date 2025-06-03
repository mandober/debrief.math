# Mechanics

A *Taylor series* approximates a function `f`, representing it as a polynomial. An `n`-th *Taylor polynomial* is a partial sum of the first `n` terms of some Taylor series (or, a sum of terms up and including the term with index `n`, if the series uses 1-based indexing; if 0-based indexing is used, the last term to include has index `n-1`).

With Taylor series, 0-based indexing is preferred because then each term has an index that matches its degree, provided the series is not sparse (that is, there is a term for each degree).

An example of a non-sparse (compact?) Taylor series is one that approximates the exponential function `f(x) = exp(x) = eˣ`:

```js
// Taylor series of exp(x)
         ⎲∞
exp(x) = ⎳ₙ₌₀ xⁿ/n! = 1 + x + x²/2! + x³/3! + x⁴/4! + x⁵/5! + x⁶/6! + ⋯
```

- initial term has index 0 and degree 0 and is thus constant (explicitly `x⁰`)
- term with index 1 and degree 1 is thus a linear term (explicitly `x¹`)
- term with index 2 and degree 2 is thus a quadratic term (`x²`)
- term with index 3 and degree 3: cubic   (`x³`)
- term with index 4 and degree 4: quartic (`x⁴`)
- term with index 5 and degree 5: quintic (`x⁵`)
- term with index 6 and degree 6: sextic  (`x⁶`)
- term with index 7 and degree 7: septic  (`x⁷`)
- term with index 8 and degree 8: octic   (`x⁸`)
- term with index 9 and degree 9: nonic   (`x⁹`)
- term with index 10 and degree 10: decic (`x¹⁰`)
- and so on…


```js
// Taylor series of exp(x)
         ⎲∞
exp(x) = ⎳ₙ₌₀ xⁿ/n! = 1 + x + x²/2! + x³/3! + x⁴/4! + x⁵/5! + x⁶/6! + ⋯

// Taylor polynomials of exp(x)
P₀(x) = 1
P₁(x) = 1 + x
P₂(x) = 1 + x + x²/2
P₃(x) = 1 + x + x²/2! + x³/3!
P₄(x) = 1 + x + x²/2! + x³/3! + x⁴/4!
P₅(x) = 1 + x + x²/2! + x³/3! + x⁴/4! + x⁵/5!
P₆(x) = 1 + x + x²/2! + x³/3! + x⁴/4! + x⁵/5! + x⁶/6!

Pₙ(x) = 1 + x + x²/2! + x³/3! + x⁴/4! + x⁵/5! + ⋯ + xⁿ/n!
```


The infinite Taylor series is the limit of Taylor polynomials. The infinite Taylor series is not just a good approximation but matches the modelled function exactly over the entire domain.

We cannot sum up an infinite Taylor series, so we derive Taylor polynomials from it and use them to approximate a function to an arbitrary precision, albeit only over a certain interval. The more terms we use in a Taylor polynomial, the bigger the increase in precision and coverage (interval of convergence).

Taylor polynomials have a degree that tells how many terms of the underlying Taylor series are summed together. For example, a Taylor polynomial of degree 4, denoted `T₄(x)`, is a partial sum of the first 4 terms of the underlying Taylor series.

Taylor polynomials are remarkable approximations of functions since even those consisting of just a few terms may be enough to give a decent approximation (like always, only within a certain interval).

## Constant approximation

`T₀(x) = 1`

A Taylor polynomial of degree 0 is a constant term yielding a constant approximation of the function, and thus not a very good one. This polynomial comprises only the first term of the corresponding Taylor series, so it is not very accurate except at `a` and within a small interval around `a`. The value of this term is exactly the value of the modelled function evaluated at `x=a`. The value `a` is the center of the series about which the function is modelled. Any Taylor polynomial with the same `a` will have the interval of convergence centered at that `a`, but the higher the degree of the polynomial, the larger the radius of convergence around `a`, and thus the bigger the interval.

Taylor polynomials are denoted by `Tₙ(x)`, where the subscript `n` tells the degree. The equation of the linear Taylor polynomial that approximates `eˣ` is `T₀(x) = 1`, and when plotted, it is a horizontal line that intersects the y-axis at `y=1`.

## Linear approximation

`T₁(x) = 1 + x`

A Taylor polynomial of degree 1 is a linear approximation of the function. It uses the tangent line at a point `a` to approximate the function. It gives the best possible linear approximation for a function around the point of tangency.

The best linear approximation of a function at a point is one whose value and the first derivative both match those of the modelled function at that point.

The linear approximation of the exp function must match both the *value* of the function `exp` applied to `x=a`, so `exp(a)`, and the value of the first *derivative* of `exp` applied to `x=a`, so `exp′(a)`.

- `f(x) = exp(x)`  We are approximating the `exp` function
- `f′(x) = exp(x)`  1st derivative of exp is exp
- `T₁(a) = f(a)`  T₁ applied to `a` must be the same as `f(a)`
- `T′₁(a) = f′(a)`  1st deriv of T₁ applied to `a` must be the same as `f′(a)`



## Quadratic approximation

`T₂(x) = 1 + x + x²/2`

A Taylor polynomial of degree 2 is a quadratic approximation of the function.

The best quadratic approximation must match
- the fn's value, T₂⁽⁰⁾(a) = f⁽⁰⁾(a), T₂⁽⁰⁾(0) = f⁽⁰⁾(0) = 1
- 1st derivative, T₂⁽¹⁾(a) = f⁽¹⁾(a), T₂⁽¹⁾(0) = f⁽¹⁾(0) = 1
- 2nd derivative, T₂⁽²⁾(a) = f⁽²⁾(a), T₂⁽²⁾(0) = f⁽²⁾(0) = 1



## Cubic approximation

`T₃(x) = 1 + x + x²/2 + x³/3`

A Taylor polynomial of degree 3 is a cubic approximation of the function.
