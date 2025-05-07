# Slope


To find the derivative of a function `y = f(x)` we use the slope formula:

```
        Change in Y    Δy
Slope = ----------- = ----
        Change in X    Δx
```

- input `x` changes from `x` to `x₀ + Δx`
- output `y` changes from `f(x)` to `f(x₀ + Δx)`

`Δx` is a difference between a fixed point `x₀` and another arbitrary point `x`, `Δx = x - x₀`. Rather then picking and varying that other point, we can vary the difference instead - we vary the distance between a fixed point `x₀`, so the other point is determined by that distance, `x = x₀ + h`.

However, the notation `Δx` implies the limiting process, i.e. that the difference between a fixed `x₀` point and a varying point `x`, i.e. their difference `h`, `x - x₀ = h`, tends to 0. So, `Δx` is not merely `x - x₀`, but it is a difference between `x` and `x₀` that tends to 0, `lim{h→0}`.
Mathematical
This is the *Difference Quotient*:

```
f(x + Δx) − f(x)
----------------
      Δx
```

The difference quotient gives the average slope between two points on a curve `f(x)` that are `Δx` apart.


>What does `d/dx x² = 2x` mean?

It means that, for the function `y = x²`, the slope or "rate of change" at any point is `2x`. So, when x=2 the slope is 2x = 4; when x=5 the slope is 2x = 10, and so on. In the case of function `y = x²`, the derivative is the function `y = 2x`, which defines the line, `y = 2x + 0`, with the slope 2. The slope of the line defined by the derivative is 2, but the derivative is `2x`. The derivative `y = 2x + 0` has the same form as a line equation `y = mx + b` that defines a line using the slope-intercept form.

In case of the function `y = x³`, the derivative, `3x²`, is a curve rather then a line. In fact, the curve `3x²` looks like the previous function, `x²`, only squeezed by a factor of 3; that is, the derivative of `x³` is in the shape of parabola.

Curiosly, the derivative of `x⁴` is a prabola like `x²`, but these 2 functions have very different derivatives, `4x³` vs `2x`; that is, the derivative of `x⁴` has the shape of the function `x³`, and the derivative of `x²` is just a line. So, although the general shapes of the curves of `x⁴` and `x²` are similar, the shapes of their derivatives are not.
