# Coordinate system, scalars and vectors

- Coordinate system
  - Cartesian coordinate system
    - Cartesian plane coordinate system
  - Polar coordinate system


## Cartesian coordinate system

*Cartesian plane coordinate system* consists of *two coplanar lines* that intersect at the right angle and the point of their intersection is called the *origin* of the coordinate system. Cartesian coordinate system is usually presented with one line drawn horizontally and called *x-axis*, with the other line drawn vertically and called *y-axis*. We can draw a circle with an arbitrary radius centered at the origin. This is the *unit circle* and it defines the *unit* of the coordinate system as its *radius*. So, the unit of the coordinate system is the radius of the unit circle. We can then mark the *ticks* along the x-axis starting from the origin and going to the right - the ticks spread out 1 unit apart from each other - these ticks mark the positive integers on the x-axis, i.e. ℤᐩ. The ticks from the left of the origin mark the negative integers, ℤ⁻, and that part of the x-axis is negative. The origin itself is 0 on the x-axis. It is similar for the y-axis. In the end, we get a coordinate system ℤ². This is a discrete coordinate system in that we can only ever put points in it. In order to draw geometrical shapes we need a continuous coordinate system, which is the same system, but there is now an infinite number of implicit subpoints between any two integers on the same axis. Such a coordinate system is 2-dimensiona system, ℝ². The 3-dimensional system, ℝ³, would have another axis, the z-axis, perpendicular to the other two.

Any point in the coordinate system is now uniquely identified by a pair of numbers `(x,y)` where `x` is a number on the x-axis and `y` is a number on the y-axis. A point in a coordinate system is called a *coordinate*. A coordinate consists of a pair of numbers `(x, y)`, where x ∈ x-axis, y ∈ y-axis, but loosely, these two numbers are sometimes also called coordinates, that is, the x-coordinate and y-coordinate.

Cartesian Coordinate System (CCS) ℝ²
- two coplanar lines intersecting at the right angle
  - x-axis: horizontal line, ℝ
  - y-axis: vertical line, ℝ
- origin: at the intersection of lines
- unit circle: centered at the origin; its radius is the unit of CCS
- circle's radius is the unit of CCS that defines the distance of ticks
- ticks are integers but there are infinitely many unmarked ticks in between
- coordinate, `(x, y)`
  - x-coordinate, `x`, x ∈ x-axis
  - y-coordinate, `y`, y ∈ y-axis
  - origin, `(0, 0)`
- CCS elements
  - 2 axis
    - x-axis:       (±x, 0)
    - y-axis:       (0, ±y)
  - 1 origin,       (0, 0)
  - 4 rays
    - +x-axis:      (+x, 0)
    - -x-axis:      (-x, 0)
    - +y-axis:      (0, +y)
    - -y-axis:      (0, -y)
  - 4 quadrants
    - I   quadrant: (+x, +y)
    - II  quadrant: (-x, +y)
    - III quadrant: (-x, -y)
    - IV  quadrant: (+x, -y)
- Angles
  - angles are measured wrt the `(+x, 0)` ray
  - this ray itself subtends an angle of 0° or 360° with itself
  - angle between rays (+x, 0) and (+x, 0) is   0°
  - angle between rays (+y, 0) and (+x, 0) is  90°, π/2
  - angle between rays (-x, 0) and (+x, 0) is 180°, π
  - angle between rays (-y, 0) and (+x, 0) is 270°, 3π/2
  - angle between rays (+x, 0) and (+x, 0) is 360°, 2π
- 4 quadrants (again):
  - I     0° -  90°
  - II   90° - 180°
  - III 180° - 270°
  - IV  270° - 360°


## Vectors in CCS

Scalaras have magnitude, vectors have magnitude and direction. Mass (2kg) and speed (10m/s) are scalars. Velocity and dispacement are vectors. The magnitude of velocity is speed and velocity has implied direction (e.g. 10m/s forward for velocity, and -5m for negative dispacement as in 5m backwards).

