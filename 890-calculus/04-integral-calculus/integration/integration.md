# Integration


Often we know the relationship involving the rate of change of two variables, but we may need to know the direct relation between the two variables. For example, we may know the velocity of an object at a particular time, but we may want to know the position of the object at that time.

To find this direct relationship, we need to use the process which is opposite to differentiation, called integration (or antidifferentiation).

Uses of integration include finding the area under a curve, finding the centre of mass, displacement and velocity, fluid flow, modelling the behaviour of objects under stress, etc.

*Differential equations* are one type of integration.

- differential
- antiderivatives
- indefinite integral
- area under a curve
- definite integral
- trapezoidal rule
- Simpson's rule

## Integral

Integral is not the same as a partial sum - it is what the actual sum approaches as `dx` approaches 0.

## Introduction

When you get that feeling that what you want to do is add together infinitely many values over a continuum, procrastinate a bit by contemplating the choices you made that led you to this point in life. After about ten minutes you will realize that keeping calm and using an integral is just what the doctor prescribed. But to figure out how, procede as if you have a purpose and try to approximate the area underneath the curve by fitting a bunch (`n`) rectangles under it, then sum their area as a partial sum, using the sigma notation.

For approximating the area of a region, it would be good to somehow delineate the area of interest. The curve is the graph of the function `f(x)`, so it represents the top bound, and the x-axis commonly considered the bottom bound. We'll also need the left and right bound, but we can leave those for later, currently representing them by values `a` and `b` on the x axis. The region is bounded from above by the curve, so that bound is not changing, and neither is the bottom bound (x-axis). On the other hand, it is good to have, left and right bound dynamically adjustable. In the simplest case, the left bound is also fixed in place, e.g. it is represented by the y-axis, so only the right bound `b` remains dynamic. Sometimes the bound `a` is called the lower bound, with bound `b` being the upper bound - at least that is what is eventually input as bounds of definite integral, `ₐ⎰ᵇ` or `⎰{a..b}`, read "integral over the closed interval from `a` to `b`"; these horizontal bounds will eventually form a closed integral [a,b] over which we integrate.

## Approximating the area under a curve

To estimate the area under a curve, we fit a number of rectangles, `n`, under it, laying them along the x-axis, i.e. each rectangle rests on the x-axis. The width of rectangles is the same for all, `Δx`, obtained as `Δx = (b - a) / n`.

The bottom-left corner of the first rectangle sits at the point `(a, 0)`, while its bottom-right corner is `Δx` value away, over at `(a+Δx, 0)`. Then the bottom left corner of the second rectangle is at the same point as the bottom right corner of the previous rectangle, so at `(a+Δx, 0)`; its bottom right corner is at `(a+2Δx, 0)`.

For now, we are only considering the bottom side of each rectangle, so the second member of each pair is always 0. And since the right corner of the previous rectangle coincides with the left corner of the next one, in order to avoid repetition, we can express the values of significance in the interval as a sequence `{a, a+Δx, a+2Δx, a+3Δx, …, a+mΔx = b}`. Better yet, using `i` as a dynamic counter we can shorten it to `{a+iΔx}`, where `i=0..m`, i.e. `i` is hitting, the equally spaced values, each `Δx` wide, along the portion of x-axis restricted by the interval [a,b].

But how about them top corners of these rectangles?

## Difference between two function applications

We find the antiderivative of f(x), then evaluate it at the upper bound, from which we subtract its value evaluated at the lower bound: `F(b) - F(a)`.

More visually, it is the difference in the height of the negative cosine graph above π, and its height at 0. And that change in height is exactly 2. Isn't it interesting that the area under this sine graph turns out to be exactly 2?

## Conclusion

Evaluating any integral comes down to finding an antiderivative of `f(x)`, commonly denoted `F(x)`. What we want is the change (when do we want it - now) to this antiderivative between `a` and `b`, i.e. `F(b) - F(a)`, which we can think of as the *change in height* of this new graph (as defined by `F(x)`) and the original graph, between the two bounds.

