# Number and types of functions between two sets

Given two set `a` and `b`, where `a = { x, y, z }` and `b = { 1, 2, 3 }`

- cardinality:
  - |a| = |b| = 3
  - |a⨯b| = 3⨯3 = 9
  - powerset `𝒫(a⨯b)`
    - |𝒫(a)| = |𝒫(b)| = 2³ = 8
    - the distribution of the powerset's elements is indicated by the Pascal's triangle, where the row that encodes it, is indicated by the second number which needs to be equal to the cardinality of the base set. In our example, for the base set `a`, it is |a| = 3, hence we're interested in is 4th row of the Pascal's triangle, the one that contains the sequence `(1,3,3,1)`.
    - |𝒫(a⨯b)| = 2⁹ = 512
- number of relations:
  - total relations: |a𝓡b| = 512 since a𝓡b ⊆ a⨯b
    - 1 null relation, R₀ = ∅
    - 1 total relation, R₅₁₁ = a⨯b
    - other relations: each element of the powerset `𝒫(a⨯b)` represents a relation between `a` and `b`; we need not add 1 for the null (empty) relation since it is repr by the ∅ in the powerset, `𝒫(a⨯b)`
- number of functions:
  - total nr. of functions: 2³ = 8

How many
- total number of functions `a -> b`: 8
  - identity function: 1
  - bijections: 
  - injections
  - surjections (constants)


```
a = { x, y, z }       |a| = 3
b = { 1, 2, 3 }       |b| = 3

|𝒫(a)| = 2³ = 8   𝒫(a) = { ∅, {x,y,z}, {x}, {y}, {z}, {x,y}, {x,z}, {y,z} }
|𝒫(b)| = 2³ = 8   𝒫(b) = { ∅, {1,2,3}, {1}, {2}, {3}, {1,2}, {1,3}, {2,3} }

|a⨯b| = 3⨯3 = 9

|𝒫(a⨯b)| = 2⁹  = 512

a⨯b = { (x,1), (x,2), (x,3)
      , (y,1), (y,2), (y,3)
      , (z,1), (z,2), (z,3) }

Given some base set A, many info about the powerset 𝒫(A) is encoded in the Pascal's triangle. Each row of the Pascal's triangle encodes info about the powerset of a base set whose cardinality is equal to the second number in a row.

Thus, the last row of the sample given below, has the number 4 in that place, indicating that it encodes info about the powerset of any base set whose cardinality is 4. The sum of that row, 1+4+6+4+1 = 16 = 2⁴, amounts to 16, the same as the formula for the cardinality of a powerset based on the cardinality of a base set, 2ⁿ, but it encodes a lot more info.

The sequence (1,4,6,4,1) indicates that there is:
- 1 set  with 0 elements
- 4 sets with 1 element
- 6 sets with 2 elements
- 4 sets with 3 elements
- 1 set  with 4 elements


      1           = 2⁰ = 1
     1 1          = 2¹ = 2
    1 2 1         = 2² = 4
   1 3 3 1        = 2³ = 8
  1 4 6 4 1       = 2⁴ = 16
 1 5 A A 5 1      = 2⁵ = 32
1 6 F J F 6 1


┌ 1 set with 0 elements
│  ┌ 3 sets with 1 element
│  │  ┌ 3 sets with 2 element
│  │  │  ┌ 1 set with 3 element
1  3  3  1
│  └ n   │
└───┬────┘
    8 elements in the powerset


n is the cardinality of the base set


─  ┌ ┬ ┐  ├ │ ┼ ┤  └ ┴ ┘




A -> B
1       2         3       4         5       6         bijections
x ⟼ 1  x ⟼ 1    x ⟼ 2  x ⟼ 2    x ⟼ 3  x ⟼ 3
y ⟼ 2  y ⟼ 3    y ⟼ 1  y ⟼ 3    y ⟼ 1  y ⟼ 2
z ⟼ 3  z ⟼ 2    z ⟼ 3  z ⟼ 1    z ⟼ 2  z ⟼ 1
```
