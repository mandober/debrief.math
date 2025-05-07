# Modular arithmetic

https://en.wikipedia.org/wiki/Modular_arithmetic

**Modular Arithmetic** (MA) is a special system of integer arithmetic, where integers exhibit a wrap-around behavior after reaching a certain value, called the *modulus*.

This may be an unusual way to do arithemtic for mathematics, but it is the usual way of doing arithmetic on computers since all of the many available integer types are finite and thus bounded, having a lower and upper limit. Such overflows are notorious for being unexpected and thus causing many programming errors. For example, the most optimal integer type on a 64-bit machine is the signed integer type `i64` ranging from `-2⁶³` to `2⁶³ - 1`. However, adding 1 to its upper bound, `2⁶³ - 1`, results in the lower bound, `-2⁶³` (!); and subtracting 1 from `-2⁶³` gives `2⁶³ - 1`. With a smaller integer type like `i8`, ranging from -128 to 127, this is more easily observed, `127 + 120 = -9`.
>Thus, computer arithmetics is modular by default with the type of integer as the modulus, e.g. `i16` has modulus `2¹⁶ = 65536`.

-  i8 and  u8 is `(mod 2⁸)`
- i16 and u16 is `(mod 2¹⁶)`
- i32 and u32 is `(mod 2³²)`
- i64 and u64 is `(mod 2⁶⁴)`

For an integer type of bit width `b`
- signed range: `-2ᵇ⁻¹ .. 2ᵇ⁻¹ - 1`
- unsigned range:   `0 .. 2ᵇ - 1`
- for b=32: -2³¹ .. 2³¹ - 1 (signed range), 0 .. 2³² - 1 (unsigned range)


The modern approach to MA was developed by Carl Friedrich Gauss in his book "Disquisitiones Arithmeticae" from 1801.

A familiar example of MA, is the 24-hour clock, where the hours wrap around after reaching 23. In the 12-hour clock, `13 ≡ 1 (mod 12)`. Addition in these systems also wraps around, so 8 hours after 19:00 amounts to 3:00, since `19+8 = 27 ≡ 15 ≡ 3 (mod 12)`.

## Contents

- Congruence
- Basic properties
- Advanced properties
- Congruence classes
- Residue systems
  - Reduced residue systems
  - Covering systems
- Integers modulo m
- Applications
- Computational complexity


## Congruence

Given an integer `m ≥ 1`, called a modulus, two integers `a` and `b` are said to be *congruent modulo `m`*, if `m` is a *divisor of their difference*; that is, if there is an integer `k` such that

`a ≡ b (mod m)` implies `a − b = km` i.e. `a = km + b`

Congruence modulo `m` is a **congruence relation**, meaning that it is an *equivalence relation* that is compatible with the operations of addition, subtraction, and multiplication.

Congruence modulo `m` is denoted

    a ≡ b (mod m)

The parentheses mean that `(mod m)` applies to the entire equation, not just to the right-hand side (here, `b`).

This notation is not to be confused with the notation `b mod m` (without parentheses), which refers to the *modulo operation*, `b % m`, that returns the remainder of `b` when divided by `m`; that is, `b mod m` denotes the unique integer `r` such that `0 ≤ r < m` and `r ≡ b (mod m)`.

`b mod m` or `b % m` means `r ≡ b (mod m)` where `0 ≤ r < m`

Note: remainder `r` pertaining to Euclidean division is defined to always be a positive integer, **`r ∈ ℕ ∧ 0 ≤ r < m`**, which means the quotient `q` gets to be weird (somebody has to); e.g. `-7 ÷ 4 = (-2, 1)`, rather then the maybe expected `(-1, -3)`; for -2∙4 + 1 = -8 + 1 = -7, but so is -1∙4 + (-3) = -4 - 3 = -7. In fact, so is (-3, ) `-3 ∙ 4 + 1 = -8 + 1 = -7`

n ÷ d = (q, r) as n = dq + r
for n = -7, d = 4
( q,  r) are:   q d   r               n
( 1,-11) since  1∙4 +⁻11 =   4 -11 = -7
( 0, -7) since  0∙4 + ⁻7 =   0 - 7 = -7
(-1, -3) since -1∙4 + ⁻3 =  -4 - 3 = -7
(-2,  1) since -2∙4 +  1 =  -8 + 1 = -7
(-3,  5) since -3∙4 +  x = -12 + 5 = -7

for n = 7, d = -4
(-1,  3) since -1∙-4 +  3 = 4 + 3 = 7
(-2, -1) since -2∙-4 + ⁻1 = 8 - 1 = 7


To remove this ambiguity and multiple solutions, it was decided that remainder `r` must always be positive and also less then the divider, `0 ≤ r < m`.

Should remainder `r` be less then *divider* `d`, or less then quotient, `q`?
- 0 ≤ r < d
- 0 ≤ r < q
in `n = dq + r`

- quotient  q is `q = n ÷ d` where `÷` is integer division, `0 ≤ r < d`
- remainder r is `r = n % d` where `%` is modulo operation, `0 ≤ r < d`

r = {0, 1, …, d-1}

Had `r = d` then `n = qd + r` would mean `n = qd + d` i.e. `n = d(q + 1)`, that is, the result would be the successor of the quotion with no remainder.

Congruence relation may be rewritten as

    a = km + b

explicitly showing its relationship with *Euclidean division*. 

    n ÷ d = (q, r) such that n = dq + r

However, `b` here need not be the remainder in the division of `a` by `m`. Rather, `a ≡ b (mod m)` asserts that `a` and `b` have the same remainder when divided by `m`. That is,

    a = pm + r   =>   a ÷ m = (p, r)
    b = qm + r   =>   b ÷ m = (q, r)

where `0 ≤ r < m`. Then `r` is their common remainder.

We recover the previous relation, `a − b = km`, by subtracting these two expressions and setting `k = p − q`.

    a = pm + r
    b = qm + r
    a - b = (pm + r) - (qm + r)
    a - b = pm + r - qm - r
    a - b = pm - qm
    a - b = m(p - q)
    a - b = mk


Because the congruence modulo `m` is defined by the divisibility by `m` and because -1 is a unit in the ring of integers, a number is divisible by `-m` exactly if it is divisible by `m`. This means that every non-zero integer `m` may be taken as modulus (although modulus is typically as positive integer).

`a ≡ b (mod -5)` vs `a ≡ b (mod 5)`

### Examples

In modulus 12, one can assert that `38 ≡ 14 ≡ 2 (mod 12)` because the difference is 38 − 14 = 24 = 2×12, a multiple of 12. Equivalently, 38 and 14 have the same remainder 2 when divided by 12.

The definition of congruence also applies to negative values. The value -1 is congruent to `m - 1` where `m` is the modulus.

  -1 ≡ 4 (mod 5)
  -2 ≡ 3 (mod 5)
  -3 ≡ 2 (mod 5)
  -4 ≡ 1 (mod 5)
  -5 ≡ 0 (mod 5)

  -13 ≡ −8 ≡ -3 ≡ 2 (mod 5)
   17 ≡ 12 ≡ 7 ≡ 2 (mod 5)
  -50 ≡ -5 ≡ 5 ≡ 0 (mod 5)


## 2. Basic properties
## 3. Advanced properties
## 4. Congruence classes
## 5. Residue systems
### 5.1. Reduced residue systems
### 5.2. Covering systems
## 6. Integers modulo m
## 7. Applications
## 8. Computational complexity
