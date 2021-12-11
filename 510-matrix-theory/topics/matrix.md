# Matrix

https://en.wikipedia.org/wiki/Matrix_theory

A matrix is a rectangular array of numbers (symbols, expressions) arranged in rows and columns, the so-called *row-major order*, used to represent a mathematical object or a property of such an object.

An `m⨯n` matrix has `m` rows and `n` columns. Commonly, matrices are specified using row-major annotation (rows ⨯ cols) and zero-based indexing. Each matrix cell is often denoted with two subscripts, indicating row and column, for example, `m₀․₁` or `m 0,1` or `m [0] [1]`.

```js
⎡ 1 2 3 ⎤
⎣ 7 8 9 ⎦
```

_A 2 by 3 matrix, 2⨯3, row-major_

Without further specifications, matrices represent linear maps, and allow explicit computations in linear algebra. Therefore, the study of matrices is a large part of linear algebra, and most properties and operations of abstract linear algebra can be expressed in terms of matrices. For example, matrix multiplication represents composition of linear maps. However, linear algebra doesn't hold exclusive right to matrices, e.g. graph theory makes use of *incidence matrices* and *adjacency matrices* to represent graphs. In geometry, matrices are widely used for representing geometric transformations and coordinate changes. In numerical analysis, many problems are solved by reducing them to a matrix computation.

**Square matrices**, matrices with the same number of rows and columns, play a major role in matrix theory. Square matrices of a given dimension form a *noncommutative ring*.

The **determinant** of a square matrix is a special number associated to the matrix, fundamental for their study. For example, a square matrix is *invertible* iff it has a nonzero determinant, and the *eigenvalues* of a square matrix are the roots of a polynomial determinant.

## Definition

A matrix is a rectangular array of numbers (or other mathematical objects) for which operations such as addition and multiplication are defined.

Most commonly, a matrix over a field `F` is a rectangular array of scalars, each of which is a member of `F`.

A *real matrix* and a *complex matrix* are matrices whose entries are respectively real numbers or complex numbers.

The numbers, symbols, or expressions in the matrix are called its entries or its elements. The horizontal and vertical lines of entries in a matrix are called rows and columns, respectively.

## Size

- The size of a matrix is defined by the number of its rows and columns.
- A matrix with `m` rows and `n` columns is `m×n` matrix.
- *Row vectors*, `1⨯n`, are single row matrices
- *Column vectors*, `m⨯1`, are single column matrices
- In an `m×n` matrix, `m` and `n` are its *dimensions*.
- *Square matrix* has the same number of rows and columns.
- Matrix dimensions are limitless (as long as they are positive integers).
- An *infinite matrix* has an infinite number of rows or columns (or both)
- *The empty matrix* with no rows and columns is useful in some contexts.

Square matrices are used to represent linear transformations, from a vector space to itself, such as reflection, rotation, or shearing.

```
⎡ … ⎤
⎢ … ⎥
⎣ … ⎦
```

## Matrices

* The dimensions of a matrix give the number of rows and columns of the matrix in that order.

## Scalar multiplication

* Multiplying matrices by scalars: each term mul by the scalar
* The term *scalar multiplication* refers to the product of a real number and a matrix. In scalar multiplication, each entry in the matrix is multiplied by the given scalar.
* Scalar multiplication is repeated addition: true for other scalar multiplications, so we can interpret scalar multiplication in the same way as we interpret multiplication with real numbers - as repeated matrix addition

## Addition and subtraction on matrices

* matrices of same dimensions: add/sub the corresponding entries
* different dimensions: add/sub is undefined

## Zero matrix

- A zero matrix is a matrix in which all of the entries are zero
- A zero matrix is denoted by `O`
- Zero matrix plays a similar role in ops on matrices as 0 in aritmetic
- dimensions of zero matrix implicitly match dimensions of other matrix
- When we add the m×n zero matrix to any m×n matrix A, we get matrix A back
- `A + O = A = O + A`
- The opposite of a matrix `A` is the matrix `-A`, where each element in `-A` is the inverse of the corresponding element in matrix `A`.
- Adding A and its inverse gives the zero (id) matrix
- `A + (-A) = O = -A + A`
- When we multiply any m×n matrix by the scalar 0 we get the m×n zero matrix
- `OA = O` (annihilation, 0 is annihilating elem for matrix mul by 0)


## Properties of addition

(where A,B,C are matrices of equal dimensions)

* Closure property of addition: `∀AB    . dim(A) = dim(B) = dim(A+B)`
* Associativity of addition:    `∀ABC   . A + (B + C) = (A + B) + C`
* Additive identity property:   `!∃0.∀A . 0 + A  = A = A  + 0`
* Additive inverse property:    `∀A.!∃A'. A + A' = 0 = A' + A`
* Commutativity of addition:    `∀AB    . A + B = B + A`

## Properties of matrix scalar multiplication

(where A,B are matrices of equal dimensions 
c and d are scalars, and 0 is a zero matrix)

