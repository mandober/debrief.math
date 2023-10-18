# Pascal's triangle :: Properties

```
     row index (n)          diagonal 1: repeat 1
                  ↘       ↙   diagonal 2: ℕ, n = row index, num-of-terms = n+1
                    0   1   ↙   diagonal 3: triangular numbers
                      1   1   ↙   diagonal 4: tetrahedral numbers
                    1   2   1   ↙
                  1   3   3   1
                1   4   6   4   1
              1   5  10  10   5   1
            1   6  15  20  15   6   1
          1   7  21  35  35  21   7   1
        1   8  28  56  70  56  28   8   1
      1   9  36  84 126 126  84  36   9   1
    1  10  45 120 210 252 210 120  45  10   1
  1  11  55 165 330 462 462 330 165  55  11   1
1  12  66 220 495 792 924 792 495 220  66  12   1
```

- each row is numbered by its second term (second to the last term)
- row `n` contains `n + 1` terms
  - row index, `n`, n = t - 1
  - number-of-terms, `t`, t = n + 1
  - row 0: 0th row with 1 term
  - row 1: 1st row with 2 term
  - row 2: 2nd row with 3 term
  - row 3: 3rd row with 4 term
  - row `n`: nth row with `n+1` terms
- each row gives coefficients of a binomial expansion, `(x + y)ⁿ`
  - row 0: (x + y)⁰ = 1
  - row 1: (x + y)¹ = x + y
  - row 2: (x + y)² = x² + 2xy + y²
  - row 3: (x + y)³ = x³ + 3x²y + 3xy² + y³
  - row 4: (x + y)⁴ = x⁴ + 4x³y + 6x²y² + 4xy³ + y⁴
  - row 5: (x + y)⁵ = x⁵ + 5x⁴y + 10x³y² + 10x²y³ + 5xy⁴ + y⁵
  - row n: `(x + y)ⁿ` = `xⁿ + n xⁿ⁻¹ y + ... + n x yⁿ⁻¹ + yⁿ`
      ⁿCᵢ is `nCi` or `n-choose-i`, where i=[0..n]
    ⁿC₀     xⁿ   y⁰           ≡ 1 ∙ xⁿ   ∙ y⁰ ≡  xⁿ
    + ⁿC₁   xⁿ⁻¹ y¹           ≡ n ∙ xⁿ⁻¹ ∙ y¹ ≡ n xⁿ y
    + ⁿC₂   xⁿ⁻² y²
    + ⁿC₃   xⁿ⁻³ y³
    + ...
    + ⁿCₙ˗₃  x³   yⁿ⁻³
    + ⁿCₙ˗₂  x²   yⁿ⁻²
    + ⁿCₙ˗₁  x¹   yⁿ⁻¹        ≡ n ∙ x¹ ∙ yⁿ⁻¹ ≡ n x yⁿ
    + ⁿCₙ    x⁰   yⁿ          ≡ 1 ∙ x⁰ ∙ yⁿ   ≡   yⁿ
- each row sums up to a power of 2
  - row 0: 2⁰ = 1
  - row 1: 2¹ = 2
  - row 2: 2² = 4
  - row 3: 2³ = 8
  - row `n`: `2ⁿ`
- row `n` is the n-th power of 11, `11ⁿ`
  - each row, read as a number (as a decimal expansion), is a power of 11
  - row 0: 11⁰ = 1
  - row 1: 11¹ = 11
  - row 2: 11² = 121
  - row `n`: `11ⁿ`
- row parity
  - rows toggle between odd and even, holding odd or even terms
  - row 0: odd
  - row 1: even
  - row 2: odd
  - row 3: even
  - row n: `n % 2 = 0 : odd : even`
  - odd rows are have even number of terms
  - even rows are have odd number of terms


- shading odd numbers gives an illustration of Sierpinski's triangle





Geometry of Pascal's triangle

Properties of Pascal's triangle

Pascals triangle embeds/represents


