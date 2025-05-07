# Matrix multiplication

https://en.wikipedia.org/wiki/Matrix_multiplication

## TL/DR

- a matrix is always denoted by row-major, i.e. matrix `M = r⨯c` (row, col)
- the number of columns of `A` must be equal to the number of rows of `B`
  if `A = m×n` and `B = n×k`, then `AB = m×k`
- the product has number of rows of `A` and number of cols of `B`, `AB = m×k`

## Introduction

In linear algebra, matrix multiplication is a binary operation that produces a matrix from two matrices.

>For matrix multiplication, the number of columns in the first matrix must be equal to the number of rows in the second matrix. The resulting matrix, known as the matrix product, has the number of rows of the first and the number of columns of the second matrix.

Matrix multiplication was first described by the French mathematician Jacques Philippe Marie Binet in 1812, to represent the composition of linear maps that are represented by matrices.

Matrix multiplication is thus a basic tool of linear algebra, and as such has numerous applications in many areas of mathematics, as well as in applied mathematics, statistics, physics, economics, and engineering. Computing matrix products is a central operation in all computational applications of linear algebra.

## Contents

- Notation
- Number of fields
- Definition
  - Illustration
- 3. Fundamental applications
  - 3.1. Linear maps
    - 3.1.1. Geometric rotations
    - 3.1.2. Resource allocation in economics
  - 3.2. System of linear equations
  - 3.3. Dot product, bilinear form and sesquilinear form
- 4. General properties
- 4.1. Non-commutativity
- 4.2. Distributivity
- 4.3. Product with a scalar
- 4.4. Transpose
- 4.5. Complex conjugate
- 4.6. Associativity
- 4.6.1. Computational complexity depends on parenthezation
- 4.6.2. Application to similarity
- 5. Square matrices
- 5.1. Powers of a matrix
- 6. Abstract algebra
- 7. Computational complexity
- 8. Generalizations
- 9. See also

## Notation

Index notation is often the clearest way to express definitions, and is used as standard in the literature. The entry in row `i`, column `j` of matrix `A` is indicated by `Aᵢⱼ` or `A[i][j]`.

In contrast, a single subscript (e.g. A₀, A₁) is used to select a particular matrix, by its index, from a collection of matrices.

## Number of fields

>Matrix multiplication of A and B is possible only when the the number of columns of A is equal to the number of rows of B.

A = r×n   
B = n×c   
C = r×c

>AB will have the number of rows as A and the number of columns as B.

In terms of the number of fields, various configurations of two argument matrices A and B, and the product matrix C = AB, are possible (the product matrix may be bigger, smaller or equal).

The number of fields of a matrix `A = mn` is rows × cols, `mn`, denoted `|A|`.

```
-------------------------------------
 A       B      AB
5×3  ×  3×4 =  5×4
◼◼◼           ◼◼◼◼
◼◼◼   ◼◼◼◼  ◼◼◼◼
◼◼◼   ◼◼◼◼  ◼◼◼◼
◼◼◼   ◼◼◼◼  ◼◼◼◼
◼◼◼           ◼◼◼◼
-------------------------------------
 A         B     AB
4×5    ×  5×2 = 4×2
◼◼◼◼◼   ◼◼    ◼◼
◼◼◼◼◼   ◼◼    ◼◼
◼◼◼◼◼   ◼◼    ◼◼
◼◼◼◼◼   ◼◼    ◼◼
           ◼◼
-------------------------------------
xi : iy : xy
 9 :  9 :  9
 6 :  6 :  9
 6 :  6 :  4
 9 :  6 :  6
12 :  8 :  6
 4 :  6 :  6
 6 :  8 : 12
-------------------------------------
a = b = c       3×3   3×3   3×3
a = b < c       3×2   2×3   3×3
a = b > c       2×3   3×2   2×2

a > b = c       3×3   3×2   3×2
a > b < c       5×3   3×4   5×4
a > b > c       3×4   4×2   3×2

a < b = c       2×2   2×3   2×3
a < b < c       3×2   2×4   3×4
a < b > c       2×3   3×4   2×4
-------------------------------------
```

## Definition

Pedestrian form:

```
□ ▣ ◧ ◩ ◪ ◨ ▢ ▥ ▦ ▧ ▤ ◫ ◳ ◲

□ are fields of matrix A = 3×4
▣ are fields of matrix B = 4×2

  ₀ ₁ ₂ ₃   ₀ ₁
₀ □ □ □ □ → ◩ ▤ ⁰
₁ □ □ □ □ → ◳ ◨ ¹
₂ □ □ □ □ → ▥ ▧ ²
            ↑ ↑
            ▣ ▣ ⁰
            ▣ ▣ ¹
            ▣ ▣ ²
            ▣ ▣ ³
            ⁰ ¹

The resulting matrix AB = 3×2

⎡ ◩ ▤ ⎤
⎢ ◳ ◨ ⎥
⎣ ▥ ▧ ⎦

details of how the field value's are obtained:

◩  (0,0)        ▤  (0,1)
= a₀₀b₀₀        = a₀₀b₀₁
+ a₀₁b₁₀        + a₀₁b₁₁
+ a₀₂b₂₀        + a₀₂b₂₁
+ a₀₃b₃₀        + a₀₃b₃₁

◳  (1,0)        ◨  (1,1)
= a₁₀b₀₀        = a₁₀b₀₁
+ a₁₁b₁₀        + a₁₁b₁₁
+ a₁₂b₂₀        + a₁₂b₂₁
+ a₁₃b₃₀        + a₁₃b₃₁

▥  (2,0)        ▧  (2,1)
= a₂₀b₀₀        = a₂₀b₀₁
+ a₂₁b₁₀        + a₂₁b₁₁
+ a₂₂b₂₀        + a₂₂b₂₁
+ a₂₃b₃₀        + a₂₃b₃₁
```

Iterative form:

```hs
A  = m × n
B  = n × p
AB = m × p

       n
       ⎲
c ᵢ ⱼ = ⎳ a ᵢ ₖ b ₖ ⱼ     for i = [0..m], j = [0..p]
      k = 0
```
