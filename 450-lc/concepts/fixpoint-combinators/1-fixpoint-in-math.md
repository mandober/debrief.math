# Lambda Calculus :: Concepts :: Fixpoint combinators

## Fixpoint in math

A **fixed point** (or fixpoint) of a function is a value that goes into and comes out of a function unchanged. It is an input value that is the same as the output value.

>In math, a fixpoint of a function is a value that is mapped to itself by the function, `f x = x`. In general, `f x = y`, so a fixpoint occurs when `x = y`.

In general, a function is denoted by `f`, and arbitrary input values (form the function's domain) are denoted by `x`, while the produced output value (for a specific input `x`) is denoted by `y`, such that `f x = y`.

A fixed point of a function `f` is some input value `x₀` such that `f x₀ = x₀`.

>If `f x₀ = x₀` then `x₀` is a fixpoint of the function `f`.


Some functions don't have fixpoints (e.g. successor). Some functions have an infinite number of fixpoints (e.g. identity, where every point is a fixpoint). Some functions have few (e.g. the square has two, 0 and 1; fib has three, 0, 1 and 5; factorial has two, 1 and 2).

The term "point" in "fixed point" and other phrases refers to a value, which in math is usually a number, so usually interpreted as a coordinate in the 2D Cartesian coordinate system. A function's input value is the *x-coordinate*, while the output value is the *y-coordinate*. That is, each pair of input and output values makes a coordinate of the form `(x, y)`, i.e. `(x, f x)`. In set theory, a function is a set of ordered pairs, which make the function's graph, allowing it to be plotted in the Cartesian plane. To do this, we take as much of these input-output pairs and plot them as coordinates until a curve starts to take shape. 

A fixpoint has the form `(x, y)`, with `x = y`, so `(x, x)`; all fixpoints of a function will be located on the diagonal - the same diagonal as plotted by the identity function, `{ …, (-1,-1), (0,0), (1,1), (2,2), …}`.
