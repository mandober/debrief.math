# Function as equation

All functions are equations, that is, all function definitions are equations.

`f(x) = x² + 3` is a function definition that has the form of an equation.

Some equations may be expressed (rewritten) as functions, and such equations are known as *implicit functions*. However, equations are more general then functions, so not all equations can be expressed as functions; at least, not as a single function - perhaps as a set of functions. For example, the equation for the unit circle, `x² + y² = 1`, is, obviously an equation, but is it also an implicit function? To figure that out, we need to rewrite it into an *explicit function* form, with `y` isolated by itself on one side.

```js
x² + y² = 1         // equation
y² = 1 - x²         // rearranged equation
y = ±√(1 - x²)      // still equation - not a function

y =  √(1 - x²)      // this is a function
y = -√(1 - x²)      // so is this
```

At one point, we had the expression `y² = 1 - x²`. To isolate `y` we need to take a square root of both sides. However, in such a situation we must account for negative numbers as well, since, e.g. `x² = 4` is satisfied in real numbers by `x=2` and also by `x=-2`; i.e. we rewrite the expression `x² = y` properly as `x = ±√y`. On the other hand, an expression like `x = √y` may be rewritten as `x² = y` because, in ℝ, we are not allowed to take square roots of negative numbers, so we know `y` must be a nonnegative number. Therefore, we need to account for both signs when we take a square root of the right hand side of that expression above. But then we have two expressions with opposite signs
- y = √(1 - x²)
- y = -√(1 - x²)

and this is definitely not a function. It means that a single input value `x` would be mapped to two distinct output values, which breaks *the fundamental property of functions*. But we can get two related functions out of the initial equation, though. The first function `y = √(1 - x²)` defines the upper half of the unit circle, while the function (which is a related but different function) `y = -√(1 - x²)` defines the lower semicircle.

This also happens with regular functions when they get rotated. Rotating the graph of the function `f(x) = x²` by 90ᵒ maintains the shape of the curve, but it ceises to be a function (verical function test fails). The resulting curve can be described by a pair of functions, though. The function `f(x) = √x` could define the part of the curve in the first quadrant. The function `f(x) = -√x` could define the part of the curve in the fourth quadrant.
