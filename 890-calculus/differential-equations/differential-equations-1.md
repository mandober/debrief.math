# Differential equations

Differential equations arise whenever it is easier to describe change than absolute amounts.

It's easier to say why population sizes grow or shrink than it is to describe why they have some particular value at a point in time.

In physics, more specifically Newtonian mechanics, motion is often described in terms of force, and force determines acceleration, which is a statement about change.

Differential equations have two broad types:
- Ordinary Differential Equations (ODEs)
- Partial Differential Equations (PDEs)

PDEs, where the term "partial" indicates a function and its derivatives with respect to multiple independent variables. PDEs can be thought of as involving a whole continuum of values changing with time, like the temperature at every point of a solid body, or the velocity of a fluid at every point in space.

The term "ordinary" indicates a function and a derivative of this function with respect to a single input; a single independent variable. ODEs involve only a finite collection of values changing with time. It need not be time - that single independent variable can be something else, but things changing with time are the prototypical and most common example of differential equations.


## Solving ODEs

We want to solve for dependent variable `y`, which is a function of `x`. If we can get out a result of form `y = f(x)` then it would be an *explicit solution*.

If we get an algebraic equation that relates `x` and `y`, but we cannot rearrange it to express `y` in terms of `x`, then it is an *implicit solution*.

Explicit solution:

```js
dy/dx = x²
y = ∫ x² dx = 1⁄3x³ + C
```

In `+ C`, `C` was a constant of integration, but with DEs, an arbitrary constant like `C` makes for a *general solution*. It is a family of solutions, all satisfying the same DE.

We can constrain a general solution down to a single particular solution using *boundary conditions*, which are equation that rely key info about the solution.

*Initial condition* is one of boundary conditions, which tells us a value of the function at some point, e.g. `y(0) = 1` tells us that at `x = 0`, `y` is 1, which we can use to find the unknown constant `C`.

```js
dy/dx = x²          // DE
y = x³/3 + C        // general solution to the DE
y(0) = 1            // initial condition we can plug in
1 = 0³/3 + C        // to resolve C
1 = 0 + C
C = 1               // C is 1
y = x³/3 + 1        // particular solution
```

So a particular solution to the DE `dy/dx = x²`, satisfying the initial condition, `y(0) = 1`, is `y = x³/3 + 1`

The number of boundary conditions required to reach a particular solution depends on the DE's order.
- first derivative yields 1 `C` term
- second derivative yields 2 `C` terms
- third derivative yields 3 `C` terms

We repeatedly integrate a DE, each time reducing its order by one, until all the derivatives are gone; at that point we'll have generated that many different `C`s, each requiring a boundary condition in order to resolve it.
