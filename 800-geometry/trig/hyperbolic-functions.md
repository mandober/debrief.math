# Hyperbolic functions

Trigonometric functions are defined in terms of the unit circle defined by the equation `x² + y² = 1`.

Hyperbolic functions are defined in terms of the unit parabola defined by the equation `x² - y² = 1`.

## List of hyperbolic functions

```
sinh(t) = 1⁄2(eˣ - e⁻ˣ)
cosh(t) = 1⁄2(eˣ + e⁻ˣ)
tanh(t) = (e²ˣ - 1) / (e²ˣ + 1)

sech(t) = 1/cosh(t)
csch(t) = 1/sinh(t)
coth(t) = 1/tanh(t)

arcsinh(t) = ln(x + √(x² + 1))
arccosh(t) = ln(x + √(x² - 1))
arctanh(t) = 1⁄2 ln((1 + x) / (1 - x))
```

## Deriving arcsinh from sinh

Deriving `arcsinh(x)` i.e. inverse of `sinh(x) = 1⁄2(eˣ - e⁻ˣ)`

    arcsinh(x) = ln(x + √(x² + 1))

The procedure is similar for `arccosh` and `arctanh`.

```js
y = sinh(x)
y = 1⁄2(eˣ - e⁻ˣ)         // swap x's and y's
x = 1⁄2(eʸ - e⁻ʸ)         // then isolate y
2x = (eʸ - e⁻ʸ)          // mul both sides by eʸ
2xeʸ = eʸ(eʸ - e⁻ʸ)      // simplify
2xeʸ = eʸeʸ - eʸe⁻ʸ
2xeʸ = eʸᐩʸ - eʸ⁻ʸ
2xeʸ = e²ʸ - e⁰
2xeʸ = e²ʸ - 1
e²ʸ - 2xeʸ - 1 = 0
(eʸ)² - 2xeʸ - 1 = 0     // let u = eʸ
u² - 2xu - 1 = 0         // apply quadratic forula: a = 1, b = -2x, c = -1
u = 1⁄2(2x ± √(4x² + 4))
u = 1⁄2(2x ± √(4(x² + 1)))
u = 1⁄2(2x ± √(2²(x² + 1)))
u = 1⁄2(2x ± √2²√(x² + 1))
u = 1⁄2(2x ± 2 √(x² + 1))
u = x ± √(x² + 1)
eʸ = x ± √(x² + 1)          // re-subst
ln eʸ = ln(x ± √(x² + 1))   // take ln of both sides
y = ln(x + √(x² + 1))       // ln cannot be taken of neg number
```

Quadratic polynomial, `ax² + bx + c = 0` is solved by applying the quadratic forula, `x = (-b ± √(b² - 4ac)) / 2a`.

Natural logarithm, `ln`, is not defined for negative numbers, and `x - √(x²+1)` is negative for every `x`. So we drop the negative sign and only keep the positive sign in `ln(x ± √(x²+1))`. 

```
ln(x - √(x²+1))
x - √(x²+1) < 0
x < √(x²+1)
```

`√x²` is just `x` but tanks to `+1` that root will always be bigger then `x`.
