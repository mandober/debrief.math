# Number of relations on a set

Number of relations on a set A of 3 elements, n = 3

512 relations = 2⁹
------------------------------- of which
 64 functions
 ------------------------------------- of which
 27 total functions (3³)
 37 partial functions (64 - 3³)
 ----------------------------------------- of which (partial functions)
  1 empty relation, ∅ (no cols)
 36 non-empty relations
 --------------------------------------------------------- of which
  9 (1-element relations, 3 ⨯ col1, 3 ⨯ col2, 3 ⨯ col3)
  9 (2-element relations, col1 & col2)
  9 (2-element relations, col1 & col3)
  9 (2-element relations, col2 & col3)


## Details

```
Let A = {a,b,c}

        col1   col2   col3
     ⎛ (a,a), (b,a), (c,a) ⎞
A² = ⎨ (a,b), (b,b), (c,b) ⎬
     ⎝ (a,c), (b,c), (c,c) ⎠

* Each relation is an elem of the powerset of A². So 2⁹ = 512 relations.
* For a relation to be a function (partial or total), it can only contain at most 1 element (ordered pair) from the 3 columns.
- of 9-choose-0 (= 1), all are partial functions
  - ∅ is a partial function (9-choose-0)
- of 9-choose-1 (= 9), all are partial functions
  - There are 9 1-element partial fns (1 elem from each column) 9-choose-1
- of 9-choose-2 (= 36), 27 (3⨯9) are partial fns, 9 are relations
  - There are 9 2-element partial functions (1 elem from col1, 1 elem from col2)
  - There are 9 2-element partial functions (1 elem from col1, 1 elem from col3)
  - There are 9 2-element partial functions (1 elem from col1, 1 elem from col3)
- all other groups with k > 3 are relations
* a total function must always contain exactly 3 elements (ord pairs).
  - Thus, there are 27 (= 3³) unary functions on the set A².
* the number of all functions (partial or total) is 64
  - There are 37 partial and 27 total functions.


⎛ n ⎞      ⎛ 9 ⎞
⎝ k ⎠ i.e. ⎝ k ⎠

9th row of Pascal's triangle

k=9
⎲ ⎛ 9 ⎞
⎳ ⎝ k ⎠ = 1 + 9 + 36 + 84 + 126 + 126 + 84 + 36 + 9 + 1 = 512
k=0


                                 relations
                       ┌────────────┴─────────────────────┐
  1     9    36    84    126   126   84    36     9     1
⎛ 9 ⎞ ⎛ 9 ⎞ ⎛ 9 ⎞ ⎛ 9 ⎞ ⎛ 9 ⎞ ⎛ 9 ⎞ ⎛ 9 ⎞ ⎛ 9 ⎞ ⎛ 9 ⎞ ⎛ 9 ⎞
⎝ 0 ⎠ ⎝ 1 ⎠ ⎝ 2 ⎠ ⎝ 3 ⎠ ⎝ 4 ⎠ ⎝ 5 ⎠ ⎝ 6 ⎠ ⎝ 7 ⎠ ⎝ 8 ⎠ ⎝ 9 ⎠
└────┬──────────┘ └─┬─┘
partial          total functions
functions

```