- Rows
  - each row starts and ends with a 1
  - each row is a power of 2; 0th row is 0, 1st is 1
  - each row is a power of 11, 0th row is 11⁰, 1st is 11¹
  - rows numbering starts from 0
  - nth row contains n+1 elements
- binomial coefficients
  - each row lists the coefficients of a polynomial, axⁿ + cxⁿ⁻¹yⁿ⁻¹ + … + zyⁿ
  - binimial distribution
    - number of samples of size k from n objects, n-choose-k
    - 12-choose-5 is given by the 6th element in the 12th row
  - ⁿCₖ or `n-choose-k` for 0 <= k <= n
    - superset
    - partiations of a set
    - number of elements in the powerset
    - n = |S|, m = |𝓟(S)|

Notation
- row, `r`
- rows are indexed by `n` (2nd element in each row), row ordinal: `n`, 0 <= n
- row cardinality, `c`, |rₙ| = cₙ = n+1
- row parity, `rᐩ` even, `r⁻` odd: rₙ = odd if n is even and vv
- ⁿCₖ or n-choose-k (for 0 <= k <= n) is the num of combinations of n elements


Properties
- the 1's on both sides may be thought of as being surrounded with implicit 0's, if needed for computation, however the zeros are not part of the structure
- each row holds its ordinal number, n, as the second entry
- Row parity
  - rows toggle between odd and even rows, according to the num of elements
  - the zeroth row is odd, the first is even
- the sum of each row is a power of two, 2ⁿ, starting with n=0
- each row is mirrored around the center which is a single number or a pair
- each row has n+1 elements
- also encodes Fibbinacci numbers with the so-called shallow diagonals
- save for 1, any other num appears up to a certain row
  e.g. 10 may appear up to row 10 (it has 4 occurances total)
- PT mod 2 encodes Sierpinski's triangle (odds as holes)
- interp rows in diff base/radix or place value acc to element position
  numbers (like 21) as place values (21*10ⁿ) of base 10 give powers of 11
  [1,5,10,10,5,1] ~~> 11⁵ = 161051
  `1*10⁵ + 5*10⁴ + 10*10³ + 10*10² + 5*10¹ + 1*10⁰`
   = 100000+50000+10000+1000+50+1 = 161051


```
[1]         = 11⁰ = 1
[1,1]         = 11¹ = 11
[1,2,1]         = 11² = 121
[1,3,3,1]          = 11³ = 1331
[1,4,6,4,1]         = 11⁴ = 14641
[1,5,10,10,5,1]      = 11⁵ = 161051
[1,6,15,20,15,6,1]
[1,7,21,35,35,21,7,1]
[1,8,28,56,70,56,28,8,1]
[1,9,36,84,126,126,84,36,9,1]
[1,10,45,120,210,252,210,120,45,10,1]
```

Pascal's triangle is a triangular array of the binomial coefficients. In much of the Western world, it is named after the French mathematician Blaise Pascal, although other mathematicians studied it centuries before him in India, Persia, China, Germany, Italy.

The rows of Pascal's triangle are conventionally enumerated starting with the zeroth row, `n = 0`, at the top, following from the fact that 2ⁿ is the sum of the numbers in the nth row, with row number, n, itself located as the second (and second to last) entry in each row.

The entries in each row are numbered from the left beginning with `k = 0` and are usually staggered relative to the numbers in the adjacent rows.

The triangle may be constructed in the following manner: in row 0 (top row), there is a unique nonzero entry 1. Each entry of each subsequent row is constructed by adding the above-left and above-right numbers, treating blank entries as 0. As a formula, it is:

$$\displaystyle{{n \choose k} = {n-1 \choose k-1} + {n-1 \choose k}}$$

An entry (element, value) in the nth row and kth column of Pascal's triangle is denoted $$\binom{n}{k}$$ (read: "n choose k").


$$
\displaystyle{
^{n} \! \operatorname{C} _{k} = 
\binom {n} {k} = 
\binom {n} {n-k} = 
\frac {n!} {(n-k)! \ k!} =
\frac 
{ n \cdot (n-1) \cdots (n-k+1) }
{ k \cdot (k-1) \cdots 1      }
}
$$
