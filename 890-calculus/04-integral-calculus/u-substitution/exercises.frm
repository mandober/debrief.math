# Substitution rule :: Exercises

## Example 1: Power function with full cancellation

```js
∫ 2x(x²+4)² dx

      u = x²+4              // (1)
      d/dx u = (x²+4)′       // (2)
      du/dx = 2x            // (3)
      du = 2xdx             // (4)
      dx = du/2x            // (5)

= ∫ 2x u² du/2x       // (6)
= ∫ u² du             // (7)
= u³/3 + C            // (8)
= (x²+4)³/3 + C       // (9)
```

## Example 2: Power function with partial cancellation

Partial cancellation of a factor `4x` with with the denominator `2x`, that leaves a constant (`2`) behind. Later, the constant `2` halves a `4` in the antiderivative's denominator, leaving a `2` in there.

```js
∫ 4x (x²+5)³ dx

let u = x² + 5
    du/dx = 2x
    dx = du/2x

= ∫ 4x u³ du/2x
= ∫ 2 u³ du
= 2 ∫ u³ du
= 2 u⁴/4
= u⁴/2 + C
= (x² + 5)⁴/2 + C
```

## Example 3: Power function with radical and leftover factor

Here we have 3 substitutions: replacing a subexpression (that has `x`) with `u`, replacing `dx` with `du/u′`, but also replacing a factor (`x`) of the interand with the rhs of the equation derived from the equation for `u`.

- pick a subexp for `u`, i.e. `u = …x…`
- find its derivative, `d/dx u = (…x…)′`
- isolate `dx`, expressing it as `dx = du/u′`
- back in the equation for `u`, isolate `x`, i.e. `x = …u…`
- make these 3 substitutions

```js
∫ x √(3x+2) dx

  let u = 3x+2
      du/dx = 3
      dx = du/3

      // This time, we must also express this in terms of x;
      // we need to isolate x alone in the equation for u = …x…
      u = 3x + 2
      3x = u - 2
      x = (u-2)/3

// substitutions:
//  ↓¹  ↓↓↓↓² ↓↓³
= ∫ x √(3x+2) dx

= ∫ x       √u dx       // (1) substitute 3x+2 with u
= ∫ x       √u du/3     // (2) substitute dx   with du/3
= ∫ (u-2)/3 √u du/3     // (3) substitute x    with (u-2)/3

// after the substitutions we get
= ∫ (u-2)/3 √u du/3

// we can now simplify it, and solve it
= ∫ 1/3 ⋅ (u-2) ⋅ √u ⋅ 1/3 ⋅ du
= 1/9 ∫ (u-2)√u ⋅ du
= 1/9 ∫ (u-2)u¹′² ⋅ du
= 1/9 ∫ (u³′² - 2u¹′²) du
= 1/9 (∫ u³′² du - ∫ 2u¹′² du)
= 1/9 (u⁵′²/5⁄2 - 2u³′²/3⁄2)
= 1/9 (2/5 u⁵′² - 4/3 u³′²)
= 2/45 u⁵′² - 4/27 u³′² + C
= 2/45 (3x+2)⁵′² - 4/27 (3x+2)³′² + C
```

## Example 4: Trig function

```js
∫ 8 cos(4x) dx

  // nested exp/fn is an ideal choice for u
  let u = 4x
      du/dx = 4
      dx = du/4

= ∫ 8 cos(u) du/4
= ∫ 2 cos(u) du
= 2 ∫ cos(u) du
= 2 sin(u) + C
= 2 sin(4x) + C
```

## Example 5: Exponential function

```js
∫ x³ exp(x⁴) dx

  let u = x⁴
      du/dx = 4x³
      dx = du/4x³

= ∫ x³ exp(u) du/4x³
= ∫ exp(u) du/4
= 1/4 ∫ exp(u) du
= 1/4 exp(u) + C
= 1/4 exp(x⁴) + C
```

## Example 6: Radical function

```js
∫ 8x √(40-2x²) dx

  let u = 40-2x²
      du/dx = -4x
      dx = -du/4x

= ∫ 8x √u (-du/4x)
= -∫ 8x √u 1/4x du
= -∫ 8x/4x √u du
= -∫ 2 √u du
= -2 ∫ u¹′² du
= -2 u³′²/3⁄2
= -2 2u³′²/3
= -4/3 u³′² + C
= -4/3 (40-2x²)³′² + C
= -4/3 √(40-2x²)³ + C
```

## Example 7: Rational function

```js
∫ x³/(2+x⁴)² dx

  let u = 2+x⁴
      du/dx = 4x³
      dx = du/4x³

= ∫ x³/u² du/4x³
= ∫ x³/4x³ 1/u² du
= ∫ 1/4 1/u² du
= 1/4 ∫ 1/u² du
= 1/4 ∫ u⁻² du
= 1/4 u⁻¹/-1
= -1/4 u⁻¹
= -1/4 1/u + C
= -1/4 1/(2+x⁴) + C
= -1/(8+4x⁴) + C
```


## Example 8: Trig function

```js
∫ sin⁴(x)cos(x) dx

  let u = sin(x)
      du/dx = cos(x)
      dx = du/cos(x)

= ∫ u⁴ ⋅ cos(x) ⋅ du/cos(x)
= ∫ u⁴ cos(x)/cos(x) du
= ∫ u⁴ du
= u⁵/5 + C
= sin⁵(x)/5 + C
= 1⁄5 sin⁵(x) + C
```

