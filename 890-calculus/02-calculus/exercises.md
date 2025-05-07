# Calculus 2 :: Exercises

## Area delimited by curves

### Exercise 1

Find area delimited by curves `f(x) = x²` and `g(x) = x + 2`.

We have the usual parabola for `x²`, and the identity function offset by 2 on the y-axes (shifted up by 2); the identity function is a line with slope 1 and y-intercept at (0, 2).

The surface we need to find the area for will be bounded (delimited) by the two function, which must be the reason separete bounds were not provided. To discover the (two) points of intersection of the two curves, we equate the equations and solve for `x`.

```
x+2 = x²
x²-x-2 = 0
(x-2)(x+1) = 0
means there are 2 solutions:
x-2=0, x=2
x+1=0, x=-1
```

Feeding this x-coordinates in either function gives the y-coordinate:

 x | x²| x+2
---|---|----
-1 | 1 | 1
 2 | 4 | 4
 0 | 0 | 2
-2 | 4 | 0

The points of intersections of these two curves are (-1, 1) and (2, 4).

To calculate the area demarked by intersecting curves, we normally have a function taking the larger area under its curve with the other function splitting that area - so we subtract the "bottom" from the "top" function to get the delineated area. However, here, it is not clear which one if which. To resolve this, usually it is sufficient to only consider the delineated area (not curves) and determine which function is encountered first as we swoop down from above. Here, we first encounter the shifted identity function, so it will be marked as the "top" function. Now we can form the integral where the integrand is the difference between `g` and `f`:

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
