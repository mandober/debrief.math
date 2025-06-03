# Sum of a arithetic sequence

AP is a sequence of numbers such that the difference between any two consecutive terms is constant. Each term in an AP increases (or decreases) by a constant value called the *common difference*, `d`.

Starting with an initial term, `a₁`, and knowing the value of `d`, we can calculate a term with index `n` by adding `d` to the first term `n-1` times
- 1st term is `a₁ = a₁ + 0d`
- 2nd term as `a₂ = a₁ + 1d`
- 3rd term as `a₃ = a₁ + 2d`
- 4th term as `a₄ = a₁ + 3d`
- nth term as `aₙ = a₁ + (n-1)d`

If all we knew was the `n`th term, we could calculate the initial term:
- `a₁ = aₙ − (n−1)d`

Sum of a AP is the number of terms in the seq, `n`, multiplied by the average of the initial term, `a₁`, and the last term `aₙ`.

```js
      a₁ + aₙ
S = n -------
         2
```


## Derivation for the Sum of AP

```js
S = a₁ + a₂ + a₃ + a₄ + … + aₙ

S = a₁ + (a₁+d) + (a₁+2d) + (a₁+3d) + … + (a₁ + (n−1)d) // Eq1

S = aₙ + aₙ₋₁ + aₙ₋₂ + aₙ₋₃ + … + a₁

S = aₙ + (aₙ−d) + (aₙ−2d) + (aₙ−3d) + … + (aₙ − (n−1)d)  // Eq2

// add Eq1 + Eq2
S  = a₁ + (a₁+ d) + (a₁+2d) + (a₁+3d) + … + (a₁ + (n − 1)d)  // Eq1
S  = aₙ + (aₙ − d) + (aₙ − 2d) + (aₙ − 3d) + … + (aₙ − (n − 1)d)  // Eq2

2S = (a₁ + aₙ) + (a₁ + aₙ) + (a₁ + aₙ) + (a₁ + aₙ) + … + (a₁ + aₙ)

2S = n(a₁ + aₙ)
S = n(a₁ + aₙ) ÷ 2            /* Sum of AP from a₁ and aₙ */

// substituting the rhs of the equation for aₙ in the above
S = n(a₁ + (a₁ + (n-1)d)) ÷ 2
S = n(2a₁ + (n-1)d) ÷ 2      /* Sum of AP from a₁ and d */
```
