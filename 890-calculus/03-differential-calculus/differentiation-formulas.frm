# Differentiation formulas

```js
// Power rule
(xⁿ)′ = nxⁿ⁻¹

// ln
∎ ln′(x)  = 1/x
∎ ln′(ax) = 1/x
∎ ln′(ax+b) = a/ax+b


ln′(u)    = u′ ∙ 1/ax+b = a/ax+b = a/a(x + b/a) = 1/(x+b/a)
ln′(ax+b) = a ∙ 1/ax+b = a/ax+b = a/a(x + b/a) = 1/(x+b/a)

// reciprocal
(1/x)′  = (x⁻¹) = -1x⁻² = -x⁻² = -1/x²
(1/ax)′ = (x⁻¹) = -1x⁻² = -x⁻² = -1/x²
```

## Natural logarithm formulas

>ln′(x) = 1/x

```js
ln′(x) = 1/x
f(x) = ln(x)
f′(x) = 1/x
```

A more general formula is concerned with the case when the argument to `ln` is a linear function, `ax+b`. To calculate the derivative of `ln′(ax+b)`, we use the chain rule because the function `ln′(ax+b)` is a composition of two functions: the outer function `f(x) = ln(x)` and inner function `g(x)=ax+b`. Their composition is `f ∘ g` i.e. `ln(ax+b)`

```js
let f(x) = ln(x)
let g(x) = ax+b
let h(x) = f ∘ g
// Thus, h(x) means we first apply the inner fn 'g' to 'x',
// the result of which is then passed into the outer fn 'f'
h(x) = f(g(x))
// fn 'g' takes an arg 'x' and produces a constant
// by multiplying it by 'a' then adding b to it.
g(x) = ax+b
// With abstract coefficients 'a' and 'b', the application
// of 'g' looks exactly the same its definition. However,
// with concrete coefficients, it becomes, e.g. g(x) = 2x+3
g(x) = 2x+3
// The applying it to arg 4 produces
g(4) = 2(4)+3 = 8+3 = 11

// The similar thing happens with the f function.
// The function f is actually a wrapper of `ln`, but
// it doesn't do anything except forwards the argument to 'ln'.


h(x) = f(g(x)) = f(ax+b)


ln′(ax+b)

    u = ax+b
    du = a dx

    ln′(x) = 1/x

    (f ∘ g)′ = (f′ ∘ g) ∙ g′
    f(x) = ln(x)
    g(x) = ax+b

    [f(g(x))]′ = f′(g(x)) ∙ g′(x)

    d/dx ln(χ) = ln′(χ) = 1/χ
    y = ln(x)
    d/dx y = ln′(x)
    dy/dx = 1/x
    dy = 1/x dx
    // dy = 1/x dx = dx/x = d (haha)
    y = g(x) = ax+b
    d/dx y = (ax+b)′
    dy/dx = a
    dy = a dx

[f(g(x))]′ = f′(g(x)) ∙ g′(x)
[ln(ax+b)]′ = ln′(ax+b) ∙ (ax+b)′
           = 1/(ax+b) ∙ (ax+b)′
           = 1/(ax+b) ∙ a
           = a/(ax+b)
```
