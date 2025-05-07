# Antiderivatives

Antiderivative is to integration what derivative is to differentiation.

An *indefinite integral* is a general antiderivative of function `f(x)` (the integrand), denoted by uppercased function name, `F(x)`. It is general because it represents a family of functions and thus it has the `+ C` suffix to mark a possible trailling constant. This is similar to how a derivative of a whole family of functions is the same if they are only different in the last term - the term which only contains a constant - and such terms end up being zero. For example, `(x² + 4)′` and `(x² + 7)′` are the same, `2x`.

The antiderivative we get from an integral, `F(x) + C`, has the derivative which is the original function, f(x): `(F(x) + C)′ = f(x)`.


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
