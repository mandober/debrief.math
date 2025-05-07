# Pascal's triangle

```js
⎲ⁿ  ⎛ n ⎞                      ⎲ⁿ  ⎛ n ⎞
⎳ₖ₌₀ ⎝ k ⎠ xⁿ⁻ᵏyᵏ = (x + y)ⁿ = ⎳ₖ₌₀⎝ k ⎠ xᵏyⁿ⁻ᵏ

⎛ n ⎞       n!       ⎛  n  ⎞
⎜   ⎟ = ---------- = ⎜     ⎟
⎝ k ⎠   k!(n - k)!   ⎝ n-k ⎠
```

The equality of `nCk` and `nC(n-k)` correspond to the fact that entries in each row the Pascal's triangle are mirrored (with or without a central entry). Even rows are mirrored around a central entry, odd rows do not have a central entry.

The **ordinal number of each row** is encoded right in the table: the second entry in each row is the row's ordinal number. A row's ordinal number is usually represented by `n`.

For example, regarding the expansion of the binomial `(x+y)⁴`, the exponent 4 means we should find the 4th row of the Pascal's triangle and read off the coefficients for the binomial's expansion from there. The 4th row contains the entries `1 4 6 4 1`, so the expansion looks like:

```js
(x + y)³                      // expanding this binomial
1 3 3 1                       // entries of row 3 of the Pascal's triangle
1 + 3 + 3 + 1                 // they become coefficients in the expansion
1xy + 3xy + 3xy + 1xy         // add both variables to each term
1x³y + 3x²y + 3x¹y + 1x⁰y     // place decreasing powers on x's from left
1x³y⁰ + 3x²y¹ + 3x¹y² + 1x⁰y³ // starting with n, then for y's from right
x³ + 3x²y + 3xy² + y³         // clean up. done!
```

row equaling the exponent `n` is looked up in the Pascal's triangle and that is the row whose entries make up the coefficient in the expansion of that binomial.



`1` is *even row* because rows are identified by the 2nd entry (here, it is the implicit `0`), not by the number of elements; so, this is the 0th row (row 0).

`1 1` is *odd row* because rows are identified by the 2nd entry (which is here `1`), not by the number of elements; so, this is the 1st row (or row 1).

`1 2 1` is *even row* because rows are identified by the 2nd entry (which is here `2`), not by the number of elements; so, this is the 2nd row (or row 2).

`1 3 3 1` is *odd row* because rows are identified by the 2nd entry (which is here `3`), not by the number of elements; so, this is the 3rd row (or row 3).


that the first and last entries in any row of the Pascal's triangle are always 1.


* The first and last term correspond to the coefficients of the entry are

they correspond to nCk

```js
⎛n⎞   ⎛ n ⎞
⎝n⎠ = ⎝n-k⎠

⎛n⎞   ⎛n⎞
⎝n⎠ = ⎝0⎠ = 1

⎛ n ⎞   ⎛n⎞
⎝n-1⎠ = ⎝1⎠ = n



⎛5⎞   ⎛5⎞        ⎛5⎞   ⎛5⎞         ⎛5⎞   ⎛5⎞
⎝0⎠ = ⎝5⎠ = 1    ⎝1⎠ = ⎝4⎠ = 5     ⎝2⎠ = ⎝3⎠
```

- there are `n+1` terms in the row `n`
- sum of `n+1` terms of the row `n` is `2ⁿ`
- if `n` even: there is a central term in row `n`
- if `n` odd: there is no central term in row `n`
- if `n` even: row `n` has odd number of terms
- if `n` odd: row `n` has evendd number of terms
- main diagonal: all 1's
- 2nd diagonal: ℕ
- 3nd diagonal: triangular numbers
- 3nd diagonal: tetrahedral numbers
- a row after row `n` has `n+1` terms



Cntr| 1s| n  | Tri| Tet | a    |      |       |       |       |       |       |       |       |      |      |     |     |   |
----|---|----|----|-----|------|------|-------|-------|-------|-------|-------|-------|-------|------|------|-----|-----|---|
 1  | 1 |    |    |     |      |      |       |       |       |       |       |       |       |      |      |     |     |   |
    | 1 |  1 |    |     |      |      |       |       |       |       |       |       |       |      |      |     |     |   |
 2  | 1 | `2`|  1 |     |      |      |       |       |       |       |       |       |       |      |      |     |     |   |
    | 1 |  3 |  3 |   1 |      |      |       |       |       |       |       |       |       |      |      |     |     |   |
 6  | 1 |  4 | `6`|   4 |    1 |      |       |       |       |       |       |       |       |      |      |     |     |   |
    | 1 |  5 | 10 |  10 |    5 |    1 |       |       |       |       |       |       |       |      |      |     |     |   |
 20 | 1 |  6 | 15 | `20`|   15 |    6 |     1 |       |       |       |       |       |       |      |      |     |     |   |
    | 1 |  7 | 21 |  35 |   35 |   21 |     7 |     1 |       |       |       |       |       |      |      |     |     |   |
 70 | 1 |  8 | 28 |  56 |  `70`|   56 |    28 |     8 |     1 |       |       |       |       |      |      |     |     |   |
    | 1 |  9 | 36 |  84 |  126 |  126 |    84 |    36 |     9 |     1 |       |       |       |      |      |     |     |   |
252 | 1 | 10 | 45 | 120 |  210 | `252`|   210 |   120 |    45 |    10 |     1 |       |       |      |      |     |     |   |
    | 1 | 11 | 55 | 165 |  330 |  462 |   462 |   330 |   165 |    55 |    11 |     1 |       |      |      |     |     |   |
