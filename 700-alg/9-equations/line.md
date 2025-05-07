# Line

In the Eucidean plane, a *point* is a dimensionless geometric entity, living entirely in 0D space. Extending a point along an axes creates a *line*, a 1D entity which has an infinite length but no width. A line contains an infinite number of points although only two distinct ones are sufficient to define it. From an arbitrary point on the line, the line stretches infinitely in both directions (in this 1D space). Extending a line in the axes perpendicular to the one a point was extended, creates a *plane*, a 2D entity hosting 2D shapes like squares, rectangles, circles, rhombi, quadrilaterals, equilaterals, and many others, along with many other interesting geometric entities like rays, line segments, angles, etc.

Elementary dimensions
- 0D point
- 1D line
- 2D plane (square)
- 2D space (cube)

The definitions of a line come in several forms:
- slope-intercept, `y = mx + b`
- standard form, `ax + by = c`
- point-slope, `y - y₁ = m(x - x₁)`

The standard form is an instance of a linear equation of two variables in 1D space.


In the case of a linear equation with two variables, each solution may be interpreted as the Cartesian coordinates of a point of the Euclidean plane. The solutions of a linear equation form a *line* in the Euclidean plane, and, conversely, every line can be viewed as the set of all solutions of a linear equation in two variables. This is the origin of the term linear for describing this type of equation.

A linear equation in two variables can be written as `ax + by + c = 0`, where `a` and `b` are not both 0. With `a,b ∈ ℝ`, it has infinitely many solutions.

If b ≠ 0, the equation `ax + by + c = 0` may be interpreted as a linear equation in a single variable `y` for every value of `x`. It has therefore a unique solution for `y`, which is given by `y = −ax/b − c/b`. This defines a function of the form `y = mx + b`, where `m` is the *slope* and `b` is *y-intercept*. The graph of the function `y = −ax/b − c/b` is a line with slope `−a/b` and y-intercept is `−c/b`.

Functions whose graph is a line are generally called *linear functions* in the context of Calculus. However, in linear algebra, a linear function is a function that maps a sum to the sum of the images of the summands. So, for this definition, the above function is linear only when c = 0, that is when the line passes through the origin. To avoid confusion, the functions whose graph is an arbitrary line are often called *affine functions*, and the linear functions such that c = 0 are often called *linear maps*.

## Geometric interpretation

Each solution `(x, y)` of a linear equation `ax+by+c=0` may be viewed as the Cartesian coordinates of a point in the Euclidean plane. With this interpretation, all solutions of the equation form a line, provided that `a` and `b` are not both 0. Conversely, every line is the set of all solutions of a linear equation.

The phrase "linear equation" takes its origin 
in this correspondence between lines and equations: 
>a linear equation in two variables is an equation whose solutions form a line.

* if `b ≠ 0`, the line is the graph of the function of `x` 
  (that has been defined in the preceding section)
* if `b = 0`, the line is a vertical line (that is, a line parallel to the y-axis) of equation `x = −c/a`, which is not the graph of a function of `x`
* if `a ≠ 0`, the line is the graph of a function of `y`
* if `a = 0`, one has a horizontal line of equation `y = −c/b`.

## Equation of a line

There are various ways of defining a line:
(a linear equation of the line is given in each case)
- slope-intercept form (gradient-intercept form)
- point-slope form
- intercept form
- two-point form
- determinant form


## Horizontal line

When the slope is 0, the line equation `y = mx + b` becomes `y = 0x + b`, which amounts to `y = b` that defines a constant function. So, no matter the input `x`, the output is always `b`, meaning the line will be parallel to the x-axes and intercepting y-axes at `b`. If `b` is also 0, the line would be incident with the x-axes.

The interpretation of a line that is parallel to the x-axes, while being some value `b` "high" (above x-axes) is that one dimentsion (quantity) changes, while the other stays constant (e.g. time changes, while distance stays constant). When the line is incident to the x-axes, guess time brings no change.

`y = 0x + b` i.e. `y = b`

## Vertical line

Obtaining a vertical line is impossible, because that would imply that the equation is not a function (it would fail the vertical test with only a single input (a single x-coordinate) that corresponds to many different y-coordinates).

`y = mx + b` with `m → ∞`

At `m = 20`, the line is still at least some 10ᵒ shy from being parallel to the y-axes.

The interpretation of this case makes little sense (e.g. it would be the case of distance ever increasing but time standing still).

## Forward-slash slope

The lines with the most reasonable slopes look like forward slashes (`/`), relating the two quantities (dimensions) in reasonable manner.


## Parallel lines

Given a line, `y = mx + b`, a line parallel to it must have *the same slope*, like `y₂ = mx₂ + b₂`. The y-interpcet (`b`) is unimportant.

## Perpedicular lines

To be perpedicular to a given like `y = mx + b`, the other line must have the slope that is the *opposite reciprocal*, e.g. `m = 8` then `m₂ = -1/8`, and if `m = -3`, then `m₂ = 1/3`.
