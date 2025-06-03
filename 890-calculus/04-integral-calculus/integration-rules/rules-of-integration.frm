# Rules of integration

## Power rule

- `∫ xⁿ dx` = `xⁿᐩ¹/(n+1)`

## Rules of substitution

- u-substitution (IBP-1)
- integration by parts (IBP-2), `⎰ u dv = uv - ⎰ v du`
  - tabular method
- 3-product integration (IBP-3), `∫ u v dw = uvw - ∫ v w du - ∫ u w dv`

## General properties of integrals

- ∫ −f(x) dx = − ∫ f(x) dx
- ∫ −2 f(x) dx = −2 ∫ f(x) dx
- ∫ 5 f(x) dx = 5 ∫ f(x) dx
- ∫ f(x) + g(x) dx = ∫ f(x) dx + ∫ g(x) dx

We can factor a multiplicative constant out of an integral, 
aka pulling out a constant `k` in front of the integral:
- ∫ k f(x) dx = k ∫ f(x) dx
- ∫ -f(x) dx = -∫ f(x) dx         (k = -1)



## Integrating constant functions

- ∫ 0 dx = 0 + C
- ∫ dx = x + C
- ∫ dy = y + C
- ∫ 2 dx = 2x + C
- ∫ -3 dx = -3x + C
- ∫ 1⁄2 dx = 1⁄2x + C
- ∫ -1⁄2 dx = -1⁄2x + C
- `∫ k dx = kx + C`

## Integrating linear functions

- ∫ x dx = x²/2 = 1⁄2x² + C
- ∫ 2x dx = 2x²/2 = x² + C
- ∫ 3x dx = 3x²/2 = 3⁄2x² + C
- ∫ 4x dx = 4x²/2 = 2x² + C
- `∫ kx dx = kx²/2 = 1⁄2kx² + C`



## Exponential functions

### `exp` function

- `∫ eᵃˣᐩᵇ dx = 1/a eᵃˣᐩᵇ + C`


## Trig functions

- ∫ sin(x) dx = -cos(x) + C
- ∫ cos(x) dx =  sin(x) + C

Antiderivatives:
- sin(x) → -cos(x)
- cos(x) →  sin(x)
- iterated: sin(x) → -cos(x) → -sin(x) → --cos(x) → sin(x) → -cos(x)

Shortcut formulas re exp function
- `∫ eᵃˣ cos(bx) dx = 1/(a²+b²) eᵃˣ [a⋅cos(bx) + b⋅sin(bx)] + C`
- `∫ eᵃˣ sin(bx) dx = 1/(a²+b²) eᵃˣ [a⋅sin(bx) - b⋅cos(bx)] + C`
