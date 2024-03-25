# Bell number

**Bell number** indicates the number of ways to partition a set. 
Bell number is denoted by `B ₙ` where `n` is the cardinality of the set.

- a partition `p` is constrained as `2 <= p < n`.
- there is always a set of 2 partitions where one is ∅ and the other is the set
- there is always a set of `n` partitions, each holding 1 element
- `⋃ Pᵢ`, union of partitions of a set `S` must be exactly `S`

The Bell number Bn counts the number of different ways to partition a set that has exactly n elements, or equivalently, the number of equivalence relations on it.

* Example 1

- S = {a,b}
- P₁ = {a, b}
- P₂ = {{a}, {b}}
- B₂ = 2


* Example 2

`S = {a,b,c}`, `n=3`, `B₃` = ?

Partitions of `S`        | nr of elem in `Pᵢ` | distro
-------------------------|--------------------|-------------
P₁ = { {a}, {b}, {c} }   | 3                  | 3 ⨯ 1
P₂ = { {a}, {b,   c} }   | 2                  | 1 ⨯ 1, 1 ⨯ 2
P₃ = { {b}, {a,   c} }   | 2                  | 1 ⨯ 1, 1 ⨯ 2
P₄ = { {c}, {a,   b} }   | 2                  | 1 ⨯ 1, 1 ⨯ 2
P₅ = { {a,   b,   c} }   | 1                  | 1 ⨯ 3

So, the Bell number of `S` is 5, `B₃ = 5`


## Bell's triangle

https://en.wikipedia.org/wiki/Bell_triangle

The sequnce of Bell numbers may be obtained by constructing a combinatory pyramid, similar to Pascal's - the Bell number `n` is the first number in the row `n` (or the last one in the row `n - 1`).

```
B₀ =   1
B₁ =   1     2
B₂ =   2     3     5
B₃ =   5     7    10    15
B₄ =  15    20    27    37    52
B₅ =  52    67    87   114   151   203
B₆ = 203   255   322   409   523   674   877
B₇ = 877 …
```


n  |   B | Δ₁  | Δ₂
---|----:|----:|----:
B₀ |   1 |     |
B₁ |   1 |   0 |
B₂ |   2 |   1 |   1
B₃ |   5 |   3 |   2
B₄ |  15 |  10 |   7
B₅ |  52 |  37 |  27
B₆ | 203 | 151 | 114
B₇ | 877 | 674 | 523



```
                    1
                 1     2
              2     3     5
           5     7    10    15
       15    20    27    37    52
    52    67    87   114   151   203
203   255   322   409   523   674   877
  ↘      ↘     ↘     ↘     ↘     ↘     ↘
   Δ₆     Δ₅    Δ₄    Δ₃    Δ₂    Δ₁    Bᵢ
```

- `Bᵢ`  Bell number
- `Δ₁`  differences between consecutive Bell numbers
- `Δ₂`  differences between `Δ₁` differences
- `Δᵢ`  differences of differences

The next diagonal parallel to the rightmost diagonal gives the sequence of differences of two consecutive Bell numbers, 1, 3, 10, 37, …. And each subsequent parallel diagonal gives the sequence of differences of previous diagonals.
