# Euclidean vector

https://en.wikipedia.org/wiki/Euclidean_vector

## Contents

- 1 History
- 2 Overview
  - 2.1 Further information
  - 2.2 Examples in one dimension
  - 2.3 In physics and engineering
  - 2.4 In Cartesian space
  - 2.5 Euclidean and affine vectors
  - 2.6 Generalizations
- 3 Representations
  - 3.1 Decomposition or resolution
- 4 Basic properties
  - 4.1 Equality
  - 4.2 Opposite, parallel, and antiparallel vectors
  - 4.3 Addition and subtraction
  - 4.4 Scalar multiplication
  - 4.5 Length
  - 4.5.1 Unit vector
  - 4.5.2 Zero vector
  - 4.6 Dot product
  - 4.7 Cross product
  - 4.8 Scalar triple product
  - 4.9 Conversion between multiple Cartesian bases
  - 4.10 Other dimensions
- 5 Physics
  - 5.1 Length and units
  - 5.2 Vector-valued functions
  - 5.3 Position, velocity and acceleration
  - 5.4 Force, energy, work
- 6 Vectors, pseudovectors, and transformations
- 7 See also
- 8 Notes
- 9 References
  - 9.1 Mathematical treatments
  - 9.2 Physical treatments


## Notion of vector

A **Euclidean vector** (geometric vector, spatial vector) is a geometric object with *magnitude* (length) and *direction*.

A Euclidean vector is usually represented by a *directed line segment* or *arrow* from point `I` to point `T`, and denoted by $\overrightarrow {IT}$. Point `I` is vector's **initial point**, and point `T` is its **terminal point**.

Vector's **direction** refers to the direction of displacement from `I` to `T`; its direction is from the arrow's tail to arrow's head. Vector's **magnitude** is the distance between its initial and terminal points.

A vector is what is needed to "carry" the point `I` to the point `T`. The Latin word `vector` means "carrier". The term "vector" was used by 18th century astronomers investigating planetary revolution around the Sun.

## Vector notation

A vector from point I to point T is denoted by $\overrightarrow {IT}$. Any given vector may be denoted by a small letter (towards the end of the alphabet) with an arrow above it, like `v⃗`, `u⃗`.

Mathematical representation of a vector depends on the coordinate system used to describe it. If we consider a plane (2D space, ℝ²) Cartesian coordinate system with x-axis and y-axis and the origin at (0, 0), then any point is determined by a pair (2-tuple) of numbers `(x, y)` where `x` is a real number, called an **x-coordinate**, that determines the offset on the x-axis from the origin in units (of the coordinate system); and similarly for `y` which is called an **y-coordinate**. A pair `(x, y)` is called a **coordinate** and it consists (in this case) of two components, the x-coordinate and y-coordinate.

A vector with fixed initial and terminal point is called a **bound vector**. When only the magnitude and direction of the vector matters (which is usually the case), then the initial point is not important, and the vector is called a **free vector**.

Thus, two arrows `v⃗ = AB` and `u⃗ = AʹBʹ` in space represent the same free vector if they have the same magnitude and direction; that is, they are **equipollent** if the quadrilateral `A B BʹAʹ` makes a parallelogram.

If the Euclidean space is equipped with a choice of origin, then a free vector is equivalent to the bound vector of the same magnitude and direction whose initial point is the origin. The standard position that vectors take is rooted at the origin, and vectors seldom drift from the origin.

Since the initial point of vectors is almost always left implicit, vectors are fully defined by a *single point* (i.e. the supplied, terminal point). And their direction goes from the origin to the given (terminal) point.

>To define a vector we only need to supply a single coordinate, `(x, y)`.

This also means that the magnitude, `m`, of a vector can be easily calculated using the Pythagorean theorem as `m² = x² + y²` because x is x-axis displacement from 0 (from the origin) and y is y-axis displacement from 0.

