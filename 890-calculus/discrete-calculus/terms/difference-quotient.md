# Difference quotient

https://en.wikipedia.org/wiki/Difference_quotient

In single-variable calculus, the **difference quotient** is usually the name for the expression

```js
f(x + h) − f(x)
---------------
      h
```

which, when taken to the limit, as `h` approaches 0, gives the derivative of the function `f`.

The name of the expression stems from the fact that it is the quotient of the difference of values of the function by the difference of the corresponding values of its argument; the latter is `(x + h) - x` which is just `h`.

The difference quotient is a measure of the *average rate of change* of the function over an interval (in this case, an interval of length `h`).

The limit of the difference quotient (i.e. the derivative) is thus the *instantaneous rate of change*.

By a slight change in notation (and viewpoint), for an interval [a,b], the difference quotient

```js
f(b) − f(a)
-----------
   b − a
```

is called the mean (or average) value of the derivative of `f` over the interval [a,b].

This name is justified by the *Mean Value Theorem*, which states that for a differentiable function `f`, its derivative `f′` reaches its mean value at some point in the interval.

Geometrically, this difference quotient measures the slope of the secant line passing through the points with coordinates `(a, f(a))` and `(b, f(b))`.

Difference quotients are used as approximations in numerical differentiation, but they have also been subject of criticism in this application.

Difference quotients may also find relevance in applications involving Time discretization, where the width of the time step is used for the value of `h`.

The difference quotient is sometimes also called the *Newton quotient* (after Isaac Newton) or *Fermat's difference quotient* (after Pierre de Fermat).
