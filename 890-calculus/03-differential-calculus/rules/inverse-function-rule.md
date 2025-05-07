# Inverse function rule

https://en.wikipedia.org/wiki/Inverse_function_rule

```js
// inverse function rule
            1
(f⁻¹)′ = --------
         f′ ∘ f⁻¹

 d                1
---- f⁻¹(x) = ----------
 dx           f′(f⁻¹(x))

// example
f(x) = x², f⁻¹(x) = √x
(f⁻¹)′ = (√x)′ = (x¹′²)′ = 1/2 x⁻¹′² = 1/2 1/√x = 1/2√x

 d           1       1
---- √x = ------- = ----
 dx       2x ∘ √x    2√x

// (2x ∘ √x)(x) = x ⟼ √x ⟼ 2x = x ⟼ 2√x
```


In calculus, the **inverse function rule** is a formula that expresses the derivative of the inverse of a bijective and differentiable function `f` in terms of the derivative of `f`.

More precisely, if the inverse of `f` is denoted as `f⁻¹`, where `f⁻¹(y) = x` if and only if `f(x) = y`, then the inverse function rule is, in Lagrange's notation,

```js
// inverse function rule
                  1             1
[f⁻¹]′(y) = ------------- = -----------
            (f′ ∘ f⁻¹)(y)    f′(f⁻¹(y))
```

Evidently, we need to figure out the inverse of `f` in any case. Then, if the goal is to find the derivative of that inverse, we can either proceed directly, by taking a derivative of `f⁻¹`, or we can instead use this method if finding the derivative of `f` is easier.

For example, let `f(x) = x²`, so its inverse is `f⁻¹(x) = √x` and its derivative is `f′(x) = 2x`. The derivative of `f⁻¹` is then `1/(f′ ∘ f⁻¹)(x)`, that is `1/2√x`, using the inverse rule. Manually finding the derivative: `(√x)′ = x⁰⋅⁵ = 1/2x⁻⁰⋅⁵ = 1/2√x` gives the same result.


This formula holds in general whenever `f` is continuous and injective on an interval `I`, with `f` being differentiable at `f⁻¹(y) ∈ I` and where `f′(f⁻¹(y)) ≠ 0`. The same formula is also equivalent to the expression

```js
            1
𝒟[f⁻¹] = --------
         𝒟f ∘ f⁻¹
```

where `𝒟` denotes the *unary derivative operator* (on the space of functions).

Geometrically, a function and its inverse have graphs that are reflections around the identity line, `x = y`. This reflection operation turns the gradient of any line into its reciprocal.

Assuming that `f` has an inverse in a neighbourhood of `x` and that its derivative at that point is non-zero, its inverse is guaranteed to be differentiable at `x` and have a derivative given by the above formula.

The inverse function rule may also be expressed in Leibniz's notation. As that notation suggests,

```js
 dx    dy
---- ⋅ ---- = 1
 dy    dx
```

This relation is obtained by differentiating the equation `f⁻¹(y) = x` in terms of `x` and applying the chain rule, yielding that:

```js
 dx    dy     dx
---- ⋅ ---- = ----
 dy    dx     dx
```

considering that the derivative of `x` wrt `x` is 1.
