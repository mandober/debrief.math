# Integration

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
