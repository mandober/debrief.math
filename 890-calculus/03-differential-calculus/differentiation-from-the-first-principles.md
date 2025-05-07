# Differentiation from the first principles

## Summary

```js
            f(x + h) - f(x)
f′(x) = lim ---------------
        h→0       h
```

We'd like to find out the equation for the *tangent line* for a particular point on the curve plotted according to a function. However, a tangent line, like any line, is identified by two distinct points, but we only have one.

The breakthrough comes as the idea to approximate the tangent line by secant lines. Namely, the tangent line at the point `(x, y)` of the curve can be approximated by drawing a secant line that goes through the same `(x, y)` point and another, arbitrarily, point on the curve. That other point is identified by an x-offset, `h`, as a distance from the `x` coordinate in the first, fixed, point. So, the coordinates of the other point are `(x + h, f(x + h))`. The other point has such form because we want to vary it. The main idea is to make it close in onto the fixed point. As the distance between the two points becomes almost indistiguishable, i.e. as `h` tends to 0, the secant line will becomes the tangent line, right at our point of interest.

The tangent line at the point `P = (1,1)` on the curve (as plotted by the function `f(x) = x²`) is a tangent at that point of the curve, but at the same time the slope of the tangent line actually *represents the slope of the curve*.



## Details, take 2

- `f′(x)` is a way to denote a derivative of function `f(x)`
- `h` is a difference between the input values

A curve, defined by the function `f(x)`, is plotted in the Cartesian plane, e.g. a parabola with the vertex at the point `(0,0)` as defined by the quadratic function `f(x) = x²` (general quadratic equation is `ax² + bx + c` and this fn conforms to it with `b = c = 0` and `a = 1`, so only `x²` is left).

