# Factorial

## Facts re factorial

- factorial is a recursive function usually defined by a recurrence relation
- recurrence relation: `n! = n(n-1)!`, with a base case like `n! = 0`
- the function type should restrict the domain to ℕ exclusively, which is also a suitable, minimal, codomain set, `(!) : ℕ → ℕ`; although the codomain may be extended to any higher set (for no good reason since the regular factorial function only produces positive integers).
- The base case is typically `0! = 1`, which strikes people as peculiar, but it stems from combinatorics in that there is exactly 1 way to arrange 0 items. The value of `0!` could have plausably been set also to 0, but it was decided that 1 is more convenient and practical (similarly to how it was decided that 1 should be stripped off its status of a prime since that makes factorization a terribly inconvenient sport).
- factorial is a product of numbers from 1 (or 0) to `n`
  - `n! = 1 × 2 × 3 × ⋯ × n`
  - `0 × 1 × 2 × 3 × ⋯ × n = 0` but `n! ≠ 0`
  - n! = `n × (n-1) × (n-2) × ⋯ × 2 × 1 × 0!`, not
  - n! = `n × (n-1) × (n-2) × ⋯ × 2 × 1 × 0` which is 0
  - 2 × 1 × 0 = 0
  - `2!` = `2 × 1!` = `2 × 1 × 0!` = `2 × 1 × 1` (not `2×1×0`)
  - n! = n × (n-1)! (recursive case)
  - 0! = 1 (base case)
  - in the pi notation, `n! = Π{k=1..n} k`, $\prod _{k=1} ^n k$
- all factorials greater than 1 are *even*, `n > 1 ⇒ even n!`
- primes that are ±(n!) are called factorial primes
- factorial is normally a function `(!) : ℕ → ℕ` but it can be extended to ℝ
- to get the function called gamma function, `Γ`
- n/n! = 1/(n-1)!, 6/6! = 1/5!
- n!/n = (n-1)!, 6!/6 = 5!


```js
 n!                  7!    7 × 6!
---- = (n-1)!       ---- = ------ = 6!
 n                   7       7

 n       1           7        7        1
---- = -------      ---- = -------- = ----
 n!    (n-1)!        7!     7 × 6!     6!


   n!         n(n-1)(n-2)!     n(n-1)
---------- = ------------- = ---------
(n-2)! x!      (n-2)! x!        x!



   n!
-------- = nCk
k!(n-k)!
```

Factorial is straigntforward function except for the edge case when x=0 which is arbitrarily set equal to 1 to coincide with the unit of multiplication as the factorial itself is a multiplication operation.

## Definition of factorial

There are numerous ways to define factorial function, many in math, but way more in math-like PLs liek Haskell and particularly Agda (Agda is one of the closest-to-math languages; Haskell is as well despite being not as rigorous as Agda. In fact, Agda is hi-fi constructive mathematics).



### Factorial is a recurrence relation

The recurrence relation is `n! = n(n-1)!`. However, this is not enough as it requires a base case to specify what to do on `0!`

n! = n × (n-1)




## Insights

### 3! vs 0 × 1 × 2 × 3

The trouble with factorial is when considering a sequence with 0 as the lower bound and some finite non-negative integer `n` as the upper bound. This sequence is then (0, 1, 2, 3, …, n). Now, applying an operation on such a sequence in case the operation is `+` is straigntforward, and with e.g. n=4 we get 0+1+2+3+4 = 10. In case the operation is `×` the same example amounts to 0×1×2×3×4 = 0. Of course, we get 0 as expected when any operand is 0. However, expressing this operation as 4! results in 24, which would be the result of the last example if we could got rid of the 0. There is a discrepancy between mapping a sequence with the multiplication operation vs using a factorial, i.e. getting zero result vs non-zero result. With factorial even with 0 included in the sequence, 4! = 4 × 3! = 4 × 3 × 2! = 4 × 3 × 2 × 1! = 4 × 3 × 2 × 1 × 0! = 4 × 3 × 2 × 1 × 1, that is, the base case being defined as 0! = 1 saves the multiplication operation from collapsing to 0.


>The issue is the mismatch between applying `×` operation on a sequence vs expressing that as a factorial.

```hs
fmap (*) [0,1,2,3] = 0 * 1 * 2 * 3 = 0
-- vs
fac 3 = 3 * fac 2 = 3 * 2 * fac 1 = 3 * 2 * 1 * fac 0 = 3 * 2 * 1 * 1 = 6
-- where fac is (naively) defined as:
fac :: ℕ → ℕ
fac 0 = 1
fac n = n * fac (n - 1)
```

This problem has come up with derivatives of functions. By taking increasing derivatives of any (polynomial) function, we always hit 0 eventually:
- f(x) = 3x²
- f′(x) = 6x
- f′′(x) = 6
- f′′′(x) = 0

[And now I forget what the exact problem was - of course, repeated differentiatiation results in zero eventually, so what could have been the problem I wonder… can't recall. It had something to do with deciding when to stop: just before it all goes to zero or after. nevermind. bollocks!]



```s
(!) : ℕ → ℕ
0! = 1
n! = n(n-1)!
```

```hs
fac :: ℕ → ℕ
fac 0 = 1
fac n = n * fac (n - 1)
```

```js
const fac x => x < 1 ? 1 : x * fac (n - 1)
```

### Sparse factorial

There is often a need to multiply a contiguous sequence of non-negative integers that does not start from 0 or 1, so it cannot be directly expressed as a factorial. We could call them sequences without the initial segment, for example, [4..8], which we'd like to map with `*`, and express that succinctly like the factorial does.

```hs
-- it is easy to do it in Haskell
product [4..8]
fmap (*) [4..8]
result = 4 × 5 × 6 × 7 × 8

-- but in math

 8!     1 × 2 × 3 × 4 × 5 × 6 × 7 × 8   5 × 6 × 7 × 8
---- = ------------------------------ = -------------
 4!     1 × 2 × 3 × 4                         1

8!/4! = 5 × 6 × 7 × 8
```

There could be a notation `(n..m)!`, with `n ≤ m`, defined by `m!/n!`. 
For example, `(4..8)! = 8!/4! = 5×6×7×8`. It could be called *subfactorial*.

```js
                  1×2×3×4×5×6×7×8
(4..8)! = 8!/4! = ---------------- = 5×6×7×8
                  1×2×3×4
```

General formula of *subfactorial*:

```js
           m!
(n..m)! = ----
           n!
```

### Sparse factorial - factorial with a hole

`n!/k` where k ≤ n, defined by

```js
        6!    2 × 3 × 4 × 5 × 6
6!/2 = ---- = ----------------- = 2×4×5×6×7×8
        3         3
```


```js
     1     1     1     1     1    6! + 6!/2 + 6!/3 + 6!/4 + 6!/5 + 6!/6
1 + --- + --- + --- + --- + --- = -------------------------------------
     2     3     4     5     6                    6!
```
