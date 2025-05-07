# Parametric equations

https://www.youtube.com/playlist?list=PLX2gX-ftPVXX75yjCrpPAEFYSJAB9AaMv

>A parametric equation is an equation that expresses each variable of the equation in term of another variable.

An equation for a circle with radius `r` is `x² + y² = r²`, but both variables `x` and `y` (`r` is a constant) can be expressed in terms of another variable, `t`, as `x = r⋅cos(t)` and `y = r⋅sin(t)`. The variable `t` here is the angle (usually denoted by Θ) in radians. For each value of `t`, we get a different value of `x` and `y`, so `x` and `y` behave like functions with parameter `t`. A pair of coordinates on the circle is `(x, y) = (r⋅cos(t), r⋅sin(t))`.

```js
x² + y² = r²
x = r⋅cos(t)
y = r⋅sin(t)

(r⋅cos(t))² + (r⋅sin(t))² = r²
r²cos²(t) + r²sin²(t) = r²
r²( cos²(t) + sin²(t) ) = r²
r² = r²

since: cos²(t) + sin²(t) = 1 (Pythagorean identity)
```

## Converting parameteric equations

>How to convert parametric equations into the equation they represent?

Given a pair of equations, 
`x = g(t) = 2t` and 
`y = h(t) = 1/2t² - 4` 
how can we determine what `y = f(x)` is?

From `x = 2t`, we get that `t = x/2`. Now we can subst this value of `t` into the other equation: `y = 1/2(x/2)² - 4`, which simplifies to `y = x²/8 - 4`, which is the equation we're looking for.


## Derivatives of parameteric equations

Finding the derivative of `y` with respect to `x`, `dy/dx`, in terms of the parametric variable `t`. Given `x = f(t)`, `y = g(t)`, `y = F(x)`, find `dy/dx`?

Want `dy/dx` in terms of `t`.

```
x = f(t)        dx/dt = f′(t)
y = g(t)        dy/dt = g′(t)
y = F(x)        dy/dx = F′(x) = d/dx F(x)
dy/dx = ?

y     = g(t)  = F(x)      = F(f(t))           Take derivative of all sides
dy/dx = g′(t) = d/dx F(x) = F′(f(t)) ⋅ f′(t)

F′(f(x)) = g′(t) / f′(t)
F′(x)    = g′(t) / f′(t)
dy/dx    = dy/dt ÷ dx/dt

-----------------------
     y = F(x)
     y′= F′(x)
d/dx y = d/dx F(x)
 dy/dx = dF(x)/dx
-----------------------
dy/dx = F′(x)
dx/dt = f′(t)
dy/dt = g′(t)
-----------------------
     y = g(t)
     y′= g′(t)
d/dt y = d/dt g(t)
 dy/dt = d/dt g(t)
```

>dy/dx = dy/dt ÷ dx/dt
