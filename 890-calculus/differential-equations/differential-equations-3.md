# Differential equations

## Differential equation

A **differential equation** (DE) is any equation which contains a function and its derivatives (either ordinary derivatives or partial derivatives).

A differential equation familiar to everyone is the *Newton's Second Law of Motion*: an object of mass `m` moving with acceleration `a` is being acted on with force `F`

    F = ma                             (1)

To see that this is in fact a DE we need to rewrite it. First, we can rewrite the acceleration, `a`, in one of two ways: as the first derivative of velocity, or as the second derivative of position:

    a = dv/dt                          (2)
    a = d²u/dt²

where
- `v` is the velocity of the object
- `u` is the position function of the object at any time `t`
- `F` force may be a function of time, velocity, and/or position

Newton's Second Law can now be written as a DE in terms of velocity or position

    m dv/dt = F(t, v)                        (3) ¹ˢᵗ ᵒʳᵈ⋅ ᴼᴰᴱ
    m d²u/dt² = F(t, u, du/dt)               (4) ²ⁿᵈ ᵒʳᵈ⋅ ᴼᴰᴱ

- position is a function of time, u(t)
  - `u` is a function of time `t`
- velocity is a function of time, v(t) = u′(t)
  - `v` is the 1st derivative of position `u`
- acceleration is a function of time, a(t) = v′(t) = u′′(t)
  - `a` is the 1st derivative of velocity `v`
  - `a` is the 2nd derivative of position `u`

More examples of DEs:

    ay′′ + by′ + cy = g(t)                    (5) ²ⁿᵈ ᵒʳᵈ⋅ ᴼᴰᴱ
    sin(y) d²y/dx² = (1−y) dy/dx + y²e⁻⁵ʸ     (6) ²ⁿᵈ ᵒʳᵈ⋅ ᴼᴰᴱ
    y⁽⁴⁾ + 10y′′′ − 4y′ + 2y = cos(t)         (7) ³ʳᵈ ᵒʳᵈ⋅ ᴼᴰᴱ
    α² ∂²u/∂x² = ∂u/∂t                        (8) ²ⁿᵈ ᵒʳᵈ⋅ ᴾᴰᴱ
    a²uₓₓ = u ₜ ₜ                                (9) ²ⁿᵈ ᵒʳᵈ⋅ ᴾᴰᴱ
    ∂³u/∂x²∂t = 1 + ∂u/∂y                     (10) ⁴ᵗʰ ᵒʳᵈ⋅ ᴾᴰᴱ


## Order

*Order of a differential equation* is the largest derivative present in a DE; it does not depend on whether it is an ordinary or partial derivative.

In the examples of differential equations above:
- first order DE: (3)
- second order DE: (4), (5), (6), (8), (9)
- third order DE: (10)
- fourth order DE: (7)

Most of solution techniques for second order DEs can be easily (and naturally) extended to higher order DEs.

## Ordinary and partial differential equations

**Ordinary Differential Equation** (ODE) contains ordinary derivatives. 
**Partial Differential Equation** (PDE) contains partial derivatives.

In the DEs examples above: ODEs are (3) - (7), PDEs are (8) - (10).

## Linear differential equations

**Linear Differential Equation** is any DE that can be written in the form:

    aₙ(t) y⁽ⁿ⁾(t)
      + aₙ˗₁(t) y⁽ⁿ⁻¹⁾(t)
        + …
          + a₅(t) y⁽⁵⁾(t)
            + a₄(t) y⁽⁴⁾(t)
              + a₃(t) y′′′(t)
                + a₂(t) y′′(t)
                  + a₁(t) y′(t)
                    + a₀(t) y(t)
    = g(t)                                    (11)


The important thing about Linear Differential Equations is that there are no products of the function `y` or its derivatives; and neither the function `y` nor its derivatives are raised to any power other than the first. Moreover, neither the function `y` nor its derivatives occur "inside" another function (as would be the case in e.g. √y or eʸ).

