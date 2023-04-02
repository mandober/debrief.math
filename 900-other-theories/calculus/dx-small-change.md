# Small change in the input

The full statement of Newton's method says that if `y` is an approximation to a root of a function `f`, then this is a better approximation:

```
      f(y)
y - --------
      f'(y)
```

where `f'(y)` is a derivative of `f` evaluated at `y`.

The *derivative* of a function `f(x)` is denoted `f'(x)`

```
f (x + dx) - f x
----------------
       dx
```

where `dx` is a small change in the input `x` (e.g. dx = 0.00001). Actually, the occurrence of the symbol `dx` implies that the difference (between the inputs `x` to the function) approaches some limit, here 0.

```
    f (x + dx) - f x
lim ----------------
x→0        dx
```



```
     y
     ↑
     │
     │
   y₂┼╌╌╌╌┬╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼
     │    ┆              ┆
     │    ┆              ┆
     │    ┆              ┆
     │    ┆              ┆
   y₁┼╌╌╌╌┼╌╌╌╌╌╌╌╌╌╌╌╌╌╌┼
     │    ┆              ┆
     │    ┆              ┆
─────┼────┼──────────────┼─────→ x
     0    x₁             x₂
          └──────┬───────┘
                 h


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
