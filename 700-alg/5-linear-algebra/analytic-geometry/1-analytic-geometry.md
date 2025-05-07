# Analytic geometry

https://www.whitman.edu/mathematics/calculus_online/section01.01.html
https://www.whitman.edu/mathematics/calculus_online/chapter01.html

## Lines

- equations of a line:
  - slope-intercept, `y = mx + b`
  - point-slope, `y − y₁ = m (x − x₁)`
  - two points, `y − y₁ = (x − x₁) (y₂− y₁) / (x₂ − x₁)`
  - intercepts, `y / a + x / b = c`


If we have two points A = (x₁,y₁) and B = (x₂,y₂), then we can draw one and only one line through both points. By the *slope* of this line we mean the ratio of Δy to Δx. The slope is often denoted `m`: m = Δy/Δx = (y₂−y₁)/(x₂−x₁).

*Polygonal line* is a line made up of several straight line segments of different slopes.

The most familiar form of the equation of a *straight line* is: `y = mx + b`, called the *slope-intercept form* of an equation of a line. The `m` is the slope of the line - if you increase `x` by ₁, the equation tells you that you have to increase `y` by `m`.

If you increase `x` by `Δx`, then y increases by `Δy = m ∙ Δx`. The number `b` is called the *y-intercept*. If you know two points on a line, the formula that gives you the slope is `m =(y₂−y₁)/(x₂−x₁)`.

Once you know a point and the slope, then the y-intercept can be found by substituting the coordinates of either point in the equation: `y₁ = mx₁ + b`, that is, `b = y₁ − mx₁`.

Alternatively, one can use the *point-slope form* of the equation of a straight line: start with `(y−y₁)/(x−x₁) = m` and then `y−y₁ = m (x−x₁)`, aka the point-slope form. We may further get `y = mx − mx₁ + y₁`, which is essentially the slope-intercept form.

*Two-point form*: it is possible to find the equation of a line between two points directly from the relation `(y−y₁) / (x−x₁) = (y₂−y₁) / (x₂−x₁)`, which says the slope measured between the point `(x₁, y₁)` and the point `(x₂, y₂)` is the same as the slope measured between the point `(x₁, y₁)` and any other point `(x, y)` on the line.

Given the two points (2,1) and (3,3), we can find the slope-intercept equation:

```
(y − y₁) / (x − x₁) = (y₂ − y₁) / (x₂ − x₁)
(x₁, y₁) = (2, 1)
(x₂, y₂) = (3, 3)
--------------------------------------------
(y − 1) / (x - 2) = (3 - 1) / (3 - 2)
(y − 1) / (x - 2) = 2 / 1
(y − 1) / (x - 2) = 2
so that
y − 1 = 2(x − 2)
y − 1 = 2x − 4
y = 2x − 4 + 1
y = 2x − 3
```

Of course, this is really just the point-slope formula, except that we are not computing `m` in a separate step.

The slope `m` of a line in the form `y=mx+b` tells us the direction in which the line is pointing. If `m` is positive, the line goes into the I quadrant as you go from left to right. If `m` is large and positive, it has a steep incline, while if `m` is small and positive, then the line has a small angle of inclination. If `m` is negative, the line goes into the IV quadrant as you go from left to right. If `m` is a large negative number (large in absolute value), then the line points steeply downward; while if `m` is negative but near zero, then it points only a little downward.

If `m=0`, then the line is horizontal - its equation is simply `y=b`.

Vertical lines cannot be written in the form `y=mx+b`. A vertical line has an equation of the form `x = a`, where `a` is the value on x-axes that the vertical line intersects. It is sometimes said that a vertical line has an "infinite" slope.

Sometimes it is useful to find the *x-intercept* of a line y=mx+b. This is the x-value when `y=0`. Setting `mx+b = 0` and solving for x gives `x = −b/m`.

## Distance between two points

The Pythagorean theorem then says that the distance between the two points is the square root of the sum of the squares of the horizontal and vertical sides:

    distance² = (Δx)² + (Δy)² = (x₂ - x₁)² + (y₂ - y₁)²

A point `(x, y)` is at a distance `r` from the origin iff x² + y² = r². This is the equation of the circle of radius `r` centered at the origin. The special case `r=1` is called the *unit circle* with equation `x² + y² = 1`.

