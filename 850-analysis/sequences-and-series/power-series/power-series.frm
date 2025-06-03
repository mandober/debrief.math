# Power series

```js
// General form of power series: allows all coefficients to be different
f(x) = c₀ + c₁(x-a) + c₂(x-a)² + c₃(x-a)³ + c₄(x-a)⁴ + c₅(x-a)⁵ + c₆(x-a)⁶ + c₇(x-a)⁷ + c₈(x-a)⁸ + …
// Evaluating f(x) at x=a reduces to c₀ as almost all term cencel out
f(a) = c₀
// Taking the 1st derivative of f(x)
f′(x) = c₁ + 2c₂(x-a) + 3c₃(x-a)² + 4c₄(x-a)³ + 5c₅(x-a)⁴ + 6c₆(x-a)⁵ + 7c₇(x-a)⁶ + 8c₈(x-a)⁷ + 9c₉(x-a)⁸ + …
// Evaluating f′(x) at x=a reduces the seq to initial term
f′(a) = c₁
// Taking the 2nd derivative of f(x) or 1st derivative of f′(x)
f′′(x) = 2c₂ + 6c₃(x-a) + 12c₄(x-a)² + 20c₅(x-a)³ + 30c₆(x-a)⁴ + 42c₇(x-a)⁵ + 56c₈(x-a)⁶ + 72c₉(x-a)⁷ + …
// Evaluating f′′(x) at x=a reduces the seq to initial term
f′′(a) = 2c₂
// Taking the 3rd derivative of f(x) or 1st derivative of f′′(x)
f′′′(x) = 6c₃ + 24c₄(x-a) + 60c₅(x-a)² + 120c₆(x-a)³ + 210c₇(x-a)⁴ + 336c₈(x-a)⁵ + 504c₉(x-a)⁶ + …
// Evaluating f′′′(x) at x=a reduces the seq to initial term
f′′′(a) = 6c₃
// Taking the 4th derivative of f(x) or 1st derivative of f′′′(x)
f⁽⁴⁾(x) = 24c₄ + 120c₅(x-a) + 360c₆(x-a)² + 840c₇(x-a)³ + 1680c₈(x-a)⁴ + 3024c₉(x-a)⁵ + …

⎲∞
⎳ (n+4)! cₙ﹢₄ (x-a)ⁿ
ⁿ⁼⁰

⎲∞
⎳ n! cₙ (x-a)ⁿ⁻⁴
ⁿ⁼⁴


// Evaluating f⁽⁴⁾(x) at x=a reduces the seq to initial term
f⁽⁴⁾(a) = 24c₄

// seq of terms of evals at x=a of incresing derivatives
{ [f(a)]    =>   c₀
, [f′(a)]   =>   c₁
, [f′′(a)]  =>  2c₂
, [f′′′(a)] =>  6c₃
, [f⁽⁴⁾(a)] => 24c₄
, …
}

// seq of coefficients
c₀ = f⁽⁰⁾(a)/0!
c₁ = f⁽¹⁾(a)/1!
c₂ = f⁽²⁾(a)/2!
c₃ = f⁽³⁾(a)/3!
c₄ = f⁽⁴⁾(a)/4!
cₙ = f⁽ⁿ⁾(a)/n!

// since
       ⎲∞           ⎲∞ f⁽ⁿ⁾(a)
f(x) = ⎳ cₙ(x-a)ⁿ = ⎳ -------- (x-a)ⁿ
       ⁿ⁼⁰           ⁿ⁼⁰   n!

// Taylor series
       f⁽⁰⁾(a)   f⁽¹⁾(a)         f⁽²⁾(a)          f⁽³⁾(a)
f(x) = ------- + ------- (x-a) + ------- (x-a)² + ------- (x-a)³ + …
         0!        1!              2!               3!

This is Taylor series of the function f(x) centered around 'a'.
```

The second to last series above is a new form of the power series called **Taylor series**. The series stated first (at the top of the preceding code block) was *the general form of power series*. It is now re-expressed in this new form called Taylor series (Taylor series is a kind of power series), or more precisely, the Taylor series of function `f(x)` centered around constant `a`.
