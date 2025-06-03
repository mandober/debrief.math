# Integration by parts :: Examples

>Integration by parts formula: `⎰u dv = uv - ⎰v du`

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