Similarly, if `C = (h, k)` is any fixed point, then a point `(x, y)` is at a distance `r` from the point `C` iff `(x − h)² + (y − k)² = r²`; which is the equation of a circle of radius `r` centered at the point `(h, k)`.

## Circles

- `x² + y² = r²` a circle centered at (0,0)
- `x² + y² = 1` unit circle
- `(x-h)² + (y-k)² = 1` unit circle centered at (h,k)

## Functions

y = f(x)

## Shifts and Dilations

Manipulating input, `x`, affects the graph of the function in horizontal direction, while manipulating the output, `y`, affects the graph of the function in vertical direction.

Subtracting a constant `C` from input `x` results in shifting the graph horizontally by `C`: if `C` is positive, the function is `y = f(x - C)` and its graph is shifted to the *right* by `C`; if `C` is negative, the function is `y = f(x + C)` and its graph is shifted to the *left* by `C`.

Subtracting a constant `D` from output `y` results in shifting the graph vertically by `D`: if `D` is positive, the function is `y-D = f(x)` and its graph is shifted *up* by `D`; if `D` is negative, the function is `y+D = f(x)` and its graph is shifted *down* `D`.

**Shifting a function** `y = f(x)` means having it take the form `y-D = f(x-C)`, or, equivalently, `y = f(x-C) + D`. The constants (`C` and `D`) are subtracted to have their positive value mean right/up, and their negative mean left/down. Otherwise, adding a positive value to the input results in shifting the graph left, while adding a negative value (i.e. subtracting from the input) means shifting it right. And similarly for vertical displacement.

**Dilating a function** `y = f(x)` means having it take the form `y/B = f(x/A)`, or, equivalently, `y = f(x/A)∙B`. Manipulating the input affects the graph in the horizontal direction, manipulating the output in the vertical direction. Dividing the input by a constant, `A > 1`, stretches the graph horizontally; the graph is contracted in horizontal direction if `0 < A < 1`. In this case, we divide `x` by a number between 0 and 1 which is the same as mutiplying `x` by the reciprocal, e.g. `x/(1/3) = 3x`. Thus the function for *horizontal contraction* becomes `y = f(Ax)`.



Augmenting a function `y = f(x)` by the constants (A,B,C,D) allows for easily manipulating its graph by shifting it and/or dilating it.
```
y - D     ⎛ x - C ⎞
----- = f ⎜ ----- ⎟
  B       ⎝   A   ⎠
```


f(x)       | Shift        | Dilation
-----------|--------------|------------
Horizontal | y = f(x - C) | y = f(x/A)
Vertical   | y - D = f(x) | y/B = f(x)

Shift:
- Horizontal, `y = f(x - C)`
  - Right (C > 0), `y = f(x - C)`
  - Left  (C < 0), `y = f(x + C)`
- Vertical, `y - D = f(x)`
  - UP   (D > 0), `y - D = f(x)` or `y = f(x) + D`
  - DOWN (D < 0), `y + D = f(x)` or `y = f(x) - D`

Dilation:
- Horizontal, `y = f(x/A)`
  - Stretch      (A > 1) `y = f(x/A)`
  - Contract (0 < A < 1) `y = f(x/A)` i.e. `y = f(Ax)`
- Vertical, `y/B = f(x)`
  - Stretch       (B > 1) `y/B = f(x)` or `y = f(x) B`
  - Contract  (0 < B < 1) `y/B = f(x)`, i.e. `yB = f(x)` or `y = f(x)/B`

Shifts and dilations:

    (y - D) / B = f((x - C) / A)



Shift
- C > 0 ⇒ shift horizontal right, `y = f(x - C)`
- C < 0 ⇒ shift horizontal left,  `y = f(x + C)`
- D > 0 ⇒ shift vertical up,      `y - D = f(x)` or `y = f(x) + D`
- D < 0 ⇒ shift vertical down,    `y + D = f(x)` or `y = f(x) - D`

Dilation
- A > 1     ⇒ horizontal expansion,   `y = f(A x)`
- 0 < A < 1 ⇒ horizontal contraction, `y = f(x/A)`
- B > 1     ⇒ vertical expansion,     `y/B = f(x)` or `y = f(x) B`
- 0 < B < 1 ⇒ vertical contraction,   `y/B = f(x)` or `y = f(x) B`
