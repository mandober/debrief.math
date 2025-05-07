# Linear equation

https://en.wikipedia.org/wiki/Linear_equation

A linear equation is an equation that may be put in the form

    a₁x₁ + … + aₙxₙ + b = 0

where `x₁, …, xₙ` are the variables (or unknowns), and `b, a₁, …, aₙ` are the coefficients, which are often real numbers.

  ax + d = 0
  ax + by = c (line, std form)
  ax + by + d = 0
  ax + by + cz = 0
  ax + by + cz + d = 0

The coefficients may be considered as parameters of the equation and may be arbitrary expressions, provided they do not contain any of the variables. To yield a meaningful equation, the coefficients are required to not all be zero.

Alternatively, a linear equation can be obtained by equating to zero a *linear polynomial over some field*, from which the coefficients are taken.

The solutions of a linear equation are the values that, when substituted for the unknowns, make the equality true.

In the case of a single variable, there is exactly one solution (provided that `a₁≠0`). Often, the term "linear equation" refers implicitly to this particular case, in which the variable is called *the unknown*.

In the case of *two variables*, each solution may be interpreted as the Cartesian coordinates of a *point* of the *Euclidean plane*.

The solutions of a linear equation form a *line* in the Euclidean plane, and, conversely, every line can be viewed as the set of all solutions of a linear equation in two variables. This is the origin of the term linear for describing this type of equation.

    3x + y = 4
    y + x = 5
    y = 1/2x + 2 or x - 2y = -2

More generally, the solutions of a linear equation in `n` variables form a *hyperplane* (a subspace of dimension `n − 1`) in the Euclidean space of dimension `n`.

Linear equations occur frequently in physics and engineering partly because non-linear systems are often well approximated by linear equations.

This article considers the case of a single equation with coefficients from the field of real numbers, for which one studies the *real solutions*. All of its content applies to *complex solutions* and, more generally, to linear equations with coefficients and *solutions in any field*. For the case of several simultaneous linear equations, see "System of linear equations".

# Contents

- One variable
- Two variables
  - Linear function
  - Geometric interpretation
  - Equation of a line
    - Slope-intercept form or Gradient-intercept form
    - Point-slope form or Point-gradient form
    - Intercept form
    - Two-point form
    - Determinant form
- More than two variables

## One variable

A linear equation in one variable `x` can be written as `ax + b = 0` with `a ≠ 0`. The solution is `x = −ba`.

## Two variables

A linear equation in two variables can be written as `ax + by + c = 0`, where `a` and `b` are not both 0. If `a,b ∈ ℝ`, it has infinitely many solutions.

### Linear function

Main article: Linear function (calculus)
https://en.wikipedia.org/wiki/Linear_function_(calculus)

If `b ≠ 0`, the equation `ax + by + c = 0` may be interpreted as a linear equation in a single variable `y` for every value of `x`. It has therefore a unique solution for `y`, which is given by `y = −ax/b − c/b`. This defines a function of the form `y = mx + b`, where `m` is the *slope* and `b` is the *y-intercept*. The graph of the function `y = −ax/b − c/b` is a line with slope `−a/b` and y-intercept is `−c/b`. The functions whose graph is a line are generally called linear functions in the context of *calculus*.

However, in *linear algebra*,
>A linear function is a function that maps a sum to the sum of the images of the summands.

So, for this definition, the above function is linear only when c = 0, that is when the line passes through the origin. To avoid confusion, the functions whose graph is an arbitrary line are often called **affine functions**, and the linear functions such that c = 0 are often called **linear maps**.

In Euclidean geometry, an *affine transformation* or *affinity* (from the Latin `affinis` meaning "connected with") is a geometric transformation that preserves lines and parallelism, but not necessarily Euclidean distances and angles.

In Linear Algebra, a linear map (also called a linear mapping, linear transformation, vector space homomorphism, or in some contexts linear function) is a mapping V ⟼ W between two vector spaces that preserves the operations of vector addition and scalar multiplication. The same names and the same definition are also used for the more general case of modules over a ring.

### Geometric interpretation

Each solution `(x, y)` of a linear equation `ax+by+c=0` may be viewed as the Cartesian coordinates of a point in the Euclidean plane. With this interpretation, all solutions of the equation form a line, provided that `a` and `b` are not both 0. Conversely, every line is the set of all solutions of a linear equation.

The phrase "linear equation" takes its origin 
in this correspondence between lines and equations: 
>a linear equation in two variables is an equation whose solutions form a line.

* if `b ≠ 0`, the line is the graph of the function of `x` 
  (that has been defined in the preceding section)
* if `b = 0`, the line is a vertical line (that is, a line parallel to the y-axis) of equation `x = −c/a`, which is not the graph of a function of `x`
* if `a ≠ 0`, the line is the graph of a function of `y`
* if `a = 0`, one has a horizontal line of equation `y = −c/b`.

