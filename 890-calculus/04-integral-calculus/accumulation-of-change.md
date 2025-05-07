# Calculus 2 :: Accumulations of change

The basic idea of *Integral Calculus* is finding the area under a curve.

## The area under a curve

The area under a curve is a surface explicitly bounded, and thus determined, on all 4 sides. Implicitly and informally, the area under a curve is the surface bounded (from above) by the curve (graph) of a function, and from below by the x-axis; the right and left bounds are either explicitly given, possibly with the y-axis sometimes acting as a horizontal constraint. This is just one (and a very informal way at that) to define an area; there are many ways to carve up a graph to delineate an area, including by providing equations that intersect in interesting manner. For the purposes of illustration, one should imagine the graph of some function as the curve in question that defines, commonly, the upper bound, with the the x-axis as the lower bound; the horizontal bounds are then either meant to be arbitrary, or maybe they will be given as well. More complex shapes are delineated by the intersections of several equations.

## Approximating the area under a curve

In the simplest case, with the curve as the upper bound and x-axis as the lower one, leaving the left and right bound undefined and arbitrary, the area under the curve of the function `f(x)` may be approximated, very roughly, by drawing a number of rectangles below the curve based on the x-axis, stretching up just enough to touch the curve.

We can erect a number of rectangles along the x-axis, all of which will have the same width, denoted by `Δx`, whose individual heights will be calculated by the function. If we take the y-axes as the left bound, the first of these rectangles will span from 0 (as `x₀`) to some value `x₁` on the x-axis; in fact, `x₀ + Δx = x₁`. The next rectangle then starts at `x₁`, and spans until `x₂ = x₁ + Δx` i.e. `x₀ + 2Δx`. Following this progression, there will be `n` rectangles, with one starting at these x-values: `(x₀, x₁, x₂, x₃, …, xₙ)` or `(x₀, x₀+Δx, x₀+2Δx, x₀+3Δx, …, x₀+nΔx)`. Taking this values to calculate the height of each rectangle will overshot the curve by some portion, ending in an overestimation.

This immediately presents another problem (or opportunity) as these rectangles have some definite width - they are not narrow as needles, at least not yet - so it matters which of the x-values one uses as the argument to get the height of rectangles. In the top-left corner approach, the leftmost x value in the range of a rectangle is used, thereby underestimating the overall result. If the rightmost value is used the result will be overestimated. The average between the two approaches can be obtained by using the midpoint to get the height - this means the curve will touch each rectangle at the top midpoint, which will give better approximatation then the previous methods.

## In the limit…

In the limit, as these rectangles get infinitely narrow, the precise value for the area is obtained. As the width of rectangles tends to 0, and thus the number of rectangles, `n`, tends to infinity, the area approaches its true value.

`lim{n→∞} Σ{i=1..n} f(xᵢ) Δx`

becomes the integral

`⎰{a..b} f(x) dx`
