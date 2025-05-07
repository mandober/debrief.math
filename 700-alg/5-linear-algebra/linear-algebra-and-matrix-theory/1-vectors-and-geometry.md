# 1. Vectors and Geometry

1. Vectors and geometry
  1.1 Vectors and vector operations
    1.1.1 Vector addition
    1.1.2 Scalar multiplication
    1.1.2 Vector subtraction
    1.1.3 Linear combinations
  1.2 Lengths, angles, and the dot product
    1.2.1 Dot product
    1.2.2 Vector length
    1.2.3 Angle between vectors
  1.3 Matrices and Matrix Operations
    1.3.1 Matrix Addition and Scalar Multiplication
    1.3.2 Matrix Multiplication1.3.3 The Transpose
    1.3.4 Block Matrices
  1.4 Linear Transformations
    1.4.1 Linear Transformations as Matrices
    1.4.2 A Catalog of Linear Transformations
    1.4.3 Composition of Linear Transformations
  1.5 Summary and Review
  1.A Extra Topic: Areas, Volumes, and the Cross Product
  1.B Extra Topic: Paths in Graphs


## 1.1 Vectors and vector operations

In elementary algebra, the focus was on manipulating expressions with a
single variable. One way of looking at linear algebra is as a natural extension of these ideas to the equations with two or more variables. For example, we may try solving an equation like `3x + 2y = 1`, or we may investigate the properties of a function that takes in two independent variables and outputs two dependent variables.

To make expressions involving several variables easier to deal with, we use *vectors*, which are tuples of numbers or variables. The number of *entries* or *components* in a vector (tuple) is its dimension, and if a vector has `n` entries, then it lives in, or is an element of, `ℝⁿ`.

We denote vectors themselves by lowercase bold letters like v and w, and we write their entries within parentheses. For example, `v = (2,3) ∈ ℝ²` is a 2-dimensional vector and `w = (1,3,2) ∈ ℝ³` is a 3-dimensional vector.

In the 2D and 3D cases, we can visualize vectors as arrows that indicate displacement in different directions by the amount specified in their entries.

The first component of a vector tuple represents displacement in the x-direction, the second displacement on the y-axis, and in the 3D case, its third component represents displacement in the z-direction.

The front of a vector, where the tip of the arrow is located, is called its *head*, and the opposite end is called its *tail*. One way to compute the components of a vector is to subtract the coordinates of its tail from the corresponding coordinates of its head. For example, the vector that goes from the point (−1,1) to point (2,2) is (2,2) − (−1,1) = (2 - (-1), 2 - 1) = (3,1). However, this is also the same as the vector that points from (1,0) to (4,1), since (4,1) − (1,0) = (3,1) as well.

>Thus, the coordinates of a vector specify its length and direction, but not its location in space.

We can move vectors around in space without actually changing the vector itself. To remove this ambiguity when discussing vectors, we often choose to display them with their tail located at the origin - this is called the *standard position* of the vector. When a vector is in standard position, the coordinates of the point at its head are exactly the same as the components (entries) of the vector.

### Vector Addition

>Let `v = (v₁, v₂, …, vₙ) ∈ ℝⁿ` and `w = (w₁, w₂, …, wₙ) ∈ ℝⁿ` be vectors. Then their sum, `v + w`, is the vector `(v₁+w₁, v₂+w₂, …, vₙ+wₙ) ∈ ℝⁿ`.

Vector addition also has a simple geometric interpretation: If v and w are positioned so that the tail of w is located at the same point as the head of v (in which case we say that v and w are positioned *head-to-tail*), then v+w is the vector pointing from the tail of v to the head of w. In other words, v+w represents the total displacement accrued by following v and then following w. If v and w are in the standard position, then v+w is the diagonal of the parallelogram with sides v and w.

>Properties of vector addition:   
Let `u,v,w ∈ ℝⁿ` be vectors; then the following properties hold:
- **associativity**: `(u + v) + w = u + (v + w)`
- **commutativity**: `v + w = w + v`

To prove commutativity, we use the definition of vector addition together with the fact that the addition of real numbers is commutative.

```
v + w
= (v₁ + w₁, v₂ + w₂, …, vₙ + wₙ)
= (w₁ + v₁, w₂ + v₂, …, wₙ + vₙ)
= w + v
                              ∎
```

