# Differentiation rules

https://en.wikipedia.org/wiki/Differentiation_rules

This article is a summary of differentiation rules, that is, rules for computing the derivative of a function.

## Contents

- 1. Elementary rules of differentiation
  - 1.1. Constant term rule
  - 1.2. Differentiation is linear
  - 1.3. Product rule
  - 1.4. Chain rule
  - 1.5. Inverse function rule
- 2. Power laws, polynomials, quotients, and reciprocals
  - 2.1. Polynomial or elementary power rule
  - 2.2. Reciprocal rule
  - 2.3. Quotient rule
  - 2.4. Generalized power rule
- 3. Derivatives of exponential and logarithmic functions
  - 3.1. Logarithmic derivatives
- 4. Derivatives of trigonometric functions
- 5. Derivatives of hyperbolic functions
- 6. Derivatives of special functions
  - 6.1. Gamma function
  - 6.2. Riemann zeta function
- 7. Derivatives of integrals
- 8. Derivatives to nth order
  - 8.1. Faà di Bruno's formula
  - 8.2. General Leibniz rule
- 9. See also
- 10. References
- 11. Sources and further reading
- 12. External links


## 1. Elementary rules of differentiation

Unless otherwise stated, all functions are functions of real numbers that return real values, `ℝ → ℝ`, although, more generally, the formulas apply wherever they are well defined, including the case of complex numbers.

- Linearity of differentiation
  - Constant term rule
  - Sum rule
  - Difference rule
- Product rule
- Chain rule
- Inverse function rule
- Reciprocal function rule


### 1.1. Constant term rule

For any value of constant `c`, where `c ∈ ℝ`, if `f(x)` is a constant function given by `f(x) = c`, then `df/dx = 0`; also denoted `f′(x) = 0`.

```js
// Constant term rule
f(x) = k    // where k ∈ ℝ
f′(x) = 0

// for example
(0)′ = 0
(1)′ = 0
(x⁰)′ = 0∙x⁻¹ = 0 ∙ 1/x = 0
(2√2)′ = 0
(π)′ = 0
(1/2 + π)′ = 0
(e⁻¹′² ÷ π)′ = 0
```

#### Proof

Let `c ∈ ℝ` and `f(x) = c`. By the definition of the derivative:

```js
                 f(x + h) − f(x)
f′(x) = lim{h→0} ----------------
                       h

                 c − c    0          0
f′(x) = lim{h→0} ----- = ---- = 0 = ---- = 0
                   h      h          0

f′(x) = lim{h→0} 0/h = 0
```

Since the function is constant it gives the same result (`c`) for any input, thus `f(x + h)` is `c` as is `f(x)`. So, we get `c - c = 0` divided by `h`, `0/h`, which is already 0. If we let it simmer a little longer, since `h` tends to 0, the result tends to `0/0`, i.e. to 0.

This shows that the derivative of any constant function is 0.

#### Geometric explanation

The derivative of the function at a point is the slope of the line tangent to the curve at the point.

>The *slope of the constant function* is 0, because the tangent line to the constant function is *horizontal* and its angle is 0.

In other words, the value of the constant function, `y`, will not change as the value of `x` increases or decreases.

### 1.2. Differentiation is linear

Linearity of differentiation:
https://en.wikipedia.org/wiki/Linearity_of_differentiation

The derivative of any linear combination of functions equals the same linear combination of the derivatives of the functions.

Let `f` and `g` be functions, with `α` and `β` constants:

    d/dx (α∙f(x) + β⋅g(x)) = α⋅f′(x) + β⋅g′(x)

For any functions `f` and `g` and any real numbers `a` and `b`, the derivative of the function `h(x) = af(x) + bg(x)` wrt `x` is `h′(x) = af′(x) + bg′(x)`.

In Leibniz's notation, this formula is written as:

```js
d(af + bg)       df       dg
----------- = a ---- + b ----
    dx           dx       dx
```

Special cases include:
- The constant factor rule: `(a∙f)′ = a ∙ f′`
- The sum rule:        `(f + g)′ = f′ + g′`
- The difference rule: `(f − g)′ = f′ − g′`


### 1.3. Product rule

