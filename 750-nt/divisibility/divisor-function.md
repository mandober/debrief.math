# Divisor Function

https://en.wikipedia.org/wiki/Divisor_function

In number theory, a divisor function is an arithmetic function related to the divisors of an integer.

When referred to as the **divisor function**, it counts the number of divisors of an integer `n` (including 1 and `n`). A related function is the divisor summatory function, which is a sum over the divisor function.

## Contents

- 1. Definition
- 2. Example
- 3. Table of values
- 4. Properties
  - 4.1. Formulas at prime powers
  - 4.2. Other properties and identities
- 5. Series relations
- 6. Growth rate
- 7. See also
- 8. Notes


## Definition

**The sum of positive divisors function** `σₛ(n)`, for a real or complex number `s`, is defined as the sum of the `s`th powers of the positive divisors of `n`. It can be expressed in sigma notation as

`σₛ(n) = Σ {d|n} dˢ`























```js
// the set of the divisors of n
d(n) = { x | ∀x ∈ ℕ. x ∣ n ⋀ x <= n }

// the set of the divisors of 28
d(28) = { 1, 2, 4, 7, 14, 28 }
```




The sum of positive divisors function, $$σx(n)$$, for a real or complex number x, is defined as the sum of the xth powers of the positive divisors of integer n. In sigma notation:

$${\displaystyle \sigma _{x}(n)=\sum _{d\mid n}d^{x}\,\!,}$$

where $${\displaystyle {d\mid n}}$$ is shorthand for "d divides n".

The notations d(n), ν(n) and τ(n) (for the German Teiler = divisors) are also used to denote σ0(n), or the number-of-divisors function (OEIS: A000005).

When x is 1, the function is called the sigma function or sum-of-divisors function, and the subscript is often omitted, so σ(n) is the same as σ1(n) (OEIS: A000203).


The aliquot sum s(n) of n is the sum of the proper divisors (that is, the divisors excluding n itself, OEIS: A001065), and equals σ1(n) − n; the aliquot sequence of n is formed by repeatedly applying the aliquot sum function.


## Euclid's GCD algorithm

Euclid's algorithm for determining the greatest common divisor (GCD) of two natural numbers.

To determine the GCD of two natural numbers:
- call the larger `x` and the smaller `y`
- let `m` be the remainder after dividing `x` by `y`
- if `m` is 0, `y` divides `x`, so `y` is the GCD of `x` and `y`
- otherwise, the GCD of `x` and `y` is equal to the GCD of `y` and `m`
