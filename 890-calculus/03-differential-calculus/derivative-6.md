# Derivatives

A derivative of a function represents the rate of change of that function at some point. Functions can be plotted in a coordinate system, resulting in a curve as defined by the set of ordered pairs `(x,y)` that make up the function.

Function `f` that takes a parameter `x` is denoted `f(x) = y`, where `y` represents the result of applying the function `f` to an argument `x`, i.e. the input and also the x-coordinate, resulting in the output value `y`, which is the second coordinate of the point defined by the input/output pair `(x, y)`.

A derivative of a function `f(x)` may be denoted `f′(x)`, or using Leibniz notation as `df/dx`, but since `y = f(x)` also by `dy/dx`. Importantly, the derivative is with regards to variable `x`.

A derivative of a function represents the rate of change or the *slope of the tangent line* at some point on the curve defined by the function.

## Deriving the slope of the tangent line

The problem with calculating derivatives, and thus the slope of the tangent lines, is that we don't have two points to reference, only a single point. We want to know the instantaneous rate of change at that point, which is equal to the slope of the tangent at that point. To approximate the tangent, we start by fixing one point `(x₀, y₀)` on the curve, then picking another point on the curve `(x, y)`. These two points are sufficient to find the equation for a *secant line* that connects them. Of course, we don't want the secant but tangent, so we decrease the difference in length between `x₀` and `x`, finding the equations for secant lines that connect the two points that are getting very close to each other. When the difference between `x₀` and `x` is very small (it is often denoted by `Δx`), the secant line almost coincides with the tangent. In fact, in the limit, as `Δx` tends to infinity, the secant does become the tangent line (at the point `(x₀, y₀)`).

Another approach to see this is to fix an x-coordinate, `x₀`, and express everything else in terms of it. First, its associated y-coordinate is `f(x₀)`, so we have a fixed point `(x₀, f(x₀))`. A point that varies and gets closer and closer to the fixed one is `(x, y)`, whose x-coordinate is `x₀ + h`, where `h` represents the absolute difference between `x₀` and `x`; its y-coordinate is `f(x₀ + h)`. Thus, (x, y) point is denoted by `(x₀ + h, f(x₀ + h))`.

So, we have a fixed point `(x₀, y₀)` given by `(x₀, f x₀)`, and a point that varies (x, y) given by `(x₀+h, f(x₀+h))`.

```js
(x₀, y₀) = (x₀, f(x₀))
(x, y) = (x₀+h, f(x₀+h))

Δx = x - x₀ = (x₀ + h) - x₀ = h
Δy = y - y₀ = f(x₀ + h) - (x₀ + h)

        f(x₀ + h) - f(x₀)   f(x₀ + h) - f(x₀)    Δy
f′(x) = ----------------- = ----------------- = ----
          (x₀ + h) - x₀            h             Δx
```

## Rules for derivatives

### Power rule

Given a function `f(x) = xⁿ`, its derivative is `f′(x) = nxⁿ⁻¹`.

The derivative of a constant fn is always 0. Given a const function `f(x)=c`, where `c` is a constant, its derivative is `f′(x) = 0`; e.g. f(x)=3, f′(x)=0.

The derivative of the identity function, `f(x) = x`, is 1. This is because `x` is `x¹`, so it becomes `1∙x⁰`, which is 1∙1 = 1.



Derivatives of
- (3)′ = 0
- (x)′ = 1
- (2x)′ = 2
- (x²)′ = 2x
- (3x²)′ = 6x
- (x³)′ = 3x²
- (4x³)′ = 12x²
- (sin x)′ = cos x
- (cos x)′ = -sin x

### Rule re constants

A constant can be pulled out, similarly like when evaluating limits: 
`(c ∙ x)′ = c ∙ (x)′`, aka `d/dx(cx) = c ∙ d/dx(x)`.


## First derivative

The first derivative signifies the rate of change of some function at some point. Each point on the curve defined by the function has its own derivative. Also, the value of the function at some point and its derivative at that point are separate, independent values.