Main article: Product rule
https://en.wikipedia.org/wiki/Product_rule

For the functions `f` and `g`, the derivative of the function `h(x) = f(x)g(x)` with respect to `x` is:

    h′(x) = (fg)′(x) = f′(x) g(x) + f(x) g′(x)

In Leibniz's notation, this formula is written: 

```js
d(f+g)      df       dg
------ = g ---- + f ----
  dx        dx       dx

// Legrange notation
(fg)′(x) = f′(x) g(x) + f(x) g′(x)
// PF notation
(fg)′ = f′g + fg′
```

### 1.4. Chain rule

Main article: Chain rule
https://en.wikipedia.org/wiki/Chain_rule

Chain rule is related to *function composition*.

The derivative of the composition of two functions `f` and `g` is not merely the composition of derivatives, (f ∘ g)′ ≠ f′ ∘ g′.

The derivative of the function `h(x) = f(g(x))` is `h′(x) = f′(g(x)) ∙ g′(x)`.

```js
(f ∘ g)′(x) = (f(g(x)))′ = f′(g(x)) ∙ g′(x)
(f ∘ g)′(x) = f′(g(x)) ∙ g′(x)
(f ∘ g)′ = (f(g(x)))′
(f ∘ g)′ = (f′ ∘ g) ∙ g′
```

Take a derivative of `f` but don't touch its arg - arg is `g(x)`; then multiply `f′(g(x))` by the derivative of `g`. So, `f′(g(x)) ∙ g′(x)`.

For example

```js
h(x) = (x - 3)² + 2
g(x) = x - 3
f(x) = x²
j(x) = x + 2

x |> g(x) |> f(x) |> j(x)
2 |> -1 |> 1 |> 3

j ∘ f ∘ g = j(f(g(x)))
g(2) = 2 - 3 = -1
f(-1) = (-1)² = 1
j(1) = 1 + 2 = 3

g(2) = 2 - 3 = -1
f(g(2)) = f(-1) = (-1)² = 1
j(f(g(2))) = j(f(-1)) = j(1) = 3


x ⟼ (x - 3) ⟼ (x² + 2)
x ⟼ (- 3) ⟼ x² ⟼ (+ 2)

(f ∘ g)(x) = f(g(x)) =
= (x² + 2) ∘ (x - 3)
= (x² + 2) ∘ (x - 3)



```

In Leibniz's notation, this formula is written as:

```js
 d          dz       |          d
--- h(x) = ---- f(z) |       ∙ ---- g(x)
dx          dz       |ᶻ⁼ᵍ⁽ˣ⁾    dx
```

often abridged to

```js
d h(x)   d f(g(x))    d g(x)
----- = --------- ∙ -------
 dx      d g(x)        dx
```

Focusing on the notion of maps, and the differential being a map 𝓓, this formula is written in a more concise way as:

    [D(f ∘ h)]ₓ = [Df]ₕ₍ₓ₎ ∙ [Dh]ₓ

### 1.5. Inverse function rule

Main article: Inverse function rule
https://en.wikipedia.org/wiki/Inverse_function_rule

If the function `f` has an inverse function `g`, meaning that `g(f(x)) = x` and `f(g(y)) = y`, then `g′ = 1/(f′ ∘ g)`.

```js
                  1
[f⁻¹]′(y) = -------------
            (f′ ∘ f⁻¹)(y)
```

In Leibniz notation, this formula is written as:

```js
 d x       1
---- = ---------
 d y     dy/dx
```

## 2. Power laws, polynomials, quotients and reciprocals

### 2.1. Power rule

The Polynomial Rule or elementary Power Rule.

Main article: Power rule
https://en.wikipedia.org/wiki/Power_rule

If `f(x) = xʳ`, for all r ∈ ℝ, **r ≠ 0**, then `f′(x) = rxʳ⁻¹`.

When `r = 1`, this formula becomes the special case that, 
if `f(x) = x`, then `f′(x) = 1`. [no…need]

