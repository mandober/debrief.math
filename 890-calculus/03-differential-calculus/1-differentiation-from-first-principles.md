# Differentiation from the first principles

## Definition of the derivative

```js
 dy                f(x + h) - f(x)
---- = f′(x) = lim ---------------
 dx            h→0       h
```

## Finding a derivative

Finding the derivative of a particular function is often announced as "taking a derivative of the function", which, by default, implies finding the first derivative.

*Higher-order derivatives* are merely derivatives of derivatives, so they amount to just taking a derivative of some function. In the end, there is a function whose derivative we need to find, and whether that function resulted from a previous differentiation doesn't affect things much. Thus, taking any derivative is the same as finding the first derivative of a certain function.

The more important thing we need to decide on, is the variable with respect to which we'll be taking the derivative. Functions are differentiated with respect to a certain variable, and this also affects the notation. In simple cases, with unary algebraic functions of a single variable `x`, we typicially want to find the derivative with respect to the same variable `x`, so the operator for differentiation is `d/dx`. Applying this operator to a general (generic) function form, `f(x) = y`, looks as follows:

    d/dx y = d/dx f(x)

An alternative notation for denoting a derivative of a function is the Legrange notation with primes: `f′(x)` means `d/dx f(x)`. It is used when the variable with respect to which we differentiate is unambiguous, i.e. there's only one. It is also used to denote a generic form of differentiation:

    d/dx y = f′(x)

This means the same as above.




We apply the differentiation operator `d/dx` to find the derivative of a function with respect to some variable (typically `x`). It stems from the generic function notation, i.e. notation for general function form, `y = f(x)`, to which we apply `d/dx` to both sides of the equation, and get `d/dx y = d/dx f(x)`, which is `dy/dx = d/dx f(x)` or also written as `d/dx y = f′(x)`.

```js
y = f(x)             // a function
d/dx y = d/dx f(x)   // applying the derivative operator to both sides
dy/dx = f′(x)        // mixing notations
```





We'd like to find out the equation for the *tangent line* for a particular point on the curve plotted according to a function. However, a tangent line, like any line, is identified by two distinct points, but we only have one.
