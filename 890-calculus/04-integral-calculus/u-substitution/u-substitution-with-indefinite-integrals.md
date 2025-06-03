# Indefinite integrals and u-substitution

Using an indefinite integral `∫ 2x(x²+4)² dx` as example.

This integrand is deemed to complex to integrate, so we employ the substitution rule: the very first and crucial thing we do, which affects everything else, is to select a part of the integrand `2x(x²+4)²` to be substituted by `u`.

Whatever we pick will be made into an equation for `u` that we'll need to differentiate, so we should pick something easily differentiable, or something we know how to differentiate.

One guidline says we should go for the nested expression if there is one, and so we select `x²+4` here. So now we have an equation for `u` (1) as we let `u = x²+4`. We intend to replace `x²+4` by `u` when we rewrite the integral. 

Before we can rewrite it, we must express the differential `dx` in terms of `du`. This is done by differentiating both sides of the equation for `u` (2-3). We get an equation for `du` (4), which we don't need, and an equation for `dx` (5) which we do.

Now we can rewrite the integral replacing the selected subexpression `x²+4` by `u` and replacing `dx` by the expression `du/2x` (6).

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

Now that the integral is rewritten (6), we can easily solve it. 

It turns out we can even cancel the `2x` as a multiplier with the `2x` in the denominator to get an equivalent integral, `∫ u² du` (7).

Using the power rule, this is now easy to solve since the antiderivative of `u²` is `u³/3` (8).

Finally (9), we do back substitution, replacing `u` by the expresion `x²+4`, not forgetting to add the constant of integration, `C`.

With indefinite integrals, as we see above, the substitution, unlime with definite integrals, doesn't involve adjusting the bounds as there are none. Indefinite integrals are also not evaluated as they yield a function called the general antiderivative, and thus it has the constant of integration added. Another consequence of yielding a function is the *back substitution* we do as the final step with indefinite integrals, when we replace `u` with its expression on the right-hand side. Definite integrals lack this step because they are evaluated down to a constant (so there's no `u` to substitute). What they do have is an earlier step that involves transforming the bounds in terms of `u`.

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