The solution to the question of the average height: change in the height of the new graph, `F(x)`, divided by the change to the `x` value between `a` and `b`. In other words, *it is the slope of the antiderivative graph, `F(x)`, between the two endpoints*.






## Terms

approximating-tangent-of-curve
approximating-area-under-curve

- approximating the area under a curve
- by fitting rectangles underneath it
- left endpoints give underestimate, lower sum
- right endpoints give overestimate, upper sum
- Riemann sum
- approximate the area under the curve using rectangles over a closed interval.
- definite integral
- indefinite integral
- interval
- subinterval
- integrals
- related rates
- antiderivative
- derivatives




The area under a curve is equal to definite integral of fn over closed interval.
The area can be approximated by taking the sum of the area of rectangles.
This can be expressed using sigma notation. 
The area of each rectangle is width × height.
width is Δx and it represents the length of each subinterval.
height of rectangle is f(x). 
average of areas using left and right endpoints is very close to actual area. 
The area using left endpoints is an under approximation, or lower sum. 
The area using right endpoints is an over approximation or upper sum.

---
# Integration

## Introduction to integration

Integration can be used to find areas, volumes, central points and many other things. Fundametally, it is about finding the area of the surface delineated by functions.

## Comparison to differentiation

Integration is the opposite operation to differentiation. While differentiation is about finding the slope of the curve (of a function), integration is about calculating the area beneath the curve (e.g. the area bounded by the curve from above, x-axis from below, y-axis from left, and by an arbitrary point from the right).

Differentiation is about finding the *tangent line* of a given point on a curve (as the graph defined by a function). We label the target point `A`. 


The problem with tangent lines is they only share a single point with the curve. In general, a line is defined either by two points or one point and the slope - but here we only have the one point.

Nevertheless, it was discovered that the tangent can be approximated by picking another, arbitrary, point, `B`, on the curve, preferrably near the point `A`.

In general, each point on a curve has a different tangent line; that is, the gradient of the tangent changes as we traverse the curve. The tangent may become flat only at the inflection points of the curve - the criticial points where the concavity of the curve changes.



The point where we want the tangent line, and it is often denoted by 
the target 




is approximated by considering first a secant line that goes through the `A` and another, arbitrarily chosen point `B`, also on the curve. With two points `A` and `B` given, we'll have no problem to draw the secant line that goes through both. Two points are sufficient to define a line, as are a point and a slope.

However, a tangent only shares a single point with the curve. Since we want to figure out the tangent at `A`, we'll keep `A` fixed and vary `B`.

As we move the point `B`, pushing it closer and closer to the point `A`, the secant line will approximate the tangent at `A` better. With a very tiny distance between the point `A` and `B`, the secant line is practically the same as the tangent line. In the limit, they truly are the same; that is, in the limit, as 

point of a secant line approaches the given point, the secant line becomes the tangent line.

In doing this, the secant line approaches the tangent line at the point of interest - in the limit

Integration, on the other hand, also considers a curve, but this time it is the area beneath it that is of interest. The basic approach to approximate the area is to fit a number of rectangles beneath the curve and the x-axis, then to sum up the areas of those rectangles. The area of each rectangle is the product of its width and height, but all rectangles will have the same width; in fact, that width is determined by the number of rectangles fitted along the x-axis (presumably we have some interval on the x-axis in mind that will determine the left and right bound of the area - with the curve defining the upper bound, and the x-axis defining the lower bound). In fact, what we'll get without bounds, is an indefinite integral - the one with the bounds defined is called definite integral.

As the number of rectangles approaches infinity, meaning the width of rectangles approaches 0, the estimate of the area approaches a precise value of the area.

`Δx` denotes the ever shrinking base side of the rectangles, i.e. it denotes the width - which is the same for all rectangles - that gets smaller and smaller. The notation `dx` is used to mean that `Δx` (the width of the rectangles) is under the limit, approaching 0.