924 | 1 | 12 | 66 | 220 |  495 |  792 |  `924`|   792 |   492 |   220 |    66 |    12 |     1 |      |      |     |     |   |
    | 1 | 13 | 78 | 186 |  715 | 1287 |  1716 |  1716 |  1287 |   715 |   186 |    78 |    13 |    1 |      |     |     |   |
3432| 1 | 14 | 91 | 364 | 1001 | 2002 |  3003 | `3432`|  3003 |  2002 |  1001 |   364 |    91 |   14 |    1 |     |     |   |
    | 1 | 15 |105 | 455 | 1365 | 3003 |  5005 |  6435 |  6435 |  5005 |  3003 |  1365 |   455 |  105 |   15 |   1 |     |   |
    | 1 | 16 |120 | 560 | 1820 | 4368 |  8008 | 11440 | 12870 | 11440 |  8008 |  4368 |  1820 |  560 |  120 |  16 |   1 |   |
    | 1 | 17 |136 | 680 | 2380 | 6188 | 12376 | 19448 | 24310 | 24310 | 19448 | 12376 |  6188 | 2380 |  680 | 136 |  17 |  1|
    | 1 | 18 |153 | 816 | 3060 | 8568 | 18564 | 31824 | 43758 | 48620 | 43758 | 31824 | 18564 | 8568 | 3060 | 816 | 153 | 18| 1
    | 1 | 19 |171 | 969 | 3876 |11628 | 27132 | 50388 | 75582 | 92378 | 92378 | 75582 | 50388 |27132 |11628 |3876 | 969 |171|19 | 1


```
1 16 120 560 1820  4368  8008 11440 12870 11440  8008  4368  1820   560   120   16   1
1 17 136 680 2380  6188 12376 19448 24310 24310 19448 12376  6188  2380   680  136  17   1
1 18 153 816 3060  8568 18564 31824 43758 48620 43758 31824 18564  8568  3060  816 153  18  1
1 19 171 969 3876 11628 27132 50388 75582 92378 92378 75582 50388 27132 11628 3876 969 171 19 1
```

```js
⎛0⎞
⎝0⎠
⎛1⎞ ⎛1⎞
⎝0⎠ ⎝1⎠
⎛2⎞ ⎛2⎞ ⎛2⎞
⎝0⎠ ⎝1⎠ ⎝2⎠
⎛3⎞ ⎛3⎞ ⎛3⎞ ⎛3⎞
⎝0⎠ ⎝1⎠ ⎝2⎠ ⎝3⎠
⎛4⎞ ⎛4⎞ ⎛4⎞ ⎛4⎞ ⎛4⎞
⎝0⎠ ⎝1⎠ ⎝2⎠ ⎝3⎠ ⎝4⎠
⎛5⎞ ⎛5⎞ ⎛5⎞ ⎛5⎞ ⎛5⎞ ⎛5⎞
⎝0⎠ ⎝1⎠ ⎝2⎠ ⎝3⎠ ⎝4⎠ ⎝5⎠
⎛6⎞ ⎛6⎞ ⎛6⎞ ⎛6⎞ ⎛6⎞ ⎛6⎞ ⎛6⎞
⎝0⎠ ⎝1⎠ ⎝2⎠ ⎝3⎠ ⎝4⎠ ⎝5⎠ ⎝6⎠
⎛7⎞ ⎛7⎞ ⎛7⎞ ⎛7⎞ ⎛7⎞ ⎛7⎞ ⎛7⎞ ⎛7⎞
⎝0⎠ ⎝1⎠ ⎝2⎠ ⎝3⎠ ⎝4⎠ ⎝5⎠ ⎝6⎠ ⎝7⎠
⎛8⎞ ⎛8⎞ ⎛8⎞ ⎛8⎞ ⎛8⎞ ⎛8⎞ ⎛8⎞ ⎛8⎞ ⎛8⎞
⎝0⎠ ⎝1⎠ ⎝2⎠ ⎝3⎠ ⎝4⎠ ⎝5⎠ ⎝6⎠ ⎝7⎠ ⎝8⎠
⎛9⎞ ⎛9⎞ ⎛9⎞ ⎛9⎞ ⎛9⎞ ⎛9⎞ ⎛9⎞ ⎛9⎞ ⎛9⎞ ⎛9⎞
⎝0⎠ ⎝1⎠ ⎝2⎠ ⎝3⎠ ⎝4⎠ ⎝5⎠ ⎝6⎠ ⎝7⎠ ⎝8⎠ ⎝9⎠
⎛10⎞ ⎛10⎞ ⎛10⎞ ⎛10⎞ ⎛10⎞ ⎛10⎞ ⎛10⎞ ⎛10⎞ ⎛10⎞ ⎛10⎞ ⎛10⎞
⎝ 0⎠ ⎝ 1⎠ ⎝ 2⎠ ⎝ 3⎠ ⎝ 4⎠ ⎝ 5⎠ ⎝ 6⎠ ⎝ 7⎠ ⎝ 8⎠ ⎝ 9⎠ ⎝10⎠
⎛11⎞ ⎛11⎞ ⎛11⎞ ⎛11⎞ ⎛11⎞ ⎛11⎞ ⎛11⎞ ⎛11⎞ ⎛11⎞ ⎛11⎞ ⎛11⎞ ⎛11⎞
⎝ 0⎠ ⎝ 1⎠ ⎝ 2⎠ ⎝ 3⎠ ⎝ 4⎠ ⎝ 5⎠ ⎝ 6⎠ ⎝ 7⎠ ⎝ 8⎠ ⎝ 9⎠ ⎝10⎠ ⎝11⎠
```
