# Derivative

* A derivative of a function measures the sensitivity to change of the function's output with respect to change in the input.

* A *differential* `dx` is closely related to *difference* `Δx`, and sometimes they are equal. In general, `Δx` represents the difference in x-coordinates between any two points on a line or curve. Usually, we fix one point (determined by the x-coordinate), `x₀`, while we let the other point vary and define it as an offset `h` from `x₀`. The `h = Δx` is the difference between these two inputs, and it tends to zero.

* We pick a point on the curve, defined by function `f(x) = y`, and call it a fixed point, `x₀`, in terms of which we can define a varying point as `x₀ + h`, where `h = Δx` is an offset that we want to keep decreasing as it tends to 0. 

* The stable point `x₀` is not actually a point but an input value (x-value). However, since we always do this with a particualr function in mind, we can easily determine the associated y-coordinate by applying the function to `x₀`, so `f(x₀) = y₀`, i.e. our stable point is defined by the coordinates `(x₀,y₀)`. The other point is defined by x-coordinate `x = x₀+h`, so its associated y-coordinate is obtained as `y = f(x₀+h)`. Then the coordinates `(x,y)` define the other (varying) point. The difference between the two points is a ratio that represents the difference of the corresponding pairs of coordinates.


```js
 Δy     f(x₀ + h) - f(x₀)    f(x + h) - f(x)
---- = ------------------- = ---------------
 Δx       (x₀ + h) - x₀             h

         f(x + h) - f(x)
lim{h→0} ---------------
                h
```
