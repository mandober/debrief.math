# Math :: Algebra :: Linear Algebra :: Vector theory :: Vector


### Vector addition
Vector addition is just a component-wise pair addition. If `v = (v1, v2)` and `w = (w1, w2)` then `v + w = (v1 + w1, v2 + w2)`; it is the vector drawn as an arrow from the tail of `v` to the head of `w`.

>v + w = w + v

```
↑↖                   ←────────────↑
│   ⟍                  ⟍   v       │
│      ⟍                   ⟍         │w
│w      ⟍ v+w           w+v⟍     │
│          ⟍                   ⟍   │
│     v      ⟍                  ⟍│
←───────────────

v + w = w + v
```

### Vector subtraction
Vector subtraction is vector addition with the direction of one of the vectors reversed, similar to how plain subtraction can be expressed as addition.

If `v = (v1, v2)` and `w = (w1, w2)` then `v - w` = `(v1 - w1, v2 - w2)`; it is the vector drawn as an arrow from the head of `w` to the head of `v`. That is, wrt `v - w`, the resulting vector goes from the *head of the subtrahend*, `w`, to the *head of the minuend*, `v`.

>v - w = v + (-w) = -w + v

```
↑⟍                    ↑↖
│   ⟍                  │   ⟍
│      ⟍               │      ⟍
│w      ⟍ w-v          │w      ⟍ w-v
│          ⟍           │          ⟍
│     v      ↘          │     v      ⟍
───────────────→      ←───────────────

w - v             =         -v + w
```


### Scalar multiplication
If `v = (v1, v2)` and `c` is a real number, then `cv = (cv1, cv2)`; it is the vector that points in the same direction as `v`, but is `c` times as long. More preciselym it is scaled by `c`, which may extend orr shrink it, or even change its direction in case `c` is a negative number.


## Properties of Vector Operations

Let `v,w,x ∈ ℝⁿ` be vectors, and let `c,d ∈ ℝ` be scalars, then we have laws:
- v + w = w + v                (commutativity)
- (v + w) + x = v + (w + x)    (associativity)
- c(v + w) = cv + cw           (distributivity)
- (c + d)v = cv + dv           (distributivity)
- v + 0 = v = 0 + v            (identity)
- −v + v = 0 = v + (-v)        (inverse)
- c(dv) = (cd)v                ("associativity" of vec-sc-mul and sc-mul)


* "Associativity" of vector-scalar and scalar-scalar multiplication:

```
if v = (-2, -5) then

(3 ⨯ 4) ⨯ v        = 3 ⨯ (4 ⨯ v)
(3 ⨯ 4) ⨯ ⟨-2, -5⟩ = 3 ⨯ (4 ⨯ ⟨-2, -5⟩)
     12 ⨯ ⟨-2, -5⟩ = 3 ⨯ ⟨-8, -20⟩
        ⟨-24, -60⟩ = ⟨-24, -60⟩
```









---

## In physics, Euclidean vectors...
In physics, Euclidean vectors are used to represent physical quantities that have both magnitude and direction, but are not located at a specific place, in contrast to *scalars*, which have no direction. For example, velocity, forces and acceleration are represented by vectors.

A displacement of 4 meters could be denoted by `4 m` or `−4 m`, where a negative number represents the displacement in the opposite direction; the magnitude would be 4 m regardless of the direction.

Velocity is represented by a vector and the magnitude of that vector is called speed. A velocity like `10 m/s` implies a direction, which, since the number is positive could mean the forward motion. Then, a reverse motion with the same speed could be denoted by `-10 m/s` (this denotation is ambiguous because a positive number can mean both velocity and speed, e.g. `1 m/s`, in which case the context is obliged to resolve this, or indicate the direction by some other means).

Vectors can represent any quantity that has magnitude, has direction, and which adheres to the rules of *vector addition*. For example, velocity, the magnitude of which is speed.

Vectors also describe many other physical quantities, such as
- linear displacement
- displacement
- linear acceleration
- angular acceleration
- linear momentum
- angular momentum

Examples of quantities that have magnitude and direction, but fail to follow the rules of vector addition, are *angular displacement* and *electric current*. Consequently, these are not vectors.


In the Cartesian coordinate system, a *bound vector* can be represented by identifying the coordinates of its initial and terminal point. In Cartesian coordinates, a *free vector* may be thought of in terms of the corresponding bound vector whose initial point is the *origin*, `O = (0,0)`. The free vector is then completely determined by the *coordinates of that bound vector's terminal point*. Thus, the free vector represented by `(1,0)` is a vector of *unit length* - pointing along the direction of the positive x-axis. A vector `(3,4)` is defined by the initial point `(0,0)` and its terminal point `(3,4)`.


