# Pairing functions

>A **pairing function** is a bijection between ℕ×ℕ and ℕ that is also strictly monotone in each of its arguments.

If we let `p : ℕ×ℕ -> ℕ` be a pairing function, then we require:
- `p` is a *bijection*
- `p` is *strictly monotone* in each argument, `∀xy ∈ ℕ`, we have
  - `p(x, y) < p(x+1, y)`
  - `p(x, y) < p(x, y+1)`


An arbitrary pairing function `p(x,y)` is denoted with angle brackets, <x,y>.

The two functions required to recover each arg are called *projections* and denoted by `π₁` and `π₂`. If `z = <x,y>` then `π₁(z) = x` and `π₂(z) = y`.

An example of pairing function can be obtained by considering a *dovetailing* process to enumerate all the elements of ℕ×ℕ.

Let us consider the infinite table of natural pairs `(i,j)`.

*Dovetailing process* consists of enumerating 
  the 1. element of the 1. row, 
followed by 
  the 2. element of the 1. row, and
  the 1. element of the 2. row, 
followed by 
  the 3. element of the 1. row,
  the 2. element of the 2. row, and
  the 1. element of the 3. row, 
and so on.


```
        ¹    ²    ³    ⁴    ⁵    ⁶    ⁷
¹       1 →  2    4    7   11   16   22
          ↙    ↙    ↙    ↙    ↙    ↙
²       3    5    8   12   17   23
          ↙    ↙    ↙    ↙    ↙
³       6    9   13   18   ⋰
          ↙    ↙    ↙ 
⁴      10   14   19
          ↙    ↙
⁵      15   20
          ↙
⁶      21
```


We use the backwards diagonals in the table, one after the other, 
(1, 1), 
(1, 2), (2, 1), 
(1, 3), (2, 2), (3, 1), 
(1, 4), (2, 3), (3, 2), (4, 1), 
(1, 5), (2, 4), (3, 3), (4, 2), (5, 1),
…

* This enumeration proccess goes nicely down the (opposite) diagonal, but then it abruptly jumps back to the first row.

* Each row (as written above) ends in a transposed pair with which it starts


This process to enumerate is a bijection between ℕ×ℕ and ℕ. 
Moreover, the item in row `i`, column `j` 
of the infinite table is enumerated 
before item in row `i+1`, column `j` and 
before item in row `i`, column `j+1`, 
*making the bijection monotonic in each argument*.   

e.g.   step  9       is (3,2) [i,j]    and it is enumerated 
before step 14 which is (4,2) [i+1,j]  and 
before step 13 which is (3,3) [i,j+1] .

That is, for bijection to be monotonic in each argument, any cell should be enumerated before the cell on its right and the cell below it. Given any cell,there is always a cell on its right and a cell below it (by a cell we mean a value as indicated by the position of that cell).


Conversely, if we know the index `k` of an element, 
we can determine the corresponding pair `(i, j)` as follows: 
let `l` be the least integer with `l(l − 1) > 2k − 2` 
then we have `l = i + j` and  `2j = l(l − 1) − (2k − 2)`
