# Gaussian elimination

Gaussian elimination is an algebraic method to solve systems of linear equations by represnting a system of linear equations as a matrix (with coefficients as numbers in the matrix), then performing various matrix manipulations.

But what does it actually mean geometrically?

Two different perspectives about what is going on behind the scene when you do row operations, aka matrix manipulations, in the gaussian algorithm.

In the first, the intersection point between various lines or planes is fixed while the planes rotate to be aligned with the coordinate axes.

In the second dynamic picture of a linear transformation, the gaussian algorithm breaks down the transformation into simpler ones such as stretching, interchanging, and shear transformations represented via elementary matrices.


# Gaussian elimination

https://www.algorithm-archive.org/contents/gaussian_elimination/gaussian_elimination.html

A system of linear equations

```
2x + 3y + 4z = 6
 x + 2y + 3z = 4
3x − 4y      = 10
```

can be solved using the Gaussian elimination method, where the system of equations is first represented as an *augmented matrix* with elements as polynomial coefficients, where each row corresponds to an equation and each column corresponds to the same independent variable.

```
⎡ 2 3 4 |  6 ⎤
⎢ 1 2 3 |  4 ⎥
⎣ 3 4 0 | 10 ⎦
```

It seems this acommplishes little, but consider this matrix converted into a *row echelon form*:

```
⎡ 2 3  4 |  6 ⎤
⎢ 0 1  2 |  2 ⎥
⎣ 0 0 11 | 18 ⎦
```

This means that the value of `z` can be read off immediately, and the values of other variables found by back-substitution easily.

A matrix is considered to be in **row echelon form** if the *leading coefficient* or *pivot* (aka the first non-0 element in a row) is to the right of the pivot of the preceding row.

This creates a matrix that sometimes resembles an *upper-triangular matrix*; however, that doesn't mean that all row-echelon matrices are upper-triangular.

Being in a row echelon form is a necessary but not sufficient condition to solve a corresponding system of equations - some systems cannot be solved because they have no solutions, or an infinite number of solution, being over or under constrained, etc.

A matrix in *reduced row echelon form* immediatey shows the values of all variables since only one element is non-0 per row. In fact, the only non-0 element is 1, indicating the variable whose value is the "augmented" element.

A matrix is in reduced row echelon form if it satisfies the following conditions:
- matrix is in Row Echelon Form
- every pivot is 1 and is the only non-0 entry in the column

Beyond solving a system of equations, reshaping a matrix in this form makes it very easy to deduce other properties of the matrix, such as its **rank** - the maximum number of *linearly independent columns*. In reduced row echelon form, the rank is simply the number of pivots.

In general, the term Gaussian Elimination refers to the process of transforming a matrix into row echelon form, and the process of transforming a row echelon matrix into reduced row echelon form is called *Gauss-Jordan Elimination*.
