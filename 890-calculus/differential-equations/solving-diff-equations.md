# Solving ODEs

## Separable differental equations

*Separable differental equation* is the simplest type of DE, which is an equation that can be written in a form `g(y)dy = f(x)dx`, where `f` and `g` are general functions, and `y` is an unknown function of `x`.

There are two approaches to obtaining a solution to separable DEs that have all `x`'s on one side and all `y`'s on the other.

### First approach

The equation `dy/dx = f(x)/g(y)` can be rearranged into `g(y)dy = f(x)dx`. Then, integrating both sides leads to the solution.

```js
dy/dx = f(x)/g(y)
g(y)dy = f(x)dx
∫ g(y) dy = ∫ f(x) dx
```

For example,

```js
dy/dx = (1 + sin(x)) / 15y⁴
15y⁴ dy = (1 + sin(x)) dx
∫ 15y⁴ dy = ∫ (1 + sin(x)) dx
15 y⁵/5 = ∫ 1 dx + ∫ sin(x) dx
3y⁵ + C₁ = x - cos(x) + C₂
3y⁵ = x - cos(x) + C₂ - C₁    // let C = C₂ - C₁
3y⁵ = x - cos(x) + C          // implicit general solution
y = ⁵√(1⁄3(x - cos(x) + C))    // explicit general solution
```

If we are given a boundary condition such as when `x=0` then `y=0` (i.e. y(0)=0), then we can find a particular solution by plugging it to solve for `C`. This particular boundary condition is the same as asking which curve of all the possible surves passes through the origin.

```js
3y⁵ = x - cos(x) + C
3(0)⁵ = 0 - cos(0) + C
0 = 0 - 1 + C
0 = -1 + C
C = 1
// thus, a specific solution is
y = ⁵√(1⁄3(x - cos(x) + 1))
```

### Second approach

Another way to solve DEs with boundary condition (which may be faster) is to use the bounds of integration and thus eliminate the need for the const of integration, `C`. We can incorporate the boundary condition after the step when we obtain the integral.

```js
dy/dx = (1 + sin(x)) / 15y⁴
15y⁴ dy = (1 + sin(x)) dx
∫ 15y⁴ dy = ∫ (1 + sin(x)) dx
```

If we choose the lower limit as our boundary condition `x=0` and `y=0`, while choosing the upper limit as the variables we are integrating (x and y, respectively), then the result will satisfy the boundary condition. 

```js
∫ 15y⁴ dy = ∫ (1 + sin(x)) dx
∫{0..y} 15y⁴ dy = ∫{0..x} (1 + sin(x)) dx
3y⁵ - 3(0)5 = (x - cos(x)) - (0 - cos(0))
3y⁵ = x - cos(x) + 1
y = ⁵√(1⁄3(x - cos(x) + 1))
```

We can evaluate these definite integrals to get an implicit solution, then rearranging it, we get the same explicit solution as before.

This second approach works well when the boundary condition is simple and looks like `y=a` when `x=b`. It would not work if the boundary condition was something else, and we'd have to use the first approach.
