# Essence of Linear Algebra :: 3. Linear transformations and matrices

https://www.youtube.com/watch?v=kYB8IZa5AuE&list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab&index=3

## 3.1 Linear transformation

Transformation is essentially a function; it is something that takes in inputs and spits outputs for each input. In linear algebra, transformations take a vector and produce another vector.

A way to understand functions of vectors is to consider movement. If a transformation takes an input vector to an output vector, we imagine that the input vector is moving over to the output vector (touching tips). To understand the transformation as a whole, we imagine every possible input vector move over to its corresponding output vector, but with vectors represented as points (because they are rooted at origin, their initial point is implicit). That way, a transformation taking every input vector to an output vector is like every point in space being moved to some other point.

Visually, *a transformation is linear* if it has two properties: all lines must remain lines, without getting curved, and the origin must remain in place. In general, grid lines remain parallel and evenly spaced.

An example of a simple linear transformations is a rotation about the origin.

How can transformations be described numerically; what formula do we give the computer, so that if we input the coordinates of a vector, we get back the coordinates of where that vector lands. It turns out that all we need is where the two *basis vectors*, `î` and `ĵ`, land; everything else follows from that.

For example, consider the vector `v⃗ = (-1, 2) = (-1î + 2ĵ)`.

If we run some transformation and follow where all 3 of vectors go (two unit vectors and some given vec `v`), the property that grid lines must remain parallel and evenly spaced has an important consequence: the place where `v` lands will be -1 times the vector where î landed, plus 2 times the vector where ĵ landed.

In other words, it started off as a certain linear combination of î and ĵ and it ends up as that same linear combination of where those two vectors landed. This means we can deduce where v lands based only on where î and ĵ land.

* Linear independence | Vectors and spaces | Linear Algebra | Khan Academy
https://www.youtube.com/watch?v=Alhcv5d_XOs&list=PLFD0EB975BA0CC1E0&index=17

For the transformation shown here we can read off that `î` lands on the coordinates `î' = (1,-2)`, and ĵ lands on the x-axis over at the coordinates `ĵ' = (3, 0)`.

This means that the vector represented by `(-1)î' + 2ĵ'` ends up at `(-1)(1, -2)+ 2(3, 0)`. Adding that all together, you can deduce that it has to land on the vector `(5, 2)`.

Again, initially we have the usual unit vectors, `î = (1, 0)` and `ĵ = (0, 1)`. And we have a vector, `v = (-1, 2)`, which can also be expressed in terms of the unit vectors as `v = -1î + 2ĵ` since

```
î = (1, 0)
ĵ = (0, 1)
v = (-1, 2)

v = -1î + 2ĵ
v = -1(1, 0) + 2(0, 1)
v = (-1, 0) + (0, 2)
v = (-1, 2)
```

After the transformation, î lands at î' = (1,-2) and ĵ at ĵ' = (3, 0). From this we can calcluate where the vector v lands, as v' since it will be defined by the same expression, `v = -1î + 2ĵ`, i.e. by `v' = -1î' + 2ĵ'`

```
î' = (1,-2)
ĵ' = (3, 0)
v' = -1î' + 2ĵ'
v' = -1(1,-2) + 2(3, 0)
v' = (-1, 2) + (6, 0)
v' = (5, 2)
```

So, the vector v lands at (5, 2).


This gives us a technique to deduce where any vectors land, so long as we have a record of where î and ĵ each land, without needing to watch the transformation itself.

In general, knowing the coordinates of `î'` and `ĵ'`, we can calculate the coordinates of `v'`, i.e. the coordinates of the vector `v` after the transformation that moves `î` to `î'` and `ĵ` to `ĵ'`.