The right triangle ABC needed to employ the Pythagorean theorem can be identified with A as the origin (vector's initial point), with C as the vector's terminal point, while the point B (where the right angle is) can be determined either by projecting the point C onto the x-axis and getting B = (x, 0), or by projecting C to the y-axis and getting Bʹ = (0, y).

A = (0, 0)
C = (x, y)
B = (x, 0) or Bʹ = (0, y)
m² = x² + y²



## Vector algebra

Vectors can be added to other vectors according to *vector algebra*.

Many algebraic operations on real numbers (addition, multiplication, negation, subtraction) have close analogues for vectors.

These operations obey familiar algebraic laws of commutativity, associativity, and distributivity. 

The set of operations and associated laws qualify Euclidean vectors as an example of the more generalized concept of vectors, which are defined simply as elements of a *vector space*.


Vectors play an important role in physics: the velocity and acceleration of a moving object, and the forces acting on it, can all be described with vectors. Many other physical quantities can be usefully thought of as vectors. Although most of them don't represent distances (except, e.g. position or displacement), their magnitude and direction can still be represented by the length and direction of an arrow.


Other vector-like objects that describe physical quantities, that are transformed in a similar way with the change of the underlying coordinate system, include *pseudovectors* and *tensors*.

## 2. Overview

In physics and engineering, a vector is typically regarded as a geometric entity characterized by a magnitude and a direction.

A vector is formally defined as a directed line segment, or arrow, in a Euclidean space.

In pure mathematics, a vector is defined more generally as any element of a vector space. In this context, vectors are abstract entities which may or may not be characterized by a magnitude and a direction. This generalized definition implies that the above-mentioned geometric entities are a special kind of vectors, as they are elements of a special kind of vector space called *Euclidean space*.

This particular article is about vectors strictly defined as arrows in Euclidean space. When it becomes necessary to distinguish these special vectors from vectors as defined in pure mathematics, they are sometimes referred to as *geometric vectors*, *spatial vectors* or *Euclidean vectors*.

Being an arrow, a Euclidean vector possesses a definite *initial point* and *terminal point*. A vector with fixed initial and terminal point is called a *bound vector*. When only the *magnitude* and *direction* of the vector matter, then the particular initial point is of no importance, and the vector is called a *free vector*.

Thus two arrows AB and AʹBʹ in space represent the same free vector if they have the same magnitude and direction. That is, they are *equipollent* if the quadrilateral ABBʹAʹ is a parallelogram.

If the Euclidean space is equipped with a choice of origin, then a free vector is equivalent to the bound vector of the same magnitude and direction whose initial point is the origin. The term "vector" also has generalizations to higher dimensions, and to more formal approaches with much wider applications.

### 2.1 Further information

In *classical Euclidean geometry* (i.e. synthetic geometry), vectors were introduced (during the 19th century) as equivalence classes under equipollence, of ordered pairs of points; two pairs (A, B) and (C, D) being equipollent if the points A, B, D, C, in this order, form a parallelogram. Such an equivalence class is called a vector, more precisely, a Euclidean vector. The equivalence class of (A, B) is often denoted AB with an arrow on top.

A Euclidean vector is thus an equivalence class of directed segments with the same magnitude (e.g. the length of the line segment AB) and the same direction (e.g. the direction from A to B).

In physics, Euclidean vectors are used to represent physical quantities that have both magnitude and direction, but are not located at a specific place, in contrast to scalars, which have no direction. For example, velocity, forces and acceleration are represented by vectors.

In modern geometry, Euclidean spaces are often defined from linear algebra. More precisely, a Euclidean space E is defined as a set to which is associated an inner product space of finite dimension over the reals E⃗, and a group action of the additive group of E⃗, which is free and transitive (See Affine space for details of this construction).

The elements of E⃗ are called *translations*. It has been proven that the two definitions of Euclidean spaces are equivalent, and that the equivalence classes under equipollence may be identified with translations.

Sometimes, Euclidean vectors are considered without reference to a Euclidean space. In this case, a Euclidean vector is an element of a *normed vector space* of finite dimension over the reals, or, typically, an element of ℝⁿ equipped with the *dot product*. This makes sense, as the addition in such a vector space acts freely and transitively on the vector space itself. That is, ℝⁿ is a Euclidean space, with itself as an associated vector space, and the dot product as an inner product.

The Euclidean space `ℝⁿ` is often presented as the Euclidean space of dimension `n`. This is motivated by the fact that every Euclidean space of dimension `n` is isomorphic to the Euclidean space `ℝⁿ`.

More precisely, given such a Euclidean space, one may choose any point O as an origin. By Gram-Schmidt process, one may also find an orthonormal basis of the associated vector space (a basis such that the inner product of two basis vectors is 0 if they are different and 1 if they are equal). This defines Cartesian coordinates of any point `P` of the space, as the coordinates on this basis of the vector OP. These choices define an isomorphism of the given Euclidean space onto ℝⁿ, by mapping any point to the n-tuple of its Cartesian coordinates, and every vector to its *coordinate vector*.

### 2.2 Examples in one dimension

Since the physicist's concept of force has a direction and a magnitude, it may be seen as a vector. As an example, consider a rightward force F of 15 newtons. If the positive axis is also directed rightward, then F is represented by the vector 15 N, and if positive points leftward, then the vector for F is −15 N. In either case, the magnitude of the vector is 15 N. Likewise, the vector representation of a displacement Δs of 4 meters would be 4 m or −4 m, depending on its direction, and its magnitude would be 4 m regardless.

### 2.3 In physics and engineering

Vectors are fundamental in the physical sciences. They can be used to represent any quantity that has magnitude, has direction, and which adheres to the rules of vector addition. An example is velocity, the magnitude of which is speed. For instance, the velocity 5 meters per second upward could be represented by the vector (0, 5) (in 2 dimensions with the positive y-axis as 'up'). Another quantity represented by a vector is force, since it has a magnitude and direction and follows the rules of vector addition.[7] Vectors also describe many other physical quantities, such as linear displacement, displacement, linear acceleration, angular acceleration, linear momentum, and angular momentum. Other physical vectors, such as the electric and magnetic field, are represented as a system of vectors at each point of a physical space; that is, a vector field. Examples of quantities that have magnitude and direction, but fail to follow the rules of vector addition, are angular displacement and electric current. Consequently, these are not vectors.

### 2.4 In Cartesian space

In the Cartesian coordinate system, a bound vector can be represented by identifying the coordinates of its initial and terminal point.

For instance, the points A = (1, 0, 0) and B = (0, 1, 0) in space determine the bound vector AB pointing from the point x = 1 on the x-axis to the point y = 1 on the y-axis.

In Cartesian coordinates, a free vector may be thought of in terms of a corresponding bound vector, in this sense, whose initial point has the coordinates of the origin O = (0, 0, 0). It is then determined by the coordinates of that bound vector's terminal point.

Thus the free vector represented by (1, 0, 0) is a vector of unit length, pointing along the direction of the positive x-axis.

This coordinate representation of free vectors allows their algebraic features to be expressed in a convenient numerical fashion.

For example, the sum of the two (free) vectors (1, 2, 3) and (−2, 0, 4) is the (free) vector `(1,2,3) + (−2,0,4) = (1−2, 2+0, 3+4) = (−1,2,7)`.

### 2.5 Euclidean and affine vectors



### 2.6 Generalizations


## 3. Representations



Vectors are usually shown in graphs or other diagrams as arrows (directed line segments), as illustrated in the figure.

A ---------------> B

Here, the point A is called the *origin, tail, base, or initial point*, and the point B is called the *head, tip, endpoint, terminal point or final point*.

The length of the arrow is proportional to the vector's magnitude, while the direction in which the arrow points indicates the vector's direction.

On a two-dimensional diagram, a vector perpendicular to the plane of the diagram is sometimes desired.

These vectors are commonly shown as small circles.

A circle with a dot at its centre (Unicode U+2299 `⊙`) indicates a vector pointing out of the front of the diagram, toward the viewer.

A circle with a cross inscribed in it (Unicode U+2297 `⊗`) indicates a vector pointing into and behind the diagram.

These can be thought of as viewing the tip of an arrow head on and viewing the flights of an arrow from the back.

In order to calculate with vectors, the graphical representation may be too cumbersome. Vectors in an n-dimensional Euclidean space can be represented as coordinate vectors in a Cartesian coordinate system.

The endpoint of a vector can be identified with an ordered list of `n` real numbers (n-tuple). These numbers are the coordinates of the endpoint of the vector, with respect to a given Cartesian coordinate system, and are typically called the *scalar components*, or *scalar projections*, of the vector on the axes of the coordinate system.

As an example in two dimensions, the vector from the origin O = (0, 0) to the point A = (2, 3) is simply written as a = (2,3).

The notion that the tail of the vector coincides with the origin is implicit and easily understood. Thus, the more explicit notation OA is usually deemed not necessary (and is indeed rarely used).

In 3D Euclidean space, ℝ³, vectors are identified with triples of scalar components, `a = (a₁,a₂,a₃)`, also written, `a = (aˣ,aʸ,aᶻ)` or `a = (x,y,z)`.

This can be generalised to n-dimensional Euclidean space, ℝⁿ.

These numbers are often arranged into a *column vector* or *row vector*, particularly when dealing with matrices, as follows:

```
⎡x⎤
⎣y⎦
```

Another way to represent a vector in n-dimensions is to introduce the *standard basis vectors*.

In 2 dimensions, there are two of the standard basis vectors or *unit vectors*, `î` and `ĵ`, with î = (1, 0) and ĵ = (0, 1). Arranged in a matrix, they are

```
                       î ĵ
                       ↓ ↓
⎡ î ⎤   ⎡ (1, 0) ⎤   ⎡ 1 0 ⎤
⎣ ĵ ⎦ = ⎣ (0, 1) ⎦ = ⎣ 0 1 ⎦
```

giving the *identity matrix*. Then a vector, v = (2, -1), can be represented as v = 2î + (-1)ĵ = `2î - ĵ`

```
    ⎡ 2⎤
v = ⎣-1⎦

v = 2î + (-1)ĵ
v = 2î - ĵ

v = 2(1,0) - 1(0,1)
v = (2,0) - (0,1)
v = (2, -1)

 î  ĵ    v
⎡1  0⎤ ⎡ 2⎤    ⎡1⎤     ⎡0⎤   ⎡2⎤   ⎡ 0⎤   ⎡ 2⎤
⎣0  1⎦ ⎣-1⎦ = 2⎣0⎦ + -1⎣1⎦ = ⎣0⎦ + ⎣-1⎦ = ⎣-1⎦
```

These have the intuitive interpretation as vectors of unit length pointing up the x-axis and y-axis of a Cartesian coordinate system, respectively. In terms of these, any vector `v = (x, y)` in R² can be expressed as

`v = xî + yĵ`

where `î` and `ĵ` are called the *vector components*, or *vector projections*, of `v` on the basis vectors, or, equivalently, on the corresponding Cartesian axes, while `x` and `y` are the respective *scalar components* or *scalar projections*.

In introductory physics textbooks, the standard basis vectors are often denoted î, ĵ, k̂, in which the hat symbol typically denotes unit vectors).

