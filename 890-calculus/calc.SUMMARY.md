# Calculus :: SUMMARY

## Dubious corner

1. Evaluating a limit will produce different answers depending on the time we evaluate it. Isn't that a little dubious?

2. Da fuck is the exact intention of expressing equations, functions really, in terms of y rather then x. y is just the output value, depending on some input x, but the function is still f(x) = y. It seems strange to refer to it as y(x)? Oh, yeah… the worst thing is when some authors use both y(x) and f(x) and stuff both in a notation, even though f(x) = y?! So then there's some kind of difference between f(x) and y and y(x)?! Also, wtf do they always use f(x) to refer to a function named f? f alone is enough; f is the name of the function, not f(x) for suck's sake! In the wild and as a practical example: in desmos, if you want to assign the function f(x) previously defined, to another function, i.e. to give it an alias, you can't do `g = f` - only `g(x) = f(x)` works. In fact, I have never witness anywhere that a function is referred to by its name, as in `f`; there's always a bloody param trailling, as in `f(x)`.

3. **Notation** and the **names of various parts and intermediate exp**. For example, what exactly is the *antiderivative* in `⎰f(x)dx`? Can it be pointed at? Ok, then, what is the part `f(x)` called - it is called an *integrand*, right? Does the part `f(x)dx` have a name, or the part `⎰f(x)`? The first step of eval a definite integral produces the *antiderivative* (right?) which is (in one notation system) placed between the brackets, `[F(x)]ₐᵇ`, with the bound on the side. Alt notation used is `F(x)|ₐᵇ`. Everything seems clear here, except the change of case - so we are definitely using the change of case as a way to denote that this is the antiderivative (right, this is what it is?) of the *integrand*? So the antiderivative of the integrand `f(x)` is `F(x)`. And the derivative of function `f(x)` is denoted `f′x` or `d/dx f(x)`. Ok, so after evaluating the integral, we get an antiderivative `F(x)`, which we place in brackets with bounds on the side. Then we plug in the bounds, `F(b) - F(a)`, yes? Which gives us the final answer. Guess, there's also no name for the form `F(b) - F(a)`?

4. **Notation, part 2**: What do `dx`, `du`, `dy`, `df` really really mean and  represent?! It is said they are just notation… notation my ass. Since they are obviously more then notation, what are they rights - what manipulations are allowed exactly?! What can we do with these fockers. One thing we can do is move, e.g. a `dx` to the other side of an equation like it's a bona fide term. Does it change the sign when it swaps sides? Ok, then, jsut this: what can we do with them? Can I get a complete list of available/allowed maneuvers, please? Pay attention: *Why let these notations (or whatever they are) become mysterious?* Why not have a list and state exactly what they mean, in what situation?


## Terms

- 2-d Cartesian coordinate system
  - unit
  - a point (x, y)
  - quadrant
    - I   x > 0, y > 0 (x,y > 0)
    - II  x < 0, y > 0
    - III x > 0, y < 0
    - IV  x < 0, y < 0 (x,y < 0)
  - origin (0, 0)
  - x-axis (x, 0)
  - y-axis (0, y)
- function
  - x-intercept
  - y-intercept
- line
  - line equation, `y = mx + b`
  - `m` accounts for the line's rotation
  - `b` accounts for the line's position (offset)
  - if `b = 0` the line intersects the origin
  - if `m > 0` the line is increasing
  - if `m < 0` the line is decreasing
  - if `m = 0` the line is horizontal
  - if `m = undefined` the line is vertical, i.e.
    as `m → ±∞`, the line tends to being perfectly vertical
  - slope (gradient) of a line, `m`
  - direction of a line
  - steepness (incline, grade) of a line
  - vertical to horizontal change
  - rise over run

Details
- a line is defined by two distinct points, (x₁, y₁) and (x₂, y₂).
- a line is defined by the equation `y = mx + b`.
- slope (gradient) of a line is a number describing both the direction and steepness (incline, grade) of the line.
- slope is calculated by finding the ratio of vertical to horizontal change, i.e. rise over run, between any two distinct points on a line.
- slope (gradient), direction, steepness (incline, grade) all pertain to a line
- slope is a quantity, a number
- gradient (slope) is a number that describes direction and grade of a line
- grade of a line, aka incline or steepness
- line gets de/increasing, not its slope/direction/grade
- line gets increasing, i.e. it goes up from left to right
- line gets decreasing, i.e. it goes down from left to right
- line gets horizontal, i.e. parallel with x-axis or orthogonal to y-axis
- line gets vertical,   i.e. parallel with y-axis or orthogonal to x-axis
- line is increasing (goes UP from ltr) if slope is positive
- line is decreasing (goes DOWN from ltr) if slope is negative
- line is horizontal (parallel to x-axis) if slope is zero
- line is vertical (orthogonal to x-axis) if slope is undefined
- when line is horizontal, the line equation is a constant function
- line equation: `y = f x = mx + b`
