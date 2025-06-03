# Identifying a Power Series


## Identifying a power series from its form

If denominators have the form
- `(2n+1)!` ⇒ sin(x)
- `(2n)!`   ⇒ cos(x)
- `n!`      ⇒ exp(x)

* If the denominator terms all have the form `(2n+1)!` then the series is a transformation of the function `sin(x)`, so determine the expression `t` for which the Taylor expansion of `sin(t)` equals the given power series.

* If the denominator terms all have the form `(2n)!` then the series is a transformation of the function `cos(x)`, so determine the expression `t` for which the Taylor expansion of `cos(t)` equals the given power series.

* If the denominator terms all have the form `n!` then the series is a transformation of the function `exp(x)`, so determine the expression `t` for which the Taylor expansion of `exp(t)` equals the given power series.

## Ex

Find the function for which this is the Taylor series about `x=3`.

```js
⎲∞          (x - 3)²ⁿ
⎳ₙ₌₀ (-1)ⁿ ----------
               (2n)!
```

First note that the denominator has the form `(2n)!`, meaning the wanted function is a transformation of the `cos(x)` function. Then note that the center of the series, `a`, is at `x=3`, which suggests that the desired function likely has the form `cos(x-3)`.

To confirm it, use the general formula for the Taylor series but substitute in the known values. Find the derivatives and evaluate them at x=3 (a=3).

The series is a transformation of the function cos, so determine the expression `t` for which the Taylor expansion of `cos(t)` equals the given power series. So, `t = x - 3`. Then `cos(x - 3)`.


```js
// Power/Taylor series of cosx (for reference)
         ⎲∞         x²ⁿ
cos(x) = ⎳ₙ₌₀ (-1)ⁿ -----
                     (2n)!

// TAYLOR SERIES (general formula)
       ⎲∞     f⁽ⁿ⁾(a)
f(x) = ⎳ₙ₌₀  --------- (x - a)ⁿ
                 n!

// plug in the known values into the general TS formula:
           ⎲∞   f⁽ⁿ⁾(3)
cos(x-3) = ⎳ₙ₌₀ -------- (x-3)ⁿ
                    n!

// expand first few terms
           ⎲∞   cos(0)        -sin(0)         -cos(0)          sin(0)
cos(x-3) = ⎳ₙ₌₀ ------(x-3)⁰ + -------(x-3)¹ + -------(x-3)² + ------(x-3)³ +…
                   0!             1!               2!             3!

           ⎲∞                     -cos(0)          sin(0)
cos(x-3) = ⎳ₙ₌₀ 1 - sin(0)(x-3)¹ + -------(x-3)² + ------(x-3)³ +…
                                       2!             3!


// original function
f(x) = cos(x - 3)

// 0th derivative
f⁽⁰⁾(x) = cos(x - 3)
f⁽⁰⁾(3) = cos(3 - 3) = cos(0) = 1

// 1st derivative
cos′(x) = -sin(x)
cos′(x-3) = -sin(x-3)

f⁽¹⁾(x) = sin(x - 3)


f⁽⁰⁾(a) = f(a)


f(3) = cos(x-3)
```
