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
