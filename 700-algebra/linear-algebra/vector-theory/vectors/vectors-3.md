## Vectors in a Cartesian coordinate system

https://www.youtube.com/playlist?list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab

A *point* in a planar (2D) Cartesian coordinate system (CCS) is defined by a pair of numbers, `x` and `y`. For a plane both x and y are reals, `x, y ∈ ℝ`.


CCS has the undefined article 'a' because many different possible CSS exist depending on the choice of their unit (which is arbitrary; but how would we differentiate them anyway).

A unit circle defines a 2D CCS, a unit sphere defines a 3D CCS.

Vectors are almost always sufficiently defined by their terminal points because, viewed as arrows, they are rooted at the origin. The only time a vector strays from the origin is during vector addition - but the resulting vector is still rooted. Well, then, during subtraction, the resulting vector is not rooted, although it can be re-rooted; numerically, though, both vector addition and vec subtraction result in rooted vectors (at least we consider them to be so).

Since a vector is considered as being rooted, a pair is enough to define it. Also, we can consider and visualize an individual vector as an arrow with its tail at origin and its head at some point A. But when we consider a bunch of vectors it is easier to visualize them only as (their terminal) points.

## Linear combinations

>Defining a vector numerically depends on the choice of the basis (unit) vectors, `î` and `ĵ`.

*3D unit vectors* are `î`, `ĵ` and `k̂` (i-hat, j-hat, k-hat). In 2D CCS, either of two unit vectors, `î` and `ĵ`, defines the radius of the *unit circle*. This is the unit that marks the *ticks* on a CCS, where ticks mark the integers (but the coordinate system plane is nevertheless ℝ²).

>**Linear combination** of two vectors `v⃗` and `u⃗` is given by the formula `av⃗ + bu⃗`, where `a` and `b` are scalars (and `a, b ∈ ℝ`).

A linear combination is the set of all points reachable by vec addition and scaling: we let the constants a and b vary and see which points the vectors resulting from vec addition and scaling can reach - they can reach all, provided the two vecs are *not linearly dependent, i.e. not on top of each other* (or zero).

>**Span** of two 2D vectors, `v⃗` and `u⃗`, is a set of all of their linear combinations.

In case the two vectors are not *linearly dependent*, their span describes the entire plane. If the two vectors are linearly dependent, their span can only descibe a line. In case both vectors are 0, their span only describes a single point (i.e. the origin).

In case of two 3D vectors, their span can reach every point in 3D space (provided that all three vecs are not linearly dependent or zero). The span of two 3D vectors is a set of all of their linear combos, `av⃗ + bu⃗ + cw⃗`.

>(technical definition) A **basis of a space** is a set of *linearly independent* vectors that *span* that entire space.



## Unit vectors

https://www.youtube.com/watch?v=k7RM-ot2NWY&list=PLZHQObOWTQDPD3MizzM2xVFitgF8hE_ab&index=2

In the xy-coordinate system, there are two very special vectors: the one pointing towards the positive end of the x-axis and with length 1, denoted `î` and commonly pronounced "i-hat", i.e. *the unit vector in the x-direction*; and the one pointing towards the positive end of the y-axis, with length 1, denoted by `ĵ`, called "j-hat" or *the unit vector in the y-direction*.

Think of a coordinate `(x, y)` as a scalar, that is, as if each coordinate stretches or squishes vectors. Think of the x-coordinate of vector `v = (3,-2)` as a scalar that scales `î`, stretching it by a factor of 3, and the y-coordinate as a scalar that scales `ĵ`, flipping it and stretching it by a factor of 2. In this sense, the vectors that these coordinates describe is the sum of two scaled vectors, `(3)î + (-2)ĵ` i.e. `3î - 2ĵ`. This idea of adding together two scaled vectors turns out to be a very important concept.

>Together, the two unit vector î and ĵ are called **the basis of a coordinate system**.

What this basically means is that, when you think about coordinates as scalars, the basis vectors are what those scalars actually scale.

By framing our coordinate system in terms of the two special basis vectors, an issue is raised: We could have chosen different basis vectors and still gotten a completely different, yet reasonable, coordinate system.