To prove associativity, we use the definition of vector addition together with the fact that the addition of real numbers is associative.

```
(u + v) + w
= ((u₁ + v₁) + w₁, (u₂ + v₂) + w₂, …, (uₙ + vₙ) + wₙ)
= (u₁ + (v₁ + w)₁, u₂ + (v₂ + w₂), …, uₙ + (vₙ + wₙ))
= u + (v + w)
                              ∎
```

### Vector subtraction

`v - w = v + (-w)`


### Scalar multiplication

Scalar multiplication on vectors may change a vector's length and reverse its direction, but does not otherwise change the direction in which it points.

>Let `v = (v₁, v₂, …, vₙ) ∈ ℝⁿ` a vector and `c ∈ ℝ` a scalar. Their scalar multiplication, denoted by `cv`, is the vector `cv = (cv₁, cv₂, …, cvₙ)`.

- if `|c| > 1` then `v` stretches
- if `|c| < 1` then `v` shrinks
- if `c < 0` then `v` additionally reverses direction

Two special cases of scalar multiplication
- if `c = 0` then `cv` is the **zero vector**, denoted by `0⃗`
- if `c = −1` then `cv` only reverses direction, denoted by `−v`

### No vector multiplication

It seems natural to ask why we have component-wise additon, but there's no component-wise multiplication of two vectors. The answer is simply that entry-wise vector multiplication is not particularly useful - it does not often come up in real-world problems or play a role in more advanced mathematical structures, nor does it have a simple geometric interpretation.


### Linear combinations

One common task in linear algebra is to start out with some given collection of vectors `v₁, v₂, …, vₙ` and then use vector addition and scalar multiplication to construct new vectors out of them. 

A linear combination of the vectors `v = (v₁, v₂, …, vₙ) ∈ ℝⁿ` is any vector of
the form `c₁v₁ + c₂v₂ + … + cₙvₙ` where `c₁, c₂, …, cₙ ∈ ℝ`.

For example, (1,2,3) is not a linear combination of vectors (1,1,0) and (2,1,0) since every vector of the form c₁(1,1,0) + c₂(2,1,0) has a 0 in its third entry, and thus cannot possibly equal (1,2,3).

When working with linear combinations some particularly important vectors are those with all entries equal to 0, except for a single entry that equals 1. Specifically, for each `j = 1,2,…,n`, we define the vector `eⱼ ∈ ℝⁿ` by 

```
eⱼ = (0, 0, …, 0, 1, 0, …, 0)
                 ↑ jᵗʰ entry
```

In ℝ² there are two such vectors: e₁ = (1,0) and e₂ = (0,1). In general, in `ℝⁿ` there are `n` of these vectors, `e₁, e₂, …, eₙ`, called the **standard basis vectors** or the **unit vectors**.

Every vector `v ∈ ℝⁿ` can be written as a linear combination of the standard basis vectors. If `v = (v₁, v₂, …, vₙ)` then `v = v₁e₁ + v₂e₂ + … + vₙeₙ`.

The idea of writing vectors in terms of the standard basis vectors is one of the most important one in linear algebra: in many situations, if we can prove that some property holds for the standard basis vectors, then we can use linear combinations to show that it must hold for all vectors.

In general, when adding multiples of the standard basis vectors, the resulting vector has the coefficient of e1 in its first entry, the coefficient of e2 in its second entry, etc. For example, 3e₁− 2e₂ + e₃ = 3(1,0,0) − 2(0,1,0) + (0,0,1) = (3,−2,1).


## 1.2 Lengths, angles, dot product
### 1.2.1 Dot product
### 1.2.2 Vector length
### 1.2.3 Angle between vectors


#### The Cauchy Schwarz and Triangle Inequalities

##### The Cauchy Schwarz inequality

The Cauchy-Schwarz theorem relates the magnitudes of two vectors (of any dimension n) to their dot product. That is, the absolute value of the dot product of two vectors is always less than or equal to the product of their magnitutes. Note that both sides of this inequality are scalars.

Let `v, w ∈ ℝⁿ`. Then `|v ∙ w| <= ‖v‖ ‖w‖`.

*Proof*. Let `x = ‖w‖∙v - ‖v‖∙w` and then expand the quantity `‖x‖²` in terms of the dot product.