In this case, the scalar and vector components are denoted respectively x, y, z, or vˣ, vʸ, vᶻ. Thus,

`v = vˣ + vʸ + vᶻ = vˣ î + vʸ ĵ + vᶻ k̂`

The notation `êᵢ` is compatible with the index notation and the summation convention commonly used in higher level mathematics, physics, and engineering.

### 3.1 Decomposition or resolution

Further information: Basis (linear algebra)
https://en.wikipedia.org/wiki/Basis_(linear_algebra)

As explained above, a vector is often described by a set of vector components that add up to form the given vector. Typically, these components are the projections of the vector on a set of mutually perpendicular reference axes (basis vectors). The vector is said to be decomposed or resolved with respect to that set.

The *decomposition or resolution of a vector* into components is not unique, because it depends on the choice of the axes on which the vector is projected.

Moreover, the use of Cartesian unit vectors such as 
�
^
,
�
^
,
�
^x^,y^,z^
 as a basis in which to represent a vector is not mandated. Vectors can also be expressed in terms of an arbitrary basis, including the unit vectors of a cylindrical coordinate system (
�
^
,
�
^
,
�
^ρ^,ϕ^,z^
) or spherical coordinate system (
�
^
,
�
^
,
�
^r^,θ^,ϕ^
). The latter two choices are more convenient for solving problems which possess cylindrical or spherical symmetry, respectively.

