# Derivative

https://en.wikipedia.org/wiki/Derivative

The derivative quantifies 
the sensitivity of change 
of a function's output 
with respect to its input.

The derivative of a unary function, 
at a chosen input value (when it exists), 
is the *slope of the tangent line* 
(to the graph of the function)
at that point.

The *tangent line* is 
the best linear approximation 
of the function 
near that input value. 

For this reason, 
the derivative is often described 
as the *instantaneous rate of change*, 
the ratio of the instantaneous change 
in the dependent variable 
to that of the independent variable.

The process of finding a derivative is called **differentiation**.

The higher-order derivatives can be applied in physics. For example, while 
the first derivative of the position of a moving object with respect to time is the object's *velocity* (how the position changes as time advances), the second derivative is the *acceleration* (how the velocity changes as time advances).

## Definition of a derivative

### Definition of derivative as a limit

A function of a real variable `f(x)` is *differentiable* at a point `a` of its domain, if its domain contains an open interval containing `a` and the limit exists, `L = lim{h→0} f(a+h) − f(a) / h`.



# Derivative

https://www.youtube.com/watch?v=WsQQvHm4lSw

The derivative of a function represents the slope of the *tangent line* at some point. The derivative is the *instantaneous rate of change*. The slope of the *secant line* is the *average rate of change*. A secant line has two points on the curve, a tangent line touches the curve at one point. Moving the two points that define a secant closer and closer together, we approximate better and better the tangent line. That is, as the difference between the two secant points tends to zero, the tangent line is better approximated.




## Calculating a derivative

>The power rule: `d/dx xⁿ = n xⁿ⁻¹`

Derivative of function `f` is denoted `fʹ`, i.e. derivative of function `f(x)` is denoted `fʹ(x)`. Derivation is also denoted `d/dx`.

```
f   x = x²     f    x = x³     f     x = x⁴       f      x = x⁵       fn f
fʹ  x = 2x     fʹ   x = 3x²    fʹ    x = 4x³      fʹ     x = 5x⁴      1st
fʹʹ x = 2      fʹʹ  x = 6x     fʹʹ   x = 12x²     fʹʹ    x = 20x³     2nd
fʹʹʹx = 0      fʹʹʹ x = 6      fʹʹʹ  x = 24x      fʹʹʹ   x = 60x²     3rd
               fʹʹʹʹx = 0      fʹʹʹʹ x = 24       fʹʹʹʹ  x = 120x     4th
                               fʹʹʹʹʹx = 0        fʹʹʹʹʹ x = 120      5th
                                                  fʹʹʹʹʹʹx = 0        6th

f    x = 3x³ + 4x² + 7
fʹ   x = 9x² + 8x  + 0
fʹʹ  x = 18x + 8
fʹʹʹ x = 18  + 0
fʹʹʹʹx = 0
```

### Example

The function `A(t) = 0.01t² + 0.5t + 100` represents the amount of water in liters in a tank at any time `t` (minutes).

1. What is the amount of water at t = 0,9,10,11,20?

Just plug in these `t`'s in the function:

t  | A(t)   | increase of water, Δy
---|--------|-----------------------------------
 0 | 100    | 
 9 | 105.31 | 
10 | 106    | +0.69  increase A(t) between t=9 and t=10
11 | 106.71 | +0.71  increase A(t) between t=10 and t=11, so avg is 0.7
20 | 114    | 

2. How fast is the amount of water changing at `t = 10`?

The rate of change of something is in the perview of derivatives. So we need to find the derivative function, `Aʹ`, of the function `A`. Then we can just plug in t = 10 into `Aʹ` to calculate the rate of change of water at time `t = 10`.

- A(t)  = 0.01 t²  + 0.5 t + 100
- Aʹ(t) = 0.01(2t) + 0.5   + 0

We can find the derivative of `A` by finding the derivatives of its 3 terms 
(`c` is a constant):
- `ct²` is `2ct`, so `d/dx (0.01t²) = 0.01 ∙ 2t¹ = 0.02t`
- `d/dx (ct) = c` so `d/dx (0.5t) = 0.5`
- `d/dx c = c`,   so `d/dx (100) = 0` (derivative of a constant is 0)

Thus, the derivative of `A` is:    
`Aʹ(t) = 0.02t + 0.5`

The rate of change of water at time `t = 10` is:    
`Aʹ(10)` = 0.02∙10 + 0.5 = 0.2 + 0.5 = 0.7

The answer:   
The rate of change of water at time `t = 10` is `0.7 liters/min`.


The value A(10) = `0.7` is the slope of the tangent line, `mₜₐₙ`. 
But how do we know this is correct. One way to verify it, is to approximate the slope of the tangent using the secant line, mᵗᵃⁿ ≈ mˢᵉᶜ.

The slope of the *tangent line* at some point x represents the *instantaneous rate of change*. The slope of the *secant line* is the *average rate of change*.

We can calculate the slope of the secant line using two points which are equidistant from the desired tangent point. In thsi example, those 2 points can be 9 and 11 (with the wanted point for tangent in the middle):

```
              Δy     A(t₂) - A(t₁)    106.71 - 105.31   1.4
mᵗᵃⁿ ≈ mˢᵉᶜ = ---- = -------------- = --------------- = ---- = 0.7
              Δx        t₂ - t₁           11 - 9         2
```

mᵗᵃⁿ ≈ mˢᵉᶜ = Δy / Δx = (106.71 - 105.31) / (11 - 9) = 1.4 / 2 = 0.7

We get the same answer, 0.7! So in this case, i.e. in this example, the slope of the secant line turns out to be the same as the slope of the tangent line.

Another way to see this, is to look at the increase of water i nthe tank at points t = 9, 10, 11

t  | A(t)   | increase of water, Δy
---|--------|-----------------------------------
 9 | 105.31 | 
10 | 106    | +0.69  increase A(t) between t=9 and t=10
11 | 106.71 | +0.71  increase A(t) between t=10 and t=11, so avg is 0.7

- At t=10, the amount of water has increased by +0.69 compared to t=9 (minute 9)
- At t=11, the amount of water has increased by +0.71 compared to t=10
- Averaging these two values we get the same result: (0.69 + 0.71) / 2 = `0.70`
