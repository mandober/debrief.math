# Sparse matrix

https://en.wikipedia.org/wiki/Sparse_matrix

A **sparse matrix** is a matrix in which most of the elements are zero. If most of the elements are non-zero, the matrix is considered **dense**.

There is no strict definition regarding the proportion of zero vs non-zero elements that qualify a matrix as sparse; a common criterion is that the number of non-zero elements is roughly equal to the number of rows (or columns).

The number of zero-valued elements divided by the total number of elements 
(`m × n` for a m×n matrix) is sometimes referred to as the **sparsity of the matrix**.

Conceptually, sparsity corresponds to systems with few pairwise interactions.

For example, consider a line of balls connected by springs from one to the next: this is a sparse system as only adjacent balls are coupled. By contrast, if the same line of balls were to have springs connecting each ball to all other balls, the system would correspond to a dense matrix.

The concept of sparsity is useful in combinatorics and application areas such as network theory and numerical analysis, which typically have a low density of significant data or connections. Large sparse matrices often appear in scientific or engineering applications when solving partial differential equations.

When storing and manipulating sparse matrices on a computer, it is beneficial and often necessary to use specialized algorithms and data structures that take advantage of the sparse structure of the matrix. Operations using standard dense-matrix structures and algorithms are slow and inefficient when applied to large sparse matrices as processing and memory are wasted on the zeros. Sparse data is by nature more easily compressed and thus requires significantly less storage. Some very large sparse matrices are infeasible to manipulate using standard dense-matrix algorithms. Specialized computers have even been created to deal with sparse matrices, as they are common in the machine learning field.

Example: the 5⨯7 matrix below contains only 9 non-zero and 26 zero elements for a total of 35 elements. It is is sparse because the number of non-zero elements is roughly equal to the number of columns 9 ~ 7. Its sparsity is 74%, and its density is 26%.

```
1 2 0 0 0 0 0
0 3 2 0 0 0 0
0 0 4 3 5 0 0
0 0 0 0 0 8 0
0 0 0 0 0 0 9

100 / 35 = 2.857
9  * 2.857 = 26 %
26 * 2.857 = 74 %
```

## Storing a sparse matrix

A matrix is typically stored as a 2D array. Each entry in the array represents an element `aᵢⱼ` of the matrix and is accessed by the two indices `i` and `j`. Conventionally, `i` is the row index, numbered from top to bottom, and `j` is the column index, numbered from left to right.

For an `m×n` matrix, the amount of memory required to store the matrix in this format is proportional to `m * n` (disregarding the fact that the dimensions of the matrix also need to be stored).

In the case of a sparse matrix, substantial memory requirement reductions can be realized by storing only the non-zero entries. Depending on the number and distribution of the non-zero entries, different data structures can be used and yield huge savings in memory when compared to the basic approach. The trade-off is that accessing the individual elements becomes more complex and additional structures are needed to be able to recover the original matrix unambiguously.

Formats can be divided into two groups:
* Formats that support efficient modification include
  - DOK (Dictionary of keys)
  - LIL (List of lists)
  - COO (Coordinate list)
* Formats that support efficient access and matrix operations include
  - CSR (Compressed Sparse Row)
  - CSC (Compressed Sparse Column)

## Dictionary of keys

DOK consists of a dictionary that maps (row, column) pairs to the value of the elements. Elements that are missing from the dictionary are taken to be zero. The format is good for incrementally constructing a sparse matrix in random order, but poor for iterating over non-zero values in lexicographical order. One typically constructs a matrix in this format and then converts to another more efficient format for processing.

## List of lists

LIL stores one list per row, with each entry containing the column index and the value. Typically, these entries are kept sorted by column index for faster lookup. This is another format good for incremental matrix construction.

## Coordinate list

COO stores a list of (row, column, value) tuples. Ideally, the entries are sorted first by row index and then by column index, to improve random access times. This is another format that is good for incremental matrix construction.

## Compressed sparse row

The compressed sparse row (CSR), or compressed row storage (CRS), or Yale format, represents a matrix `M` by 3 (one-dimensional) arrays, that respectively contain nonzero values, the extents of rows, and column indices. It is similar to COO, but compresses the row indices, hence the name. This format allows fast row access and matrix-vector multiplications (Mx).

The CSR format stores a sparse m × n matrix M in row form using 3 arrays, `V`, `COL_INDEX`, `ROW_INDEX`. Let `NNZ` denote the number of nonzero entries in `M`.

The arrays `V` and `COL_INDEX` are of length `NNZ`; `V` contains the non-zero values, `COL_INDEX` contains their column indices.

The array `ROW_INDEX` is of length `m + 1` and encodes the index in `V` and `COL_INDEX` where the given row starts. This is equivalent to `ROW_INDEX[j]` encoding the total number of nonzeros above row `j`. The last element is `NNZ`, i.e. the fictitious index in `V`, the index that is immediately after the last valid index in `V` at `NNZ - 1` (here, the last index in V is 4 - 1 = 3).

For example, the 4⨯4 matrix below has 4 nonzero elements

```
5 0 0 0
0 8 0 0
0 0 3 0
0 6 0 0

m = 4
m⨯m = m² = 4² = 16
NZE = 12
NNZ = 4

V         = [ 5 8 3 6 ]    non-zero values
COL_INDEX = [ 0 1 2 1 ]    column indices of non-zero values
ROW_INDEX = [ 0 1 2 3 4 ]  row indices of non-zero values
              │ │ │ │ │
              │ │ │ │ NNZ = last_idx(V) + 1
              │ │ │ │
              │ │ │ 6 at (3,1)
              │ │ │
              │ │ 3 at (2,2)
              │ │
              │ 8 at (1,1)
              │
              5 at (0,0)
```

To extract a row, we first define:

```
row_start = ROW_INDEX[row]
row_end   = ROW_INDEX[row + 1]
```
