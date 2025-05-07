# Vertical line

Vertical lines are peculiar since they have a slope that is undefined. In the slope-intercept form, a line equation is `y = mx + b`, and `m` stands for slope. When the slope is 0, we get `y = b`, which is a well-defined, horizontal, line that intersects y-axis at `b` (as usual since `b` is the y-intercept). In fact, we can't even express the equation for a vertical line using the slope-intercept form of line equation.

A vertical line equation has the form `x = k` where `k` is the x-intercept, i.e. the place where the vertical line intersects the x-axis. 

The equation for a horizontal line is still a function - it is a *constant function* since for any input `x`, it produces the same output value (e.g. 2), i.e. it maps the entire domain to a single codomain value, `x ⟼ 2`, which makes it an ultra surjective function.

However, although an equation for a vertical line is the inverse of an equation for the horizontal line, with input and output literally being swapped so we get `x = k`, where `k` is some y-coordinate - we cannot express it as a function. It would fail the vertical line test miserably, because there would indeed exist a vertical that intersect the curve (i.e. vertical line) in more then one point; in fact, it would intersect it in an infinite number of points since the two lines would coincide.

The equation for a vertical line is then just an equation (not a function) of the form `x = k`, for some constant `k`.

Given two points on a line, `P₀ = (x₀, y₀)` and `P₁ = (x₁, y₁)`, if it turns out that the line is vertical and we try to calculate its slope from these two points, we'll get into trouble called division-by-zero.

For example, given 2 points, P₀ = (2, 3) and P₁ = (2, 5), we can immediately see that the first coordinate, i.e. x-coordinate (aka abscisa) is the same at both points which means that both points are on the same, vertical line (that is parallel, or, in one case, incident, to the y-axis). When both y-coordinates of two points are the same, it means the points belong to the same, horizontal line (that is parallel or, in one case, incident, to the x-axis).

Calculating the slope from the two given points, P₀ = (2, 3) and P₁ = (2, 5), is done by dividing `Δy` (change in y) by `Δx` (change in x),

```js
     Δy    y₁ - y₀   5 - 3     2
m = ---- = ------- = ------ = ----
     Δx    x₁ - x₀   2 - 2     0    // division by zero!
```

...but we get division by zero! The same as the division by zero, the *slope, `m`, is undefined*. But the line with an undefined slope is still allowed to exists and to be graphed. 

>A line with an undefined slope is allowed to define a vertical line.
