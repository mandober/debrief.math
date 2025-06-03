# Integrating logarithmic functions

## Natural logarithm

Integrating `ln` function using IBP.
>`∫ ln(x) dx` = `x ln(x) - x + C`

```js
// integral with ln(x) as integrand
∫ ln(x) dx

      u = ln(x)            dv = dx
//    (differentiate)      (integrate)
      du/dx = ln′(x)        ∫ dv = ∫ dx
      du = 1/x dx           v = x
      dx = 1/x du           x = v

// use the IBP formula:
∫ u     dv = u     v - ∫ v du
∫ ln(x) dx = ln(x) x - ∫ x 1/x dx
∫ ln(x) dx = xln(x) - ∫ dx
∫ ln(x) dx = xln(x) - x + C
```
