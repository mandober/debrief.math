# Pascal's triangle

https://en.wikipedia.org/wiki/Pascals_triangle

**Pascal's triangle** is a triangular array of the binomial coefficients that arises in probability theory, combinatorics, and algebra. In much of the Western world, it is named after the French mathematician Blaise Pascal, although other mathematicians studied it centuries before him in India, Persia, China, Germany, and Italy.



The rows of Pascal's triangle are conventionally enumerated starting with row `n = 0` at the top (the 0th row). 

The entries in each row are numbered from the left beginning with `k = 0` and are usually staggered relative to the numbers in the adjacent rows.

The triangle may be constructed in the following manner:
- The 0th row (the topmost row): `1` is the first (and only) entry; the second entry always marks a row's ordinal number, but in the 0th row, it is implicit.number (i.e. the 0th row).
- Each entry of each subsequent row is constructed by adding the number above and to the left with the number above and to the right, treating blank entries as 0 (for a Left-aligned Pascal's triangle)
- For a proper Pascal's triangle, start (and finish) each row with a `1`; then, for each entry, add the two entries directly above (from the previous row).

```js
// Pascal's triangle up to 4th row (up to single digit numbers)
    1
   1 1
  1 2 1
 1 3 3 1
1 4 6 4 1
```

Properties:
- 0th row has a single entry, `1`, and each subsequent row has one more entry than the previous row
- in any row, the entries are horiz. mirrored (the axis is the middle of a row)
- the 0th (and the last due to mirroring) entry in each row is `1`
- the 1st entry in any row always marks the row's ordinal number (as does second to last entry due to mirroring)
- in any row, the sum of the entries is a power of two
- the `kᵢ` entry of the row `n` is given by `n-choose-kᵢ` for `k=0..n`


For example, the initial number in the first (or any other) row is 1 (the sum of 0 and 1), whereas the numbers 1 and 3 in the third row are added to produce the number 4 in the fourth row.

*Binomial coefficients* appear as nth row of the Pascal's triangle - the binomial coefficient `n-choose-k` is found in the `n`th row, as the `k`th entry.



```js
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
Left-aligned Pascal's triangle
