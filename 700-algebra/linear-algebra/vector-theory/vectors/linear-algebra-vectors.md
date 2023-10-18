# Linear algebra :: Vectors

Following the playlist
https://www.youtube.com/playlist?list=PLTd6ceoshprfZs1VIzGHDt-MYgVewC5tc

- 1. Vector
  - free or unlocalized vector
  - fixed or localized vector
  - 2D vector space, ℝ²
  - 3D vector space, ℝ³
  - vector spaces, ℝⁿ
  - vector coordinates
  - vector equality
  - vector standard position
  - displacement
  - zero vector
  - row vector
  - column vector
  - orthogonal vectors
  - bra-ket notation
- 2. Magnitude of a vector
  - magnitude of a vector
  - Pythagorean theorem
  - unit vector
  - magnitude of a 2D vector
  - magnitude of a 3D vector
  - magnitude of a nD vector
- 3. Vector operations
  - coordinate basis
  - vector addition
    - the parallelogram law of vector addition
  - vector subtraction
  - scalar multiplication
- 4. Scalar multiplication
- 5. Dot product of vectors
  - dot product
  - inner product
  - scalar product
  - orthogonal projection
- 6. Angle between vectors


## 1. Vector

A vector is a *n-tuple of numbers*, where `n` can be any number, but we'll start with `n = 2` since we can interpret 2D vectors geometrically.

The *coordinates* (or entries) of a vector only tell us how far the vector stretches in the x and y directions (not where it is located in space).

Usually, the actual position of a vector is not important. When this is the case, the vector is called a **non-localized vector** or **free vector**. When the position is important, a vector is called a **localized vector** or **fixed vector**. A force acting on a rigid object is a fixed vector; when the force is applied the object may move. A fixed vector has a magnitude and a direction, but the exact place where the force is applied may affect how the object moves.

>Any two free vectors with the same length that are parallel to each other can be considered identical.

More formally, two **vectors are equal** iff they have
- the same entries in corresponding component pair, i.e. if v = (x, y) and u = (a,b) then v = u iff x = a and y = b.
- the same magnitude and the same direction

Although their location in a coordinate system is unimportant, in order to compare them more easily, vectors are usually rooted at the origin. This is called the **standard position** - it is when a vector has its tail at the origin. Thus, only a pair of numbers is needed to describe a vecto: we only need its terminal point since its initial point is the origin. This pair of numbers represents *displacement*: some distance on the x-axis, along with some distance on the y-axis. Therefore, vectors represent displacement (not location).

Such a pair of numbers is called a *coordinate*. Actually a coordinate contains two components: the x and y components or the x and y coordinates. A vector is then defined by a pair of numbers, i.e. by a coordinate point `(x, y)`. The order of the coordinate components matters: (2, 3) ≠ (3, 2). For this reason, 2D vectors are sometimes called ordered pairs.

* The *zero vector* is denoted by `0⃗ = O⃗ = (0, 0)`
* The set of all 2D vectors is denoted by `ℝ²`
* The set of all 3D vectors is denoted by `ℝ³`
* The set of all n-dimensinal vectors is denoted by `ℝⁿ`
* The `ℝⁱ` is called a vector space.

### Bra-ket notation

An important notation used in quantum mechanics and quantum computing is the so-called *bra-ket notation* invented by the english physicist Paul Dirac.

A a *bra* is a *row vector* whose name is written within an opening angle bracket and a vertical bar, `⟨v|`.

A *ket* is a *column vector* whose name is written within a vertical bar and the closing angle bracket, `|v⟩`.

```
⟨v| = [3, 2]  bra

      ⎡3⎤
|v⟩ = ⎣2⎦     ket
```

This notation is used when working with vectors that represent the angular momentum of subatomic particles, otherwise known as spin.

### Vector space

