# Alternating series

The terms of an alternating series are combined by alternating addition and subtraction (that is, every other term is negative so addition turns to subtraction).

## Constructing alternations in ℝ

The easiest way to construct an alternation of terms, expecially in ℝ, is to raise the number -1, whose only role is to adjust the term's sign, to a power, as in `(-1)ⁱ`, where that power is `i`, the *iterating variable*. That way, only the sign of terms is affected since even values of `i` (even powers) will produce positive terms, and odd values of `i` will produce negative terms. Using a different negative constant will affect the terms as a multiplier (divisor) would; e.g. `(-2)ⁱ` would also produce an alternating sequence but all the terms would be even (being multiples of 2).

* If counting starts from zero, `i = 0`, and -1 is raised to `i`, the alternation is the succession of a positive followed by a negative term. The same alternation can be obtained even if counting starts from 1, but then the power must be adjusted.

```js
⎲∞
⎳ᵢ₌₀ (-1)ⁱ   = (-1)⁰ + (-1)¹ + (-1)² + (-1)³ + ⋯ 
              = 1, -1, 1, -1, …

⎲∞
⎳ᵢ₌₁ (-1)ⁱ⁻¹ = (-1)¹⁻¹ + (-1)²⁻¹ + (-1)³⁻¹ + (-1)⁴⁻¹ + ⋯ 
              = (-1)⁰ + (-1)¹ + (-1)² + (-1)³ + ⋯ 
              = 1, -1, 1, -1, …
```

* If counting starts from one, `i = 1`, and -1 is raised to `i`, the alternation is the succession of a negative followed by a positive term. The same alternation can be obtained even if counting starts from 0, but then the power must be adjusted.

```js
⎲∞
⎳ᵢ₌₁ (-1)ⁱ   = (-1)¹ + (-1)² + (-1)³ + (-1)⁴ + ⋯ 
              = -1, 1, -1, 1, …

⎲∞
⎳ᵢ₌₀ (-1)ⁱᐩ¹ = (-1)⁰ᐩ¹ + (-1)¹ᐩ¹ + (-1)²ᐩ¹ + (-1)³ᐩ¹ + ⋯ 
              = (-1)¹ + (-1)² + (-1)³ + (-1)⁴ + ⋯ 
              = -1, 1, -1, 1, …
```

By the way, these two simple alternating sequences/series, `(1,-1,1,-1,1,-1,…)` and `(-1,1,-1,1,-1,1,…)` do not have a limit - limit does not exists (DNE4).

- Negative terms remain negative when raised to an odd power, `(-a)²ⁿᐩ¹ ⟼ -a`
- Negative terms turn positive when raised to an even power, `(-a)²ⁿ ⟼ a`    
where `n=0..∞`

```js
⎲∞
⎳ᵢ₌₁ (-x)ⁱ = (-x)¹ + (-x)² + (-x)³ + (-x)⁴ + ⋯ = -x + x² - x³ + x⁴ - x⁵ + …
```

## Negative terms and negative powers

Negative terms turn positive when raised to an even power.
- `α³`   : if α ≥ 0 then `α³`  ; if α < 0 then `−|α³|`
- `α²ⁿᐩ¹`: if α ≥ 0 then `α²ⁿᐩ¹`; if α < 0 then `−|α²ⁿᐩ¹|`


∀a ∈ ℝ. ∀k ∈ ℕ. aᵏ ≥ 0 ⇒ a >= 0

0ᵏ = 1 (0⁰ = 1, 0³ = 1)
2ᵏ > 0 if k

(-1)² = 1
(-1)⁻² = (1/-1)²
(-1)³ = 
(-1)⁻³ = 

(4)² = 16
(4)⁻² = 1/16
(4)³ = 64
(4)⁻³ = -64

α ∈ ℤ⁻ ⇒ αᵏ > 0

α ∈ ℤᐩ ⇒ αᵏ < 0


- (-1)³ = -1

- (-α)³ = -α if α > 0
- (-α)³ = +α if α < 0
Terms raised to an even power yield positive terms, despite their initial sign.
- (-1)² = 1


