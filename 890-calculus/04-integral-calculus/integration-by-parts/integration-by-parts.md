# Integration by parts

>Integration by parts formula: `⎰u dv = uv - ⎰v du`





>Integration-by-parts formula: `⎰u dv = uv - ⎰v du`

The formula can be derived starting with the product rule of differentiation:

```js
 (fg)′ = f′g + fg′                // product rule

⎰(fg)′ = ⎰ f′g dx + ⎰ fg′ dx     // take antiderivative of both sides
  fg   = ⎰ f′g dx + ⎰ fg′ dx     // move ⎰fg′dx term to the other side

⎰ fg′ dx = fg - ⎰ f′g dx         // rearrange the term

⎰u dv = uv - ⎰v du                 // rewrite variables
```


Product rule is the reverse of integration-by-parts:

```js
  d/dx uv =   u dv/dx +   v du/dx     // product rule
⎰ d/dx uv = ⎰ u dv/dx + ⎰ v du/dx    // taking antiderivtive
```


## Example 3: `⎰xln(x)dx`

```js
⎰ x ln(x) dx

// we currently have no rule how to integrate ln(x) so we better set
u = ln(x)
du/dx = (ln(x))′
du = 1/x ⋅ dx

dv = x dx
⎰dv = ⎰x dx
v = x²/2

⎰ u dv = uv - ⎰ v du   // integration-by-parts formula
= u v  - ⎰ v  du       // we only need to refer to its rhs
= ln(x) ⋅ x²/2 - ⎰ x²/2 ⋅ 1/x ⋅ dx
= ln(x) ⋅ x²/2 - 1/2 ⎰ x²/x ⋅ dx
= ln(x) ⋅ x²/2 - 1/2 ⎰ x ⋅ dx
= ln(x) ⋅ x²/2 - 1/2 x²/2 + C
= ln(x) ⋅ x²/2 - x²/4 + C
■
```

## Example 4: `⎰ln(x)dx`

```js
⎰ ln(x) dx

u = ln(x)
du/dx = (ln(x))′
du = 1/x ⋅ dx

dv = dx
⎰dv = ⎰ 1 dx
v = x

  u v - ⎰ v du = ⎰ u dv   // integration-by-parts formula
= u v - ⎰ v du            // we only need to refer to its rhs
= ln(x) ⋅ x - ⎰ x ⋅ 1/x ⋅ dx
= ln(x) ⋅ x - ⎰ 1 dx
= ln(x) ⋅ x - x + C
■
```


## Example 5: `⎰x²cos(x)dx`

```js
⎰x²cos(x)dx

u = x²
du/dx = (x²)′
du = 2xdx

dv = cos(x)dx
⎰dv = ⎰cos(x)dx
v = sin(x)

  u v - ⎰ v du = ⎰ u dv   // integration-by-parts formula
= u v - ⎰ v du            // we only need to refer to its rhs
= x² sin(x) - ⎰ sin(x) 2x dx
= x² sin(x) - 2 ⎰ x sin(x) dx
//              ↓↓↓↓↓↓↓↓↓↓↓↓↓
//              -x cos(x) + sin(x) + C
= x² sin(x) - 2 (-x cos(x) + sin(x))
= x² sin(x) + 2x cos(x) - 2sin(x) + C
■
```


## Yielding a term identical to the original integral

If during the integration process by applying the integration-by-parts rule, we yield a term that is *identical to the original integral* (the integral we are solving), there's no point applying the integration-by-parts rule on it. Instead, we can treat that integral as a term and move it to the left-hand side in order to combine it with the original integral, yielding 2 × intergal. Then we can actually move the 2 to the other side, dividing everything there by 2, thereby producing the solution.

## Trick for exponential functions

Integrating exponential function `eᵏˣ`, where the exponent is some constant times `x`, can be quickly resolved as `eᵏˣ/k`, without going through the whole process of applying the u-substitution rule due to `eᵏˣ` being a composite function. For example, `∫e⁴ˣdx = e⁴ˣ/4`.

## Example 6: `⎰exp(x)sin(x)dx`

```js
⎰ eˣ sin(x) dx


■
```


## Example 7: definite integral `⎰{0..π}xcos(x)dx`

```js
⎰ {0..π} x cos(x) dx



■
```

## Example 8: `⎰xe⁴ˣdx`

```js
⎰ x e⁴ˣ dx



■
```
