# Integration by parts

>Integration-by-parts formula: `⎰u dv = uv - ⎰v du`

## Terms

- integration by parts
  - integration-by-parts rule reverses the chain rule
  - deriving the integration-by-parts rule from the chain rule
  - integration-by-parts formula: `⎰udv = uv - ⎰vdu`
- solving integrals
  - the integral to solve mathes the left side of formula, `⎰udv`
  - right side, `= uv - ⎰vdu`, is what we use when solving
  - start solving any integral by considering which rule can be applied 
  - recognizing when u-subst cannot be used so trying integr-by-parts instead
  - proceeding with the integration-by-parts rule by choosing `u` and `dv`
  - integrands are often sequences of simple, compound, composed functions
    - integrands are terms joined together with multiplication
    - integrand consisting of a simple function, `⎰f(x)dx`:
      - ⎰ dx = ⎰ 1 dx, with f(x) = 1, so F(x) = x + C
      - ⎰ x dx,       with f(x) = x,  so F(x) = x²/2 + C
      - ⎰ 2x dx,      with f(x) = 2x, so F(x) = 2x²/x + C = x² + C
    - integrand consists of one or more functions, also called terms
    - if joined by multiplication they are also called factors
  - choose terms in the integrand to set `u` and `dv` to, knowing that
    - `u`  will be differentiated
    - `dv` will be integrated
  - choosing `u`:
    - choose a fn for `u` that will get simpler when differentiated, or
    - choose a fn for `dv` that will get simpler when integrated
    - follow the LIATE guideline for `u` when in doubt
    - `dv` part
    - sometimes the choice of `u` vs `dv` amounts to the same
    - sometimes this choice may be arbitrary, it's all the same
- LIATE (log, inv trig, alg, trig, exp) tip for choosing `u`
- visualising integration by parts
- repeated/nested integration
- integrating `ln(x)` (with unity)
- tabular method for integration by parts
  - procedure
    - one column for derivatives of `u`
    - one column for antiderivatives of `dv`
    - keep differentiating/integrating until 0 is reached
    - add alternating signs to rows
    - mult the terms diagonally (term in 1row 1col mult by term in 2row 2col)
    - join the product terms according to the signs
    - don't forget to add `+ C`
  - sometimes 0 is never reached





## LIATE guideline

LIATE acronym stands for types of functions as priority list for choosing `u`:
- Logarithmic,  `ln(x)`
- Inverse trig, `arcsin(x)`
- Algebraic (polynomials), `x²`
- Trig,         `sin(x)`
- Exponential,  `eˣ`


It is a tip for choosing which term of the integral (which function) to select to be replaced by `u`. That is, it represents the order in which to pick the function to set `u` to. Normally, it is not essential - just pick the function which will become *simpler* when its derivative is taken. The choice of the terms to pick for `dv` typically includes the differential (usually `dx`).

When we have chosen the term to set `u` to, and the terms to set `dv` to, we proceed by taking a derivative of both sides of `u` equation to get `du`. We then take an integral of both sides of `dv` equation to get `v`. This will result in us having all the parts (`u`, `dv`, `du` and `v`) which we then substitute into the integration-by-parts formula `⎰u dv = uv - ⎰v du`.

