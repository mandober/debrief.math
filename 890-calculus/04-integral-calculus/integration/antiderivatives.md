# Antiderivatives

Antiderivative is to integration what derivative is to differentiation. But how exactly? Is the result of an indefinite integral a function that is called an antiderivative? Is then the result of a definite integral a constant, called an integral? What is the exact relation between an antiderivative and integral? The *integrand* is the function to be integrated.

An *indefinite integral* is a general antiderivative of function `f(x)`, called the *integrand*, denoted by uppercased function name, `F(x)`. It is general because it represents a family of functions and thus it has *the constant of integration* attached.

This is similar to how a derivative of a whole family of functions is the same if they are only different in a constant term (which ends up as zero). For example, `(x² + 4)′` and `(x² + 7)′` have the same derivative, `2x` function.

In fact, both differentiation and integration of an indefinite integral give *functions as result*, and only the integration of a definite integral gives a constant. There is a disbalance between differentiation and integration in that sense.

The antiderivative, `F(x) + C`, we get from integration, if differentiated gives back the original function, `f`, that is, `(F(x) + C)′ = f(x)`.

- `f(x)` function `f`
- `f′(x)` derivative of `f`
- `F(x)` antiderivative of `f`
- `F′(x) = f(x)` differentiating an antiderivative of `f` gives back `f`


In fact, derivatives and antiderivatives are each other reversals. In the direction of differentiation, a function f(x) has a derivative `f′(x)` and then the antiderivative of the function f′(x) is f(x). An antiderivative of function f(x) is weirdly denoted by `F(x)`, meaning that integrating f(x) gives us F(x). But differentiating F(x) gives f(x). This also means that we can easily check the result of integration by differentiating it - if we get the integrand function back, then it is correct.

Antiderivative of a derivative gives back `f(x)`, just like a derivative of an antiderivative.

>[F′(x) + C]′ = f(x) = ∫ f′(x) dx


```js
⎛
⎜ f(x)dx = F(x) + C
⎠
```


```js
⎛ᵇ              ⎥ᵇ
⎜ f(x)dx = F(x) ⎥  = F(b) - F(a)
⎠ₐ              ⎥ₐ
```

When integrating a function, we first need to find its *antiderivative*, denoted `f(x) dx`. This is finding a another function that when differentiated gives back the original function.
- let `f(x) = 2x`, then `(2x)dx = x² + C`, and `(x² + C)′ = 2x`

Evaluating a definite integral

```
⎛ᵇ
⎜ f(x)dx
⎠ₐ
```

between the bounds `a` and `b`

```
⎛ᵇ       ⎤ᵇ
⎜ f(x)dx ⎥  = F(b) - F(a)
⎠ₐ       ⎦ₐ

⎛⁴
⎜ (x²)dx
⎠₂

⎛⁴         ⎤⁴
⎜ 2x =  2x ⎥  = 2(4) - 2(2) = 8 - 4 = 4
⎠₂         ⎦₂
```