with a negative sign arise due to 

     1 = (-1)²ⁿ ≠ -(1²ⁿ)
    -1 = (-1)²ⁿᐩ¹ = -(1²ⁿᐩ¹) = -1²ⁿᐩ¹

    (-1)²ⁿ = (-1)² × (-1)ⁿ = 1 × (-1)ⁿ

    (-1)²ⁿ = 1
    (-1)²ⁿ = ((-1)ⁿ)²
    (-k)ⁿ = -(kⁿ) = -kⁿ if 
    (-1)ⁿ = -(1ⁿ) = -1ⁿ if n odd
    (-3)ⁿ = -(3ⁿ) = -3ⁿ
    (-2)⁴ = -(2⁴) = -2⁴ = 

The alternation of resulting terms is typically achieved by raising -1 to the iterator (exponent is the iterator):
- `(-k)ⁿ = -(kⁿ) = -kⁿ`
- (-1)ⁿ = -(1ⁿ) = -1ⁿ
- (-1)⁰ =  1
- (-1)¹ = -1
- (-1)² =  1
- (-1)³ = -1



- (-1)ᵏ where `k=2n+1` (i.e. `k` is odd) gives a negative result, -1
- (-1)ᵏ where `k=2n` (i.e. `k` is even) gives a positive result, -1


```js
⎲∞
⎳ xⁿ = x⁰ + x¹ + x² + x³ + …
ⁿ⁼⁰   = 1 + x¹ + x² + x³ + …

⎲∞
⎳ (-x)ⁿ = (-x)⁰ + (-x)¹ + (-x)² + (-x)³ + (-x)⁴ + (-x)⁵ … =
ⁿ⁼⁰      = 1 + (-x) - x² + (-(x³)) + x⁴ + (-(x⁵)) + …
         = 1 - x + x² - x³ + x⁴ - x⁵ + …

x³: x < 0 (-x)³, -4³ = (-4)³ = -(4³)
  : x > 0   x³,   4³


(-1)ᵏ where `k=2n+1` (i.e. `k` is odd) gives a negative result, -1
(-1)ᵏ where `k=2n` (i.e. `k` is even) gives a positive result, -1


|x|³
−|x|³
−|−x|³
|−x|³

(−x)³ = −x³
−(x³) = −x³

-x³ = (-x)³ = (-1 × x)³ = (-1³) × x³ = -1 × x³


1 + (-1) + 1 + (-1) + …
= 1 - 1 + 1 -1 + …
```

## Constructing alternations in ℂ

Another way to construct alternation of terms, but only in ℂ, is to use `ik` as a power, where `i` is the imaginary number `i = √-1` and `k` is the iterating variable, e.g. `k=0..∞`. However, raising a value to `i` times `k` makes the power go through the cycle: `1, i, -1, -i, …`. Because it is not changing the sign every other term, other (sub)expressions need to be adjusted.

Cycling powers of `i`
- i⁰ =  1
- i¹ = `i`
- i² = -1, as i = √-1 then i² = `-1`
- i³ = -i, i³ is i×i² = i(-1) = `-i`
- i⁴ =  1, i⁴ = i²i² =(-1)(-1) = `1`

more generally
- i⁰ ≡ i⁴ ≡ i⁸  ≡  1 (mod 4)
- i¹ ≡ i⁵ ≡ i⁹  ≡  i (mod 4)
- i² ≡ i⁶ ≡ i¹⁰ ≡ -1 (mod 4)
- i³ ≡ i⁷ ≡ i¹¹ ≡ -i (mod 4)

iᵏ, for k=0..
- i⁰ = 1
- i¹ = i
- i² = -1
- i³ = -i


```js
     ⎲∞    xⁿ
eˣ = ⎳ₙ₌₀ ----
            n!

      ⎲∞   iⁿxⁿ
eⁱˣ = ⎳ₙ₌₀ -----
             n!

eⁱˣ = cosx + isinˣ

⎲∞   iⁿxⁿ    i⁰x⁰    i¹x¹    i²x²     i³x³    i⁴x⁴    i⁵x⁵
⎳ₙ₌₀ ----- = ----- + ----- + ------ + ----- + ----- + ----- + …
       n!       0!      1!      2!       3!     4!      5!

             x²     ix³      x⁴      ix⁵
= 1 + ix - ----- - ------ + ----- + ----- - …
             2       6       24      120
```