The *coefficients* `aᵢ` are generally coefficient functions. Coefficients and the function `g` can be zero or non-zero functions, constant or non-constant functions, linear or non-linear functions.

Only the function `y` and its derivatives are used in determining if a DE is linear. If a DE cannot be written in this form then it is a *non-linear differential equation*.

In (5) - (7) above only (6) is non-linear, the other two are linear DEs. We can't classify (3) and (4) since we do not know what form the function `F` has; these could be either linear or non-linear, depending on `F`.

## Solving DEs

A solution to a DE on an *interval* `α < t < β` is any function `y(t)` which satisfies the DE in this interval.

Solutions are often accompanied by intervals and an interval often conveys some important information about the solution. Consider the following example:

Show that `y(x) = x⁻³′²` is a solution to `4x²y′′ + 12xy′ + 3y = 0` for `x > 0`.

```js
y(x) = x⁻³′²
// solution to
4x²y′′ + 12xy′ + 3y = 0 /* for x > 0 */

// caclulate the 0th derivative (the fn itself)
y⁽⁰⁾(x) = x⁻³′²

// caclulate the 1st derivative
y′(x) = (x⁻³′²)′ = -3/2 x⁻⁵′²

// caclulate the 2nd derivative
y′′(x) = (x⁻³′²)′′ = (-3/2 x⁻⁵′²)′
y′′(x) = -3/2 × -5/2 x⁻⁷′² = 15/4 x⁻⁷′²

// plug these and the function into the DE:
4x²y′′ + 12xy′ + 3y = 0 /* for x > 0 */
4x²(15/4 x⁻⁷′²) + 12x(-3/2 x⁻⁵′²) + 3(x⁻³′²) = 0
15x⁴′² ⁻ ⁷′² - 18x²′² ⁻ ⁵′² + 3x⁻³′² = 0
15x⁻³′² - 18x⁻³′² + 3x⁻³′² = 0
(15 - 18 + 3)x⁻³′² = 0
0x⁻³′² = 0
0 = 0
```

So, `y(x) = x⁻³′²` does satisfy the DE and is a solution. Why then did we include the condition that `x > 0`? We did not use this condition anywhere.

To see why recall that `y(x) = x⁻³′² = √x⁻³ = √(1/x³) = 1/√x³`. In this form it is clear that we need to avoid `x=0` at least, as that is division by zero. Also, there is a general rule of thumb: start with real numbers, end with real numbers. In other words, if our DE only contains real numbers then we don't want solutions that give complex numbers. So, in order to avoid complex numbers we also need to avoid negative values of `x`.

This example shows that even though a function may symbolically satisfy a DE, because of certain restrictions brought about by the solution, we cannot use all values over which the independent variable ranges, so we must restrict it. This will be the case with many solutions to DEs.

In fact, many more solutions are possible to this DE. For instance, all of these are also solutions:

```js
y(x) = x⁻¹′²
y(x) = 7x⁻¹′²
y(x) = −9x⁻³′²
y(x) = −9x⁻³′² + 7x⁻¹′²
```

In fact, this DE has an infinite number of solutions.

Given that there is an infinite number of solutions to the DE in the last example, we can ask a natural question: Which is the solution we want, or does it matter which solution we use? This question leads us to the next section.

## Initial Conditions

Initial Conditions (IC) are a set of conditions on the solution that will allow us to determine which solution we want. Initial conditions are of the form:

    y   (t₀) = y₀     or
    y⁽ᵏ⁾(t₀) = yₖ

>In other words, *initial conditions* are values of the solution and/or its derivatives at specific points.

Solutions to "nice enough" DEs are unique and hence only one solution will meet the given initial conditions.

The number of initial conditions that are required for a given DE depends on its order.

The previous example only now with two initial conditions:

