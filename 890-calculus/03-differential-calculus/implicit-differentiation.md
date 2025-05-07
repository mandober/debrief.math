# Implicit Differentiation

Differentiating with respect to `x` means the terms with `x` are differentiated as usual, but the terms with other variables (like `y`) are differentiated as usual but with the `dy/dx` differential attached.

```js
x² + y² = 1
d/dx (x² + y² = 1)
2x + 2y dy/dx = 0
dy/dx = -2x/2y
dy/dx = -x/y // first dertivative
```
Then we need to isolate `dy/dx` alone on a side.

To continue and find the second dertivative, we also take `d/dx` from both sides. But note that `d/dx (dy/dx)` is `ddy/dxdx = d²y/dx²`. The denominator `dxdx` should be `(dx)²` but it is said that "by convention" it is written as `dx²` instead. Therefore we get `d²y/dx²` as the second derivative.

```js
d/dx (dy/dx = -x/y)
d²y/dx² = d/dx (-x/y)
// to diff -x/y we need the quotient rule
d²y    -1∙y - (-x∙dy/dx)    -y + x dy/dx
---- = ----------------- = --------------
dx²           y²                 y²
// and now we can substitute the first derivative: dy/dx = -x/y
d²y     -y + x(-x/y)
---- = --------------
dx²          y²

d²y     -y - x²y   -1 - x²
---- = --------- = -------
dx²       y²          y
```

When finding the second derivative of an equation, we first find the first derivative, and then the second. However, we can use (the equality of) the first derivative, `dy/dx = -x/y`, to replace the `dy/dx` term if encountered while computing the second derivative.

    dy/dx   =      -x   / y
    d²y/dx² = (-1 - x²) / y


```js
// Differentiation wrt x
d/dx x³ = 3x² ∙ dx/dx = 3x²

// Differentiation wrt x when there's another variable
d/dx y³ = 3y² ∙ dy/dx
d/dx R³ = 3R² ∙ dR/dx
```

## Examples

```js
// Ex. 1
// Given the equation x² + y² = 100 find the slope at (6,8)
x² + y² = 100
// differentiate wrt x
d/dx (x² + y² = 100)
2x + 2y dy/dx = 0
dy/dx = -2x/2y
dy/dx = -x/y
// eval at (6, 8) to find the slope (which is dy/dx)
dy/dx = -6/8 = -3/4

// Ex. 2
// Given the equation x³ + 4xy + y² = 13 find the slope at (1,2)
// We differentiate it wrt x
d/dx (x³ + 4xy + y² = 13)
// to differentiate 4xy we need the product rule: f=4x, g=y
3x² + (4y + 4x dy/dx) + 2y dy/dx = 0
dy/dx(4x + 2y) = -3x² - 4y
dy/dx = (-3x² - 4y) / (4x + 2y)
// eval at the pont (1,2)
dy/dx = (-3(1)² - 4(2)) / (4(1) + 2(2))
dy/dx = (-3 - 8) / (4 + 4)
dy/dx = -11/8

// Ex. 3
// Differentiate the equation: 5 - x² = sin(xy²)
d/dx (5 - x² = sin(xy²))
0 - 2x = cos(xy²)(1y² + x 2y dy/dx)
-2x = cos(xy²)(y² + 2xy dy/dx)
-2x = y²cos(xy²) + 2xy cos(xy²) dy/dx
-2x - y²cos(xy²) = 2xy cos(xy²) dy/dx

        -2x - y²cos(xy²)
dy/dx = -----------------
            2xy cos(xy²)

// Ex. 3
// Given the equation x³ + y³ = 9, find d²y/dx², eval it at (1,2)
// Find the first derivative first
d/dx(x³ + y³ = 9)
3x² + 3y² dy/dx = 0
dy/dx = -3x²/3y²
dy/dx = -x²/y²
// Find the second derivative next, i.e. deriv of this fn
d/dx (dy/dx = -x²/y²)

 d    dy     d    -x²
---- ---- = ---- ------
 dx   dx     dx    y²

 d²y   (-2x)(y²) - (-x²)(2y dy/dx)
---- = ---------------------------
 dx²             y⁴

 d²y   -2xy² + 2x²y dy/dx
---- = ------------------
 dx²          y⁴

// we can replace dy/dx by -x²/y²
 d²y   -2xy² + 2x²y (-x²/y²)
---- = ----------------------
 dx²            y⁴

       -2xy³   2x⁴
       ----- - ----
 d²y     y      y
---- = ------------
 dx²         y⁴

       -2xy³ - 2x⁴
       -----------
 d²y         y
---- = -----------
 dx²         y⁴

 d²y   -2xy³ - 2x⁴
---- = -----------
 dx²       y⁵

d²y   -2x(y³ + x³)
---- = -----------
 dx²       y⁵

// eval at (1,2)
d²y   -2(2³ + 1³)   -2(8 + 1)   -18
---- = ---------- = --------- = ---- = -9/16
 dx²       2⁵          32        32
```
