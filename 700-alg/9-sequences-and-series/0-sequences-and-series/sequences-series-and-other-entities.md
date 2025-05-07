# Sequences, Series and other entities

functions, `f(x)`
polynomials, polynomials are functions, `P(x)`
sequences
series
sum
partial sum
infinite sum
expanded sum
power series
Taylor series
Taylor expansion
Taylor polynomials
Maclaurin series


```js
// Polynomials - general form, expressed as a sum in sigma notation
       ⎲∞
P(x) = ⎳ₙ₌₀ cₙxⁿ

// Polynomials - general form, expanded sum
P(x) = c₀ + c₁x + c₂x² + c₃x³ + … + cₙxⁿ

// Power series centered at x=a (general notation)
⎲∞
⎳ₙ₌₀ cₙxⁿ

// Power series centered at arbitrary a ∈ dom(f) (general notation)
⎲∞
⎳ₙ₌₀ cₙ(x-a)ⁿ
```

## Polynomials

*Polynomials* are a class of functions called *algebraic functions*, consisting of terms each of which may have a different *coefficient* (constants `cᵢ`) that multiplies the variable `x` raised to an ever increasing power. With *finite polynomials*, the final term is an nth term, (possibly) with degree `n`, in which case it is denoted by `xⁿ`. However, polynomials may be *sparse*, lacking the terms corresponding to some powers - which happens whenever a coefficient is zero. Polynomials can also be *infinite*, which is signified by appending ellipses as the last term.

Polynomials are
- algebraic functions (algebraic expressions/equations)
- series or sums (partial sums, infinite sums)
- Maclaurin series ⊆ Taylor series ⇔ Power series

The general form of polynomials with `a=0`, is the same as the general form of power series centered at 0, i.e. both are denoted by `Σ{n=0..∞} cₙxⁿ`.

*Polynomials are sums*, i.e. sequences of terms joined by the plus operator, just like series. So *polynomials are series*. In fact, *polynomials are power series*.


```js
// Polynomials - general form, expanded sum
P(x) = c₀ + c₁x + c₂x² + c₃x³ + … + cₙxⁿ

// Polynomials - general form, expressed as a sum in sigma notation
       ⎲∞
P(x) = ⎳ₙ₌₀ cₙxⁿ
// this is the same as a power series centered at 0


// Polynomials of degree-0, constant
Ct(x) = c₀                              Ct(x) = b
// Polynomials of degree-1, linear
Lr(x) = a + bx                          Lr(x) = mx + b
// Polynomials of degree-2, quadratic
Qu(x) = c₀ + c₁x + c₂x²                 Qu(x) = a + bx + cx²
// Polynomials of degree-3, cubic
Cu(x) = c₀ + c₁x + c₂x² + c₃x³          Cu(x) = a + bx + cx² + dx³
// Polynomials of degree-4, quartic
Qr(x) = c₀ + c₁x + c₂x² + c₃x³ + c₄x⁴   Qr(x) = a + bx + cx² + dx³ + ex⁴
// Polynomials of degree-5, quintic
Qn(x) = c₀ + c₁x + c₂x² + c₃x³ + c₄x⁴ + c₅x⁵
// Polynomials of degree-6, septic
Qn(x) = c₀ + c₁x + c₂x² + c₃x³ + c₄x⁴ + c₅x⁵ + c₆x⁶
// Polynomials of degree-x, seizmic, optic, nonic, dodik, supersonic, shtick
```