The choice of a basis does not affect the properties of a vector or its behaviour under transformations.

A vector can also be broken up with respect to "non-fixed" basis vectors that change their orientation as a function of time or space. For example, a vector in three-dimensional space can be decomposed with respect to two axes, respectively normal, and tangent to a surface (see figure). Moreover, the radial and tangential components of a vector relate to the radius of rotation of an object. The former is parallel to the radius and the latter is orthogonal to it.[17]

In these cases, each of the components may be in turn decomposed with respect to a fixed coordinate system or basis set (e.g., a global coordinate system, or inertial reference frame).

## 4. Basic properties

The following section uses the Cartesian coordinate system with basis vectors
- î = ê₁ = (1,0,0)
- ĵ = ê₂ = (0,1,0)
- k̂ = ê₃ = (0,0,1)

and assumes that all vectors have the origin as a common base point. 
A vector `v` will be written as

`v = vˣ î + vʸ ĵ + vᶻ k̂`

### 4.1 Equality

Two vectors are equal if they have the *same magnitude and direction*.

Equivalently, two vectors are equal if *their coordinates are equal*.

### 4.2 Opposite, parallel, and antiparallel vectors

Two vectors are **opposite** if they have
- the same magnitude and
- opposite direction

Two vectors are **parallel** if they have
- the same direction
- but not necessarily the same magnitude

