# Binomial theorem

https://en.wikipedia.org/wiki/Binomial_theorem

In elementary algebra, the binomial theorem (or binomial expansion) describes the algebraic expansion of powers of a binomial.

According to the theorem, it is possible to expand the polynomial `(x + y)ⁿ` into a sum involving terms of the form `a xᵇ yᶜ`, where the exponents `b` and `c` are nonnegative integers satisfying `b + c = n`, and the coefficient `a` of each term is a specific positive integer depending on `n` and `b`.

For example, for n = 4, `(x + y)⁴ = x⁴ + 4x³y + 6x²y² + 4xy³ + y⁴`.

The coefficient `a` in the term `a xᵇ yᶜ` is known as the *binomial coefficient*, `n-choose-b`, or, equally, `n-choose-c`.

The coefficients for varying `n` and `b` arise in combinatorics, where `n-choose-b` gives the number of different combinations of `b` elements that can be chosen from an `n`-element set.

## Contents

- 1. History
- 2. Statement
- 3. Examples
  - 3.1. Geometric explanation
- 4. Binomial coefficients
  - 4.1. Formulas
  - 4.2. Combinatorial interpretation
- 5. Proofs
  - 5.1. Combinatorial proof
    - 5.1.1. Example
    - 5.1.2. General case
  - 5.2. Inductive proof
- 6. Generalizations
  - 6.1. Newton's generalized binomial theorem
  - 6.2. Further generalizations
  - 6.3. Multinomial theorem
  - 6.4. Multi-binomial theorem
  - 6.5. General Leibniz rule
- 7. Applications
  - 7.1. Multiple-angle identities
  - 7.2. Series for e
  - 7.3. Probability
- 8. In abstract algebra


## History

(...)

## Statement

According to the Binomial theorem, it is possible to expand any nonnegative power `n` of `(x + y)ⁿ` into a sum of the form

```js
           ⎛ n ⎞        ⎛ n ⎞                ⎛  n  ⎞          ⎛ n ⎞
(x + y)ⁿ = ⎜   ⎟ xⁿy⁰ + ⎜   ⎟ xⁿ⁻¹y¹ + ... + ⎜     ⎟ x¹yⁿ⁻¹ + ⎜   ⎟ x⁰yⁿ
           ⎝ 0 ⎠        ⎝ 1 ⎠                ⎝n - 1⎠          ⎝ n ⎠
```

where `n >= 0` is an integer and each `n-choose-k` is a positive integer known as a *binomial coefficient*.

This formula is also referred to as the *binomial formula* or the *binomial identity*. Using summation notation, it can be written as

```js
            n                 n
           ⎲ ⎛ n   ⎞          ⎲ ⎛ n  ⎞
(x + y)ⁿ = ⎳ ⎝ k   ⎠ xⁿ⁻ᵏyᵏ =  ⎳  ⎝ k  ⎠ xᵏyⁿ⁻ᵏ
           k=0               k=0
```

The final expression follows from the previous one by the symmetry of `x` and `y` in the first expression, and by comparison it follows that the sequence of binomial coefficients in the formula is symmetrical.

A simple variant of the binomial formula is obtained by substituting `1` for `y`, so that it involves only a single variable. In this form, the formula is

```js
           ⎛ n ⎞      ⎛ n ⎞            ⎛  n  ⎞        ⎛ n ⎞
(1 + x)ⁿ = ⎜   ⎟ x⁰ + ⎜   ⎟ x¹ + ... + ⎜     ⎟ xⁿ⁻¹ + ⎜   ⎟ xⁿ
           ⎝ 0 ⎠      ⎝ 1 ⎠            ⎝n - 1⎠        ⎝ n ⎠
```

or equivalently

```js
            n
           ⎲ ⎛n  ⎞               n(n - 1)      n(n - 1)(n - 2)
(1 + x)ⁿ = ⎳ ⎝k  ⎠ xᵏ = 1 + nx + ------- x² + ------------- x³ +...+ nxⁿ⁻¹ + xⁿ
           k=0                      2!              3!
```