A Vector is a line segment with a direction, i.e. an arrow. A Vector is defined by two points: an initial point A and an terminal point B. The vector AB (with an arrow above) has a magnitude |AB| and a direction, from A to B. Its magnitude is the length of the line segment. The vector AB has two components: the horizontal component Δx and the vertical component Δy.

If a vector's `v⃗` initial point `A = (x₁, y₁)` and its terminal point `B = (x₂, y₂)`, then its horizontal component is the difference between the x-coordinate of B, `x₂`, and x-coordinate of A, `x₁`, `Δx = x₂ - x₁`. Its vertical component is the difference between the y-coordinate of B, `y₂`, and y-coordinate of A, `y₁`, `Δy = y₂ - y₁`. A vector can also be denoted by its vertical and horizontal components, `v⃗ = (Δx, Δy)`.

```
A = (x₁, y₁)
B = (x₂, y₂)
Δx = x₂ - x₁
Δy = y₂ - y₁
v⃗ = (A, B) = (Δx, Δy) = AB
|v⃗ | = |AB| = m = √(Δx² + Δy²)
```

Vectors
- vector, v⃗ = (A, B) = ⟨a, b⟩ = ⟨x₂ - x₁, y₂ - y₁⟩
- initial point,  A = (x₁, y₁)
- terminal point, B = (x₂, y₂)
- vector components, ⟨a,b⟩ or ⟨Δx,Δy⟩
  - x-component, a = Δx = x₂ - x₁
  - y-component, b = Δy = y₂ - y₁


A point, `p`, is defined as a pair of numbers, `p = (x, y)`.
A point, `p = (x, y)`, has
- x-coordinate, `x`
- y-coordinate, `y`

1. A vector `v⃗` is defined by 2 points, `v⃗ = (p₁, p₂)`
- vector's initial point,  `p₁ = (x₁, y₁)`
- vector's terminal point, `p₂ = (x₂, y₂)`

Expanding each point, vector `v⃗` becomes
- `v⃗ = (p₁, p₂) = ((x₁, y₁), (x₂, y₂))`

2. A vector `v⃗` is also defined by 2 components, `v⃗ = ⟨Δx, Δy⟩`
- horizontal or x-component, `Δx = x₂ - x₁`
- vertical   or y-component, `Δy = y₂ - y₁`

Expanding each component, vector `v⃗` becomes
- `v⃗ = ⟨Δx, Δy⟩ = ⟨x₂ - x₁, y₂ - y₁⟩`


>A vector `v⃗` may be defined in a **pair of points form** as `v⃗ = (I, T)`,
>where its initial point is `I` = `(x₁, y₁)` = `(Iˣ, Iʸ)`,
> and its terminal point is `T` = `(x₂, y₂)` = `(Tˣ, Tʸ)`.
>So, a vector `v⃗` = `(I, T)` = `((x₁, y₁), (x₂, y₂))` = `((Iˣ, Iʸ), (Tˣ, Tʸ))`.

>>A vector `v⃗` may also be defined in **component form** as `v⃗ = ⟨Δx, Δy⟩`.
>>where `Δx` is its x-component, `Δx` = `x₂ - x₁` = `Tˣ - Iˣ` ,
>> and  `Δy` is its y-component, `Δy` = `y₂ - y₁` = `Tʸ - Iʸ` .
>So, a vector `v⃗` = `⟨Δx, Δy⟩` = `⟨x₂ - x₁, y₂ - y₁⟩` = `⟨Tˣ - Iˣ, Tʸ - Iʸ⟩`.


Note: `x₁, x₂, y₁, y₂` above are the same vars in both definitions of vector.

I = (x₁, y₁) = (Iˣ, Iʸ)
- Iˣ = x₁
- Iʸ = y₁
T = (x₂, y₂) = (Tˣ, Tʸ)
- Tˣ = x₂
- Tʸ = y₂