This coordinate representation of free vectors allows their algebraic features to be expressed in a convenient numerical fashion. For example, the sum of the two free vectors (1,2,3) and (−2,0,4) is the free vector (−1,2,7)    
`(1,2,3) + (−2,0,4) = (1 − 2, 2 + 0, 3 + 4) = (−1,2,7)`

>The sum of two free vectors: `(x, y, z) + (a, b, c) = (x + a, y + b, z + c)`

>The diff of two free vectors: `(x, y, z) + (a, b, c) = (x - a, y - b, z - c)`

## Vector normalization

**Unit vector** is vector of magnitude 1. The magnitude of a unit vector falls on the *unit circle*. The unit vector is denoted by *CIRCUMFLEX* above a letter, `v̂` or `û`.

The unit vector `v̂` has a length of 1. Since it describes a vector's direction (without regard to its length), it is useful to always have the unit vector readily accessible.

To normalize a vector is to take a vector of any length and, keeping its direction, change its length to 1, turning it into a unit vector.

For any given vector `u⃗`, its unit vector, `û`, is calculated by:
- vector `u⃗` is defined by its terminal point, B = `(x,y)`
- its initial point is the origin A =(0,0)
- magnitude of the vector u⃗ is `m = ‖u⃗ ‖` (‖ is absolute value)
  - magnitude of u⃗ is calculated by Pythagora's theorem, `m = √(x² + y²)`
  - m = √(3² + 4²), m = 5
- unit vector `û` of the vector `u⃗` is `û = u⃗ / m`
  - to calculate it, we need to make `m = 1` by dividing both sides of    
    `m = √(x² + y²)` by `m`, and we get:
  - `1 = ((x/m)², (y/m)²)`


>In other words, to normalize a vector, divide each component by its magnitude.

This is pretty intuitive. Say a vector is of length 5. Well, 5 divided by 5 is 1. So, looking at the right triangle, we then need to scale the hypotenuse down by dividing it with 5. In that process the sides shrink, divided by 5 as well.

And since the hypotenuse is 1 and falls on the unit circle, that means that the sum of the coordinate components equals 1, e.g. going from `5 = 3 + 4` to `1 = 0.36 + 0.64`.

```js
// some points
const A = Point(0,0)
const B = Point(3,4)
// projection of point B onto the x-axis
const C = Point(3,0)
// projection of point B onto the y-axis
const C′ = Point(0,4)

// vector v is sufficiently defined by a single point
// because its initial point is the origin
const v = Vec(3,4)
// The point B becomes v's terminal point.
// v's initial point is A, the origin, (0,0)
// v's terminal point is B, (3,4)

// We can construct a right triangle by either
// projecting the point B onto the x-axis, or
const C = Point(3,0)
// projecting the point B onto the y-axis
const C′ = Point(0,4)
// In either case, we now have a right angle at C or C′
// so we can calculate v's magnitude, i.e. hypotenuse
const m = Math.hypot(x, y)
// m² = x² + y²
const m = Math.hypot(3, 4)
// 5 = 3 + 4, so m = 5

// Normalizing the vector v means shrinking its magnitude so its length
// becomes 1 (and so it falls on the unit circle).
// m is now 5 and for m to become 1, we need to divide both sides by it:
m   = √(x² + y²)
m/m = √(x² + y²) / m
1   = √(x² + y²) / √m²
1   = √((x² + y²) / m²)
1²   = √((x² + y²) / m²)²
1   = (x² + y²) / m²
1   = x² / m² + y² / m²
1   = (x / m)² + (y / m)²
// and that is the formula.

// To normalize a vector, v, defined by (x,y), such that we obtain a unit vector, v̂, which has the same direction as v, but a magnitude of 1:
const v⃗ = Vec(3, 4)         // m = 5 = √(3² + 4²)     = √(9 + 16)      = √25
const v̂ = Vec(0.36, 0.64)   // m = 1 = √(0.6² + 0.8²) = √(0.36 + 0.64) = √1
```

As a method on the `Vec` class, vector normalization, `unit`, could be defined:

```js
mag = () => Math.hypot(this.x, this.y)

unit = () => this.mag() === 0
  ? new Vec(0, 0)
  : new Vec(this.x / this.mag(), this.y / this.mag())
```

That is, if the magnitude is 0, return a new vector (0, 0). Otherwise, return a new a new vector defined by dividing each component by the magnitude.