```js
y(x) = x⁻³′²
// solution to
4x²y′′ + 12xy′ + 3y = 0 /* for x > 0 */
// initial conditions:
y(4) = 1/8
y′(4) = -3/64

// derivatives
y(x) = x⁻³′²
y′(x) = -3/2 x⁻⁵′²

// apply to initial condition args
y(4) = 4⁻³′² = 1/8
y′(4) = -3/2 × 4⁻⁵′² = -3/2 × √4⁻⁵ = -3/2 × 2⁻⁵ = -3/2 × 1/32 = -3/64
```

So this solution also meets the initial conditions of
- y(4) = 1/8
- y′(4) = -3/64

In fact, `y(x) = x⁻³′²` is the only solution to this differential equation that satisfies these two initial conditions.

## Initial Value Problem

>*Initial Value Problem (IVP)* is a differential equation along with an appropriate number of initial conditions.

These are initial value problems:
- `4x²y′′ + 12xy′ + 3y = 0`, `y(4) = 1/8`, `y′(4) = -3/64`
- `2ty′ + 4y = 3`, `y(1) = −4`

The number of initial conditions required will depend on the order of the DE.

## Interval of Validity

The interval of validity for an IVP with initial conditions

    y   (t₀) = y₀
    y⁽ᵏ⁾(t₀) = yₖ

is the largest interval on which the solution is valid and contains `t₀`. They can be easy to define but difficult to find.

## General Solution

>The *general solution* to a DE is the most general form that the solution can take, without taking any initial conditions into account.

For example, `y(t) = 3/4 + c/t²` is the general solution to `2ty′ + 4y = 3`. All solutions to this DE will be in this form.

## Actual Solution

>The *actual solution* to a DE is the specific solution that not only satisfies the DE, but also satisfies the given initial conditions.

Once we have the general solution to a DE finding the actual solution is nothing more than applying the initial conditions and solving for the constants that are in the general solution.

## Implicit and explicit solutions

An *explicit solution* is any solution in the form `y = y(t)`. In other words, the only place that `y` actually shows up is once on the left side and only raised to the first power.

An *implicit solution* is any solution that is not in the explicit form.

It is possible to have either general implicit/explicit solutions and actual implicit/explicit solutions.

## First Order Differential Equations

The most general first order differential equation can be written as

    dy/dt = f(y,t)         (1)

There is no general formula to find the solution. Instead, we look at several special cases and see how to solve them. We also examine the theory behind first order DEs as well as some applications.

*Linear Equations*: solving linear first order DEs, i.e. those that have the form `y′ + p(t)y = g(t)`, and give an overview of the process used to solve them, and a derivation of the formula needed for the integrating factor used in the solution process.

*Separable Equations*: solving separable first order DEs, i.e. DEs of the form `N(y)y′ = M(x)`. We give a derivation of the solution process. Also how to find the *interval of validity* for the solution.

*Exact Equations*: we discuss identifying and solving exact DEs. We develop a test that used to identify exact DEs and give an explanation of the solution process.

*Bernoulli DEs*: solving Bernoulli DEs which have the form `y′ + p(t)y = yⁿ`. We also introduce the idea of using a substitution to help solve DEs.

*Substitutions*: a look at other substitutions used to solve some DEs. In particular, we discuss using solutions to solve DEs of the form `y′ = F(y/x)` and `y′ = G(ax+by)`.

*Intervals of Validity*: we look at intervals of validity and answer to the existence and uniqueness question for first order DEs.

*Modeling with First Order DEs*: we use first order DEs to model physical situations. In particular, we look at mixing problems (modeling the amount of a substance dissolved in a liquid and liquid both enters and exits), population problems (modeling a population under a variety of situations in which the population can enter or exit) and falling objects (modeling the velocity of a falling object under the influence of both gravity and air resistance).

*Equilibrium Solutions*: we define equilibrium solutions (or equilibrium points) for autonomous DEs, `y′ = f(y)`. We discuss classifying equilibrium solutions as asymptotically stable, unstable or semi-stable equilibrium solutions.

*Euler's Method*: we look at a method for approximating solutions to DEs. We derive the formulas used by Euler's Method and discuss the errors of approximations.
