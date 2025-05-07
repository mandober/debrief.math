# Implicit differentiation

Take a derivative of `x² + y² = 1`. Take a derivative wrt to `x` will treat terms with `x` as usual, so `x²` becomes `2x`, but the term `y²` is not merely `2y` but `2y × dy/dx`.

```js
d/dx (x² + y² = 1)
2x + 2y∙dy/dx = 0
2y∙dy/dx = -2x
dy/dx = -2x/2y
dy/dx = -x/y
```

## Example

Find the second derivative of `x³ + y³ = 9` and evaluate it at (1,2).

First, we find the 1st derivative:

```js
d/dx(x³ + y³ = 9)
3x² + 3y²∙dy/dx = 0
3y²∙dy/dx = -3x²
dy/dx = -3x²/3y²
dy/dx = -x²/y²
```

Then the 2nd derivative:

```js
d/dx(dy/dx = -x²/y²)
// quotient rule: f/g = (f′g - fg′)/g²
// f = -x², f′ = -2x
// g = y², g′ = 2y∙dy/dx
d²y/dx² = ((-2x)(y²) - (-x²)(2y∙dy/dx)) / y⁴

d²y    (-2x)(y²) - (-x²)(2y∙dy/dx)
---- = ---------------------------
dx²               y⁴

d²y    -2xy² - (-x²2y∙dy/dx)
---- = --------------------- // but: dy/dx = -x²/y² so subst it
dx²               y⁴

d²y    -2xy² - (-x²2y ∙ -x²/y²)
---- = ------------------------
dx²               y⁴

d²y    -2xy² - x⁴2y/y²
---- = ---------------
dx²         y⁴

d²y    -2xy² - 2x⁴/y
---- = --------------  // mul by y
dx²         y⁴

d²y    -2xy³ - 2x⁴
---- = ------------
dx²         y⁵

d²y    -2x(y³ + x³)
---- = ------------
dx²         y⁵
```

Now we evaluate it at (1,2)

```js
d²y    -2x(y³ + x³)
---- = ------------
dx²         y⁵


d²y    -2(1)(2³ + 1³)   -2∙9      18        9
---- = -------------- = ---- = - ---- = - ----
dx²         2⁵           32       32       16
```
