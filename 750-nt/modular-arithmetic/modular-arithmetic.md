# Modular arithmetic

https://en.wikipedia.org/wiki/Modular_arithmetic

Modular Arithmetic (MA) is a special system of integer arithmetic, where integers exhibit a wrap-around behavior after reaching a certain value, called the *modulus*.

The modern approach to MA was developed by Carl Friedrich Gauss in his book "Disquisitiones Arithmeticae" from 1801.

An example of MA, familiar to everone is the 24-hour clock, where the hours wrap around after reaching 23. Addition in this system also wraps around, such that if it's 19 o'clock, then 8 hours later is 3 o'clock as 27 ≡ 3 (mod 12).

## Contents

1. Congruence
  1.1. Examples
2. Basic properties
3. Advanced properties
4. Congruence classes
5. Residue systems
  5.1. Reduced residue systems
  5.2. Covering systems
6. Integers modulo m
7. Applications
8. Computational complexity


## 1. Congruence

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

### 1.1 Examples

In `modulus 12`, one can assert that `38 ≡ 14 (mod 12)` because the difference is 38 − 14 = 24 = 2×12, a multiple of 12. Equivalently, 38 and 14 have the same remainder 2 when divided by 12.

The definition of congruence also applies to negative values. For example:

(−3 ≡ -8 ≡ 7 ≡ 2) (mod 5)


## 2. Basic properties
## 3. Advanced properties
## 4. Congruence classes
## 5. Residue systems
### 5.1. Reduced residue systems
### 5.2. Covering systems
## 6. Integers modulo m
## 7. Applications
## 8. Computational complexity
