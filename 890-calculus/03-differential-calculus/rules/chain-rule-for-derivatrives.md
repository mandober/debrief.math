# Chain rule

>The Chain Rule enables us to differentiate a composite function, `f ∘ g`.

```
f(x)  = (h ∘ g)(x)  = h(g(x))
f′(x) = (h ∘ g)′(x) = h′(g(x)) × g′(x)     The Chain Rule
```

A function `f` is composite if it can be expressed as a composition of two other functions, `f = h ∘ g`, i.e. `f(x) = (h ∘ g)(x) = h(g(x))`.

But why is a special form required to take a derivative of composite functions?

Intuitively, it is because the variation of the domain of `f` is now governed by the function `g(x)` rather than just by `x`, and `g`'s rate of change with respect to `x` should somehow be taken into account.

## The Chain Rule

We want to derive a rule for the derivative of a composite function of the form `h ∘ g` in terms of the derivatives of `h` and `g`. This rule would allow us to differentiate composed functions in terms of derivatives of their constituents.

This rule is called the *Chain Rule*:
- if `g` is a differentiable function at `x`
- and `f` is differentiable at `g(x)`
- then the composition `f ∘ g` is differentiable at `x`

The derivative of the composite function using Lagrange notation is

    (f ∘ g)′(x) = f′(g(x)) × g′(x)

Equivalently, we let `u = u(x)` and `f = f(u)`, so `d/dx f(u) = f′(x) du/dx`.

Another equivalent derivation is
- if `y` is a function of `u`
- and `u` is a function of `x`
- then `dy/dx = dy/du × du/dx`

The application of the chain rule requires us to take the derivative of the outer function disregaring its argument which is the inner function. Then this is multiplied by the derivative of the inner function.

Coming up with consistent labels and a form to always use when we do this seems difficult to agree upon. Sometimes the inner function is replaced by a variable `u`, which should really be a function `u` in terms of `x`, `u(x)`, and not just `u` - guess the intentio nis the same as when stating `y = f(x)`, where a variable `y` stands for the function.

If we have a composed function `f(x) = h(g(x))` with `h` identified by `h(x) = x²` and `g` identified by `g(x) = 2x` (as a simple example), this means the function `f` is actually a composition of `h` and `g` as `f(x) = (2x)²`. To take a derivative of `f` we first take a derivative of the outer function `h`. Now, we can either replace the arg `2x` by `u` to obtain the form `f(u) = u²`, and proceed to take its derivative, `f′(u) = 2u`. But this is not all - we also need to multiply this by the derivative of the inner function, `(2x)′ = 2`. So we should actually get `f′(u) = 2u × 2`. Now we replace back `u` to obtaint he final derivative as `f′(u) = 2(2x) × 2`, which can be simplified to `f′(x)=6x` (now again in terms of `x`).

The problem with this is that we had the incomplete derivative `f′(u) = 2u` written above, which is unsightly and wrong. It is probably better to decompose the original function `f` as `h ∘ g`, then use this names consistently.

```
f(x) = (2x)²                  original function f
f(x) = (h ∘ g)(x)
f(x) = (x² ∘ 2x)(x) = (2x)²   original function f decomposed into h and g

h(x) = x²                     outer function h
g(x) = 2x                     inner function g

f′(x) = (h ∘ g)′(x)           Taking a derivative of a composite fn by
f′(x) = h′(g(x)) × g′(x)      applying the Chain Rule

h′(x) = 2x                    derivative of h
g′(x) = 2                     derivative of g
f′(x) = 2(2x) × 2             assemble the overall derivative
f′(x) = 6x                    simplification
```

## The General Power Rule

A very common type of composite functions is the exponential function of the form `f(x) = (u(x))ⁿ`. That is, we have some expression raised to a power. This expression is what is commonly replaced by the inner function `u(x)`, while the outer function remains an exponential function.

