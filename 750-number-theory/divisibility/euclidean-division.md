# Euclidean division

https://en.wikipedia.org/wiki/Euclidean_division

**Euclidean division** (division with remainder) is the process of dividing one integer (dividend) by another (nonzero divisor), in a way that produces a pair made of the quotient, and the remainder (nonnegative integer smaller than divisor).

`n ÷ d = (q,r)` such that `n = dq+r`

where `n,d,q,r ∈ ℤ` and `d ≠ 0`

satisfying the condition: `0 ⩽ r < |d|`

Euclidean division is the division of an integer `n` (dividend) by a nonzero integer `d` (divisor) that produces a pair made of the quotion integer `q` and the remainder integer `r` such that `r` is either 0 (if `d ∣ n`); otherwise, `d ∤ n`, meaning `r > 0` but smaller than the absolute value of the divisor `d`, that is, `0 < r < |d|`.

```js
// Euclidean division
n ÷ d = (q,r)

// such that
n = dq + r

// where
(1) n,d,q,r ∈ ℤ
(2) d ≠ 0
(3) 0 ⩽ r < |d|

// divisibility and the remainder
d ∣ n ---> r = 0
d ∤ n ---> 0 < r < |d|
```

The condition that the remainder must be *nonnegative* makes Euclidean division somewhat unusual for it makes it unintuitionistic in its logic, e.g. when `n` xor `d` are negative.

```js
 n ÷  d = ( q, r)    so     d ×  q + r  =  n
 7 ÷  3 = ( 2, 1)    so     3 ×  2 + 1  =  7
 7 ÷ -3 = (-2, 1)    so    −3 × −2 + 1  =  7
-7 ÷  3 = (-3, 2)    so     3 × −3 + 2  = -7
-7 ÷ -3 = ( 3, 2)    so    −3 ×  3 + 2  = -7
```


One of the fundamental properties of Euclidean division is that the quotient `q` and the remainder `r` exist and are **unique** (under restrictions).

While the dividend `n` has many possible representations only one representation satisfies the restriction `0 <= r < |d|`. Some possible representations of `n` as `dq+r` which don't satisfy the condition restricting the remainder:

```js
 n ÷  d = ( q, r)    so     d ×  q + r = n
 7 ÷ -3 = (-1, 4)    so    −3 × −1 + 4 =    3+4   = 7
 7 ÷ -3 = (-2, 1)    so    −3 × −2 + 1 =    6+1   = 7
 7 ÷ -3 = (-3,-2)    so    −3 × −3 - 2 =    9-2   = 7
-7 ÷ -3 = ( 1,-4)    so    −3 ×  1 - 4 =   -3-4   = 7
-7 ÷ -3 = ( 2,-1)    so    −3 ×  2 - 4 =   -6-1   = 7
-7 ÷ -3 = ( 3, 2)    so    −3 ×  3 + 2 =   -9+2   = 7
```

Because of the uniqueness, Euclidean division is often considered without referring to any method of computation, and without explicitly computing the quotient and the remainder. The methods of computation are called *integer division algorithms*, the best known of which being long division.

Euclidean division, and algorithms to compute it, are fundamental for many questions concerning integers, such as the Euclidean algorithm for finding the *greatest common divisor* of two integers, and *modular arithmetic*, for which only remainders are considered. The operation consisting of computing only the remainder is called the *modulo operation*.

## Contents

- 1. Division theorem
- 2. History
- 3. Intuitive example
- 4. Examples
- 5. Proof
  - 5.1 Existence
  - 5.2 Uniqueness
- 6. Effectiveness
- 7. Variants
  - 7.1 Other intervals for the remainder
  - 7.2 Montgomery division
- 8. In Euclidean domains

## Division theorem

Euclidean division is based on the following result, which is sometimes called *Euclid's division lemma*.
