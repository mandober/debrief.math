# Standard form

Lines in a Cartesian plane are characterized by linear equations. Every line `L` (including vertical lines) is a set of points whose coordinates `(x, y)` satisfy a linear equation, `L = { (x, y) | ax + by = c }`, where `a, b, c` are fixed real numbers (called coefficients) such that `a` and `b` are not both zero. Using this form, vertical lines correspond to equations with `b = 0`.

ax + by = c
- a=0, horizontal line
- b=0, vertical line
- c=0, line passes through origin

In the equation `ax + by = c`, coefficients `a`, `b`, `c` are assumed to be known values, while `x` and `y` are proper unknowns (variables). However, when plotting a line (in e.g. desmos), `a`, `b`, `c` are parameters that can be freely dialed.
- when c=0, the line necessarily passes though the origin, and both `a` and `b`

- varying `a`, with `b` set at `k`, moves the line around point `k` as an anchor point
- varying `b`, with `a` set at `k`, moves the line using `k` as an anchor point

Using the default (most neutral) values for parameters with `a=1`, `b=1`, and `c=0` we get the negated identity line, like the graph of `y = -x`. Varying `c` (while a=b=1) moves the line but only in parallel to the original line, corresponding to the equation `y = -x + c`. This is expected since when a=b=1, then equation becomes `x + y = c` i.e. `y = -x + c`, which is negated identity line offset by `c` value. Setting c=2, means the line will intersect the points (0, 2) and (2, 0), like the equation `y = -x+2`; Setting c=-3, means the line will intersect the points (-3, 0) and (0, -3), like the equation `y = -x-3`