For example, take two arbitrary vectors and consider all the different vectors that you can get by choosing two scalars, then using each scalar to scale one of the vectors, then adding together the result. Which two-dimensional vectors can we reach by altering the choices of scalars? All of them!

A new pair of basis vectors like this still gives us a valid way to go back and forth between pairs of numbers and two-dimensional vectors, but the association is definitely different from the one we get using the more standard basis of i-hat and j-hat. Describing the exact relationship between different coordinate systems is explored later, but for right now, let's appreciate the fact that any time we describe vectors numerically, their definition depends on the implicit choice of the actual *basis vectors*.

Any time we scale two vectors and then add them, we are doing what is called a **linear combination** of those two vectors.

>Scaling and adding vectors, `av⃗ + bu⃗`, constitutes a *linear combination*.
(where `a` and `b` are scalars)

The term "linear" here perhaps comes from the fact that if we fix one of the scalars and let the other vary, the tip of the resulting vector draws a straight line.

If we let both scalars vary and consider every possible vector we get, there are 3 things that can happen: for most pairs of vectors, we'll be able to reach every possible point in the *plane*; i.e. every 2D vector is within our grasp. However, in the case where our two original vectors happen to line up, the tip of the resulting vector is limited to just one single *line* that passes through the origin. In the case both vectors are zero, we'd be stuck at the origin *point*.

>The set of all possible vectors that we can reach with a linear combination of a given pair of vectors is called the **span** of the two vectors.

The *span* of v⃗ and u⃗ is the set of all their linear combinations, `av⃗+bu⃗`.

Restating, the span of most pairs of 2D vectors is all vectors of 2D space; except when they line up, then their span is all vectors whose tip sits on a certain line.

Since linear algebra revolves around vector addition and scaling (vector multiplication), the span of two vectors is a way of asking:
>What are all the possible vectors we can reach using only the fundamental vector operations, i.e. vector addition and scalar multiplication?

The idea of span gets more interesting if we think about vectors in 3D space. If we take two vectors in 3D space that are not pointing in the same direction, what does it mean to take their span? Their span is the collection of all possible linear combinations of those two vectors, meaning all possible vectors you get by scaling each of the two of them in some way, and then adding them together. You can imagine turning two dials to adjust the two scalars defining the linear combination, adding the scaled vectors and following the tip of the resulting vector. That tip will trace out a flat sheet (plane), cutting through the origin of the 3D space. This flat sheet is the span of the two vectors, or more precisely, *the set of all possible vectors whose tips sit on the flat sheet is the span of our two vectors*. 

What happens if we add a third vector and consider the span of all three? A linear combination of 3 vectors is defined similarly as it is for two; we choose 3 different scalars, scale each vector, and then add the results.

`av⃗ + bu⃗ + cw⃗`

The span of these 3 vectors is the set of all possible linear combinations. Two different things could happen here: In the inprobable case the third vector is sitting on the span of the first two, then the span doesn't change - we are trapped on the same flat sheet; adding a scaled version of the third vector to the linear combination of the first two does not unlock access to any new vectors. In the very probable case that the third vector is not sitting on the span of those first two, then, since it is pointing in a distinct direction, it unlocks access to every possible 3D vector. We can think about this that as we scale that third vector, it moves around the span sheet of the first two vectors sweeping it through the entire 3D space. Another way to think about this is that we are making full use of the three varying scalars to access the full three dimensions of space.

In the case when the third vector is sitting on the span of the first two, or in the case where two vectors line up, the term that describes that at least one of these vectors is redundant (i.e. not adding anything to the span) is *linearly dependent*. When we have multiple vectors and the removal of (at least) one does not affact the span, we say that they are linearly dependent. In other words, one of the vectors can be expressed as a linear combination of the others since it is already in the span of the others. On the other hand, if each vector contributes a new dimension to the span, we say that they are *linearly independent*.

Vectors `v⃗`, `u⃗` and `w⃗` are linearly independent iff `∀ab. v⃗ ≠ au⃗ + bw⃗`.

>The **basis of a vector space** is a set of *linearly independent* vectors that *span* that entire space.