In fact, we only need pay attention to the right part of the formula, `uv - ⎰v du` and make the replacements in there, then solve it - since the minuend is just multiplication, the only work typically left is just integrating the subtrahend (and don't foget `+ C` for indefinite integral).

## Example 1: `⎰xeˣdx`

```js
⎰xeˣdx       // integrate (using integration-by-parts)

⎰ x eˣ dx    // figure out the term for 'u' and 'dv' (typically the residue)

u = x            // we choose to set u=x
d/dx u = (x)′    // take deriv of both sides to get 'du'
du/dx = 1
du = dx

dv = eˣ dx       // let dv=eˣdx ('dv' usually includes differential, 'dx')
⎰dv = ⎰eˣ dx     // take integral of both sides to get 'v'
v = eˣ

// now we have all the parts to substitute in the main integral:
u = x    du = dx
v = eˣ   dv = eˣdx

⎰ u dv = uv - ⎰ v du   // integration-by-parts formula

= u v  - ⎰ v  du       // we only need to refer to its rhs
= x eˣ - ⎰ eˣ dx
= x eˣ - eˣ + C
= eˣ(x - 1) + C
■
```

## Example 2: `⎰xsin(x)dx`

```js
⎰ x sin(x) dx

u = x
du/dx = (x)′
du = dx

dv = sin(x)dx
⎰dv = ⎰sin(x)dx
v = -cos(x)

⎰ u dv = uv - ⎰ v du   // integration-by-parts formula

= u v  - ⎰ v  du       // we only need to refer to its rhs
= x(-cos(x)) - (⎰ (-cos(x)) dx)
= -x(cos(x)) - (-sin(x)) + C
= -x(cos(x)) + sin(x) + C
■
```



## Integration by parts

Integration by parts corresponds to the product rule of differentiation; it is a kind of revesal process of the product rule.

Integration by parts may be attempted when u-substitution cannot be used. It is employed when integrating a product of a fn whose factors are different
- ⎰2x⋅sin x dx
- ⎰2x²eˣ dx
- ⎰eˣ⋅cos x dx


Questions
- when to use integration by parts
- the derivation of the formula
- how to select part of the function to be `u`
- solving an example using integration-by-parts


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


## Derving the formula

```js
 d           dv      du
--- (uv) = u --- + v ---
dx           dx      dx

   ⎛  d            ⎛   dv       ⎛   du
   ⎜ --- (uv) dx = ⎜ u --- dx + ⎜ v --- dx
   ⎠ dx            ⎠   dx       ⎠   dx
// ↑ ↑        ↑        ↑   ↑        ↑   ↑
// these cancel out  - can cancel out (⎰) sign and (dx)'s

               ⎛          ⎛
       uv =    ⎜ u ⋅ dv +  ⎜ v ⋅ du
               ⎠          ⎠

// swap sides:

      ⎛       ⎛
      ⎜u dv + ⎜ v du = u v
      ⎠       ⎠

// move v-du to the other side:

     ⎛              ⎛
     ⎜ u dv = u v - ⎜ v du
     ⎠              ⎠
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

## Example 6: `⎰eˣsin(x)dx`

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

## Tabular method of integration by parts

Some integrals require using the integration-by-parts rule multiple times. For example, the following integral requires using this rule three times, which can be time consuming, so **the tabular method** provides a welcome shortcut that cuts through all that manual labor, delivering the answer quickly. The tabular method may be used anytime the integration-by-parts method can be used.

```js
⎰ x³ eˣ dx
```

The tabular method, being a variant of the integration-by-parts method, proceeds the same: first, we need to decide which terms of the integrand are to be substituted by `u` and `dv`. The goal remains the same: we want to pick a term for `u` that will be the simplified version of itself when differentiated; and similarly for `dv` when integrated.


We proceed by drawing a 2-column table, a `D` column for derivatives (for `u`'s ) and `I` column for intergals (for `dv`'s ). We still need to select the function to use for `u` (and for `dv`). We'll set `u = x³`, so `dv = eˣdx`, and we put each in their respective columns (sans the `dx`).

We'll take turns taking the derivative of whatever is in the derivative column and integrating whatever is in the integral column. We'll keep on doing that until we reach a *stopping point*. That stopping point is reaching zero in either column (here, it is the D column with 0).

Next, we need to alternate plus and minus sign for rows. Then, we start combining the terms for the solution expression: 

>We take a term in the D-column of the current row, and multiply it by the term in the I-column of the next row.

Let's invent a scheme for denoting the table cells. `Trc` could denote a term T in the row `r` and column `c`. There are only 2 columns, so `c` actually an enum of `d` and `i` - that is, `c` is either `d` or `i`. The number of rows is arbitrary. So, `T₁D` denotes the term in the first row in col `D`, and `T₁I` denotes the term in the second cell, i.e. in the first row and col `I`.

This is the table-addressing scheme:
- `Dᵣ` is term in D-column row `r`
- `Iᵣ` is term in I-column row `r`
- mult term `Dᵣ` with term `Iᵣ﹢₁`


D  | I
---|----
D₁ | I₁
D₂ | I₂
D₃ | I₃
D₄ | I₄


>Σ⁽ⁱ⁼¹⋅⋅ᴺ⁾ (-1)ⁱᐩ¹ × Dᵣ × Iᵣ﹢₁

where
- N = max row
- Dᵣ row `r` of column `D`
- Iᵣ row `r` of column `I`


We take the first row first column term and multiply it by the term in the second row second column (thus going diagonally).

s | D     | I
--|-------|--------
+ | x³  ↘ | eˣ
- | 3x² ↘ | eˣ
+ | 6x  ↘ | eˣ
- | 6   ↘ | eˣ
+ | 0     | eˣ

```js
⎰ x³ eˣ dx = x³eˣ - 3x²eˣ + 6xeˣ - 6eˣ + C
■
```

Done. Just don't foget to add the constant of integration for indefinite integrals.

### Tabular method, example 1: `⎰ x³ eˣ dx`

(see above)

### Tabular method, example 2: `⎰ x² cos(2x) dx`

1. Choosing `u` and `dv`

Taking a derivative of the function `x²` will give a simpler resulting function, so we set `u = x²`. This leaves `dv = cos(2x)dx`. Filling up the derivatives of `x²` is easy, but for integation we have `cos(2x)`. 

Typically, in order to integrate a composite function like this, where we have `2x` inside of a trig function, we'd use u-substitution. However, there is actually a little trick here we can use: when we are integrating a trig function with some function inside that is a constant times `x` (so not x² or
anything more complex like that but just `C⋅x`), we can just integrate the trig function keeping that same inside function, but then divide the whole expression by that constant. Here, `cos(2x)` becomes `sin(2x)/2`.



```js
⎰ x² cos(2x) dx

■
```


s | D   | I
--|-----|-----------
+ | x²  | cos(2x)
- | 2x  | sin(2x)/2
+ | 2   | 
- | 0   | 


### Tabular method, example 3: `⎰ e³ˣ sin(x) dx`

This intgral is peculiar because, first, it doesn't matter what we choose for `u` and what as `dv`, it's all the same. Second, assuming we let `u = e³ˣ` and `dv = sin(x)`, no column will ever reach 0. The derivatives of `e³ˣ` proceed as `3e³ˣ`, `9e³ˣ`, etc. The antiderivatives of `sin(x)` alternate between `sin` and `cos` functions (modulo their sign): `-cos(x)`, `-sin(x)`, etc.

s | D    | I
--|------|-----------
+ | e³ˣ  |  sin(x)
- | 3e³ˣ | -cos(x)
+ | 9e³ˣ | -sin(x)
  | …    | …

We try to match a term in the table to the terms of the integrand.

So, ignoring the first row, we want to find a product of the terms (between the D-column term in the current row and the I-column term in the next row) that together match terms in the integrand, or are a multiple of integrand terms.

We have the term `9e³ˣ` in the 3rd row of D-column and `-sin(x)` in the same row in I-column. Multiplying `9e³ˣ` and `-sin(x)` we get `-9 e³ˣ sin(x)` which almost matches the integrand `e³ˣ sin(x)` (if we ignore `-9`, which can be pulled out from the integrand in front of the integral).

Conculuding the definition of this stopping condition: we stop producing more rows in the table when we produce a row whose terms multiply to match the integrand, sans for some small discrepecies. In fact, if the mismatching part is something that can be pulled in front of the integral later, then we can count the match as successful.

So, for the current example, we stop generating more table entries after the 3rd row. After the table is completed, we proceed with the next step which is adding the alternating signs for terms of the D-column. Then we combine the terms following the usual schema, until we reach the D-term in the final row. We need to multiply both terms in the last row, integrate them and add that to the result expression.


```js
⎰ e³ˣ sin(x) dx = e³ˣ(-cos(x)) - 3e³ˣ(-sin(x)) + (⎰ 9e³ˣ(-sin(x)) dx)
⎰ e³ˣ sin(x) dx = -e³ˣ cos(x) + 3e³ˣ sin(x) + (⎰ -9 e³ˣ sin(x) dx)
⎰ e³ˣ sin(x) dx = -e³ˣ cos(x) + 3e³ˣ sin(x) - 9 (⎰ e³ˣ sin(x) dx)
// we have the same term (integral) on both sides of the equation, so
// we can move the one on the right to the left side to combine them:
10 ⎰ e³ˣ sin(x) dx = -e³ˣ cos(x) + 3 e³ˣ sin(x)
⎰ e³ˣ sin(x) dx = (-e³ˣ cos(x) + 3 e³ˣ sin(x)) ÷ 10
⎰ e³ˣ sin(x) dx = (3 e³ˣ sin(x) - e³ˣ cos(x)) 1⁄10
⎰ e³ˣ sin(x) dx = e³ˣ (3 sin(x) - cos(x)) ⅒ + C
∎
```

### Tabular method, example 4: `⎰ x⁴ ln(x) dx`



```js
⎰ x⁴ ln(x) dx
```
