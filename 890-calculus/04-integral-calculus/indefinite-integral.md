# Indefinite integral

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
