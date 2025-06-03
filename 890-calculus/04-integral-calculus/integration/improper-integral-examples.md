# Improper integral :: Examples

```js
∫ {-∞..∞} 1/x² dx = DIVERGES(!!)
∫ {-1..∞} 1/x² dx = DIVERGES(!!)
∫ { 0..∞} 1/x² dx = DIVERGES(!!)
∫ { 1..∞} 1/x² dx = 1 // converges!
∫ { 0..1} 1/x² dx = DIVERGES(!!)
∫ { 0..9} 1/x² dx = DIVERGES(!!)
∫ {-1..1} 1/x² dx = DIVERGES(!!)






/* Ex.1 */

⎛  1
⎟ ---- dx = ln|x| + C
⎠  x

⎛∞  1
⎟  ---- dx = 1
⎠₁  x

⎛+∞  1
⎟   ---- dx = DIVERGES (!)
⎠-∞  x


/* Ex.1 */
// indefinite integral: its antiderivative
⎛  1           1
⎟ ---- dx = - ---- + C
⎠  x²          x

// indefinite integral: its antiderivative
⎛  4           4
⎟ ---- dx = - ---- + C
⎠  x²          x


// definite (based on one above) but improper integral: converges to 1
// upper bound (b) = ∞, lower bound (a) = 1
⎛∞  1
⎟  ---- dx = 1
⎠₁  x²

// definite (based on one above) but improper integral: diverges
// upper bound (b) = 1, lower bound (a) = 0
⎛¹  1
⎟  ---- dx
⎠₀  x²


```

## Example 1

The integrand stems from the Euler's series 1, 1⁄4, 1⁄9, 1⁄16, 1⁄25, … that converges to `ln(2)`.

Integrating the reciprocal of the square function. Since `x ≠ 0`, the lower bound must not be 0, so it is 1. The upper bound, `∞`, makes this integral improper.

```js
⎛∞  1
⎟  ---- dx = 1
⎠₁  x²

// antiderivative
⎛  1           1
⎟ ---- dx = - ---- + C
⎠  x²          x


// By definition, rewrite the improper integral
// using one-sided limit and a definite integral
    ⎛ᵇ  1
lim ⎟  ---- dx
b→∞ ⎠₁  x²

// Evaluate the integral using the power rule
x^(−2+1)    x⁻¹             1
-------- = ---- = -x⁻¹ = - ----
−2 + 1      -1              x

// ​Return the limits
[−1/x]{1..b}

// Substitute the bounds into the formula​ F(b) - F(a) with b=b and a=1
(−1/b) - (−1/1) = −1/b + 1

// Evaluate the limit
  lim{b→∞} −1/b + 1
= lim{b→∞} −1/b + lim{b→∞} 1
=          -1/∞ + 1
=             0 + 1
= 1
```



## Example 2

This integral also has the restriction that `x ≠ 0`. However, the upper bound being `∞` is what makes it improper.

```js
⎛∞   1
⎟   ---- dx = ???
⎠₁   x

// antiderivative
⎛  1
⎟ ---- dx = ln|x| + C
⎠  x
```

## Example 3

```js
⎛¹   4
⎟   ---- dx = 4 // converges
⎠₀   x²

// By the way, the antiderivative is
⎛  4           4
⎟ ---- dx = - ----
⎠  x²          x

```

This integral is also improper due to the restriction that `x ≠ 0`, but 0 is the lower bound nevertheless!

## Example 4

This integral is also improper due to the restriction that `x ≠ 0`, but 0 is the lower bound nevertheless, `a=0`!

```js
⎛¹   4
⎟   ---- dx = DIVERGES
⎠₀   x²

// By the way, the antiderivative is
⎛  4           4
⎟ ---- dx = - ----
⎠  x²          x
```

## Example 5

This integral is also improper due to the restriction that `x ≠ 0`, but 0 is the lower bound nevertheless, `a=0`!

```js
⎛¹   4
⎟   ---- dx = DIVERGES
⎠₀   x²

// By the way, the antiderivative is
⎛  4           4
⎟ ---- dx = - ----
⎠  x²          x
```