We can derive a rule for differentiating functions of this form as a special case of the Chain Rule and call it the General Power Rule:

    if y = (u(x))ⁿ then
    dy/dx = n(u(x))ⁿ⁻¹ × d/dx u(x)

The first part is the application of the usual power rule, `(xⁿ)′ = nxⁿ⁻¹`, except the argument (and base) is not just `x` but a function `u(x)`. This is then multiplied by the derivative of that (inner) function `u(x)`. The general power rule is nothing special, it is just a logical consequence of applying the usual chain rule to a function of this particular form (exp raised to a power).

## Examples

### Example 1

If we have a function `f(x) = √(2x³ - 9)`, we can decompose it into two functions `g` and `h`, but first we rewrite it in a more suitable form as 
`f(x) = (2x³ - 9)⁰⋅⁵`. Then we let the inner function be `g(x) = 2x³ - 9`, while the outer function becomes `h(x) = x⁰⋅⁵`. The function `f(x) = h(g(x))` is now an explicit composition and we can apply the chain rule.

First, we take a derivative of the outer function `h` disregaring its arg g(x).
- derivative of `h(x) = x⁰⋅⁵` is `h′(x) = 1/2x⁻⁰⋅⁵`
- derivative of `g(x) = 2x³-9` is `g′(x) = 6x`
- derivative of `f = h(g(x))` is `1/2 × (2x³-9)⁻⁰⋅⁵ × 6x`

### Example 2

Find the effect of `g` by comparing the derivative of `f(x) = x²` with the derivative of `f(x) = (5x)²`, where `g(x) = 5x`.

```
f₁(x) = x²
f₁′(x) = 2x

f₂(x) = (5x)² = 25x²
f₂′(x) = 50x

f₃(x) = (g(x))²
g(x) = 5x
g′(x) = 5
f₃′(x) = 2(5x)×5 = 50x
```

This example shows that taking a derivative of a single function `f₂(x) = 25x²` is the same as taking a derivative of the composite function `f₃(x) = h(g(x))` where `h(x) = x²` and `g(x) = 5x`, such that `f₁(x) = (5x)²`. The derivatives of both `f(x) = (5x)²` and composition `f(x) = h(g(x)) = (x² ∘ 5x)(x)`, are the same, `f′(x) = 50x`.

The answer to the question of how `g` affects the composite function is that it modifies the rate of change of `f(x) = x²`.


### Example 3

Apply the chain rule to find the derivative of `f(x) = (2x³ - 4x² + 5)²`.

```
f(x) = (2x³ - 4x² + 5)²

h(x) = x²
h′(x) = 2x

g(x) = 2x³ - 4x² + 5
g′(x) = 6x² - 8x

f′(x) = 2(2x³ - 4x² + 5)² × (6x² - 8x)
```

### Example 4

Find the derivative of

```
f(x) = ((2x + 3) / (5x - 1))⁵

h(x) = x⁵
h′(x) = 5x⁴

       2x + 3
g(x) = ------
       5x - 1

        5(2x + 3) - 2(5x - 1)    10x + 15 - 10x + 2       -17
g′(x) = ---------------------- = ------------------- = -----------
              (5x - 1)²              (5x - 1)²          (5x - 1)²


            (2x + 3)⁴       -17
f′(x) = 5 × ---------- × -----------
            (5x - 1)⁴     (5x - 1)²

         -85(2x + 3)⁴
f′(x) = --------------
          (5x - 1)⁶
```

### Example 5

Find the line equation for the tangent line at the point (1, 4) of the function y = 8 / (x² + 1).

```
y = 8 / (x² + 1)
y = 8(x² + 1)⁻¹

y′ = -8(x² + 1)⁻² × 2x
y′ = -16x / (x² + 1)²

y′(1) = -16(1) / (1² + 1)² = -16 / 4 = -4

slope, m = -4

y = mx + b
y = -4x + b
4 = -4(1) + b
4 = -4 + b
b = 8
y = -4x + 8
```

The tangent line equation at point (1,4) is `y = -4x + 8`.