## Example 9: Radical function

```js
∫ √(5x+4) dx
= ∫ √u du/5
= ∫ u¹′²/5 du
= 1/5 ∫ u¹′² du
= 1/5 2/3 u³′²
= 2/15 u³′² + C
= 2/15 (5x+4)³′² + C
= 2/15 √(5x+4)³ + C
```


## Example 10: Radical function

```js
∫ 2x √(4x-5) dx
```

## Example 11: Exponential functions with linear exponents

The integrands below are exponential functions with a linear exponent, `ax+b` (and its linear variants like `x`, `ax`, `x+b`, …). The reciprocal of the leading coefficient, `a`, is a factor of the resulting expression. And don't forget to add the constant of integration, `C`.

```js
/* general fomulas */
// exp fn with linear exponent ax+b, collapsed to x
∫ eˣ dx = eˣ + C
// exp fn with linear exponent, ax+b collapsed to ax
∫ eᵃˣ dx = 1/a eᵃˣ + C
// exp fn with linear exponent, ax+b
∫ eᵃˣᐩᵇ dx = 1/a eᵃˣᐩᵇ + C

/* concrete examples */

∫ e²ˣ  dx =  1/2 e²ˣ  + C       // leading coefficient a=2
∫ e⁻⁵ˣ dx = -1/5 e⁻⁵ˣ + C       // leading coefficient a=-5
```

We could have also solved them using u-substitution, 
in which case the last one would be:

```js
∫ e⁻⁵ˣ dx =

  let u = -5x
      du/dx = -5
      dx = -du/5

= ∫ eᵘ ⋅ -du/5
= -1/5 ∫ eᵘ du
= -1/5 eᵘ + C
= -1/5 e⁻⁵ˣ + C
```



## Example 12: Exponential function with radical

```js
∫ eˣ √(1-eˣ) dx

  let u = 1-eˣ
      du/dx = -eˣ
      dx = -du/eˣ

= ∫ eˣ √u ⋅ -du/eˣ
= -∫ √u du
= -∫ u¹′² du
= -(u³′²/3⁄2) + C
= -(2⁄3 u³′²) + C
= C - 2⁄3 u³′²
= C - 2⁄3 (1 - eˣ)³′²
= C - 2⁄3 √(1 - eˣ)³
```

## Example 13: Exponential rational function

```js
⌠ eˣ + e⁻ˣ
│ -------- dx
⌡ eˣ - e⁻ˣ

    let u = eˣ - e⁻ˣ
        du/dx = eˣ - e⁻ˣ(-1)
        du/dx = eˣ + e⁻ˣ
        dx = du/(eˣ + e⁻ˣ)

  ⌠ eˣ + e⁻ˣ     du
= │ -------- --------
  ⌡    u     eˣ + e⁻ˣ

= ∫ 1/u du
= ln|u| + C
= ln|eˣ-e⁻ˣ| + C
```

## Example 14: Exponential function

```js
⌠ exp(1/x²)
│ --------- dx
⌡     x³

  let u = 1/x² = x⁻²
      du/dx = -2x⁻³
      dx = -du/2x⁻³
      dx = -1/2 du/x⁻³
      dx = 

  ⌠ exp(u)
= │ ------ (-1/2 x³ du)
  ⌡   x³

= -1/2 ∫ eᵘ du
= -1/2 eᵘ + C
= C - 1/2 exp(1/x²)
```

## Example 15: Exponential rational function with 3 terms

```js
⌠ e³ˣ + 4eˣ + 5
│ ------------ dx
⌡      eˣ

  ⌠ ⎛  e³ˣ     4eˣ     5   ⎞
= │ ⎜ ---- + ---- + ----- ⎟ dx
  ⌡ ⎝  eˣ       eˣ     eˣ  ⎠

= ∫ (e²ˣ + 4 + 5e⁻ˣ) dx

= e²ˣ/2 + 4x + (5e⁻ˣ/-1) + C
= 1⁄2e²ˣ + 4x - 5e⁻ˣ + C
```

## Example 16: Exponential function with base ℇ

𝑪 𝒞 𝓒 ℭ 𝕮 ⒞ Ⓒ ⓒ © 🅲 ℇ

```js
∫ 5 ℇ⁻ˣ dx
// can be integrated in two ways:
// (1) using the general rule for exp fn
// (2) using substitution

// (1) using the general rule for exp fn:
       ∫ eᵃˣᐩᵇ dx = 1/a eᵃˣᐩᵇ + 𝕮
// in the integral
∫ 5 e⁻ˣ dx
// the leading coefficient is a = -1
= 5 ⋅ 1/-1 ⋅ e⁻ˣ + 𝑪
= 5 ⋅ -1 ⋅ e⁻ˣ + ⒞
= -5e⁻ˣ + 𝓒
= -5/eˣ + 𝒞

// (2) using substitution
∫ 5 e⁻ˣ dx

  let u = -x
      du/dx = -1
      dx = -du

= ∫ 5 eᵘ ⋅ -du
= -5 ∫ eᵘ du
= -5 eᵘ
= -5 e⁻ˣ      // back substitution
= -5/eˣ + 🅲   // add CoI
```
