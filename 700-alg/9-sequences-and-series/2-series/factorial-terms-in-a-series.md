# Factorial terms in a series

Many general and specific forms of series have terms a part of which is a factorial, usually factorial of the iterator variable, e.g. `k!`, where `k` is the iteration variable ranging from 0 to infinity, i.e. `Σ {k=0..∞} f(k)`. 

Expression `Σ {k=0..∞} f(k)` denotes a series very generically, assuming that any expression, that may be written as the "body" of the sigma notation, can also be expressed in terms of some function `f` applied to `k`.

One instance where the terms of the series take progressively increasing factorials of the iterating variable `k` is the expression of the Euler's constant, `e`, in terms of a power series, `eˣ = Σ {k=0..∞} xᵏ/k!`. It expands into `eˣ = 1 + x + x²/2 + x³/3! + x⁴/4! + x⁵/5! + …`. So we obtain a function in which input `x` is first raised to the power `k`, then divided by the factorial of `k` (`k!`).

Many other series have the similar factorials, so the question is: 
>Where do these factorials come from?

From differentiation, is the answer. Repeatedly taking a derivative of a term of the general form `xⁿ` amounts to accumulation of (contiguous, subsequent, succeeding) multipliers as exponent is decreased by 1.


When differentiating a polynomial where term (with index `i`) consists of a coefficient `cᵢ` that multiplies `x` raised to an ever increasing power.

```js
P(x) = c₀ + c₁x + c₂x² + c₃x³ + c₄x⁴ + c₅x⁵ + c₆x⁶ + c₇x⁷ + c₈x⁸ + c₉x⁹ … + cₙxⁿ
P′(x) = 

// differentiating term-by-term
P⁽⁰⁾(x) = c₀ + c₁x +  c₂x² +  c₃x³ +   c₄x⁴ +    c₅x⁵ +    c₆x⁶ +    c₇x⁷
P⁽¹⁾(x) = 0  + c₁  + 2c₂x  + 3c₃x² +  4c₄x³ +   5c₅x⁴ +   6c₆x⁵ +   7c₇x⁶
P⁽²⁾(x) = 0  + 0   + 2c₂   + 6c₃x  + 12c₄x² +  20c₅x³ +  30c₆x⁴ +  42c₇x⁵
P⁽³⁾(x) = 0  + 0   + 0     + 6c₃   + 24c₄x  +  60c₅x² + 120c₆x³ + 210c₇x⁴
P⁽⁴⁾(x) = 0  + 0   + 0     + 0     + 24c₄   + 120c₅x  + 360c₆x² + 210c₇x³
P⁽⁵⁾(x) = 0  + 0   + 0     + 0     + 0      + 120c₅   + 720c₆x  +    c₇x²
P⁽⁶⁾(x) = 0  + 0   + 0     + 0     + 0      + 0       + 720c₆   +    c₇x
P⁽⁷⁾(x) = 0  + 0   + 0     + 0     + 0      + 0       + 0

x⁷
7×x⁶
6×7x⁵
5×6×7x⁴
4×5×6×7x³
3×4×5×6×7x²
2×3×4×5×6×7x
1×2×3×4×5×6×7 = 7!
```
