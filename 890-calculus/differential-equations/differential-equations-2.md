# Differential equations

A **differential equation** is an equation involving an unknown function and its derivatives.

A DE is an **ordinary differential equation (ODE)** if the unknown function depends on a single independent variable. If the unknown function depends on two or more independent variables, the DE is a **partial differential equation**.

A Differential Equation is an equation with a function and one or more of its derivatives, `y + dy/dx = 5x`, which is an equation with function `y` and its derivative `dy/dx`. We solve DEs when we find the function `y` (or a set of functions `y`). There are many "tricks" to solving DEs (if they can be solved).

>Why are differential equations useful?
In our world things change, and describing how they change often ends up as a DE. There is no magic way to solve all DEs, but over the millennia great minds have been building on each others work and have discovered different methods (possibly long and complicated methods) of solving some types of DEs.

## Separation of variables

*Separation of variables*: special method to solve some DEs. May be used when all `y` terms (including `dy`) can be moved to one side of the equation, and all `x` terms (including `dx`) to the other side. Then integrate one side wrt `y` and the other side wrt `x`. Do not forget `+ C` (constant of integration).
1. group like terms - isolate like variables on each side
2. integrate both sides wrt the isolated variable

### Examples

3. Example, `dy/dx = ky`

```js
dy/dx = ky
dy/y = k dx             // group like terms
∫ 1/y dy = ∫ k dx       // itegrate both sides
ln(y) + C₁ = kx + C₂    // let C = C₂ - C₁
ln(y) = kx + C₂ - C₁    // rearrange
ln(y) = kx + C          // make both sides exponents of e
y = eᵏˣeᶜ               // let D = eᶜ
y = eᵏˣ D               // done!
```

2. Example, `dy/dx = 1/y`

```js
dy/dx = 1/y
y dy = dx
∫ y dy = ∫ 1 dx
y²/2 + C₁ = x + C₂
y²/2 = x + C₂ - C₁    // let C = C₂ - C₁
y²/2 = x + C          // it is enough to put just one const of integration
y² = 2x + 2C
y = ±√(2x + 2C)
```

The solution `y = ±√(2x + 2C)` is not the same as `y = ±√(2x) + C`, because `C` was added before we took the square root. This happens a lot with DEs. We cannot just add `C` at the end of the process; it is added during integration.

3. Example, `dy/dx = 2xy/1+x²`

```js
dy/dx = 2xy/(1 + x²)

 dy     2xy
---- = ------
 dx    1 + x²

 dy     2x
---- = ------ dx
 y     1 + x²

1/y dy = 2x/(1 + x²) dx
∫ 1/y dy = ∫ 2x/(1 + x²) dx
ln(y) + C₁ = 


2x/(1 + x²)
u = 1 + x²                  dv = 2x dx
d/dx u = (1 + x²)′      ∫ 1 dv = ∫ 2x dx
du/dx = 2x                v = x²
du = 2x dx


∫ 1/y dy = ∫ 1/u du      // let u=1+x², so du=2xdx
ln(y) = ln(u) + C        // integrate
ln(y) = ln(u) + ln(k)    // let C = ln(k)
y = k u                   // we get this
y = k (1 + x²)            // subst back u=1+x² in
```


https://www.mathsisfun.com/calculus/differential-equations-solution-guide.html

https://www.mathsisfun.com/calculus/differential-equations-first-order-linear.html

https://www.mathsisfun.com/calculus/differential-equations-homogeneous.html