```
0 <= ‖x‖²
   = x∙x
   = (‖w‖∙v - ‖v‖∙w)²
   = (‖w‖∙v - ‖v‖∙w) ∙ (‖w‖∙v - ‖v‖∙w)
   = (‖w‖∙v ∙ ‖w‖∙v) - (‖w‖∙v ∙ ‖v‖∙w) - (‖v‖∙w ∙ ‖w‖∙v) + (‖v‖∙w ∙ ‖v‖∙w)
   = ‖w‖²∙‖v‖² - (‖w‖ ‖v‖(v ∙ w)) - (‖v‖ ‖w‖(w∙v)) + ‖v‖²∙‖w‖²
   = 2‖v‖² ∙ 2‖w‖² - 2 ‖v‖ ‖w‖ (v ∙ w)

  so
0 <= 2‖v‖² ∙ 2‖w‖² - 2 ‖v‖ ‖w‖ (v ∙ w)
  divide by 2
0 <= ‖v‖² ∙ ‖w‖² - ‖v‖ ‖w‖ (v ∙ w)
  move the subtrahend to the lhs
‖v‖ ‖w‖ (v ∙ w) <= ‖v‖² ∙ ‖w‖²
  cancel common terms
v ∙ w <= ‖v‖ ∙ ‖w‖

```

...glossing over 1) the case that both or one vector is zero vector (in which case C-S inequality is trivially true, only it's not shown in the proof); and 2) the case one of vectors is -v or -w; 3) it took people a long time to come up with the magical x substitution vector that easies the proof.

##### The Cauchy Schwarz inequality - example

Ex.1
* If ‖v‖ = 2, ‖w‖ = 3 and v∙w = 7, are there such vectors? No, coz 7 <= 6.

Ex.2
* If ‖v‖ = 2, ‖w‖ = 3 and v∙w = 5, are there such two vectors? Yes.


```
v∙w = (v₁w₁ + v₂w₂) = 5

v = (v₁, v₂)
  ‖v‖ = √(v₁² + v₂²)
  ‖v‖ = 2
let v = (2, 0)            ✔ suitable
  ‖v‖ = √(4 + 0)
  ‖v‖ = 2

w = (w₁, w₂)
  ‖w‖ = 3
  ‖w‖ = √(w₁² + w₂²)

v∙w = (v₁w₁ + v₂w₂) = 5
    = (2 w₁ + 0 w₂)
    = (2 w₁ + 0 w₂)
    = (2 w₁ + 0) = 5
  ----> w₁ = 5/2         ✔

  ‖w‖ = √((5/2)² + w₂²)
   3  = √(25/4 + w₂²)
   9  = 25/4 + w₂²
  w₂² = 9 - 25/4
  w₂² = 36/4 - 25/4
  w₂² = 11/4
  w₂  = √(11/4)
  w₂  = √11/2


check:
  v = (2, 0)
  w = (5/2, √11/2)
thus,
  ‖v‖ = √(2² + 0²)
  ‖v‖ = 2                         ✔
and
  ‖w‖ = √{(5/2)² + √(11/4)²}
  ‖w‖ = √{25/4 + 11/4}
  ‖w‖ = √{36/4}
  ‖w‖ = √9
  ‖w‖ = 3                         ✔
and
  v∙w = 5
  v∙w = (2, 0) ∙ (5/2, √(11/4))
  v∙w = 2 ⨯ 5/2 + 0 ⨯ √(11/4)
  v∙w = 10/2 + 0
  v∙w = 5                         ✔
```


##### The Triangle inequality

The *Triangle inequality* says that the sum of two vector can never be bigger than the sum of their magnitudes.

`‖v+v‖ <= ‖v‖ + ‖w‖`

We can use C-S theorem to prove the triangle inequality. 

The triangle inequality also means that the length of the hypotenuse can never be longer than the sum of the lengths of catetes; being equal is the special case when the object ceises to be a triangle and collapses into a line (segment).

The triangle inequality also implies that the shortest path between two points (in Euclidean plane) is the straight path (via hypotenuse).




## 1.3 Matrices and Matrix Operations
### 1.3.1 Matrix Addition and Scalar Multiplication
### 1.3.2 Matrix Multiplication1.3.3 The Transpose
### 1.3.4 Block Matrices

## 1.4 Linear Transformations
### 1.4.1 Linear Transformations as Matrices
### 1.4.2 A Catalog of Linear Transformations
### 1.4.3 Composition of Linear Transformations