Two vectors are **antiparallel** if they have
- opposite direction
- but not necessarily the same magnitude

### 4.3 Addition and subtraction

#### 4.3.1 Vector addition

The resulting vector of addition of two vectors `v` and `u` is sometimes called the *resultant vector* of `v` and `u`.

v = (2, -1)
u = (-3, -7)
v + u = (2 +(-3), -1 + (-7)) = (-1, -8)

The addition may be represented graphically by placing the tail of the arrow `u` at the head of the arrow `v`, and then drawing an arrow from the tail of `v` to the head of `u`.

This addition method is sometimes called the *parallelogram rule* because `v` and `u` form the sides of a parallelogram and `v + u` is one of the diagonals.

If `v` and `u` are bound vectors that have the same base point, this point will also be the base point of `v + u`. One can check geometrically that `v+u = u+v` and (v + u) + w = v + (u + w).

#### 4.3.2 Vector subtraction

v = (2, -1)
u = (-3, -7)
v - u = (2 - (-3), -1 - (-7)) = (5, 6)

Subtraction of two vectors can be geometrically illustrated as follows: to subtract b from a, place the tails of a and b at the same point, and then draw an arrow from the head of b to the head of a.

This new arrow represents the vector (-b) + a, with (-b) being the opposite of b. And (-b) + a = a − b.

### 4.4 Scalar multiplication

A vector may also be multiplied, or re-scaled, by a real number r. In the context of conventional vector algebra, these real numbers are often called *scalars* (from scale) to distinguish them from vectors. The operation of multiplying a vector by a scalar is called scalar multiplication.

Intuitively, multiplying a vec by a scalar r stretches a vector out by a factor of r. Geometrically, this can be visualized (at least in the case when r is an integer) as placing r copies of the vector in a line where the endpoint of one vector is the initial point of the next vector.

If r is negative, then the vector changes direction: it flips around by an angle of 180°.

>Scalar multiplication is distributive over vector addition.

Scalar multiplication is distributive over vector addition in the following sense: `r(v + u) = rv + ru` for all vectors `v` and `u` and all scalars `r`.

One can also show that `v − u = v + (−1)u`.


~ ~ ~

Scalar multiplication scales the vector, possibly reversing its direction if the scalar is negative.

Integer scalars scale the vector an integer number of times, fractional scalars scale it proportinaly.

- If scalar is `s ∈ ℕᐩ` vector is scaled up
- If scalar is `s ∈ ℝ` and `0 < s < 1`, vector is scaled down
- If a scalar is negative, vector's direction is also reversed

Scalars
- scalar 2 doubles the vector's magnitude, keeping its direction
- scalar -2 doubles the vector's magnitude, reversing its direction
- scalar -1 only reverses the vector's direction
- scalar 1/2 halves the vector's magnitude
- scalar -1/2 halves the vector's magnitude and reverses its direction

Examples
-     v = (2, -1)
-    3v = (3∙2 + 3∙(-1)) = (6, -3)          ...triples the vec
-   -1v = (-1∙2 + (-1)∙(-1)) = (-2, 1)      ...reverses dir
- -0.5v = (-0.5∙2 + -0.5∙(-1)) = (-1, 0.5)  ...scale and reverse



### 4.5 Length

The *length* or *magnitude* or *norm* of the vector `v` is denoted by `‖v‖` or, less commonly, `|v|` when there's no ambiguity with the absolute value, which is a length/norm/magnitude of a scalar.

The length of the vector `v` can be computed with the *Euclidean norm*,

`‖v‖ = √(î² + ĵ²)`

which is a consequence of the Pythagorean theorem since the basis vectors î and ĵ are orthogonal unit vectors. This happens to be equal to the square root of the dot product of the vector with itself:

`‖v‖ = √(v ∙ v)`

#### 4.5.1 Unit vector

