# Identities

- successor
  - S(n) = n + 1
  - S(P(n)) = n (for n ≠ 0)
- predecessor
  - P(0) = undefined
  - P(n) = n - 1 (for n ≠ 0)
  - P(S(n)) = n
- addition
  - addendum, addens
  - summation
- subtraction
- exponentiation
  - iterated multiplication
  - associates to the right (unlike many other ops), `x^y^z = x^(y^z)`
  - exponent or power, base
  - identity: 1, x¹ = x
  - dominator: 0, x⁰ = 1
  - exponents
    - integer exponent
      - positive exponent
      - negative exponent
    - rational exponents
      - positive exponent, 
      - negative exponent
    - real exponent, x⁰⋅³²⁴
    - complex exponent, x⁻ⁱ
  - xᵏ = x ⋅ x ⋅ (…k times) ⋅ x
  - x⁴ = x ⋅ x ⋅ x ⋅ x
  - x⁰ = 1 (for x ≠ 0)
  - 0⁰ = 1 (but sometimes undefined)
  - 0ᵏ = 0
  - xᵏxʲ = xᵏᐩʲ
  - xᵏ/xʲ = xᵏ⁻ʲ
  - (xᵏ)ʲ = xᵏʲ
  - (xy)ᵏ = xᵏyᵏ
  - (x/y)ᵏ = xᵏ/yᵏ
  - 2ᵏ = 2ᵏ⁻¹ × 2
  - squaring
  - powers of 2
  - powers of 10
  - raising to nth power
  - inverse to logarithm
  - inverse to root
  - `e` as base
  - exponentiation function, `exp(x) = eˣ`
- root
  - square root
  - nth root
  - radical, radicand, surd
  - .
- logarithm
  - base
  - logarithm base 2
  - logarithm base 10
  - logarithm base e, `logₑ(x)`, or natural logarithm, `ln`
- reciprocal
  - reciprocal of x is `1/x` or `x⁻¹`
  - x × 1/x = x × x⁻¹ = x/x = 1
  - m/n = m × n⁻¹ = m × (1/n) ≠ (1/m) × n
- modular arithmetic
  - modulus
  - congruency
  - `a ≡ b (mod m)`, e.g. 3 ≡ 0 (mod 3)
  - `m ≡ 0 (mod m)`



## Limits

- lim{x→c} f(x) + g(x) = lim{x→c} f(x) + lim{x→c} g(x)
- lim{x→c} f(x) - g(x) = lim{x→c} f(x) - lim{x→c} g(x)
- lim{x→c} f(x) ⋅ g(x) = lim{x→c} f(x) ⋅ lim{x→c} g(x)
- lim{x→c} f(x) ÷ g(x) = lim{x→c} f(x) ÷ lim{x→c} g(x)

Indeterminate forms
- 0 / 0
- ∞ / ∞
- 0 × ∞
- ∞ − ∞
- 0⁰
- 1^∞
- ∞⁰

Depending on the specific functions involved, a limit taking one of these indeterminate forms might either
- tend to zero
- tend to any finite value
- tend to infinity
- diverge

*L'Hopital rule* allows us to evaluate some of these forms by evaluating the limits of the derivatives of related functions instead.


## Exponentiation

```js
x⁰ = 1 (for x ≠ 0)
0⁰ = 1 (usually 1, sometimes undefined)
0ᵏ = 0

xᵏxʲ = xᵏᐩʲ
xᵏ/xʲ = xᵏ⁻ʲ
(xᵏ)ʲ = xᵏʲ
(xy)ᵏ = xᵏyᵏ
(x/y)ᵏ = xᵏ/yᵏ

eᵏˣ = keˣ

ln(eˣ) = ?


√(x) = undefined (for x < 0)
√(0) = 0

ln(-1) = undefined
ln(0) = undefined
ln(x)   // could be undefined if x < 0
ln(x) = undefined if x <= 0, else ln(x)
ln|x|   // better formula that forces 0 <= x
ln(1) = 0
ln(2) = 0.69314718055994530941723212145818


// exponentiation associates to the right (unlike many other ops)
x^y^z = x^(y^z)
// e.g.
4^3^2 = 4^(3^2) = 4^9 = 262,144
// forcing associativity to the left generally yields a smaller number
(4^3)^2 = 64^2 = 4,096
```

