# Integration by parts :: Tabular method

>Integration by parts formula: `⎰u dv = uv - ⎰v du`

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

## Example 1: `⎰ x³ eˣ dx`

(see above)

## Example 2: `⎰ x² cos(2x) dx`

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
