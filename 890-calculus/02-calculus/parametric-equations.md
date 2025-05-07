# Parametric equations

Plane curves can be described by a function, but functions don't tell the whole story. They don't tell us where the curve starts, ends, or where it is at a point in time, since all we get from functions is a directionless shape.

Parametric equations trace the motion of an object in a plane. These curves do not pass the vertical line test to be functions, and often cannot be defined in terms of one variable, but they encode the information about the direction.

Parametric equations are defined with a parameter (like `t`), but we still have `x` and `y`, it is only that both `x` and `y` are defined in terms of the parameter t: `x = f(t)` and `y = g(t)`. Both `f` anf `g` share the same domain which is represented as an interval [a,b], `a ≤ t ≤ b`, which gives the sense of direction. Parameter `t` usually stands for time, but it can be something else as well, and it may be negative.

Over the interval [a,b]
- `(f a, g a)` is the initial point
- `(f b, g b)` is the terminal point

A parametric equation is a set of equations, for example 
`x = t² - 3`, `y = 2t`, `-1 ≤ t ≤ 3`. 

We can plug in a few values of `t` between -1 and 3 to get the corresponding values of x and y:

```
  t   |    -1    |    0    |    1    |    2   |   3
(x,y) | (-2, -2) | (-3, 0) | (-2, 2) | (1, 4) | (6, 6)
```

This is enough points to plot the curve.

Another, quicker, way to find out the equation to plot the curve is to first *eliminate the parameter* from the equation, but this not always possible. When it is, we rewrite the set of parametric equations as a *rectangular equation*, i.e. in terms of x and y.

```
x = t² - 3
y = 2t
t = y/2
x = (y/2)² - 3 = y²/4 - 3
```

The equation `x = y²/4 - 3` can now be used to draw the graph, but we still need to find initial and terminal point. If this method cannot be used we can always fall back to calculating a few points by plugging in some values of t.
