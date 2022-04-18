# Relations

Each binary relation between two sets A and B is some subset of the Carthesian product A⨯B, `R ⊆ A⨯B`, or equivalently, an element in the powerset of the product A⨯B, `R ∈ 𝓟(A⨯B)`.

If `A = {a,b}` so `n = |A| = 2`, and `B = {1,2}` so `m = |B| = 2`, then the cardinality of `C = A⨯B` is `c = |A⨯B| = 2⨯2 = 4`, and the cardinality of the powerset of their product, `P = 𝓟(A⨯B)`, is `p = |𝓟(A⨯B)| = 2⁴ = 16`.

- `A = {a,b}`, n = 2
- `B = {1,2}`, m = 2
- The product of A⨯B has nm = 4 elements, all of which are ordered pairs:   
  `A⨯B = { (a,1), (a,2), (b,1), (b,2) }`
- The set `𝓟(A⨯B)` has 2ⁿᵐ = 2⁴ = 16 elements, all of which are sets. The members are sets with a varying number of elements, from 0 to 4 elements. The exact distribution is a binomial coefficient, so this sequence can be found in the 4th row of Pascal's triangle: `1,4,6,4,1`.

The sequence `1,4,6,4,1` means there are:
- 1 ⨯ 0-element set (one empty set)
- 4 ⨯ 1-element set (four singletons)
- 6 ⨯ 2-element set (six pairs)
- 4 ⨯ 3-element set (four triplets)
- 1 ⨯ 4-element set (one original set)

```js
𝓟(A⨯B) = {
  // 1 ⨯ empty set
    {}                                 // 1
  // 4 ⨯ singletons
  , { (a, 1) }                         // 2
  , { (a, 2) }                         // 3
  , { (b, 1) }                         // 4
  , { (b, 2) }                         // 5
  // 6 ⨯ pairs
  , { (a, 1), (a, 2) }                 // 6
  , { (a, 1), (b, 1) }                 // 7
  , { (a, 1), (b, 2) }                 // 8
  , { (a, 2), (b, 1) }                 // 9
  , { (a, 2), (b, 2) }                 // 10
  , { (b, 1), (b, 2) }                 // 11
  // 4 ⨯ 3-element set
  , { (a, 1), (a, 2), (b, 1) }         // 12
  , { (a, 1), (a, 2), (b, 2) }         // 13
  , { (a, 1), (b, 1), (b, 2) }         // 14
  , { (a, 2), (b, 1), (b, 2) }         // 15
  // 1 ⨯ one original set
  , { (a,1), (a,2), (b,1), (b,2) }     // 16
  }
```

Since the set `𝓟(A⨯B)` may be considered a partially ordered set, every element of it has a place in the poset lattice ordered by inclusion.

Using the shorthand notation like `a1` to mean `(a, 1)`:

```
                     {a1, a2, b1, b2}

{a1,a2,b1}       {a1,a2,b2}       {a1,b1,b2}       {a2,b1,b2}

{a1,a2}    {a1,b1}    {a1,b2}    {a2,b1}    {a2,b2}    {b1,b2}

{a1}               {a2}               {b1}               {b2}

                             ∅
```

Nicely drawn, this turns out to be 3D cube.
