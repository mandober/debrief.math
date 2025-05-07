# Slope

Slope or gradient is a property of a line in the Euclidean plane. The slope determines the inclination of the line. A line may be identified using the *slope-intercept* form of the line definition, `y = mx + b`, where `m` is the slope, and `b` is the y-intercept. The slope-intercept definition of a line is very convenient when the slope is the center of interest since it can be read off directly from the equation - unlike in other forms which requires some algebraic manipulations to determine the slope.

The slope of a line is also called *rise-over-run*, as it represents a *ratio* of the change in y-axes to the change in x-axes.

When a graph plots two dimensions, like *distance* on the y-axes and *time* on the x-axes, then a line is an equation that relates them. The slope, in particular, determines the relation between these two dimentsions (or quantities, in general), so that the "rise" represents the change of distance, and the "run" represents some amount of time during which this displacement has occurred. The slope then gives the average speed, as a ratio of distance and time, i.e. as a fraction with distance in the nominator and time as the denominator (distance divided by time), as measured in, e.g. m/s.

Taking any two points on the line `(x₁, y₁)` and `(x₂, y₂)`, the slope of the line may be calculated using the Pytagorean equation, `a² + b² = c²`.

The change in x is then `x₂ - x₁`, usually denoted by `Δx`, and  the change in y is `y₂ - y₁`, usually denoted by `Δy`, so the slope is `Δy/Δx`.

If we pick a point on the line and fix its x-coordinate, denoting it `x₀`, then the y-coordinate is also fixed `f x₀`, since the y-coordinate is actually the value of the linear function; that is, the value of the y-coordinate is the value of the function `f` at input `x`, in general, `f(x) = y`, but in this case, for `x₀`. Anyway, if we have a fixed point `(x₀, y₀) = (x₀, f x₀)`, we can let the other point vary, but its x-coordinate should be larger then `x₀`.

Then, we can denote the difference between `x₀` and the other x-coordinate as `h`. So, on the x-axes, we have a tick for `x₀`, then a tick for `x₀ + h`. On the y-axes, the tick corresponding to `x₀` is the value of `f` at x₀, so `f x₀`; the other tick is at `f (x₀ + h)`.

```
           ʸ↑
            │                ʙ
 f (x₀ + h) ┤┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┐ ┐
            │                ┆ │
            │                ┆ ├ Δy
            │      ᴀ         ┆ │
       f x₀ ┤┈┈┈┈┈┈┬┈┈┈┈┈┈┈┈┈┤ ┘
            │      ┆         ┆
────────────┼──────┼─────────┼───────────→ˣ
            0      x₀        x
                   └────┬────┘
                      h = Δx
```

The difference between the fixed point `(x₀, f x₀)` and any varying 
point `(x₀ + h, f (x₀ + h))` can be calculated using the Pytagorean theorem, except we don't need it, we need to find out the ratio between then, not the length of the hypotenuse.

```
P = (x, y)

A = (x₀, f x₀)
B = (x₀ + h, f (x₀ + h))

         rise     Δy    y₂ - y₁   f (x₀ + h) - f x₀   f (x₀ + h) - f x₀
slope = ------ = ---- = ------- = ----------------- = -----------------
         run      Δx    x₂ - x₁     (x₀ + h) - x₀             h
```
