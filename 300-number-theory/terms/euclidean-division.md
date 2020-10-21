# Euclidean division

https://en.wikipedia.org/wiki/Euclidean_division

In arithmetic, **Euclidean division** is the process of finding a quotient and a remainder resulting from the integer division while satisfying prescribed conditions.

> `n ÷ d = (q, r)` such that `n = dq+r` and `n,d,q,r ∈ ℤ, d ≠ 0, 0 <= r < |d|`

Division of a dividend `n` by a divisor `d` produces a quotient `q` and a remainder `r`. So, `n = dq + r` and while `n` has many such representations, only one of them satisfies the condition that 0 <= r < |d|.

If r is 0 then n is divisible by d: `r = 0 -> d ∣ n` (d divides n). Otherwise,`d ∤ n` and `r` is less than the absolute value of `d` (r is already constrained to be positive). r cannot be equal to d as that just sets r to 0 and increments d.



## The conditions

1. all 4 numbers must be integers: n,d,q,r ∈ ℤ
2. divisor is not zero: d != 0
3. and the remander *must be* nonnegative integer, 0 <= r < |d|

The condition that the remainder must not be negative, makes Euclidean division slightly unusual because insisting that the remainder is non-negative makes it unintuitionistic in its logic. This occurs when `n` xor `d` is negative, for example:

```
 7 ÷  3 = ( 2, 1) since  7 =  3 ×  2 + 1
 7 ÷ -3 = (-2, 1) since  7 = −3 × −2 + 1
-7 ÷  3 = (-3, 2) since −7 =  3 × −3 + 2
-7 ÷ -3 = ( 3, 2) since −7 = −3 ×  3 + 2
```

All involved numbers are integrals for this is an operation restricted to the integer domain. It must be qualified as integer division in order to disambiguate it from the more common division of real numbers, which is the assumed operation when the term "division" appears unqualified.

On a related note, if the remainder breaks the closure of the integer jail and spilt into the domain of the real numbers, then all other numbers in the operation must follow suit, and eventually the operation becomes plain old division.


## Euclid's division lemma

> The fundamental property of Euclidean division is that the quotient and the remainder exist and are **unique** (conditions holding).

Because of this uniqueness, Euclidean division is often considered without referring to any method of computation, and without explicitly computing the quotient and the remainder. The methods of computation are called *integer division algorithms*, the best known being *long division*.

Euclidean division is fundamental for many questions concerning integers, such as the Euclidean algorithm for finding the *greatest common divisor* and **modular arithmetic**. The name of the operation that computes the remainder is the **modulo operation**.


## References

https://betterexplained.com/articles/fun-with-modular-arithmetic/
https://web.archive.org/web/20151127195438/http://thales.math.uqam.ca/~rowland/investigations/modulararithmetic.html
http://www-groups.mcs.st-andrews.ac.uk/~john/MT4517/Lectures/L6.html
https://mathvault.ca/long-division/

https://en.wikipedia.org/wiki/Portal:Mathematics#Topics_in_mathematics
https://en.wikipedia.org/wiki/Category:Mathematical_theorems
