# Integrating linear functions

A linear function is one of the form `ax + b`, consisting only of constant terms and first degree terms (rasing the variable `x` only to the implicit first power).

Below, the linear function is
- the base of exponentiation, it is being raised to some power `n`
- the exponent with base as some var, `c`
- the exponent with base as `e`, i.e. arg to `exp` fn
- the denominator of the fraction that is, overall, a rational fn

The variable of integration, `x`, when it occurs by itself, can still be interpreted as a linear function, `ax+b`, with a=1 and b=0.

The derivative of a linear function `ax+b` is `a`, i.e. `(ax+b)′ = a`. Some formulas below, with `u` standing for a linear fn, have a factor `1/u′` in the result; that `u′` is typically the coefficient `a` from `ax+b` linear equation.

The most general form of the formulas is one with `u` standing for any linear function, but each of these formulas is also given with explicit linear function `ax+b` which `u` stands for, `u = ax+b`. There is also a formula variant when the linear function collapses to just `x` (when a=1 and b=0).

## Rational functions with linear denominators

Integrating rational functions that have a linear function as denominator, gives solutions in terms of the natural logarithm. Natural logarithm only accepts arguments larger or equal to 1, hence the use of the absolute value bars around the argument. `ln(0) = undefined`, and `ln(1) = 0` since `e⁰ = 1`.

```js
// 'u' is a linear function ax+b collapsed to just x
∫ 1/x dx = ln|x| + C

// 'u' stands in for a linear function ax+b
∫ 1/u du = 1/u′ ln|u| + C

// 'u' is replaced by explicit linear function ax+b
∫ 1/(ax+b) dx = 1/a ln|ax+b| + C
```

The variable of integration, `x`, occurs in the linear function which is a denominator of these rational (or reciprocal) functions.

## Exponential functions

The variable of integration, `x`, occurs inside the linear function that is the arguments to function `exp(x) = eˣ`.

```js
// u is just x
∫ eˣ dx = eˣ + C

// u is a linear function
∫ eᵘ dx = 1/u′ eᵘ + C

// u is a linear function ax+b
∫ eᵃˣᐩᵇ dx = 1/a eᵃˣᐩᵇ + C
// or, equivalently
∫ exp(ax+b) dx = 1/a exp(ax+b) + C
```

Again, we see the same pattern: when stated in terms of `u`, one of the factors of the solution is `1/u′` where `u′` is a derivative of the linear function `u`; it corresponds to the leading coefficient `a` when the explicit form of a linear function `ax+b` replaces `u`.

## Exponential functions with linear base

The variable of integration, `x`, occurs inside the linear function that is the base in the exponentiation where it is raised to some power.

```js
// 'u' is a linear function collapsed to x
∫ xⁿ dx = xⁿᐩ¹/(n+1) + C

// 'u' stands in for a linear function
∫ uⁿ dx = 1/u′ uⁿᐩ¹/(n+1) + C

// 'u' is replaced by an explicit linear function ax+b
∫ (ax+b)ⁿ dx = 1/a (ax+b)ⁿᐩ¹/(n+1) + C
```

Radical functions also belong here because we can express roots as powers, i.e. `ʳ√xⁿ = xⁿ′ʳ`.

```js
∫ √x dx
= ∫ x¹′² dx
= x³′²/3⁄2
= 2x³′²/3
= 2√x³/3
= 2⁄3 √x³ + C

∫ √(ax+b) dx
= ∫ (ax+b)¹′² dx
= 1/a ⋅ (ax+b)³′² / 3⁄2
= 1/a ⋅ 2(ax+b)³′² / 3
= 2/3a ⋅ (ax+b)³′²
= 2/3a ⋅ √((ax+b)³) + C
```


## Exponentials with linear exponent and base other then `e`

The variable of integration, `x`, occurs inside the linear function that is the exponent in the exponentiation of some base other then `e`.

```js
// 'u' is a linear function collapsed to x
∫ kˣ dx = kˣ/ln(k) + C

// 'u' stands in for a linear function
∫ kᵘ dx = 1/u′ ⋅ kᵘ ⋅ 1/ln(k) + C

// 'k' is some variable raised to the linear exponent ax+b
∫ kᵃˣᐩᵇ dx = 1/a ⋅ kᵃˣᐩᵇ ⋅ 1/ln(k) + C
```

## Logarithmic functions

Integrating logarithms of an arbitrary base `k` with linear functions as arguments. One of the factors in the results is the same logarithm that was the integrand.

```js
// 'u' is a linear function collapsed to x
∫ log ₖ x dx = x log ₖ |x/e| + C

// 'u' stands in for a linear function
∫ log ₖ u dx = 1/u′ ⋅ ax+b ⋅ log ₖ |u/e| + C

// 'u' is replaced by an explicit linear function ax+b
∫ log ₖ (ax+b) dx = 1/a ⋅ ax+b ⋅ log ₖ |(ax+b)/e| + C
```


## Trig functions

```js
∫ sin(x)    dx =       -cos(x)   + C
∫ sin(ax+b) dx = -1/a ⋅ cos(ax+b) + C

∫ cos(x)    dx =      sin(x)    + C
∫ cos(ax+b) dx = 1/a ⋅ sin(ax+b) + C

∫ tan(x) dx =  ln|sec(x)| + C
            = -ln|cos(x)| + C

∫ cot(x) dx =  ln|sin(x)| + C
            = -ln|csc(x)| + C

∫ sec(x) dx = ln|sec(x) + tan(x)| + C

∫ csc(x) dx = ln|csc(x) - cot(x)| + C
```

In the formula for `tan` above, there are two equivalent results. The second is justified by the minus sign in from of `ln`, which is in fact `-1`, meaning it is the exponent that was pulled out from the argument of `ln`. It is the identity: `ln(aᵇ) = b⋅ln(a)`. Thus, `cos⁻¹(x) = 1/cos(x) = sec(x)`.