```
î' = (xⁱ, yⁱ)
ĵ' = (xʲ, yʲ)
v' = (xᵥ, yᵥ) = ?
v' = xᵥ    î'   + yᵥ    ĵ'
v' = xᵥ (xⁱ, yⁱ) + yᵥ (xʲ, yʲ)
v' = (xᵥ xⁱ, xᵥ yⁱ) + (yᵥ xʲ, yᵥ yʲ)
v' = (xᵥ xⁱ + yᵥ xʲ, xᵥ yⁱ + yᵥ yʲ)
```

The formula is: `v' = (xᵥ xⁱ + yᵥ xʲ, xᵥ yⁱ + yᵥ yʲ)`, where `xᵥ` and `yᵥ` are the initial coordinates of vector `v`, and `î'=(xⁱ, yⁱ)` and `ĵ'=(xʲ, yʲ)`, i.e. the coordinates of the final position of î and ĵ.

What all of this is saying is that a 2D linear transformation is completely described by just 4 numbers:
- the 2 coordinates where î lands, î' = (xᵢ, yᵢ)
- the 2 coordinates where ĵ lands, ĵ' = (xⱼ, yⱼ)

It is common to package these coordinates into a 2-by-2 grid of numbers, called a *2-by-2 matrix*, where you can interpret the columns as the 2 special vectors where î and ĵ each land.

```
     ⎡ xᵢ ⎤        ⎡ xⱼ ⎤    ⎡ xᵢ xⱼ ⎤
î' = ⎣ yᵢ ⎦   ĵ' = ⎣ yⱼ ⎦    ⎣ yᵢ yⱼ ⎦


where î lands
  ↓
⎡ xᵢ xⱼ ⎤
⎣ yᵢ yⱼ ⎦
    ↑
where ĵ lands
```

If we are given a 2-by-2 matrix describing a linear transformation, and some specific vector, here v=(5,7), and we want to know where that linear transformation takes that vector, we can take the coordinates of the vector multiply them by the corresponding columns of the matrix, then add together what we get.

```
⎡  3 2 ⎤ ⎡5⎤    ⎡  3 ⎤    ⎡ 2 ⎤   ⎡ 15⎤   ⎡14⎤   ⎡ 29⎤
⎣ -2 1 ⎦ ⎣7⎦ = 5⎣ -2 ⎦ + 7⎣ 1 ⎦ = ⎣-10⎦ + ⎣ 7⎦ = ⎣ -3⎦
```

In general,

```
⎡a b⎤ ⎡x⎤    ⎡a⎤    ⎡b⎤   ⎡ax⎤   ⎡by⎤   ⎡ax + by⎤
⎣c d⎦ ⎣y⎦ = x⎣c⎦ + y⎣d⎦ = ⎣cx⎦ + ⎣dy⎦ = ⎣cx + dy⎦
```

We can even define this as *matrix-vector multiplication*, where the matrix is on the left of the vector.

```
⎡a b⎤ ⎡α  β⎤  
⎣c d⎦ ⎣γ  δ⎦ =

 ⎡a⎤    ⎡b⎤    ⎡a⎤    ⎡b⎤  
α⎣c⎦ + γ⎣d⎦ ⨯ β⎣c⎦ + δ⎣d⎦ =

⎡α∙a⎤   ⎡γ∙b⎤   ⎡β∙a⎤   ⎡δ∙b⎤  
⎣α∙c⎦ + ⎣γ∙d⎦ ⨯ ⎣β∙c⎦ + ⎣δ∙d⎦ =

⎡α∙a + γ∙b   β∙a + δ∙b⎤
⎣α∙c + γ∙d   β∙c + δ∙d⎦
```

Thus, we can derive *matrix-matrix multiplication* from matrix-vector multiplication.

