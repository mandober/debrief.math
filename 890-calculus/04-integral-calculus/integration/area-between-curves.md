# Area between curves

Calculating the area delimited by two or more intersecting curves: a surface is either delimited by functions, or the explicit bounds are also provided. The area is usually calculated by subtracting one function from the other because, commonly, one function defines a larger area under its curve with the other function just shrinking it (i.e. the area `B` as defined by function `g` is a subset of the area `A` as defined by function `f`), so it comes down to subtraction, `f(x) - g(x)`. But before subtracting the functions, we take their antiderivative, so it is:

```
⎛ᵇ
⎟ (f x - g x) dx
⎠ₐ
```

The function that defines the larger area is designated as the "top" function, with the other being the "bottom" functions. However, it is not always easy to determine this. Things can also get more complicated when we have two functions that intersect in 3 points, thereby delimiting 2 regions, which area we need to calculate.

In general, to determine which function is the "top", for each region, pick a point in between the intersecting points of the two functions; that is, pick an `x` value between the two sequential values on the x-axis that define the x-coordinate of the intersection points (it will be clearer in examples): whichever function produces a larger value (y coordinate) for that input (x coordinate) that is the top function. Sometimes, when two curves delineate two regions, the top and bottom functions will swap places, region-wise.

## Examples

### Example 1

>Find the area delimited by the functions `f(x) = x²` and `g(x) = x + 2`.

We have here the usual parabola as defined by the quadratic function `x²`, and an identity function (y = x) but offset by 2 on the y-axes, i.e. shifted up by 2. This shifted identity function is a line with slope 1 and y-intercept at point (0, 2) (which can be readily read off right off the equation).

The surface we need to find the area for, is bounded by the two functions, which is the reason no separete bounds were given. To discover the intersection points of these two curves, we equate their equations and solve for `x` (in general, there may be 1, 2, 3, or more solutions, or none at all).

```
x + 2 = x²              equate the equations and solve for x
x² - x - 2 = 0          that is, find the polynominal zeros
(x - 2)(x + 1) = 0      has 2 zeros meaning there are 2 solutions
x - 2 = 0, so x = 2
x + 1 = 0, so x = -1
```

These are the x-coordinates on the intersection points between the curves. To figure out the y-coordinates, feed these as inputs to either function.

x  | x²| x+2
---|---|----
-1 | 1 | 1
 2 | 4 | 4
 0 | 0 | 2
-2 | 4 | 0

The points of intersections are `(-1, 1)` and `(2, 4)`.

Now, to calculate the area delineated by these two intersecting functions, we need to figure out which function is on top. To do this, we pick a value in between the two x-coordinates we previously calculated (between those two x-coordinates that define the intersections). Those x values are x=-1 and x=2, so we pick a value in between, say 0, and see which function produces the greater output - that is the top function.

```
f(x) = x²
g(x) = x + 2
for x=0
f(0) = 0² = 0
g(0) = 0 + 2 = 2
```

So, `g` is the top function, meaning we need to set up an integral where the integrand is the difference between `g` and `f`:

```
⎛²                     ⎛²
⎟ (g(x) - f(x)) dx  =  ⎟ (x+2 - x²) dx
⎠˗₁                    ⎠˗₁
```

Before subtraction, *do not forget to take their antiderivatives*!

The antiderivative of `g(x) = x + 2` is `x²/2 + 2x`, and 
the antiderivative of `f(x) = x²` is `x³/3`.

Then we can evaluate the integral by plugging in the bounds and calculating the difference between the upper and lower bounds fed as arguments.

```
⎛ x²      ⎞   ⎛  x³ ⎞  ⎤²
⎜---- + 2x⎟ - ⎜-----⎟  ⎥
⎝ 2       ⎠   ⎝  3  ⎠  ⎦˗₁

⎛ 2²            2³  ⎞   ⎛-1²             -1³  ⎞
⎜---- + 2∙2 - ----- ⎟ - ⎜---- + 2(-1) - ----- ⎟
⎝ 2             3   ⎠   ⎝ 2               3   ⎠

18/3 - 8/3 - (3/6 - 12/6 + 2/6) = 9/4
```

The worksheet:

```
f(x) = x², g(x) = x + 2, intersection points: (-1, 1), (2, 4)

ₐ⎰ᵇ (g(x) - f(x)) dx

˗₁⎰² ((x+2) - (x²)) dx =                   …calc the antiderivative of each fn
((x²/2 + 2x) - (x³/3)) ˗₁|² =    
(x²/2 + 2x - x³/3) ˗₁|² =                       …plug in upper and lower bound
(2²/2 + 2(2) - 2³/3) - (-1²/2 + 2(-1) - -1³/3) =          …calc the difference
(4/2 + 4 - 8/3) - (1/2 - 2 + 1/3) =                         …the rest is arith
6 - 8/3 - (1/2 - 2 + 1/3) =
18/3 - 8/3 - (3/6 - 12/6 + 2/6) =
10/3 - (-7/6) =
20/6 + 7/6 =
27/6 =
9/4 = 4.5
```

The answer: the area delimited by the functions `x²` and `x+2` is 4.5

### Example 2
