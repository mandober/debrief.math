# Binomial theorem

https://en.wikipedia.org/wiki/Binomial_theorem

The binomial theorem (or binomial expansion) describes the algebraic expansion of powers of a binomial. According to the theorem, the power `⁠(x+y)ⁿ`⁠ expands into a polynomial with terms of the form `⁠axᵏyᵐ`⁠, where the exponents ⁠`k`⁠ and ⁠`m`⁠ are nonnegative integers satisfying ⁠`k+m=n`⁠ and the coefficient ⁠`a`⁠ of each term is a specific positive integer depending on ⁠`n`⁠ and ⁠`k`⁠.

n |binomial| coefficients  | expansion
--|--------|---------------|-------------------------------------------------
2 | (x+y)² | 1 2 1         | x² + 2xy  +    y²
3 | (x+y)³ | 1 3 3 1       | x³ + 3x²y +  3xy²  +     y³
4 | (x+y)⁴ | 1 4 6 …       | x⁴ + 4x³y +  6x²y² +   4xy³ + y⁴
5 | (x+y)⁵ | 1 5 10 …      | x⁵ + 5x⁴y + 10x³y² + 10x²y³ + 5xy⁴ + y⁵
6 | (x+y)⁶ | 1 6 15 20 …   | x⁶ + 6x⁵y + 15x⁴y² + 20x³y³ + 15x²y⁴ + 6xy⁵ + y⁶
7 | (x+y)⁷ | 1 7 21 35 …   | x⁷+7x⁶y+21x⁵y²+35x⁴y³+35x³y⁴+21x²y⁵+7xy⁶+y⁷
8 | (x+y)⁸ | 1 8 28 56 70 …| x⁸+8x⁷y+28x⁶y²+56x⁵y³+70x⁴y⁴+56x³y⁵+28x²y⁶+8xy⁷+y⁸
n | (x+y)ⁿ | 1 n … n 1     | xⁿ + nxⁿ⁻¹y + ⋯ + nxyⁿ⁻¹ + yⁿ


The binomial coefficient `(n-choose-k)` appears as the `k`th entry in the `n`th row of Pascal's triangle. Each entry is the sum of the two entries above it. 

- entries in the row `n` are coefficients of binomial expansion for power `n`
  - coefficient of `(x+y)²` are the 3 numbers in the 2th row    (1,2,1)
  - coefficient of `(x+y)³` are the 4 numbers in the 3th row   (1,3,3,1)
  - coefficient of `(x+y)⁴` are the 5 numbers in the 4th row  (1,4,6,4,1)
  - coefficient of `(x+y)⁵` are the 6 numbers in the 5th row (1,5,10,10,5,1)

- binomial coefficient `(n k)` is k-th entry in the n-th row
- the sum of each row is double the previous row
- the sum of each row is a power of two

Diagonals:
- 1st: 1's
- 2nd: ℕ
- 3nd: triangular numbers
- 4th: tetrahedral numbers



Binomial expansion of `(x+y)ⁿ`
- has `n+1` terms
- the `n+1` coefficients are in the `n`th row

```
1
1 1
1 2 1
1 3 3 1
1 4 6 4 1
1 5 10 10 5 1
1 6 15 20 15 6 1
1 7 21 35 35 21 7 1
1 8 28 56 70 56 28 8 1
```
