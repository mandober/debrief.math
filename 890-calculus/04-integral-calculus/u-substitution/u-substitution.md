# Substitution rule of integration

*Substitution* or *u-substitution* (named so due to the common use of variable `u`) is an integration rule that transforms a complex integral into a form that is easier to solve.

The substitution rule is a conterpart of the chain rule; in fact, the whole process resambles the reversal of the chain rule.

## Substitution

When an integrand is a complex combination of functions solving it is not always straightforward. Using the method of substitution, we can pick some part of the integrand in order to represent it by a fresh variable `u`. We also need to transform the differential `dx` into an expression in terms of `du`, which we get by differentiating the equation for `u`. 

Best explained by example, first using an indefinite integral `∫2x(x²+4)²dx`.

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

## Substitution and indefinite vs definite integrals

With indefinite integrals, unlike with definite integrals, the substitution doesn't involve transforing the bounds as there are none.

Indefinite integrals are also not evaluated as they yield a function called the general antiderivative, and thus it has the constant of integration added. 

Another consequence of yielding a function is the *back substitution* we do as the final step with indefinite integrals, when we replace `u` with its expression on the right-hand side. 

Definite integrals lack this step because they are evaluated down to a constant (so there's no `u` to substitute). What they do have is an earlier step that involves transforming the bounds in terms of `u`.

The substitution method may be applied to both definite and indefinite integrals but the procedure varies in some aspects. 


Integrals and u-substitution
- picking a subexpression to replace by `u`
- differentiating the equation for `u` to get an equation for `dx` in terms of `du`
- rewriting the integral by replacing all `x`'s by `u`'s, and replacing `dx` by an equation for `dx` in terms of `du` derived from the equation for `u`


Indefinite integrals and u-substitution

Definite integrals and u-substitution
- picking a subexpression to replace by `u`
- differentiating the equation for `u` to get an equation for `dx`
- transforming the bounds of integration to be in terms of `u`



## Deriving the substitution rule

We can derive the substitution rule of integration from the chain rule of differentiation. The chain rule is used to find a derivative of composition of functions.

In point-full notation:

    (f(g(x)))′ = f′(g(x)) ⋅ g′(x)

or, in point-free notation:

    (f ∘ g)′ = (f′ ∘ g) ⋅ g′

The chain rules finds the derivative of the outer function, `f`, and ignores its argument function `g`. This corresponds to replacing a subpression of the integrand by `u` - this subexpression is not touched. 

However, we cannot just replace the selected subexpression by `u` without also replacing the differential `dx` by an equation for `dx` in terms of `du`, that is, by the rhs of something of the form `dx = …du…`. This aspect of the substitution rule corresponds to the chain rule in the part when we multiply the composition of functions in the result, `f′ ∘ g`, by a derivative of `g` function, that is, by `g′(x)`.
