# Integrating exponential functions

## Table of exponential functions

base | exponent | restriction | function   | expression
-----|----------|-------------|------------|------------
α    | 0        |             | constant   | α⁰ = 1
α    | 1        |             | identity   | α¹ = α
α    | -1       |             | inverse    | α⁻¹ = 1/α
α    | -n       | n ∈ ℕ       | reciprocal | α⁻ⁿ = 1/αⁿ
x    | n        | n ∈ ℕ       | power      | xⁿ
x    | e        |             |            | xᵉ
x    | x        |             |            | xˣ (`∫xˣdx` sophmore's dream)
e    | x        |             | exp(x)     | eˣ
e    | ax       | a ≠ 0       | exp(ax)    | 1/a eᵃˣ
e    | ax+b     | a ≠ 0       | exp(ax+b)  | 1/a eᵃˣᐩᵇ
n    | x        |             |            | nˣ
sinx | 2        |             |            | sin²x = (sinx)²
cosx | 4        |             |            | cos⁴x = (cos²x)²


- Exponentiation makes for *exponential* functions.
- Exponentiation subsumes reciprocals and roots.
- Fractions make for *rational* functions.
- Fractions with 1 as nominator make for *reciprocal* functions.
- Roots make for *radical* functions.
- Trig ops make for *trigonometric* functions.
- *Linear* fn has a term with `x` raised to at most the 1st power, `ax+b`
- In a linear fn, `ax+b`, `a` is the leading coefficient and the derivative
- In `exp(ax)`, `a ≠ 0` or we'll get a constant fn `exp(0) = e⁰ = 1`



## Exponential functions

An exponential function is a base rasied to a power (exponent). Depending on what the base and exponent are, we get different kinds of exponential fns. The default referant of exponential function is the function `exp(x)` aka `eˣ`, but there are many others that involve exponentiation.

The location of the variable of integration, `x`, determines the kind of exponential function we deal with. However, `x` may occur many times in an integrand, so `x` with the highest power (dominant `x` term) is the one that determines the type of the function. Variable `x` may occur as part of the base, as part of the exponent, or even in both (`xˣ`).

When `x` is a part of the base, we get functions of the general form `xⁿ`:
* If `n` is a non-negative integer we get *power functions*, (x⁰, x¹, x²).
* If `n` is a negative integer, `x⁻ⁿ`, we get the *reciprocals of power functions*, (1/x, 1/x², 1/x³, 1/x⁴), which are also *rational functions*.
* If `n` is a positive rational number we get *radical functions* of the general form `xⁿ′ʳ`, (√x = x¹′², ³√x⁴ = x⁴′³).
* If `n` is a negative rational number we get *reciprocals of radical functions*, aka *rational functions*, `x⁻ⁿ′ʳ` (-1/√x = -x⁻¹′², 1/³√x⁴ = x⁻⁴′³).
* If `n ∈ ℝ`, we're fucked (x^π, x^e, x^√2)
* If `n ∈ ℂ`, we're triple fucked (x^iπ, x^ie)

Summary (`n` is an exponent, `n,r  ∈ ℕ`)
- xⁿ   ⇒ power fns
- x⁻ⁿ  ⇒ recirocals of power fns (rational fns)
- xⁿ′ʳ  ⇒ radical fns
- x⁻ⁿ′ʳ ⇒ recirocals of radical fns (rational fns)

Note: the form of the expressions forces negative numbers: instead of saying that `n ∈ ℤ`, we write `x⁻ⁿ` so `n` may remain a member of ℕ, but the minus sign forces that natural number into a negative integer. This way both `n` and `r` can remain `n,r ∈ ℕ` throughout this summary above.


Exponential functions include
- `exp` function with `e` as base, raised to an exponent with `x`, `eˣ`
- base is another value, not `e`, raised to an exponent with `x`, `nˣ`
- power functions with `x` in the base, raised to a power, `xⁿ`
- power functions with `x` in both base and exponent, `xˣ`
- radical functions, `ʳ√xⁿ = xⁿ′ʳ`
- rational functions (reciprocals), `1/x = x⁻¹`


## Function `exp`

By default, an *exponential function* is one with base `e` that is raised to an exponent with `x`. Thus, similarly to e.g. `sin` function, `exp` function has the fixed base (it is always `e`) which gets raised to an exponent passed in as an argument. We may write it as `exp(x)` or `eˣ`.

The argument to `exp` is represented by `x`, as usual, but it may be anything at all. To suggest that the argument should be a linear function we may write `exp(ax+b)`. In fact, the form `exp(ax+b)` denotes the actual application of the `exp` function to the argument `ax+b`, but this notation is too often abused to suggest that the argument should be a linear function (although it can be anything, in general).

If we want to focus only on arguments to `exp` function that are linear functions, matching the form `ax+b`, we abuse the notation and write exp(ax+b). Thus, the version of this with `x` alone, i.e. `exp(x)`, may also be deemed as an argument that is a linear function by setting a=1 and b=0.


To get an exponent that is a linear function that matches the form `ax+b` we must restrict the coefficients not to collapse to zero, so `a ≠ 0` and `b ≠ 0`.

    exp(ax+b) = eᵃˣᐩᵇ       (for a ≠ 0, b ≠ 0)

The general form of a linear function is `ax+b` without imposing any restrictions. Other variants stemming from this general form include:
- `x`     with a=1 and b=0, 1x+0
- `ax`    with a≠0 and b=0, ax+0
- `x+b`   with a≠1 and b≠0, 1x+b
- `ax+b`  with a≠0, a≠1, and b≠0, ax+b

When `b=0`, the general form of a linear function collapses down to `ax`. When the form `ax` is used as an argument to `exp` function (i.e. as the exponent, `eᵃˣ`), we should restrict the coefficient `a` not to be zero, or it will degrade the entire function to a constant function `e⁰` that always yields 1 regardless of the input `x`, exp(0⋅x) = exp(0) = 1.


`exp` function
- exp(ax+b) = eᵃˣᐩᵇ
- exp(ax+b) = eᵃˣᐩᵇ (for a ≠ 0, b ≠ 0)
  - exp(2x+3)
  - exp(-5x-4)
- exp(x) = eˣ
- exp(ax) = eᵃˣ (for a ≠ 0)
- exp(x+b)
- exp(a+b) ⇒ constant


Below, `u` represents a linear function `ax+b` (and its variants `ax`, `x`, or `x+b`, etc.). When the linear function collapses to `x` alone, we get the famous integral `∫ eˣ dx`, the solution of which is the integrand `eˣ`, well, `eˣ + C`. Neither integration nor differentiation changes `eˣ`, i.e. it is its own derivative and integral.

```js
/* Derivatives */
exp′(x) = exp(x) /* or */ (eˣ)′ = eˣ
exp′(ax) = a⋅exp(ax) /* or */ (eᵃˣ)′ = a⋅eᵃˣ
exp′(ax+b) = a⋅exp(ax+b) /* or */ (eᵃˣᐩᵇ)′ = a⋅eᵃˣᐩᵇ


/* Antiderivatives */
∫ eˣ   dx =      eˣ   + C
∫ eᵘ   dx = 1/u′ eᵘ   + C // u is a linear function
∫ eᵃˣᐩᵇ dx = 1/a eᵃˣᐩᵇ + C

// or, equivalently
∫ exp(x) dx = exp(x) + C
∫ exp(x+b) dx = exp(x+b) + C
∫ exp(ax) dx = 1/a exp(ax) + C
∫ exp(ax+b) dx = 1/a exp(ax+b) + C

// coefficient b (eᵇ is a constant)
∫ eᵃˣᐩᵇ dx =
= ∫ eᵃˣ eᵇ dx
= eᵇ ∫ eᵃˣ dx
= eᵇ 1/a eᵃˣ
= 1/a eᵃˣ eᵇ
= 1/a eᵃˣᐩᵇ
```

Above, we see again the same pattern as with other functions based on linear functions `ax+b`: one of the factors in the solution is `1/a`, where `a` is the leading coefficient of the linear function. Thus, `∫ eᵃˣᐩᵇ dx = 1/a eᵃˣᐩᵇ + C`.

When `u` stands in for the linear function, let `u = ax+b`, we get an integral of the form `∫ eᵘ du`, whose solution is not just `eᵘ`, but there is also a term `1/u′`, namely, `∫ eᵘ du = 1/a eᵘ + C`. Previously, we had a similar term, `1/a`, where `a` is the leading coefficient. Now, that we don't have access to the coefficients of `ax+b`, we can nevertheless get at that leading coefficient by finding a derivative of `ax+b`, which is just `a`. Thus, `u′ = (ax+b)′ = a`.


## Exercise 1

Recall the derivative, `(aˣ)′ = aˣ ln(a)`, then revse it to get the antiderivative.

```js
// using the rule
∫ aˣ dx = aˣ/ln(a) + C // (for a > 0, a ≠ 0)

// he long way
∫ bˣ dx =
∫ eˡⁿ⁽ᵇ^ˣ⁾ dx =
∫ eˣˡⁿᵇ dx =
let k = ln(b)
∫ eᵏˣ dx =
1/k eᵏˣ + C = 
1/ln(b) eˣˡⁿᵇ + C = 
1/ln(b) bˣ + C
```
