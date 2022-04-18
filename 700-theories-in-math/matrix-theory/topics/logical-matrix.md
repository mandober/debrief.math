# Logical matrix

https://en.wikipedia.org/wiki/Logical_matrix

A *logical matrix* (*binary matrix*, *(0,1)-matrix*, *relation matrix*, *Boolean matrix*) is a matrix with entries from the Boolean domain B = {0, 1}. Such a matrix can be used to represent a binary relation between a pair of finite sets.

```js
⎡ 1 0 0 ⎤
⎢ 0 1 0 ⎥
⎣ 0 0 1 ⎦
```

If R is a binary relation between the finite indexed sets X and Y (so R ⊆ X×Y), then R can be represented by the logical matrix M whose row and column indices index the elements of X and Y, respectively, such that the entries of M are defined by: `Mᵢⱼ= if (xᵢ, yⱼ) ∈ R then 1 else 0`.

In order to designate the row and column numbers of the matrix, the sets X and Y are indexed with integers: `i` ranges from 1 to the cardinality (size) of X and `j` ranges from 1 to the cardinality of Y.

For example, the binary relation R on the set {1, 2, 3, 4} is defined so that `aRb` holds iff `a` divides `b`. The following set is the set of pairs for which the relation R holds: {(1,1),(1,2),(1,3),(1,4),(2,2),(2,4),(3,3),(4,4)}. The corresponding representation as a logical matrix is (it has the main diagonal of 1's since each number divides itself):

```js
M   1 2 3 4
1 ⎡ 1 1 1 1 ⎤
2 ⎥ 0 1 0 1 ⎥
3 ⎥ 0 0 1 0 ⎥
4 ⎣ 0 0 0 1 ⎦
```

## Use of binary matrices

Example uses of binary matrices
- permutation matrix's columns and rows each have exactly one nonzero element
- Costas array is a special case of a permutation matrix
- an incidence matrix has 1's to indicate incidence between vertices
- design matrix in analysis of variance has constant row sums.
- logical matrix may represent an adjacency matrix in graph theory
- biadjacency matrix of a simple, undirected bipartite graphs
- bitmap image containing pixels in only two colors
- binary matrix can be used to check the game rules in the game of Go
- prime factors of a list of `m` square-free, `n`-smooth numbers can be described as a `m×π(n)` logical matrix, where `π` is the prime-counting function and `aᵢⱼ` is 1 iff the `j`th prime divides the `i`th number. This representation is useful in the quadratic sieve factoring algorithm.

## Properties

Matrix repr of the equality relation on a set is the identity matrix `I` - the entries along the main diagonal are 1, while all the others are 0. More generally, if a relation `R` satisfies `I ⊂ R`, then it is a *reflexive relation*.

If the Boolean domain is viewed as a semiring, where addition corresponds to logical OR and multiplication to logical AND, the matrix representation of the composition of two relations is equal to the matrix product of the matrix representations of these relations. This product can be computed in expected time O(n²).

Frequently operations on binary matrices are defined in terms of modular arithmetic mod 2-that is, the elements are treated as elements of the Galois field GF(2) = ℤ2. They arise in a variety of representations and have a number of more restricted special forms. They are applied e.g. in XOR-satisfiability.

The number of distinct m-by-n binary matrices is equal to 2mn, and is thus finite.

## Lattice
