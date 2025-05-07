# Geometric primitives

We are here primarily concerned with the *Cartesian coordinate system* (Cartesian or Euclidean plane), sporadically entertaining some situations in the *polar coordinate system* as well.

## Point

Before we get to a line, we need to introduce a *point*, when, BLAM, falls them apple preferred to had went and done your noggin in. The same as Euclid, we can only but leave point undefined, accepting it as a primitive the way real men do. Think of it as noggin for your yoga, sans the pretzels. A point is not even describable, let alone definable. Saying it is a "dimensionless quantity" is like saying nothing at all.

Strangly, other geometric shapes (introduced later) may be better at pinning down this primitive object. For one, two intersecting lines will determine the shit out of a point. The point is the point is this insufferable object, even more abstract then the others, as it likes to claim gregariously (grex lex).

The point lives alone in the dimension zero (0D). It leads a life of widthless heightless weigthless existence, lacking physical manifestation and devoid of self-realization, yet it endures (sure, y₀… as if math has not spawned stranger things).

## Line

A straight line is also a primitive geometric entity, but it can be defined as an infinite collection of points determined by two distinct points. But how can we restrict that collection of points to be straight, to span infinitely across a plane in a "straight manner"? Perphaps line should also be introduced as a primitive.

## Cartesian coordinate system

>How can we describe the Cartesian coordinate system from the scratch, assuming as little as possible?

We have a notion of an infinite flat (Euclidean) plane (also a primitive entity). Let's pick two distinct points and draw a line intersecting each them. We call this line the x-axis. But now we need another line that intersects the first at the right angle (how to draw an orthogonal line will be defined later; in brief, we need the notion of a slope, then two lines are orthogonal to each other if their slopes are each other's opposite reciprocals). The point where the two lines intersect is called the origin and labelled (0, 0). The x and y axis actually represent ℝ, so a Euclidean plane is ℝ².

Any point in a plane can be described by a pair of coordinates (x, y). Given a point (x, y), we can get its x-coordinate by projecting that point onto the x-axis at the right angle. In other words, the shortest distance from the point to the x-axis will meet the x-axis at some value - that is the x-coordinate. And similarly for the y-coordinate, mutatis mutandis.

In the Cartesian coordinate system - and we always assume we are working inside one (because we want to live fast, drive cars, draw graphs, sex girls, plot curves, and for that a coordinate system is necessary) - each point is defined as an ordered pair, `(x, y)`, consisting of coordinates `x` and `y`.

The *x-coordinate*, or just `x`, is a value on the x-axis. 
The *y-coordinate*, or just `y`, is a value on the y-axis.
Together, they make up the two components of a point `(x, y)`.

However, `x` is an *independent variable*, while `y` is a *dependent variable* as it depends on (the value of) `x`. This is particularly evident when a point (x, y) is part of a curve that is the graph of a function `f(x)`. When the curve is defined by a function `f(x)`, input values to the function are `x`, while `y` represents the function's output values, `y = f(x)`. To plot the function's graph we plug in various x values (x coordinates) into the function to get the corresponding y values (y coordinates).

An interesting thing to note is that a point is not the most elementary entity, after all, since it consists of two coordinates (at least in the 2D plane). If a point lives in 0D, which dimension coordinates live in? (It would be no surprise if there is a sensible answer to this, since in math, dimensions need not be whole numbers - if math can find fractals a suitable dimension, it can surely find a place for them crooked coordinates, jointly or separately).

## Line and slope

A line can be defined in terms of two points, but another way to define a line is to via one point and a slope. A line equation is a *slope-intercept form* is

    y = mx + b

where
- `m` is the slope
- `b` is the y-intercept

The slope is the most important property of a line as the slope is fixed while the points that a line intersects may be considered as arbitrary. A line could be shifted by changing the point of intersection, `b`. In a way, all lines with the same slope are related, or, at least, they are more related then lines that have different slopes but share an common point of intersection.

The slope is sufficient to visualize a line apart from the coordinate system. With only the slope available we wouldn't be able to put the line inside the coordinate system anyway. For that we need at least one point on it defined. In the line equation `y = mx + b`, the parameter `b` is that point. In this, point interception form of a line equation, `b` is actually where the line intersects the y-axis; as a point, it always has the form `(b, 0)` because x is 0 at any point on the y-axis (and vice versa). If `b` is 0, then the equation amount to `y = mx`, meaning the y-intersect happens at the origin.

The slope determines a line's inclination, which could be defined as the angle between the line and x-axis. Because every non-horizontal line must intersect the x-axis, we can always find its *inclination angle*.

Slopes can be classified into 4 types:
- positive
- negative
- zero
- undefined

A *positive slope* is like going uphill, `⤢`, i.e. a slope with an inclination angle that is between 0° and 90°, but excluding both 0° and 90°.

A *negative slope* is like descending downhill, `⤡`, that is, it is a slope with an inclination angle between 90° and 180° (excluding both endpoints).

*Zero slope* means the line is horizontal, `⟷`. In the point-intercept line equation it would look like `y = 0x + b`, i.e. `y = b`. The `b` parameter would still stand for the y-intercept: `y = 3` is an equation for the horizontal line that intersects the y-axis at 3.

In case of a vertical line the *slope is undefined*. The slope of a vertical line, `↕`, is undefined, and the line equation obtains the form `x = c`, where `c` is a constant and a point where the vertical line intersects x-axis.

