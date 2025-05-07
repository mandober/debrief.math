# Newton's method

The full statement of Newton's method says that if `y` is an approximation to a root of a function `f`, then `y - f(y) / f'(y)` is a better approximation, where `f'(y)` is a derivative of `f` evaluated at `y`.

```
f(x + dx) - f(x)
----------------
      dx
```

where `dx` represents a tiny change in the input `x` (say, dx = 0.00001). 

Actually, the appereance of the symbol `dx` implies that the difference (between the inputs `x` to the function) approaches some limit (here that limit is 0). This tiny difference, `dx`, is also denoted `Δx`, aka the change in `x`, but `Δx` just represents a difference, while `dx` implies that this difference is tiny as it tends to zero.

```
    f (x₀ + h) - f x₀
lim -----------------
h→0        h
```

## Graph

The function `f(x)` is not graphed, but its graph is a curve, e.g. `f(x) = x²`. Some familiar points of this function {(-2,4), (-1,1), (0,0), (1,1), (2,4), …}.

We pick a familiar point we know is on the curve, say (1,1), and we make it a fixed point, referred to by `(x₀, y₀)`. In fact, for this derivation, we can just fix the x-coordinate `x₀` and express everything else in terms of it.

First, the y-coordinate associated to `x₀` is `f(x₀)`, so we have a fixed point denoted by `(x₀, y₀)` or `(x₀, f x₀)`.

The other, varying point, `(x, y)`, is first picked arbitrarily, and we denote the absolute difference between the x-coordinates `x₀` and `x` as `h = x - x₀`. So `h` is the difference between `x₀` and another coordinate `x` that is `h` number away from `x₀`, i.e. `x = x₀ + h`, that is, `h = x - x₀`.

This difference is what will be varied - we want to move the other coordinate, `x = x₀ + h`, closer and closer to the first, `x₀`, so `h` keeps getting smaller and smaller. We want to see how this tiny change in input (`x`) reflects on the change in the output (`y`), as `y = f(x)`.


```
     ↑
     │
     │
    y┼╌╌╌╌┬╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼
     │    ┆              ┆
     │    ┆              ┆
     │    ┆              ┆
     │    ┆              ┆
   y₀┼╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼
     │    ┆              ┆
     │    ┆              ┆
─────┼────┼──────────────┼─────→
     0    x₀             x
          └──────┬───────┘
           h = Δx = x - x₀


x₂ = x₁ + h
Δx = h = x₂ - x₁

y₁ = f x₁
y₂ = f x₂ = f (x₁ + h)

Δy = f x₂ - f x₁
Δy = f (x₁ + h) - f x₁


 Δy
---- = 
 Δx 
```