## Exponents, roots, reciprocals

> 1 / ʳ√xᵏ = x⁻ᵏ′ʳ

```js
1/ʳ√xᵏ  = x⁻ᵏ′ʳ
  ʳ√xᵏ  = xᵏ′ʳ
1/  xᵏ  = x⁻ᵏ
1/ √xᵏ  = x⁻ᵏ′²
1/ √x²ᵏ = x⁻²ᵏ′² = x⁻ᵏ



   √x   = x¹′²
  ³√x   = x¹′³
  ⁴√x   = x¹′⁴
  ʳ√x   = x¹′ʳ
1/  x   = x⁻¹
1/  x²  = x⁻²
1/  x³  = x⁻³
1/  xᵏ  = x⁻ᵏ
1/ √x   = x⁻¹′²
1/ √x²  = x⁻²′² = x⁻¹ = 1/x
1/ √x³  = x⁻³′²
1/ √x⁴  = x⁻⁴′² = x⁻² = 1/x²
1/ √xᵏ  = x⁻ᵏ′²
1/ √x²ᵏ = x⁻²ᵏ′² = x⁻ᵏ = 1/xᵏ
1/ √x   = x⁻¹′²
1/³√x   = x⁻¹′³
1/⁴√x   = x⁻¹′⁴
1/ʳ√x   = x⁻¹′ʳ
1/ √x   = x⁻¹′²
1/ √x⁴  = x⁻⁴′² = x⁻²
1/³√x²  = x⁻²′³
1/³√x³  = x⁻³′³ = x⁻¹ = 1/x
1/³√x⁴  = x⁻⁴′³
1/³√x⁵  = x⁻⁵′³
1/⁴√x²  = x⁻²′⁴ = x⁻¹′² = 1/x²
1/⁴√x³  = x⁻³′⁴
1/ʳ√xᵏ  = x⁻ᵏ′ʳ
```

## Multiplying Irrational Numbers

- ℕ       Natural numbers (by default including 0)
  - ℕ₀    Natural numbers (including 0)
  - ℕ⃰     Natural numbers (including 0)
  - ℕ͙     Natural numbers (excluding 0)
  - ℕᐩ    Natural numbers (excluding 0)
  - 𝕎    Whole numbers (excluding 0)
  - 𝔼     Even numbers, `2n` for n ∈ ℕ, i.e. n = {0,1,2,…}, so 𝔼 = {0,2,4,…}
  - 𝕆     Odd numbers, `2n+1` for n ∈ ℕ, so 𝕆 = {1,3,5,…}
          `2n-1` would make the odd numbers start from -1 for n ∈ ℕ
          `2n-1` would make the odd numbers start from  1 for n ∈ ℕᐩ
  - ℙ     Prime numbers
- ℤ     Integers
- ℚ     Rational numbers
- ℝ     Real numbers
- ℝ ∖ ℚ  Irrational numbers

Multiplying irrational numbers may or may not yield a rational result.
- `π × π = π²` irrational
- `√2 × √2 = 2` rational

## Natural Logarithm

Natural logarithm, `ln`, is a logarithm with base `e ≈ 2.71828`.

>ln x = logₑ x

It is how many times we need to use `e` in a multiplication, to get the desired number, e.g.
- ln(1) = 0
- ln(7.389) = logₑ(7.389) ≈ 2, as (2.71828)² ≈ 7.389

However, sometime mathematicians use `log`, instead of `ln`, to mean natural logarithm!

A result of `ln` may be negative, but it cannot take 0 or negative inputs.
>`ln(x)` for x <= 0 is undefined
