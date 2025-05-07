# Line

https://en.wikipedia.org/wiki/Line_(geometry)

In geometry, a *straight line*, usually abbreviated to just *line*, is an infinitely long object with no width, depth or curvature.

Since a line only has length (only has one dimension), it is a one-dimensional object, and one of the few 1D objects. Lines are geometric *spaces* of dimension one, which may be embedded in spaces of dimension 2, 3, or higher. As a one-dimensional space, line can host objects of lower dimensions, but since a point is the only zero-dimensional object, only points inhabit the line space.

Points are zero-dimensional spaces embedable in higher dimensions. In fact, it could be said that all objects of all demensions are composed of 0D points. So a line is a 1D object composed of an infinitude of 0D points.

A line is an idealization of such physical objects as a straightedge, a taut string, or a ray of light. The word "line" also colloquially refers to a *line segment*, which is a part of a line delimited by two points (its endpoints), or to a *ray*, which, unlike a line segment, only has an initial endpoint.

Euclid's "Elements" defines a straight line as a "breadthless length" that "lies evenly with respect to the points on itself", and introduced several postulates (i.e. axioms which express some basic properties about the promitives of the theory, and like primitives need not be proved) on which his theory of geometry rests. *Euclidean line* and *Euclidean geometry* are terms introduced to avoid confusion with generalizations introduced since the end of the 19th century, such as non-Euclidean, projective, and affine geometry.

## Contents

- 1. Properties
  - 1.1. In higher dimensions
    - 1.1.1. Collinear points
  - 1.2. Relation with other figures
  - 1.3. In axiomatic systems
- 2. Definition
  - 2.1. Linear equation
  - 2.2. Parametric equation
  - 2.3. Hesse normal form
- 3. Other representations
  - 3.1. Vectors
  - 3.2. Polar coordinates
- 4. Generalizations
  - 4.1. Projective geometry
- 5. Related concepts
  - 5.1. Ray
  - 5.2. Line segment
  - 5.3. Number line
- 6. See also
- 7. Notes
- 8. References
- 9. External link

## 1. Properties

In the Greek deductive geometry of Euclid's Elements, a *general line* (now called a *curve*) is defined as a "breadthless length", and a *straight line* (now called a *line segment*) was defined as a line "which lies evenly with the points on itself". These definitions appeal to reader's experience, relying on terms that are not themselves defined, and the definitions are never explicitly referenced in the remainder of the text.

In modern geometry, a line is usually either taken as a *primitive notion with properties given by axioms*, or else defined as a set of points obeying a linear relation; e.g. when real numbers are taken to be primitive and geometry is established analytically in terms of numerical coordinates.