Slope gives us the information about the inclination, also called *gradient*, of a line, but it also gives us a way to determine another point on the line, given some known point.

Slope of a line is actually a ratio between the `x` and `y` coordinates of some point on that line (actually, of any point on that line). That ratio is often presented as *rise over run*, which is the change in y direction over the change in x direction, slope `m = Δy/Δx`. 

If the slope is a fraction, then the nominator tells us how many units to go up (towards +y semiaxis), and the denominator tells us how many units to go to the right (towards +x semiaxis). If the slope is a negative number, instead of up, we would go down. If the slope is an integer, then the denominator is 1.

Given a point on a line, we can determine another point on that line by going `Δy` up and `Δx` to the right.

For example, if we are at point (2, 3) on a line with a slope of 2, then we find the next point on the line by going 2 units up and 1 unit right, landing us at the point (2+1, 3+2) i.e. point (3, 5).

If we are at (-2, 0) and the slope is -3/4, the next point is 3 units down (because the slope is negative) and 4 right, landing us at (-2+(-3), 0+4), i.e. (-5, 4).

    slope, m = Δy/Δx
    given a point (x, y)
    another point is at (x+Δx, y+Δy)

For example, given a point `p₀ = (-2, 0)` on a line with a slope `-3/4`, another point on the line can be calculated as `p₁ = (-2+4, 0+(-3))`, i.e. `p₁ = (2, -3)`. Now, with two known points we can draw this line. Its equation is `y = (-3/4)x + b`, and to find out what `b` is we can just plug in one point.

```
y = (-3/4)x + b
0 = (-3/4)(-2) + b        plugging the point (-2, 0) 
0 = 6/4 + b
b = -3/2 = -1.5
```

which gives us the full line equation `y = (-3/4x - 1.5)`.

### Slope-intercept line equation

The slope-intercept form of line equation is `y = mx + b`, where `m` is the slope, and the point `(0, b)` is the *y-intercept* - the place on y-axis where the line intersects the y-axis - and every line with a defined slope (every non-vertical line) must intersect the y-axis. In fact, every line must also intersect the x-axis, unless it is a horizontal line.

Horizontal lines are a kind of degenerate lines and so the form of their equation uses `x` alone, as `x = c`, where `c` is a constant, like 3, meaning the horizontal line that intersects the y-axis at 3; there is no `y` like usual.

On the other hand, vertical lines are lines whose slope is undefined. The line equation for such lines is `y = mx + b` with m=0, so they amount to `y = b`, where `b` is a constant, like 2, meaning the vertical line that intersects the x-axis at 2.

For example, given the y-intercept at `(0, 2)` and the slope of `-3`, we already have the line equation as `y = -3x + 2`. The slope -3 means the rise - or, in fact, a fall - is 3, while the run is 1. Going from the point (0, 2), we can find another point at (1, -1).

### Point-point line equation

Besides through a slope and point, a line can be defined through two points, in which case the line equation is

    y - y₀ = m(x - x₀)

with the two points being `(x, y)` and `(x₀, y₀)`. Given two points, it is easy to determine the slope:

         y - y₀
    m = --------
         x - x₀

For example, given two points (-2, -3) and (2, -1), the slope is

```
      y - y₀   -3 - (1)     -2      1
m = -------- = --------- = ----- = ---
      x - x₀    -2 - 2      -4      2
```

which gives a partial line equation, `y = 1/2x + b`. To figure out what the y-intercept (`b`) is, we plug either point:

```
-3 = 1/2(-2) + b
-3 = -2/2 + b
-3 = -1 + b
b = -3 + 1
b = -2
```

Now we have the complete equation, `y = 1/2x - 2`. The slope is 1/2, the y-intercept is at `(0, -2)`. The x-intercept `(x, 0)` can be calculated by setting `y` to 0:

0 = 1/2x - 2
2 = 1/2x
x = 2 ÷ 1/2
x = 4

so the x-intercept is at point `(4, 0)`.

## Functions and equations

We are interested in plotting graphs of various functions. Functions are one form of equations we can plot, but in general, equations that can be plotted are not always functions.

Functions conventianally come in the form `f(x) = y`, so `x` stands for input values to the function (function arguments), but it also then represents the x-coordinates when we plot the function's graph. `y` is the output of the function, or function's value, and also designates the y-coordinates of the function's graph. With functions of the form `f(x) = y`, `x` is an independent variable, while `y` depends on `x`. For this reason, it is sufficient to know just the x-coordinate to be able to determine the corresponding y-coordinate (given that there is a function under consideration). This is also the reason why we sometimes call a lone `x` value a point, when, techically, both x and y are needed to define a point. And it is also the reason why a point `(x, y)` may also be denoted by `(x, f x)`.

*Implicit equations* are those equation that may be transformed into the standard function form `f(x) = y` (if they really are functions), but since they may be complicated we do not bother but just accept them as they are. For example, `x³ + x² = y² + y`, although this is a bad example because elliptic curves are definitely not functions (they fail the vertical test). More generally, implicit equations go beyond just functions and include, e.g. equation for the unit cicle, `y² + x² = 1`. This is not a function, but could be expressed as a pair of functions, each defining one half of a circle, a semicircle: `y = √(1 - x²)` (top semicircle) and `y = -√(1 - x²)` (bottom semicircle).

## Links

https://www.greenemath.com/Trigonometry/47/Lines-Angle-of-InclinationLesson.html

https://www.siyavula.com/read/za/mathematics/grade-11/analytical-geometry/04-analytical-geometry-03