Every possible vector in a plane is a member of the *vector space* called `ℝ²`. Each vector is a list of real numbers, and the superscipt 2 in ℝ² indicates the number of dimensions or the arity (number of components) of each tuple. There is an infinite number of vectors possible in a vector space because there is an infinite number of different lengths possible, pointing in an infinite number of different directions. However, two vector with the same magnitude, pointing in the same direction are the same. Any two free vectors with the same length that are parallel to each other can be considered identical.

When it comes to geometric vectors, the two numbers (coordinate components) tell us only the change in x and y displacement from the start of the arrow, not where the start of the arrow actually is. We can think of each free vector as having its own coordinate system, but different vectors are easier to compare when they are rooted at the origin of the same coordinate system, i.e. when they are placed in the *standard position*.

### Orthogonal vectors

Vectors with a small angle between them are similar to each other: the smaller the angle the greater the similarity. Vectors with a large angle between them can are dissimilar to each other: the bigger the angle the greater the difference. Vectors at right angles to each other, or to use the correct terminology, *orthogonal vectors*, are theoretically unrelated. The level of similarity (or dissimilarity) between two vectors can be calculated by multiplying vectors together in a special way (normalize them first then multiply them). We can use trigonometric functions to calculate the angle between two vectors.

## 2. Magnitude of a vector

  - magnitude of a vector
  - Pythagorean theorem
  - unit vector
  - magnitude of a 2D vector
  - magnitude of a 3D vector
  - magnitude of a nD vector


## 3. Vector operations

In order to perform useful calculations with vectors they need to be of the same type; in other words, they must represent the same thing and the units must be the same.

When adding vectors together it is useful to imagine them rooted within the same coordinate system. Such a common coordinate system is called a **coordinate basis**.

Vector addition is defined in terms of the addition of the corresponding vector components. The *commutative property or the parallelogram law of vector addition* can be visualized by placing the tail of one vector at the head of the other. The result is the same no matter how we do it, i.e. `v + u = u + v`.

Isaac Newton had discovered that if an object with a particular mass is accelerating in a particular direction, then we can calculate the minimum force required to stop it (or the force it will exert when it hits something) by multiplying its mass by its acceleration, `F = m a⃗`. The mass of an object is a scalar quantity, whereas acceleration and force are vectors. Therefore, doubling the mass of an object (given some acceleration) doubles the stopping force required.

```hs
newtype Vec a = Vec { coord :: (a, a) }

type Point = Vec

origin :: Vec Int
origin = Vec (0, 0)

x_axis :: Int -> Vec Int
x_axis y = Vec (0, y)

y_axis :: Int -> Vec Int
y_axis x = Vec (x, 0)



add :: Num a => Vec a -> Vec a -> Vec a
add (Vec (x₁, y₁)) (Vec (x₂, y₂)) = Vec (x₁ + x₂, y₁ + y₂)

sub :: Num a => Vec a -> Vec a -> Vec a
sub (Vec (x₁, y₁)) (Vec (x₂, y₂)) = Vec (x₁ - x₂, y₁ - y₂)

mul :: Num a => Vec a -> a -> Vec a
mul (Vec (x, y)) c = (Vec (c * x, c * y))

dot :: Num a => Vec a -> Vec a -> a
dot (Vec (x₁, y₁)) (Vec (x₂, y₂)) = x₁ * x₂ + y₁ * y₂
```


## 4. Scalar multiplication

Any scalar s ∈ ℝ can be used to scale a vector. If s is negative the vector reverses direction.

## 5. Dot product of two vectors

The dot product of two vectors (aka *inner product* or *scalar product*) results in a scalar quantity which indicates how similar are they; how much of the same direction two vectors have in common. Dot product measures the angle between two vectors.

```hs
dot :: Num a => Vec a -> Vec a -> a
dot (Vec (x₁, y₁)) (Vec (x₂, y₂)) = x₁ * x₂ + y₁ * y₂
```

The dot product can be visualised by projecting one vector onto the other, i.e. using the so-called *orthogonal projection*.