In an axiomatic formulation of Euclidean geometry, such as that of Hilbert (modern mathematicians added to Euclid's original axioms to fill perceived logical gaps) a line is stated to have certain properties that relate it to other lines and points. For example, for any two distinct points, there is a unique line containing them, and any two distinct lines intersect at most at one point.

In two dimensions (i.e. the Euclidean plane), two lines that do not intersect are called parallel. In higher dimensions, two lines that do not intersect are *parallel* if they are contained in a plane, or *skew* if they are not.

On the Euclidean plane, a line can be represented as a boundary between two regions.  Any collection of finitely many lines partitions the plane into convex polygons (possibly unbounded); this partition is known as an *arrangement of lines*.

### In higher dimensions

In 3D space, a first degree equation in the variables `x`, `y`, `z` defines a plane, so 2 such equations, provided the planes they give rise to are not parallel, define a line which is the intersection of the planes.

More generally, in `n`-dimensional space `n−1` first-degree equations in the `n` coordinate variables define a line under suitable conditions.

In more general Euclidean space, `ℝⁿ` (and analogously in every other affine space), the line `L` passing through 2 different points `a` and `b` is the subset `L = { (1−t)a + tb | t ∈ ℝ }`. The direction of the line is from a reference point `a` (`t = 0`) to another point `b` (`t = 1`), or in other words, in the direction of the vector `b − a`. Different choices of `a` and `b` can yield the same line.

#### 1.1.1. Collinear points

>Three or more points are said to be *collinear* if they lie on the same line.

If 3 points are not collinear, there is exactly one plane that contains them.

In affine coordinates, in n-dimensional space the points 
X = (x₁, x₂, …, xₙ), 
Y = (y₁, y₂, …, yₙ), and 
Z = (z₁, z₂, …, zₙ) 
are *collinear* if the matrix 

    ⎡ 1 x₁ x₂ … xₙ ⎤
    ⎢ 1 y₁ y₂ … yₙ ⎥
    ⎣ 1 z₁ z₂ … zₙ ⎦

has a rank less than 3. In particular, for 3 points in the plane (`n = 2`), the above matrix is square and the points are collinear iff its determinant is 0.

Equivalently for three points in a plane, the points are collinear if and only if the slope between one pair of points equals the slope between any other pair of points (in which case the slope between the remaining pair of points will equal the other slopes). By extension, k points in a plane are collinear if and only if any (k-1) pairs of points have the same pairwise slopes.

In Euclidean geometry, the Euclidean distance d(a,b) between two points a and b may be used to express the collinearity between three points by:

The points a, b and c are collinear if and only if 

    d(x,a) = d(c,a) ∧ d(x,b) = d(c,b) ⇒ x = c

However, there are other notions of distance (such as the Manhattan distance) for which this property is not true.

In the geometries where the concept of a line is a primitive notion, as may be the case in some synthetic geometries, other methods of determining collinearity are needed.

### 1.2. Relation with other figures

- congruent lines
- tangent line
- secant line
- exterior lines
- directrix
- coordinate line
- transversal line (intersects two other lines)
- i-secant lines (wrt curves)
- asymptotes (wrt curves)
- Euler line (wrt △)
- Simson lines (wrt △)
- central lines (wrt △)
- Newton line (wrt convex quadrilateral)
- Pascal line (wrt hexagon)
- Pappus line (wrt hexagon)
- parallel lines
- intersecting lines (share a single point)
- coincidental lines (same line)
- perpendicular lines (intersect at 90ᵒ)
- skew lines (non coplanar and non-intersecting lines in 3D space)




In Euclidean geometry, *all lines are congruent*, meaning that every line can be obtained by moving a specific line.

>However, lines may play special roles with respect to other geometric objects and can be classified according to that relationship.

For instance, with respect to a conic (circle, ellipse, parabola, hyperbola), lines can be:
- *tangent lines*, touch the conic at a single point
- *secant lines*, intersect the conic at 2 points, passing through its interior
- *exterior lines*, don't meet the conic at any point of the Euclidean plane
- *directrix*, whose distance from a point helps to establish whether the point is on the conic.
- *coordinate line*, a linear coordinate dimension

In the context of determining parallelism in Euclidean geometry, a *transversal* is a line that intersects two other lines that may or not be parallel to each other.

For more general algebraic curves, lines could also be:
- *i-secant lines*, meeting the curve in `i` pts counted without multiplicity
- *asymptotes*, which a curve approaches arbitrarily close without touching it

With respect to triangles there are:
- *the Euler line*
- *the Simson lines*
- *central lines*

* For a convex quadrilateral with at most two parallel sides, the *Newton line* is the line that connects the midpoints of the two diagonals.

* For a hexagon with vertices lying on a conic there is the *Pascal line*. In the special case where the conic is a pair of lines, the *Pappus line*.

* *Parallel lines* are lines in the same plane that never cross.
* *Intersecting lines* share a single point in common.
* *Coincidental lines* coincide with each other - every point that is on either one of them is also on the other.
* *Perpendicular lines* are lines that intersect at right angles.
* In 3D space, *skew lines* are lines that are not in the same plane and thus do not intersect each other.


### 1.3. In axiomatic systems

In synthetic geometry, the concept of a line is often considered as a primitive notion, meaning it is not being defined by using other concepts, but it is defined by the properties, called axioms, that it must satisfy.

However, the axiomatic definition of a line does not explain the relevance of the concept and is often too abstract for beginners. So, the definition is often replaced or completed by a mental image or intuitive description that allows understanding what is a line. Such descriptions are sometimes referred to as definitions, but are not true definitions since they cannot used in mathematical proofs. The "definition" of line in Euclid's Elements falls into this category;  and is never used in proofs of theorems.

## 2. Definition

https://en.wikipedia.org/wiki/Line_coordinates

### 2.1 Linear equation

Main article: Linear equation
https://en.wikipedia.org/wiki/Linear_equation

Lines in a Cartesian plane (or, more generally, in affine coordinates) are characterized by linear equations.

More precisely, every line `L` (including vertical lines) is a set of points whose coordinates `(x, y)` satisfy a linear equation.

    L = { (x, y) | ax + by = c }

where a, b, c are fixed real numbers (called coefficients) such that `a` and `b` are not both zero. Using this form, vertical lines correspond to equations with `b = 0`.

    ax + by = c

```js
ax + by = c
y = (c - ax)/b
x = (c - by)/a

ax + by = c

0x + 0y = c
c = 0

0x + by = c
by = c
y = c/b

ax + 0y = c
ax = c
x = c/a
```


One can further suppose either `c = 1` or `c = 0`, by dividing everything by `c` if it is not 0.

There are many variant ways to write the equation of a line which can all be converted from one to another by algebraic manipulation. The above form is sometimes called the **standard form**. If the constant term is put on the left, the equation becomes

    ax + by − c = 0

and this is sometimes called the **general form** of the equation. However, this terminology is not universally accepted, and many authors do not distinguish these two forms.

These forms are generally named by the type of information about the line that is needed to write down the form. Some important pieces of information about a line is
- slope
- y-intercept
- x-intercept
- coordinates of known points

>The equation of the line passing through two different points `P₀ = (x₀, y₀)` and `P₁ = (x₁, y₁)` may be written as

    (y - y₀)(x₁ - x₀) = (y₁ - y₀)(x - x₀)

If `x₀ ≠ x₁`, this equation may be rewritten as:

```js
P₀ = (x₀ , y₀)
P₁ = (x₁ , y₁)
Δx =  x₁ - x₀
Δy =  y₁ - y₀

(y - y₀)(x₁ - x₀) = (y₁ - y₀)(x - x₀)
        └───┬───┘   └───┬───┘
           Δx          Δy

Δx(y - y₀) = Δy(x - x₀)

Δx(y - y₀)
---------- = 1
Δy(x - x₀)

// To isolate y on one side, we can start by moving (x₁ - x₀) to the other
// side making it a divisor there, and so it must not be 0. We need to
// introduce the condition that the differene of x₀ and x₁ is not 0 (x₀≠x₁)

           (y₁ - y₀)(x - x₀)
(y - y₀) = -----------------      (if x₀ ≠ x₁)
               (x₁ - x₀)

             (y₁ - y₀)
y = (x - x₀) --------- + y₀      (if x₀ ≠ x₁)
             (x₁ - x₀)

      y₁ - y₀   x₁y₀ - x₀y₁
y = x ------- + -----------      (if x₀ ≠ x₁)
      x₁ - x₀     x₁ - x₀

```

- if `x₀ = x₁` ⇒ line is vertical
- if `y₀ = y₁` ⇒ line is horizontal

(x₀, y₀)
(x₁, y₁)


In two dimensions, the equation for non-vertical lines is often given in the slope-intercept form:

`y = mx + b` where:
- `m` is the slope or gradient of the line
- `b` is the y-intercept of the line
- `x` is the independent variable of the function `y = f(x)`

The slope of the line through points `A(xₐ,yₐ)` and `B(xⱼ,yⱼ)`, when `xₐ≠xⱼ`, is given by m = `(yⱼ − yₐ)/(xⱼ − xₐ)` and the equation of this line can be written

    y = m(x − xₐ) + yₐ

As a note, lines in three dimensions may also be described as the simultaneous solutions of two linear equations

      a₁x + b₁y + c₁z − d₁ = 0
      a₂x + b₂y + c₂z − d₂ = 0
    such that
      (a₁, b₁, c₁)
    and
      (a₂, b₂, c₂)
    are not proportional
    (the relations a₁ = ta₂, b₁ = tb₂, c₁ = tc₂ imply t=0)

This follows since in three dimensions a single linear equation typically describes a plane and a line is what is common to two distinct intersecting planes.

### 2.2 Parametric equation

Further information: Parametric equation
https://en.wikipedia.org/wiki/Parametric_equation

Parametric equations are also used to specify lines, particularly in those in 3D or more because in more than two dimensions lines cannot be described by a single linear equation.

In 3D lines are frequently described by parametric equations: 

    x = x₀ + at
    y = y₀ + bt
    z = z₀ + ct

where:
- x, y, z are all functions of the independent var `t` ranging over ℝ
- (x₀, y₀, z₀) is any point on the line
- a, b, c are related to the slope of the line, such that the direction vector (a, b, c) is parallel to the line.

Parametric equations for lines in higher dimensions are similar in that they are based on the specification of one point on the line and a direction vector.

### 2.3. Hesse normal form

Main article: Hesse normal form
https://en.wikipedia.org/wiki/Hesse_normal_form

The **normal form** (aka the **Hesse normal form**, after the German mathematician Ludwig Otto Hesse), is based on the normal segment for a given line, which is defined to be the line segment drawn from the origin perpendicular to the line.

This segment joins the origin with the closest point on the line to the origin. The normal form of the equation of a straight line on the plane is given by:

    xcosφ + ysinφ − p = 0

where
- `φ` is the angle of inclination of the normal segment (the oriented angle from the unit vector of the x-axis to this segment)
- `p` is the (positive) length of the normal segment

The normal form can be derived from the standard form `ax + by = c` by dividing all of the coefficients by `√(a² + b²)` and also multiplying through by −1 if `c < 0`.

Unlike the slope-intercept and intercept forms, this form can represent any line but also requires only two finite parameters, `φ` and `p`, to be specified.

If `p > 0`, then `φ` is uniquely defined modulo `2π`. 

On the other hand, if the line is through the origin (c = p = 0), one drops the `c`/ `|c|` term to compute `sinφ` and `cosφ`, and it follows that `φ` is only defined modulo π.

## 3. Other representations

### 3.1. Vectors

The vector equation of the line through points A and B is given by

    r = OA + λAB

where `λ` is a scalar.

If `a` is vector `OA` and `b` is vector `OB`, then the equation of the line can be written: 

    r = a + λ(b − a)

A ray starting at point A is described by limiting λ. One ray is obtained if λ ≥ 0, and the opposite ray comes from λ ≤ 0.

### 3.2. Polar coordinates

In a Cartesian plane, polar coordinates `(r, θ)` are related to Cartesian coordinates by the parametric equations, `(rcosθ, rsinθ)`

    x = rcosθ, y = rsinθ

In polar coordinates, the equation of a line not passing through the origin can be written

    r = p/cos(θ − φ)

with
- r > 0
- φ − π/2 < θ < φ + π/2

Here, `p` is the (positive) length of the line segment perpendicular to the line and delimited by the origin and the line, and `φ` is the (oriented) angle from the x-axis to this segment.

It may be useful to express the equation in terms of the angle `α = φ + π/2` between the x-axis and the line. In this case, the equation becomes

    r = p/cos(θ − α)

with
- r > 0
- 0 < θ < α + π

These equations can be derived from the normal form of the line equation by setting x=rcosθ, and y=rsinθ, and then applying the angle difference identity for sine or cosine.

These equations can also be proven geometrically by applying right triangle definitions of sine and cosine to the right triangle that has a point of the line and the origin as vertices, and the line and its perpendicular through the origin as sides.

The previous forms do not apply for a line passing through the origin, but a simpler formula can be written: the polar coordinates (r,θ) of the points of a line passing through the origin and making an angle of α with the x-axis, are the pairs (r,θ) such that r≥0, and θ=α or θ=α+π.

## 4. Generalizations

See also: Geometric space
https://en.wikipedia.org/wiki/Geometric_space

In modern mathematics, given the multitude of geometries, the concept of a line is closely tied to the way the geometry is described.

For instance, in analytic geometry, a line in the plane is often defined as the set of points whose coordinates satisfy a given linear equation, but in a more abstract setting, such as *incidence geometry*, a line may be an independent object, distinct from the set of points which lie on it.

When a geometry is described by a set of axioms, the notion of a line is usually left undefined (a so-called primitive object). The properties of lines are then determined by the axioms which refer to them. One advantage to this approach is the flexibility it gives to users of the geometry. Thus in differential geometry, a line may be interpreted as a geodesic (shortest path between points), while in some projective geometries, a line is a 2-dimensional vector space (all linear combinations of two independent vectors). This flexibility also extends beyond mathematics and, for example, permits physicists to think of the path of a light ray as being a line.

### 4.1. Projective geometry

Further information: Geodesic
https://en.wikipedia.org/wiki/Geodesic

In many models of projective geometry, the representation of a line rarely conforms to the notion of the "straight curve" as it is visualised in Euclidean geometry. In elliptic geometry we see a typical example of this.

In the spherical representation of elliptic geometry, lines are represented by great circles of a sphere with diametrically opposite points identified.

In a different model of elliptic geometry, lines are represented by Euclidean planes passing through the origin.

Even though these representations are visually distinct, they satisfy all the properties (such as, two points determining a unique line) that make them suitable representations for lines in this geometry.

The "shortness" and "straightness" of a line, interpreted as the property that the distance along the line between any two of its points is minimized (see triangle inequality), can be generalized and leads to the concept of geodesics in metric spaces.

## 5. Related concepts

### 5.1. Ray

See also: Orthant
https://en.wikipedia.org/wiki/Orthant

Given a line and any point A on it, we may consider A as decomposing this line into two parts. Each such part is called a *ray* and the point A is called its *initial point*. It is also known as half-line (sometimes, a half-axis if it plays a distinct role, e.g. as part of a coordinate axis).

It is a one-dimensional half-space.

The point A is considered to be a member of the ray. Intuitively, a ray consists of those points on a line passing through A and proceeding indefinitely, starting at A, in one direction only along the line.

However, in order to use this concept of a ray in proofs a more precise definition is required.

Given distinct points A and B, they determine a unique ray with initial point A. As two points define a unique line, this ray consists of all the points between A and B (including A and B) and all the points C on the line through A and B such that B is between A and C.[12] This is, at times, also expressed as the set of all points C on the line determined by A and B such that A is not between B and C.[13] A point D, on the line determined by A and B but not in the ray with initial point A determined by B, will determine another ray with initial point A. With respect to the AB ray, the AD ray is called the opposite ray.

Thus, we would say that two different points, A and B, define a line and a decomposition of this line into the disjoint union of an open segment (A, B) and two rays, BC and AD (the point D is not drawn in the diagram, but is to the left of A on the line AB). These are not opposite rays since they have different initial points.

In Euclidean geometry two rays with a common endpoint form an angle.[14]

The definition of a ray depends upon the notion of betweenness for points on a line. It follows that rays exist only for geometries for which this notion exists, typically Euclidean geometry or affine geometry over an ordered field. On the other hand, rays do not exist in projective geometry nor in a geometry over a non-ordered field, like the complex numbers or any finite field.

### 5.2. Line segment

Main article: Line segment
https://en.wikipedia.org/wiki/Line_segment

>A *line segment* is a part of a line that is bounded by two distinct end points and contains every point on the line between its end points.

Depending on how the line segment is defined, either of the two end points may or may not be part of the line segment.

Two or more line segments may have some of the same relationships as lines, such as being parallel, intersecting, or skew, but unlike lines they may be none of these, if they are coplanar and either do not intersect or are collinear.


### 5.3. Number line

Main article: Number line
https://en.wikipedia.org/wiki/Number_line

A point on number line corresponds to a real number and vice versa. Usually, integers are evenly spaced on the line, with positive numbers are on the right, negative numbers on the left. As an extension to the concept, an imaginary line representing imaginary numbers can be drawn perpendicular to the number line at zero. The two lines forms the complex plane, a geometrical representation of the set of complex numbers.


## 6. Links

https://en.wikipedia.org/wiki/Tangent_line
https://en.wikipedia.org/wiki/Secant_line
https://en.wikipedia.org/wiki/Directrix_of_a_conic_section
https://en.wikipedia.org/wiki/Coordinate_line
https://en.wikipedia.org/wiki/Transversal_(geometry)
https://en.wikipedia.org/wiki/Asymptote
https://en.wikipedia.org/wiki/Euler_line
https://en.wikipedia.org/wiki/Simson_line
https://en.wikipedia.org/wiki/Central_line_(geometry)
https://en.wikipedia.org/wiki/Newton_line
https://en.wikipedia.org/wiki/Line_coordinates
https://en.wikipedia.org/wiki/Linear_equation
