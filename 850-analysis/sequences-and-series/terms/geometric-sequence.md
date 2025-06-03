# Geometric sequence

https://en.wikipedia.org/wiki/Geometric_progression

## Contents

- Summary
- Intro
- nth term of a GP
- Properties
- Examples
- Geometeric series
- Product
- History

## Summary

- geometric sequence or geometeric progression (GP)
- initial value `a = a₁` (or a₀ if the seq starts from 0)
- common ratio `r` (constant ratio between consequitive terms)
- nth term of a GP is `aₙ = arₙ₋₁`
- nth term in general `aₙ = aₘrₙ₋ₘ`
- if `r > 0`, terms share the sign of the first term
- if `r < 0`, terms alternate between positive and negative (alternating seq)
- for GP to converge its terms must eventually tend to 0
- If `|r| < 1`, terms approach 0 and the seq converges
- If `|r| > 1`, terms increase and approach infinity via exponential growth
- If `|r| = 1`, terms stay the same size indefinitely
- GP shows an exponential growth or exponential decline
- AP shows a linear growth or linear decline
- exponentiating each term of an AP yields a GP
- taking the logarithm of each term in a GP yields an AP


## Intro

A **geometric sequence** is a sequence of non-zero numbers where each term after the first is found by multiplying the previous one by a fixed number called the *common ratio*.

For example, the sequence 2, 6, 18, 54, … is a geometric progression with a common ratio of 3. Similarly 10, 5, 2.5, 1.25, … is a geometric sequence with a common ratio of 1/2.

Examples of a geometric sequence are powers `rᵏ` of a fixed non-zero number `r` (e.g. 2ᵏ and 3ᵏ). The general form of a geometric sequence is

    a, ar, ar², ar³, ar⁴, …

where `r` is the common ratio and `a` is the *initial value*.

The sum of a geometric progression's terms is called a geometric series.

## nth term of a GP

Given each term of GP as `a₁, a₂, a₃, a₄, …, aₘ, …, aₙ`, expressing all these terms according to the first term `a₁` will give us the terms of the sequence:

```js
a₁ = a₁
a₂ = a₁r
a₃ = a₂r = (a₁r)r = a₁r²
a₄ = a₃r = (a₁r₂)r = a₁r³
…
aₘ = a₁rᵐ⁻¹
…
aₙ = a₁rⁿ⁻¹
```

where
- `a₁` is the first term, `a₂` is the second term, etc.
- `aₘ` any term before the last term
- `aₙ` the last term (or the nth term)

Above, the initial term has the index 1, i.e. the iterator variable (typically `k`) starts from 1, and goes to ∞ for infinite sequences (`k=1..∞`). However, it is possible that a sequence uses *0-based indexing* in which case the indexes start from 0, so the initial term is `a₀`, and the general form is `a₀rᵏ` (the exponent is not decremented by 1). The last term is `aₙ = a₀rⁿ` then and any term before it is `aₘ = a₀rᵐ`.

This is why it's important to specify not just the initial term but also its index. The indexing is usually setup such that the first iterator value makes the exponent equal 0 so it reduces the base number to 1, leaving only the coeffiecient `a`, which then alone makes the initial term. Should the exponent evaluate to 1 instead, the initial term would be `ar`, which is usually the value of the second term, and so all terms' values would be shifted by one term to the left.



## Properties

Geometric sequences satisfy the *first order, homogeneous linear recurrence relation with constant coefficients*, `aₙ = raₙ₋₁` for every integer n > 1.

Geometric sequences also satisfy the *second order nonlinear recurrence relation with constant coefficients*, `aₙ = a²ₙ₋₁/aₙ₋₂` for every integer n > 2.


- When the *common ratio is positive*, `r > 0`, he terms will all share the sign of the first term.

- When the *common ratio is negative*, `r < 0`, the terms alternate between positive and negative; this is called an alternating sequence. For instance, the sequence 1, −3, 9, −27, 81, −243, … is an alternating geometric sequence with an initial value of 1 and a common ratio of −3.

- When the initial term and common ratio are complex numbers, the terms' complex arguments follow an arithmetic progression.


* If `|r| < 1`, the terms will decrease in magnitude and approach zero via an exponential decay. Thus, the sequence will converge (and only in this case).

* If `|r| > 1`, the terms will increase in magnitude and approach infinity via exponential growth.

* If `|r| = 1`, the terms will stay the same size indefinitely, but their signs or complex args may change.

- GP shows an exponential growth or exponential decline
- AP shows a linear growth or linear decline