Main article: Unit vector
https://en.wikipedia.org/wiki/Unit_vector

>A **unit vector** is any vector with a length of 1.

Normally, unit vectors are used simply to indicate direction. 
A unit vector is often indicated with a hat symbol above as in `â`. 

A vector of arbitrary length can be divided by its length to create a unit vector, which is called **normalizing a vector**.

`v̂ = v / ‖v‖`


To normalize a vector `v = (x, y, z)`, scale the vector by the reciprocal of its length `‖v‖`. That is:

```
     v         x        y       z           x î    y ĵ   z k̂
v̂ = ---   =   ---- î + --- ĵ + --- k̂   ==  ---- + --- + ---
    ‖v‖       ‖v‖      ‖v‖     ‖v‖          ‖v‖   ‖v‖   ‖v‖
```


#### 4.5.2 Zero vector

Main article: Zero vector
https://en.wikipedia.org/wiki/Zero_vector

>The **zero vector** is the vector with length zero.

Written out in coordinates, the vector is `(0, 0, 0)`, and it is commonly denoted `0⃗`, or simply 0.

Unlike any other vector, it has an *arbitrary or indeterminate direction*, and *it cannot be normalized*; that is, there is no unit vector that is a multiple of the zero vector.

The sum of the zero vector with any vector `v` is `v`; i.e. `0 + v = v`, so the zero vector is the identity (unit) of vector addition (and subtraction).

### 4.6 Dot product

Main article: Dot product
https://en.wikipedia.org/wiki/Dot_product

The **dot product** of two vectors v and u (sometimes called the *inner product*, or, since its result is a scalar, the *scalar product*) is denoted by `v∙u`, and is defined as:

`v∙u = ‖v‖∙‖u‖∙cosθ`

where `θ` is the measure of the angle between v and u (see trigonometric function for an explanation of cosine).

Geometrically, this means that `v` and `u` are drawn with a common start point, and then the length of `v` is multiplied with the length of the component of `u` that points in the same direction as `v`.

>The dot product can also be defined as the sum of the products of the components of each vector.

v = (x, y, z)
u = (a, b, c)
v∙u = ax + by + cz


### 4.7 Cross product

Main article: Cross product
https://en.wikipedia.org/wiki/Cross_product

The **cross product** (also called the *vector product* or *outer product*) is only meaningful in 3 or 7 dimensions.

The cross product differs from the dot product primarily in that the result of the cross product of two vectors is a vector.

The cross product, denoted `a × b`, is a vector *perpendicular to both* `a` and `b` and is defined as

`a × b = ‖a‖∙‖b‖∙sinθ n`

where `θ` is the measure of the angle between a and b and `n` is a unit vector perpendicular to both a and b which completes a *right-handed system*. This right-handedness constraint is necessary because there exist two unit vectors that are perpendicular to both a and b, namely, `n` and `−n`.

The cross product `a × b` is defined so that `a`, `b`, and `a×b` also becomes a right-handed system (although `a` and `b` are not necessarily orthogonal). This is **the right-hand rule**.

The length of `a × b` can be interpreted as the area of the parallelogram having `a` and `b` as sides.

The cross product Identity: `a × b = -b × a`


>The cross product of two 3D vectors can also be written as

```
a × b =
  (a₂b₃ - a₃b₂) î
+ (a₃b₁ - a₁b₃) ĵ
+ (a₁b₂ - a₂b₁) k̂

where
a = (a₁, a₂, a₃)
b = (b₁, b₂, b₃)
```




The cross product of two 2D vectors can also be written as... can it?

```
a × b =
  (a₂b₂) î
+ (a₁b₁) ĵ = ???

where
a = (a₁, a₂)
b = (b₁, b₂)




a × b =
  (xz - yw) î
+ (xw - yz) ĵ = ???

where
a = (x, y)
b = (w, z)


⎡x⎤   ⎡w⎤  
⎣y⎦ × ⎣z⎦ = ???
```

Well, no, coz...

>The cross product is only defined for 3D space.


For arbitrary choices of *spatial orientation* (that is, allowing for left-handed as well as right-handed coordinate systems), the cross product of two vectors is a *pseudovector* instead of a vector.

### 4.8 Scalar triple product

Main article: Scalar triple product
https://en.wikipedia.org/wiki/Triple_product#Scalar_triple_product



### 4.9 Conversion between multiple Cartesian bases


### 4.10 Other dimensions
