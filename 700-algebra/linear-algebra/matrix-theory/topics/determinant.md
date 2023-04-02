# Determinant

https://en.wikipedia.org/wiki/Determinant

The determinant is a scalar value that is a function of the entries of a square matrix. It allows characterizing some properties of the matrix and the linear map represented by the matrix.

In particular, the determinant is nonzero iff the matrix is *invertible* and the linear map represented by the matrix is an isomorphism.

The determinant of a product of matrices is the product of their determinants (the preceding property is a corollary of this one).

The determinant of a matrix `A` is denoted `𝐝𝐞𝐭(A)`, `𝐝𝐞𝐭A`, or `|A|`.

In the case of a 2⨯2 matrix the determinant can be defined as

```js
⎡ a b ⎤
⎣ c d ⎦ = |A| = ad - bc
```

Similarly, for a 3⨯3 matrix, its determinant is

```js
⎡ a b c ⎤           ⎡ e f ⎤     ⎡ d f ⎤     ⎡ d e ⎤
⎢ d e f ⎥ = |A| = a ⎣ h i ⎦ - b ⎣ g i ⎦ + c ⎣ g h ⎦
⎣ g h i ⎦
```

Each determinant of a 2×2 matrix in this equation is called a *minor* of the matrix `A`. This procedure can be extended to give a recursive definition for the determinant of an n×n matrix, known as *Laplace expansion*.

Determinants occur throughout mathematics. For example, a matrix is often used to represent the coefficients in a system of linear equations, and determinants can be used to solve these equations (Cramer's rule), although other methods of solution are computationally much more efficient. Determinants are used for defining the characteristic polynomial of a matrix, whose roots are the eigenvalues. In geometry, the signed n-dimensional volume of a n-dimensional parallelepiped is expressed by a determinant. This is used in calculus with exterior differential forms and the Jacobian determinant, in particular for changes of variables in multiple integrals.





https://en.wikipedia.org/wiki/Square_matrix
https://en.wikipedia.org/wiki/Linear_map
https://en.wikipedia.org/wiki/Invertible_matrix
https://en.wikipedia.org/wiki/Linear_isomorphism
https://en.wikipedia.org/wiki/Minor_(linear_algebra)
https://en.wikipedia.org/wiki/Laplace_expansion




https://www.labri.fr/perso/sopena/pmwiki/index.php?n=TheIncidenceColoringPage.TheIncidenceColoringPage

https://en.wikipedia.org/wiki/Category:Graph_theory_objects


https://igraph.org/r/doc/graph_from_edgelist.html

https://www.khanacademy.org/computing/computer-science/algorithms/graph-representation/a/representing-graphs
