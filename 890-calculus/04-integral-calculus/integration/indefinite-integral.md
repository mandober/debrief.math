# Integral Calculus :: Integration :: Integrals :: Indefinite integral

## Indefinite vs definite integrals

Integrals are either indefinite if they lack bounds, or definite if the bounds are present.

With the function that constitutes the integrand being the same, we can easily compare definite and indefinite integrals.

```js
// indefinite integral
⎛
⎜ f(x) dx
⎠

// definite integral
⎛ᵇ
⎜ f(x) dx
⎠ₐ
```

This suggests that definite integrals may be viewed as a subcategory of the larger and more general category of indefinite integrals. Every definite integral can easily be made into an indefinite integral, merely by discarding the bounds. In fact, solving either kind of integral involves the same steps until we obtain the antiderivative.



Indefinite integrals result in antiderivatives, which are functions with the constant of integration attached. To solve a definite integral we go through the same steps as for indefinite integral, until we obtain the antiderivative. The *result of indefinite integrals is an antiderivative, i.e. a function*. Solving indefinite integrals does not diverge - we always obtain the resulting function.

However, the process of solving a definite integral is not over. We need to substitute both bounds into the antiderivative function and evaluate it to find their difference (subtracting the function with upper bound as the arg from the function with lower bound as the arg). Thus, unlike with indefinite integrals, *the result of definite integrals is a constant*, unless they diverge.

to get to the antiderivative - with indefinite integrals the solution stops there, but with definite we proceed to evaluate the antiderivative function at both bounds, finding their difference, which *results in a constant* (as opposed to a function of indefinite integrals).



All integrals can be considered indefinite integrals if we disregard the interval over which they are evaluated.

>The difference between a definite and indefinite integral is the presence of an interval over which they may be evaluated

Indefinite integrals are a more general variety of integrals.

Definite integrals are associated with bounds - they are bounded. The lower bound (`a`) is denoted near the bottom of the integral sign and the upper bound (`b`) is denoted near the top.

```js
⎛ᵇ
⎜ f(x)dx
⎠ₐ
```

The lower and upper bound form an **interval**, which may be open, semiopen, semiclosed or closed. The interval, `(a, b)`, determines the bounds over which a definite integral may be evaluated. The function `f(x)` is called the **integrand**. The function `f(x)` is followed by `dx` which is a part of notation, and suggest that the antiderivative of the integrand is to be taken.

The evaluation of all integrals starts by finding the antiderivative, denoted `F(x)`, but since this is a family of function, there is also the **constant of integration**, `+ C` suffixed to it, `F(x) + C`. As a twist on the usual math denotation process, it may seem strange that the antiderivative is marked by uppercasing the function's name.

- `⎰       f(x)dx`    definite integral
- `⎰{a..b} f(x)dx`  indefinite integral

Indefinite integrals remain in the form of an antiderivative, `F(x) + C`, but definite integrals may be evaluated further, by plugging in the upper and lower bound and finding their difference:

```js
⎛ᵇ         ⎡          ⎤ᵇ
⎜ f(x)dx = ⎢ F(x) + C ⎥ = (F(b) + C) - (F(a) + C) = F(b) - F(a)
⎠ₐ         ⎣          ⎦ₐ
```

The constant of integration, `C`, will be eliminated during this procedure (as we have `C` and `-C`), so definite integrals may ignore it.