However, when a vector is defined as a pair, `v⃗ = (m, n)`, do we interpret `m` and `n` as points or vector components?

Sure, a point is a *pair of numbers*, while a vector component is a *single number*, but if we only have variables `m` and `n`, as in `v⃗ = (m, n)`, what should we interpret them as?






### Example 1

Q: Determine the *component form* of a vector `v⃗` given its initial point `I = (-1,3)` and terminal point `T = (2,6)`.

We have:
- I = (x₁, y₁) = (-1, 3) ----> x₁ = -1, y₁ = 3
- T = (x₂, y₂) = ( 2, 6) ----> x₂ =  2, y₂ = 6

A vector v⃗ may be defined in a *pair of points form* as
- v⃗ = (I, T) = ((x₁, y₁), (x₂, y₂))
- v⃗ = ((-1,3), (2,6))

A vector v⃗ may also be defined in a *component form* as
- v⃗ = ⟨Δx, Δy⟩ = ⟨x₂ - x₁, y₂ - y₁⟩

So, to determine its component form we find the differences:
- Δx = x₂ - x₁ = 2 - (-1) = 3
- Δy = y₂ - y₁ = 6 - 3 = 3

Thus, the vector `v⃗ = ((-1,3), (2,6))` is `v⃗ = ⟨3, 3⟩` in component form.
- v⃗ = ((-1,3), (2,6))
- v⃗ = ⟨2 - (-1), 6 - 3⟩
- v⃗ = ⟨3, 3⟩


### Example 2

```
v⃗ = ⟨2, 4⟩
A = (-1,3)
B = ?
------------------------
v⃗ = ⟨Δx, Δy⟩ = ⟨x₂ - x₁, y₂ - y₁⟩
v⃗ = ⟨2, 4⟩   = ⟨x₂ - x₁, y₂ - y₁⟩
a = 2
b = 4
------------------------
v⃗ = ⟨2,4⟩ = ⟨(-1,3), b⟩
------------------------
a = Δx = x₂ - x₁
2 = x₂ - (-1)
2 = x₂ + 1
2 - 1 = x₂
x₂ = 1
------------------------
a = Δx = x₂ - x₁
a = Δx = 1 - (-1) = 2
------------------------
b = Δy = y₂ - y₁
4 = y₂ - 3
y₂ = 1
------------------------
b = Δy = y₂ - y₁
b = Δy = 1 - 4 = -3
------------------------
v⃗ = ⟨a,b⟩
v⃗ = ⟨2,4⟩
a = 2
b = 4
x₁ =
x₂ =
y₁ =
y₂ = 

a = Δx = x₂ - x₁ = 
b = Δy = y₂ - y₁ = 


 = ⟨(2,3), (5,7)⟩ = ⟨5-2, 7-3⟩ = ⟨3,4⟩
v⃗ = ⟨3,4⟩
```


---

## Vectors in a Cartesian coordinate system

https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab

A *point* in a planar (2D) Cartesian coordinate system (CCS) is defined by a pair of numbers, `x` and `y`. For true plane both `x, y ∈ ℝ`.

A CCS has the undefined article 'a' because many different possible CSS exist dependeing on the choice of their unit (which is arbitrary; but how would we differentiate them anyway).

A unit circle defines a 2D CCS, a unit sphere defines a 3D CCS.

Vectors are almost always sufficiently defined by their terminal points because, viewed as arrows, they are rooted at the origin. The only time a vector strays from the origin is during vector addition - but the resulting vector is still rooted. Well, then, during subtraction, the resulting vector is not rooted, although it can be re-rooted; numerically, though, both vector addition and vec subtraction result in rooted vectors (at least we consider them to be so).

Since a vector is considered as being rooted, a pair is enough to define it. Also, we can consider and visualize an individual vector as an arrow with its tail at origin and its head at some point A. But when we consider a bunch of vectors it is easier to visualize them only as (their terminal) points.
