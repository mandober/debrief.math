# Substitution

Substitution or u-substitution is a rule of integration employed when we have a combination of functions as the integrand. We have to pick a subexpression of the integrand and have it represented by a fresh variable `u`. We'll rewrite the integral with `u` in place of the selected subexpression, but we also need to account for other parts of integral, primarily for the differential `dx` which needs to rewriten as an expression in terms of `du` derived from the equation for `u`. But what about other leftover expressions?

For example, with the following integral, we pick `u = x²+4`, and its derivative is then `du/dx=2x`; from this we get the equation for `dx` in terms of `du`, namely `dx = du/2x`.

```js
// in this integral, we pick u=x²+4
∫ 2x (x²+4)² dx

   let u = x²+4
       du/dx = 2x
       dx = du/2x

// rewrite the integral
∫ 2x u² du/2x
// simplify the integral
∫ u² du
```

But here we are extremely fortunate that the part of the equation for `dx` in terms of `du` has `2x` in the denominator, the same `2x` we also have as a factor in the integrand - meaning they will cancel each other, leaving us with a particularly clean integral `∫ u² du`, which is then easily solved.

>What happens if no such simplification occurs?

Another thing that can occur is that we don't get two expressions to completely annihilate each other, but a constant gets left behind. Well, constants are easy - we can pull them out in front of an integral. For example,

```js
// we pick a nested subexp for u
∫ 4x √(16-x²) dx =

    let u = 16-x²
        du/dx = -2x
        dx = -du/2x

// rewriting the integral we get
= ∫ 4x u¹′² (-du/2x)
// 4x and -1/2x combine into -4x/2x = -2
= ∫ -4x u¹′² du/2x
= ∫ -4x u¹′² du 1/2x
= ∫ -4x ⋅ 1/2x ⋅ u¹′² ⋅ du
= ∫ -4x/2x ⋅ u¹′² ⋅ du
= ∫ -2 ⋅ u¹′² ⋅ du
// we can pull the constant out in front of the integral:
= -2 ∫ u¹′² ⋅ du

// we find the antiderivative
= -2 ∫ u¹′² ⋅ du
```
