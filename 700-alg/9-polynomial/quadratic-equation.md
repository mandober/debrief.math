# Quadratic equations

- the graph of a quadratic equation is a parabola
- 3 forms to state a quadratic equation
  - standard form, y = ax² + bx + c
  - vertex form,   y = a(x - h)² + k
  - factored form, y = a(x - m)(x - n)
  - x is indeterminate (independent variable, unknow)
  - y is a dependent variable
- *Standard form*: `y = ax² + bx + c`
  - `a, b, c` are coefficients, with `a≠0`
  - if `a=0`, it degrades into a linear equation, `y = bx + c` (with `b≠0`)
  - if `b=0`, it degrades into a constant, `y = c`, horizontal line
  - Coefficients of the equation:
    - `a` quadratic coefficient, determines concavity:
      - `a > 0` concave up
      - `a < 0` concave down
    - `b` linear coefficient
    - `c` constant coefficient (or free term), determines the y-intercept:
      - y-intercept is at `(0, c)`
- *Vertex form*: `y = a(x - h)² + k`
  - `(h, k)` vertex of a parabola
  - axis of symmetry is a verical line, def by `x = h`, through the vertex
  - `a > 0` concave up
  - `a < 0` concave down
  - "completing the square" converts the std form into the vertex form
  - -2x² + 20x - 11 ⇔ y = -2(x-5)² + 39
- *Factored form*: `y = a(x-m)(x-n)`
  - find x-intercepts by setting `x=0`
  - `y = a(0-m)(0-n)` means `y=0` when any of the 3 terms are 0:
    - when a=0 then y=0: `0(x-m)(x-n) = 0`
    - when m=0 then y=0: `a(0-0)(0-n) = 0`
    - when n=0 then y=0: `a(x-m)(0-0) = 0`
  - thus, x-intercepts are at `m` and `n`
  - axis of symmetry is a verical line def by `m + n/2`
  - `a > 0` concave up
  - `a < 0` concave down
  - "factoring the quadratic" converts the std into factored form
- The *vertex* of a parabola may be found
  - by completing the square
  - by factoring
  - using the formula `-b/2a`
- quadratic formula, `x = (-b ± √(b²-4ac))/2a` solves the quadratic equation
  - when `y` is set to zero, `ax² + bx + c = 0`
  - setting `y` to 0 converts a quadratic function into a quadratic equation
  - values of ⁠`x` satisfying the equation are called roots or zeros
  - geometrically, the roots are ⁠x⁠-intercepts
  - `±` indicates that the equation has 2 roots
  - `b²−4ac`⁠ is known as the *discriminant* of the quadratic equation
    -  if coefficients ⁠⁠`a⁠,b,c ∈ ℝ` then
    - when ⁠`b²−4ac > 0` the equation has 2 distinct real roots (in ℝ)
      - if `b²−4ac` is a perfect square, the solution is rational (in ℚ) 
        and the quadratic equation is factorable
      - if `b²−4ac` is not a perfect square the solution is irrational (in ℝ) 
        and the quadratic equation is not factorable
    - when ⁠`b²−4ac = 0` the equation has 1 repeated real root
    - when ⁠`b²−4ac < 0` the equation has no real roots, 
      but it has 2 complex roots, which are complex conjugates of each other.



Geometrically, the roots represent the ⁠`x` values at which the graph of the quadratic function ⁠`y = ax² + bx + c`, a parabola, crosses the ⁠x⁠-axis: the graph's *⁠x⁠-intercepts*. The quadratic formula can also be used to identify the parabola's axis of symmetry.

```js
// quadratic formula
    -b ± √(b² - 4ac)
x = ----------------
          2a
```
