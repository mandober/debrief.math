# Integration :: Exercises


## Integrating constants

Integrating a lone constant as an integrand, depends on the variable of integration, the identity of which is contained in the trailling differential. If the differential is the usual `dx`, then the variable of integration is `x`. The result is then the product of the constant and the variable of integration.

A thing to note is that even if the integral looks empty, e.g. `∫dx`, the integrand is actually the implicit constant 1. The result is then `1x` i.e. `x`, plus the easy to forget constant of integration `C`, i.e. `∫dx = x + C`.

```js
/* constants */
∫ 3 dx = 3x + C
∫ 3 dz = 3z + C

∫ dx = ∫ 1 dx = x + C
∫ du = ∫ 1 du = u + C
∫ dv = ∫ 1 dv = v + C
```


```js

/* powers */
∫ x dx = ∫ x¹ dx = x²/2 + C
∫ x² dx = x³/3 + C
∫ 4x³ dx = 4x⁴/4 = x⁴ + C
∫ 5/4 ⋅ x⁴ dx = 5/4 ⋅ x⁵/5 = x⁵/4 + C

/* reciprocals */
∫ 1/x² dx = ∫ x⁻² dx = x⁻¹/-1 = -1x⁻¹ = -1/x¹ + C
∫ 1/x³ dx = ∫ x⁻³ dx = x⁻²/-2 = -2x⁻² = -2/x² + C
∫ 1/x⁴ dx = ∫ x⁻⁴ dx = x⁻³/-3 = -3x⁻³ = -3/x³ + C

/* from reciprocals into ln */
∫ 1/x dx = ∫ x⁻¹ dx = x⁰/0 + 💀 ...KABLOOM!
// the formula must be memorized:
∫ 1/x dx = ln|x| + C
// when the arg to ln is x alone, there is no need for bars
// because the arg x must be positive, x > 0, so:
∫ 1/x dx = ln(x) + C
// Thus, with or without bars is both fine when the arg is x.
// However, for other values, we should put the arg in bars:
∫ 1/(x+2) dx = ln|x+2| + C
∫ 1/(x-3) dx = ln|x-3| + C
∫ 5/(x-3) dx = 5 ∫ 1/(x-3) dx = 5 ln|x-3| + C

/* In general */
∫ 1/u du = 1/u′ ln|u| + C     if u is a linear function of form (ax+b)

∫ 1/(3x+4) du = 1/3 ln|3x+4| + C
∫ 5/(3x+4) du = 5 ∫ 1/(3x+4) du = 5 ⋅ 1/3 ⋅ ln|3x+4| + C = 5/3 ln|3x+4| + C
```
