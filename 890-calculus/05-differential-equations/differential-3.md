# Differentiatials

https://tutorial.math.lamar.edu/Classes/CalcI/Differentials.aspx
https://www.intmath.com/integration/integration-mini-lecture-differentials.php

https://www.mathsisfun.com/calculus/differential-equations.html
https://www.mathsisfun.com/calculus/separation-variables.html
https://www.mathsisfun.com/calculus/differential-equations-solution-guide.html
https://www.mathsisfun.com/calculus/differential-equations-first-order-linear.html
https://www.mathsisfun.com/calculus/differential-equations-homogeneous.html
https://www.mathsisfun.com/calculus/differential-equations-bernoulli.html
https://www.mathsisfun.com/calculus/differential-equations-second-order.html
https://www.mathsisfun.com/calculus/differential-equations-undetermined-coefficients.html
https://www.mathsisfun.com/calculus/differential-equations-variation-parameters.html
https://www.mathsisfun.com/calculus/differential-equations-exact-factors.html
https://www.mathsisfun.com/calculus/derivatives-partial.html
https://www.mathsisfun.com/calculus/homogeneous-function.html



Differentiatial, or differentiatial equation, is an equation with a function and one or more of its derivatives.

An example of an equation with the function `y` and its differential `dy/dx`, `y + dy/dx = 5x`. The `dy/dx` part is called differential or derivative.

## Solving

We solve a differentiatial equation by discovering the function `y` or a family of functions `y`, if they even have a solution. There are many rules, as well as "tricks" and shortcuts that aid solving them.

Things change, and describing how they change often ends up as a differential equation. Differential equations can describe how populations change, how springs vibrate, distribution of heat, how radioactive material decays, and much more. They are a natural way to describe the change in general.

## Example with rabbit population

The more rabbits we have the more baby rabbits we get. Then those rabbits grow up and have babies too. The population will grow faster and faster.

The important parts of this are:
- the population `N` at any time `t`
- the growth rate `r`
- the population's rate of change `dN/dt`

Think of `dN/dt` as how much the population changes as time changes, for any moment in time.

Consider the growth rate `r = 0.01` new rabbits per week for every current rabbit. When the population is 1000, the rate of change `dN/dt` is 1000 × 0.01 = 10 new rabbits per week. But that is only true at a specific instant in time, as it does not include the fact that the population is constantly increasing (similar to interest). The bigger the population, the more rabbits we keep getting. When the population is 2000 we get 2000 × 0.01 = 20 new rabbits per week. So it is better to say that *the rate of change (at any instant) is the growth rate times the population at that instant*, `dN/dt = rN`. This is a differential equation because it has a function `N(t)` and its derivative. The function `N(t)` is the function of population in terms time. It says that the rate of change of population over time equals the growth rate times the (current) population.