### Equations of a line

There are various ways of defining a line. In the following subsections, a linear equation of the line is given in each case.

#### Slope-intercept form or Gradient-intercept form

A non-vertical line can be defined by its slope `m`, and its y-intercept `y₀` (the `y` coordinate of its intersection with the y-axis). In this case, its linear equation can be written

    y = mx + y₀

If, moreover, the line is not horizontal, it can be defined by its slope and its x-intercept `x₀`. In this case, its equation can be written

    y = m(x−x0)
    y = mx − mx₀

These forms rely on the habit of considering a *nonvertical line* as the graph of a function. For a line given by an equation

    ax + by + c = 0

these forms can be easily deduced from the relations

    m = −a/b
    x₀ = −c/a
    y₀ = −c/b

#### Point-slope form or Point-gradient form

A non-vertical line can be defined by its slope `m`, and coordinates `(x₁, y₁)` of any point of the line (not just intercept points, but any point). In this case, a linear equation of the line is

    y = y₁ + m(x − x₁)
    y = y₁ + mx − mx₁
    y = mx + y₁ − mx₁
    y − y₁ = m(x − x₁)

The last equation emphasizes that the slope of a line can be computed from the coordinates of any two points since `m = Δy/Δx`.

    y − y₁ = m(x − x₁)


#### Intercept form

A line that is not parallel to an axis and does not pass through the origin cuts the axes into two different points. The intercept values `x₀` and `y₀` of these two points are nonzero, and an equation of the line is

     x      y
    ---- + ---- = 1
     x₀     y₀


It is easy to verify that the line defined by this equation has `x₀` and `y₀` as intercept values.

#### Two-point form

Given two different points `(x₁, y₁)` and `(x₂, y₂)`, there is exactly one line that passes through them. There are several ways to write a linear equation of this line.

If `x₁ ≠ x₂`, the slope of the line is `m = (y₂−y₁) / (x₂−x₁)`.

Thus, a point-slope form is

    y − y₁ = (x − x₁) y₂ − y₁ / x₂−x₁

By clearing denominators, one gets the equation

    (x₂ − x₁) (y − y₁) − (y₂ − y₁) (x − x₁) = 0

which is valid also when `x₁ = x₂` (for verifying this, it suffices to verify that the two given points satisfy the equation).

This form is not symmetric in the two given points, but a symmetric form can be obtained by regrouping the constant terms:

    (y₁ − y₂) x + (x₂ − x₁) y + (x₁y₂ − x₂y₁) = 0

#### Determinant form

The two-point form of the equation of a line can be expressed simply in terms of a determinant. There are two common ways for that.

The equation 

    (x₂−x₁)(y−y₁) − (y₂−y₁)(x−x₁) = 0

is the result of expanding the determinant in the equation

    | x−x₁   y−y₁  |
    | x₂−x₁  y₂−y₁ | = 0

The equation

    (y₁−y₂)x + (x₂−x₁)y + (x₁y₂ − x₂y₁) = 0

can be obtained by expanding with respect to its first row the determinant in the equation

    | x  y  1 |
    | x₁ y₁ 1 | = 0
    | x₂ y₂ 1 |

Besides being very simple and mnemonic, this form has the advantage of being a special case of the more general equation of a *hyperplane* passing through `n` points in a space of dimension `n-1`. These equations rely on the condition of linear dependence of points in a projective space.

## More than two variables

A linear equation with more than two variables may always be assumed to have the form

    a₁x₁ + a₂x₂ + ⋯ + aₙxₙ + b = 0

The coefficient `b`, often denoted `a₀` is called the *constant term* (sometimes the absolute term in old books). Depending on the context, the term coefficient can be reserved for the `aᵢ` with `i > 0`.

When dealing with `n=3` variables, it is common to use x, y, z instead of indexed variables.

A solution of such an equation is a n-tuple such that substituting each element of the tuple for the corresponding variable transforms the equation into a true equality.

For an equation to be meaningful, the coefficient of at least one variable must be non-zero. If every variable has a zero coefficient, then, as mentioned for one variable, the equation is either inconsistent (for b ≠ 0) as having no solution, or all n-tuples are solutions.

The n-tuples that are solutions of a linear equation in n variables are the Cartesian coordinates of the points of an (n − 1)-dimensional hyperplane in an n-dimensional Euclidean space (or affine space if the coefficients are complex numbers or belong to any field). In the case of three variables, this hyperplane is a plane.

If a linear equation is given with `aⱼ ≠ 0`, then the equation can be solved for `xⱼ`, yielding

    xⱼ = −baⱼ − ∑ {i ∈ [1..n], i≠j} xᵢaᵢ/aⱼ

If the coefficients are real numbers, this defines a real-valued function of n real variables.
