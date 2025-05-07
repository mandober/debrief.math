# Computing derivatives

The process of computing a derivative of a function is called differentiation, or "taking a derivative".

## With respect to

A derivative is computed with respect to a particular variable. Most of the time, it is evident which variable that is, as there is only one present. For example, a request to compute a derivative of function `f(x)` need not mention in respect to which variable as there is only `x`. If it's another variable in respect to which we need to take a derivative of a function, then it must be implicitly stated. Curiously, it is possible to take a derivative with respect to a variable that doesn't occur in the equation (function's body).

## Computing a derivative

```js
d/dx y = f′(x)
dy/dx = f′(x)
dy = f′(x)dx
```


An arbitrary (generic) function is denoted by
- f(x)
- f(x) = y

Derivative in Legrange notation
- f′(x)
- y′

Derivative in Lebniz notation
- d/dx f(x)
- df(x)/dx
- df/dx

Derivative in mixed notation
- d/dx f(x) = y′
- d/dx f(x) = y′
- d/dx y = f′(x)
- dy/dx = f′(x)
- dy = f′(x)dx


Considering a generic function form, `f(x)`, we can denote its derivative, using *Legrange notation*, by `f′(x)`, or, using Lebniz notation, by `d/dx f(x)`. In fact these are all valid forms of Lebniz notation:

A generic function form is also `f(x) = y`, where `y` represents the function's outut, just like `x` represents both function's paramter and eventual argument. This variable names make it easy to recognize that an order pair `(x, y)` is actually the same as `(x, f(x))`. So considering an arbitrary function `f(x) = y`, bedies the denotations above, we can denote its derivative in several additional, equivalent, ways:
- f′(x)
- y′
- d/dx f(x) = df(x)/dx = df/dx
- d/dx y = dy/dx
- f′(x) = y′





A concrete function 

```js
     y =  t³ − 4t² + 7t
d/dx y = (t³ − 4t² + 7t)′
dy/dx  = 3t² − 8t + 7
dy = (3t² − 8t + 7)dx

     y =       t³ − 4t² + 7t
d/dx y = d/dx (t³ − 4t² + 7t)
dy/dx = 3t² − 8t + 7
dy = (3t² − 8t + 7)dx
```
