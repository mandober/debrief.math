# Integrating radical functions

Radical functions are functions involving roots (radical and radicand).

## Exercise 1: Linear fn for radicand

```js
∫ ³√(2x+1) dx
= ∫ (2x+1)¹′³ dx

    let u = 2x+1
    du/dx = 2
    dx = du/2

= ∫ u¹′³ du/2
= 1⁄2 ∫ u¹′³ du  // 1⁄2 is the reciprocal of the leading coef. of x (2)
= 1⁄2 3⁄4 u⁴′³
= 3⁄8u⁴′³
= 3⁄8(2x+1)⁴′³ + C
= 3⁄8 ³√(2x+1)⁴ + C
```