```
⎡a b⎤ ⎡α β⎤   ⎡a∙α + b∙γ   a∙β + b∙δ⎤
⎣c d⎦ ⎣γ δ⎦ = ⎣c∙α + d∙γ   c∙β + d∙δ⎦


⎡a b⎤ ⎡α β⎤   ⎡α∙a + γ∙b   β∙a + δ∙b⎤
⎣c d⎦ ⎣γ δ⎦ = ⎣α∙c + γ∙d   β∙c + δ∙d⎦

⎡a b⎤ ⎡α β⎤     ⎡a⎤   ⎡b⎤   ⎡a⎤   ⎡b⎤   ⎡α∙a + γ∙b   β∙a + δ∙b⎤
⎣c d⎦ ⎣γ δ⎦ =  α⎣c⎦+ γ⎣d⎦  β⎣c⎦+ δ⎣d⎦ = ⎣α∙c + γ∙d   β∙c + δ∙d⎦

              ⎡α∙a + γ∙b   β∙a + δ∙b⎤
            = ⎣α∙c + γ∙d   β∙c + δ∙d⎦


⎡1 2⎤ ⎡5 6⎤   ⎡5∙1 + 7∙2   6∙1 + 8∙2⎤
⎣3 4⎦ ⎣7 8⎦ = ⎣5∙3 + 7∙4   6∙3 + 8∙4⎦
```

### Rotation

If we rotate the space by 90° counterclockwise, then î lands on the coordinates (0, 1) and ĵ lands on the coordinates (-1, 0). So the matrix we end up with has columns (0, 1), (-1, 0).

```
⎡1  0⎤
⎣0  1⎦ Coordinates of the unit vectors
 î  ĵ
⎡0 -1⎤
⎣1  0⎦ Coordinates of the unit vectors after the 90° ccw rotation
```

To figure out what happens to any vector after the 90° ccw rotation, we can just multiply its (original) coordinates by this matrix.

```
 î' ĵ'  v
⎡0 -1⎤ ⎡x⎤    ⎡0⎤    ⎡-1⎤   ⎡0⎤   ⎡-y⎤   ⎡-y⎤
⎣1  0⎦ ⎣y⎦ = x⎣1⎦ + y⎣ 0⎦ = ⎣x⎦ + ⎣ 0⎦ = ⎣ x⎦
```

So, a vec `v = (x, y)`, after the 90° ccw rotation ends up at `v' = (-y, x)`.

For example, a vec v=(1,2), ends up at v'=(-2,1).

### Shear

In the transformation called *shear*, î remains fixed so the first column of the matrix is (1, 0), but ĵ moves over to the coordinates (1,1), which become the second column of the matrix.

```
 î' ĵ'  v
⎡1  1⎤ ⎡x⎤    ⎡1⎤    ⎡1⎤   ⎡x⎤   ⎡y⎤   ⎡x+y⎤
⎣0  1⎦ ⎣y⎦ = x⎣0⎦ + y⎣1⎦ = ⎣0⎦ + ⎣y⎦ = ⎣ y ⎦
```

So, a vec `v = (x, y)`, after the shear ends up at `v' = (x+y, y)`.

For example, a vec v=(1,2), ends up at v'=(3,2).

### Reversing a transformation


```
 î  ĵ   v
⎡1  0⎤ ⎡x⎤    ⎡a⎤    ⎡c⎤   ⎡xa + yc⎤
⎣0  1⎦ ⎣y⎦ = x⎣b⎦ + y⎣d⎦ = ⎣xb + yd⎦

 î' ĵ'
⎡1  3⎤   ⎡1x + 3y⎤   ⎡ x + 3y⎤
⎣2  1⎦ = ⎣2x + 1y⎦ = ⎣2x +  y⎦
```

What if we want to go the other way around, starting with the matrix, say with columns (1, 2) and (3, 1), and we want to deduce what its transformation looks like? One way to do this is to first move i-hat to (1, 2). Then, move j-hat to (3, 1).

If the vectors that i-hat and j-hat land on are linearly dependent (which means that one is a scaled version of the other), then it means that the linear transformation squishes all of 2D space onto the line where those two vectors sit, also known as the one-dimensional span of those two linearly dependent vectors.


>Importantly, every time you see a matrix, you can interpret it as a certain transformation of space.