The function `f(x) = x²` could be defined more broadly, but for now we only consider the variant `f : ℤ → ℤ` (since we are plotting it, we'd like to have whole numbers for input and output; in general, though, it could be defined as `f : ℝ → ℝ`). Some of the points on this curve are (1,1), (2,4), (3,9), etc., with the second coordinate produced by applying the function to the first, `y = f(x)`, e.g. `f(3) = 3² = 9`. All points `(x, y)` are `(x, f(x))`, that is any point is uniquely identified by the first coordinate (x-value) alone.

Now we focus on the point `P = (1,1)` and would like to find out the equation for the tangent line at that point. Every point on the curve has a different tangent line - the equation for a tangent line depends on a particular point considered.

The problem, however, is that we cannot define a line from a single point alone - a line is identified by at least two distinct points. The breakthrough idea of differential calculus was to consider *secant lines*. A secant line is a line that goes through two distinct points on the curve. We fix one point and let the other point for the secant line vary. Here, we consider the point `P` at (1,1) fixed and the point we vary we'll identify as being `h` x-value away from `x₀`. Here `P = (x₀, y₀) = (1, 1)`, so the coordinates of the other, varying, point are `(x₀ + h, f(x₀ + h))`. In fact, the difference between the x-coordinates is also signified by `Δx = h`, and the difference between the y-coordinates by `Δy`.

The slope of any line is "rise over run", i.e. the quotient of the x- and y-difference: `m = Δy/Δx`. The slope is the ratio between y- and x-offsets, that is, how many units do we need to go in vertical direction (the rise) for each unit we go in the horizontal direction (the run). So a slope of 1 actually represents the ratio 1:1, that for every 1 unit in the horizontal direction, we go 1 unit in the vertical direction. The slope of 1/2 means go 2 units horizontally and 1 unit verically. From where? From any point on the line which has that particular slope. Unlike curves, straight lines have the same slope everywhere. So, without looking at the graph, but knowing that a point (3,5) belong to some line L, plus knowing that its slope is -2 (which is -2/1), we can determine another point on the line (3+1, 5+(-2)) i.e. (4,3). 

Points in the 2D Cartesian plane have the form `(x, y)` but slope has the form `Δy/Δx`, so another point with respect to point `(x, y)` is `(x+Δx, y+Δy)`.


*The jump*: the tangent line at the point `P = (1,1)` for the curve (as plotted by the function `f(x) = x²`) actually represents **the slope of the curve**. (TBC…)


## Details

To find the equation for the tangent line at the point (x₀, y₀) on a curve defined by some function f(x). The point of interest is arbitrarily denoted using the subscript 0, `(x₀, y₀)`, to signify that the x-value, `x₀`, will remain put, while we vary another x-value, `x`, in this process.

The fact that we have a function `f(x)` in the context of which we have plotted the curve, and now try to find the tangent line on this curve at some point, means that the points on the curve are uniquely identified by their x-coordinate alone because we can always determine the corresponding y-coordinate by calling the function, `f(x) = y`. This is why we may sometimes say "`x` point", even though `x` is actually only one component of a point.

The point at which we want to find the tangent line, `(x₀, y₀)`, we'll keep fixed throughout this process. The process involves finding a *secant line* that goes through the fixed point `(x₀, y₀)` and another point on the curve.
- `(x₀, y₀)` point of interest
- `(x, y)` another (arbitrary) point on the curve
- secant line goes through `(x₀, y₀)` and `(x, y)`

We keep the POI fixed while we vary the other point. Since the other point (like all points) is uniquely determined by its first coordinate, we denote the difference between `x₀` and the x-coordinate, `x`, of the other point as `h`

`h` is the difference between x-coordinates, specifically between x₀ and another x-value. To emphasize that it stands for difference, `h` is also denoted `Δx`, which more clearly conveys the fact that it stands for a difference between two `x` coordinates. Symmetrically, then, `Δy` stands for a difference between two `y` coordinates.

What we have so far
- function `f(x)`
- the graph of which is plotted as curve on the Cartesian plane
- `P₀` is a point on the curve at which we want to find the tangent line
- P₀ has coordinates `(x₀, y₀)`
- P₀ is uniquely determined by `x₀` alone; `y₀` in `(x₀, y₀)` is `y₀ = f(x₀)`
- `Δx` = `h` is the difference `x₀ - x₁`
- `x₁` is another point on the curve, `P₁ = (x₁, y₁)`
- a secant line goes through points `P₀` and `P₁`

As we vary the `x₁` coordinate, we vary the secant line. We see that as we decrease the difference Δx between the two points, the secant line becomes more and more like the (supposed) tangent line at `P₀`. The whole idea here is that the tangent line at point `P₀` could be approximated by a secant line whose x-coordinate `x₁` is a tiny difference away from x₀.


```js
secant line, S = (P₀, P)
P₀ = (x₀, y₀)
P₁ = (x₁, y₁)


 Δy    f(x + h) - f(x)
---- = ---------------
 Δx           h


                 f(x + h) - f(x)
f′(x) = lim{h→0} ---------------
                       h
```

## Example 1

f(x) = x²

```js
f(x) = x²

                 f(x + h) - f(x)
f′(x) = lim{h→0} ---------------
                       h

// in above, subst arg x by x² (as if the arg is x²)

                 (x + h)² - x²
(x²)′ = lim{h→0} -------------
                       h

                  x² + 2xh + h² - x²
(x²)′ = lim{h→0} ------------------
                         h

                 2xh + h²
(x²)′ = lim{h→0} --------
                    h

                 h(2x + h)
(x²)′ = lim{h→0} ---------
                     h

(x²)′ = lim{h→0} (2x + h)  // now we subst the limit
(x²)′ = 2x + 0
(x²)′ = 2x
```


## Example 2

`f(x) = 5x - 2`

```js
f(x) = 5x - 2

                 f(x + h) - f(x)
f′(x) = lim{h→0} ---------------
                       h

// in above, subst arg x by x² (as if the arg is x²)
// that is, apply the function (5x-2) to arg (x+h), the n to arg x
// (5x-2)(x+h) = 5(x+h)-2
// (5x-2)(x) = 5x-2

                   (5(x + h) - 2) - (5x - 2)
(5x-2)′ = lim{h→0} --------------------------
                               h

                   5x + 5h - 2 - 5x + 2
(5x-2)′ = lim{h→0} --------------------
                            h

                    5h
(5x-2)′ = lim{h→0} ----
                    h

(5x-2)′ = lim{h→0} 5
(5x-2)′ = 5
```