```js
/* power rule */
∀r(r ∈ ℝ ∧ r ≠ 0). f(x) = xʳ ⇒ f′(x) = rxʳ⁻¹

// in brief
(xⁿ)′ = nxⁿ⁻¹
// ∫xⁿdx = xⁿᐩ¹/n+1

// identity is not really a special case
(x)′ = (x¹)′ = 1x⁰ = 1

// examples
(6)′ = 0
(x⁰)′ = (0x⁻¹)′ = 0
(x⁰)′ = (1)′ = 0
(x)′ = (x¹)′ = 1∙x⁰ = 1∙1 = 1
(6x)′ = x
(x²)′ = 2x
(7x²)′ = 14x
(x² + 3x⁴ + x + 5)′ = 2x + 12x³ + 1
(2 - x)′ = -1
(2 - 3x)′ = -x



// iterated differentiation
(x³)′ = 3x²
(3x²)′ = 6x
(6x)′ = x
(x)′ = 1
(1)′ = 0

(x³)⁽⁰⁾ = x³
(x³)⁽¹⁾ = 3x²
(x³)⁽²⁾ = 6x
(x³)⁽³⁾ = x
(x³)⁽⁴⁾ = 1
(x³)⁽⁵⁾ = 0
```

Combining the power rule with the sum and constant multiple rules permits the computation of the derivative of any polynomial.


### 2.2. Reciprocal rule

Main article: Reciprocal rule
https://en.wikipedia.org/wiki/Reciprocal_rule

The derivative of `h(x) = 1/f(x)` for any (nonvanishing) function `f` is:

    h′(x) = −f′(x) / (f(x))²

wherever `f` is nonzero.

```js
// reciprocal rule of differentiation
           f′(x)
h′(x) = - -------
          (f(x))²
```


In Leibniz's notation, this formula is written:

```js
d (1/f)    -1      df
------- = ---- ∙ ----
   dx      f²     dx

d(1/f)/dx = −1/f² df/dx
```

The reciprocal rule can be derived either from the quotient rule or from the combination of power rule and chain rule.

### 2.3. Quotient rule

Main article: Quotient rule
https://en.wikipedia.org/wiki/Quotient_rule

If `f` and `g` are functions, then: `(fg)′ = f′g − g′f/g²`, wherever `g≠0`.

```js
// Quotient rule of differentiation
f′(x)    f′(x) g(x) - f(x) g′(x)
----- = ------------------------
g′(x)          (g(x))²

// in point-free notation
 f′    f′g - fg′
---- = ---------
 g′        g²
```


This can be derived from the product rule and the reciprocal rule.


### 2.4. Generalized power rule

Main article: Power rule
https://en.wikipedia.org/wiki/Power_rule

The elementary power rule generalizes considerably. The most general power rule is the *functional power rule*: for any functions `f` and `g`,

    (fᵍ)′ = (e^(g ln f))′ = fᵍ(f′ g/f + g′ ln f)

wherever both sides are well defined.

Special cases:

If `f(x) = xᵃ`, then `f′(x) = axᵃ⁻¹` when `a` is any nonzero real number and `x` is positive.

The reciprocal rule may be derived as the special case where `g(x) = −1`.

## 3. Derivatives of exponential and logarithmic functions

### 3.1 Logarithmic derivatives

## 4. Derivatives of trigonometric functions

Main article: Differentiation of trigonometric functions
https://en.wikipedia.org/wiki/Differentiation_of_trigonometric_functions


## 5. Derivatives of hyperbolic functions

https://en.wikipedia.org/wiki/Hyperbolic_functions#Derivatives
Main article: Hyperbolic functions § Derivatives


## 6. Derivatives of special functions

### 6.1. Gamma function

Main article: Gamma function
https://en.wikipedia.org/wiki/Gamma_function

### 6.2. Riemann zeta function

https://en.wikipedia.org/wiki/Riemann_zeta_function

## 7. Derivatives of integrals

Main article: Differentiation under the integral sign
https://en.wikipedia.org/wiki/Differentiation_under_the_integral_sign

## 8. Derivatives to nth order

### 8.1. Faà di Bruno's formula

https://en.wikipedia.org/wiki/Fa%C3%A0_di_Bruno%27s_formula

### 8.2. General Leibniz rule

https://en.wikipedia.org/wiki/General_Leibniz_rule
