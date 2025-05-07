# Transforming function graphs

Identity function, `f(x) = x`, in desmos plotted as an equation

    y = x

or, as a referencable function by giving it the proper head section

    f(x) = x

Sticking to the first form that stems from the immortal expression `f(x) = y`.

    y = x    default, unaffected, unparameterized form

This form can be parameterized by `a` and `b`, plus `c` and `d`.

## Moving the graph

    y - b = x - a
    y     = x - a + b

Moving the graph horizontally: `a`
- increasing `a > 0` → moves the graph to the right
- decreasing `a < 0` → moves the graph to the left

Moving the graph vertically: `b`
- increasing `b > 0` → moves the graph up
- decreasing `b < 0` → moves the graph down

## Diluting the graph

Diluting i.e. streching and squeezing.

```js
 y      x
---- = ----
 d      c
```

Strech/squeeze horizontally: `c`
- increasing `c > 0` → streches the graph
- decreasing `c < 0` → squeeze the graph

Strech/squeeze vertically: `d`
- increasing `d > 0` → streches the graph
- decreasing `d < 0` → squeeze the graph

## Transformation equation

```js
// transforming the graph
 y - b    x - a
------- = ------
   d        c

(y - b)/d = (x - a)/c
y - b = ((x - a)/c)d
y = ((x - a)/c)d + b
f(x) = ((x - a)/c)d + b

// with a movable point at (a,b)
f(x) = sin((x-a)/c) × d + b
   y = sin((x-a)/c) × d + b
 y-b = sin((x-a)/c) × d
(y-b)/d = sin((x-a)/c)

// quadratic
(y-b)/d = ((x-a)/c)²
```

On the right side, first the transformations are applied; the function is applied last. The input first goes through `-a` (as `x-a`), then the result of that is divided by `c`, and only then is the square applied. 

If the lhs transformations (affecting `y`) are moved to the rhs (to affect `x`), they are to affect the end result after al lof t he above first happens. And only after that, these transformations are applied: first multiplication by `d`, and finally addition of `b`.

When all transformations are on the lhs, the equation can be converted into a proper function by replacing `y` alone on the rhs by `f(x)`.

       y = sin((x-a)/c) × d + b
         ↓
    f(x) = sin((x-a)/c) × d + b

The input `x` is manipulated in this order (a, c, f, d, b):
- (a) first, subtract `a` from `x`
- (c) second, division by `c`
- (f) the function is applied (sin, _², ln x, …)
- (d) the result of which is then mul by `d`
- (b) finally, `b` is added

- `a` and `b` move the graph:
  - `a` horizontally
    - a > 0 move right
    - a < 0 move left
  - `b` vertically
    - b > 0 move up
    - b < 0 move down
- `c` and `d` strech/squeeze the graph:
  - `c` horizontally
  - `d` vertically