* Closure property of mul: `dim(A) = dim(cA)`
* Associative property of multiplication: `(cd)A = c(dA)`
* Multiplicative properties of zero: `A0 = 0 = 0A`
* Multiplicative identity property:  `1A = A = A1`
* Distributive properties:
  - matrix multiplication by a scalar distibutes over matrix addition:
    - left-commutativity:  `c(A + B) = cA + cB`
    - right-commutativity: `(A + B)c = Ac + Bc`
    - total commutativity: `(A + B)c = Ac + Bc = c(A + B) = cA + cB`
  - scalar addition distibutes over matrix multiplication:
    - left-commutativity:  `A(c + d) = Ac + Ad`
    - right-commutativity: `(c + d)A = cA + dA`
    - total commutativity: `(c + d)A = cA + dA = A(c + d) = Ac + Ad`


## Matrices as transformations of the plane

We can think of a 2x2 matrix as describing a special kind of transformation of the plane called *linear transformation*. By telling us where the vectors [1,0] and [0,1] are mapped to, we can figure out where any other vector is mapped to.

The first conceptual idea is that any point on the Cartesian coordinate plane can be represented by a combination of two vectors.

The vector [1,0] goes one unit in the horizontal direction only. By convention the left (top) number stands for the movement in the x-direction, and the bottom is the movement along the y-axes. The vector [0,1] means no change in x-axes, but move 1 unit up in the y-direction.

```js
// unit "horizontal" vector: move 1 unit in x-axes
⎡ 1 ⎤ = [1, 0]
⎣ 0 ⎦

// unit "vertical" vector: move 1 unit in y-axes
⎡ 0 ⎤ = [0, 1]
⎣ 1 ⎦

// point (3,1) in terms of moves of unit vectors (wrt the origin)
(3,1) = 3⎡ 1 ⎤ + 1 ⎡ 1 ⎤
         ⎣ 0 ⎦     ⎣ 0 ⎦
```

Any point on the coordinate plane can be represented as a weighted sum of vectors. For example, the point `A = (3,1)` can be represented as a positional vector, or more precisely, as a weighted sum of these two vectors: 
`3[1,0] + 1[0,1]`

* The 2x2 matrices can represent a transformation in the coord plane.
* The 2x2 matrix specifies what to do with the unit vectors.
* This is the identity matrix repr the *identity transformation* (no-op); it maps any point on the coordinate plane back to itself.

```js
⎡ 0 1 ⎤
⎣ 1 0 ⎦
```

* This matrix moves 

```js
⎡ 2 1 ⎤
⎣ 1 2 ⎦
```

In this transformation, what we're turning this [0,1] vector into a [2,1] vector. We move 2 units in the x-direction and 1 unit in the y-direction. The [1,2] vector goes 1 in the x-direction, then 2 in the y-direction.

And the way that this represents a transformation is that anything that was a weighted sum of the [1,0] and the [0,1] vectors originally, can now be viewed as a weighted sum of the [2,1] and the [1,2] vectors.


And so we can now think of another point A prime, that's not going to be three of the ones zeros and one of the zero ones

We can think of it as, let me write it over here, as three of the two, ones plus one of the one twos, one of these one, two

So where would that put that now? What we're going to go, go three of the two, ones

So this is one of them, this is two of them and then this is three of them

And then I'm going to have one of the one, two vectors, this orange vector right over here

And so I'm going to have one of those

And so that will take me to A prime

This is my new point after the transformation, I go to A prime

So I've gone from this point A to this A prime

And this two by two matrix is telling us how to transform

Now we can do that with multiple points

Now, if I talk about a point here at the origin that was originally at the origin point B, well that's zero of the orange vector, zero of the blue vectors

So even after the transformation, it's going to be zero of the two, one vector and zero of the one, two vectors. So it's just going to stay in place. It's just going to map to itself. So B is equal to B prime, and we could also imagine another point. Let's say right over here, let's call that point C. Well point C is originally two of the blue vectors and none of the orange vectors. So after the mapping, it'll be two of the two, one vectors and none of the one, two vectors. So two of the two ones. So if you go one, two, and then none of the one, twos you're going to get C prime right over there. And so notice, if originally you had a triangle between A, B and C, let me draw it like this. So originally you had this triangle A, B, C what is it now gotten mapped, what is it now mapped to? Well, it's now mapped to big triangle. I'll do my best to draw it relatively straight so we land on target. So that's that side. And then we have this side going from B prime to C prime and then we wanna connect that side from C prime to A prime. Now you might be saying, so how do you know that the lines map onto other lines? How do you know this transformation didn't all of a sudden make this line squiggly or zigzag? And that's one of the interesting properties of the type of transformation we're talking about. A two by two matrix will represent a linear transformation. And there's two ways to think about it in this context, a linear transformation will always map the origin onto itself and it will always map a line onto another line, it won't turn that line into a curve, or it won't make it zigzag somehow. Now the last thing you might be wondering is, Hey what about all these transformations we had from geometry, these similarity transformations, things like rotations reflections, dilations, can you do those with matrices? And the simple answer is yes, you can do them as long as you keep the origin in place. And you can actually using a two by two matrix come up with a whole series of other linear transformations that are much more, let's call it exotic, than just the rotations, reflections and dilations.