The two sequences are related through the exponential function and logarithm:
- exponentiating each term of an AP yields a GP
- taking the logarithm of each term in a GP yields an AP

The relation that the logarithm provides between a GP in its argument and an AP of values, prompted A. A. de Sarasa to make the connection of Saint-Vincent's quadrature and the tradition of logarithms in prosthaphaeresis, leading to the term "hyperbolic logarithm", a synonym for natural logarithm.

## Examples

GPs based on the pattern `rⁿ⁻¹` with different `r`:
1. r = 1⁄2, S∞ = 2 , `{(1⁄2)ⁿ⁻¹}(k=1..∞)` = 1, 1⁄2, 1⁄4 , 1⁄8 , 1⁄16 , …
2. r = 1⁄3, S∞ = 3⁄2, `{(1⁄3)ⁿ⁻¹}(k=1..∞)` = 1, 1⁄3, 1⁄9 , 1⁄27, 1⁄81 , …
3. r = 1⁄4, S∞ = 4⁄3, `{(1⁄4)ⁿ⁻¹}(k=1..∞)` = 1, 1⁄4, 1⁄16, 1⁄64, 1⁄256, …

The formula used to get the infinite sum `S∞ = a₁/(1-r)`, but since here all first terms are the same (1), it is `S∞ = 1/(1-r)`:
1. S∞ = 1/(1-1⁄2) = 1 ÷ 1⁄2 = 2
2. S∞ = 1/(1-1⁄3) = 1 ÷ 2⁄3 = 3⁄2
3. S∞ = 1/(1-1⁄4) = 1 ÷ 3⁄4 = 4⁄3

Since `|r| < 1` is all 3 cases, all 3 sequences converge, and the infinite sum of each is each one's limit.

## Geometeric series

see [Geometeric series](./geometric-series.md)

## Product

The *infinite product* of a GP is the product of all of its terms.

The *partial product* of a GP up to the term with power `n` is

    ∏{k=0..n} arᵏ = aⁿᐩ¹rⁿ⁽ⁿᐩ¹⁾′²

When `a` and `r` are positive real numbers, this is equivalent to taking the geometric mean of the partial progression's first and last individual terms and then raising that mean to the power given by the number of terms `n+1`.

$$
\prod _{k=0}^n a r^k = 
  a^{n+1} r^{n(n+1)/2} = 
  ({\sqrt {a^2 r^n}}) ^{n+1}
  \ \ \ 
  {\text{ for }}a,r > 0
$$

This corresponds to a similar property of sums of terms of a finite AP: the sum of an AP is the number of terms times the arithmetic mean of the first and last individual terms (the average).

This correspondence follows the usual pattern that any AP is a sequence of logarithms of terms of a GP, and any GP is a sequence of exponentiations of terms of an AP. Sums of logarithms correspond to products of exponentiated values.

### Proof

Let `Pn` represent the product up to power `n`. Written out in full,

...

## History

A clay tablet from the Early Dynastic Period in Mesopotamia (c. 2900 - c. 2350 BC), identified as MS 3047, contains a geometric progression with base 3 and multiplier 1/2. It has been suggested to be Sumerian, from the city of Shuruppak. It is the only known record of a geometric progression from before the time of old Babylonian mathematics beginning in 2000 BC.

Books VIII and IX of Euclid's Elements analyze geometric progressions (such as the powers of two) and give several of their properties.

## See also

- Arithmetic progression - Sequence of equally spaced numbers
  https://en.wikipedia.org/wiki/Arithmetic_progression
- Arithmetico-geometric sequence - sequence satisfying a specific pattern
  https://en.wikipedia.org/wiki/Arithmetico-geometric_sequence
- Harmonic progression - reciprocals of an arithmetic progression
  https://en.wikipedia.org/wiki/Harmonic_progression_(mathematics)
- Harmonic series - Divergent sum of all positive unit fractions
  https://en.wikipedia.org/wiki/Harmonic_series_(mathematics)
- Infinite series - Infinite sum
  https://en.wikipedia.org/wiki/Series_(mathematics)
- Exponential function - Mathematical function, denoted exp(x) or eˣ
  https://en.wikipedia.org/wiki/Exponential_function
- Geometric distribution - Probability distribution
  https://en.wikipedia.org/wiki/Geometric_distribution
- Linear difference equation - Relation in Algebra
  https://en.wikipedia.org/wiki/Linear_difference_equation
- Preferred number - guidelines for choosing product dimensions vs constraints
  https://en.wikipedia.org/wiki/Preferred_number
