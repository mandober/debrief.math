# Differential

In the context of differentiation, we write `dy/dx` or `f′(x)` to mean the same thing, taking a derivative. We use `dy/dx` as an operator, but there is a different way to think about derivatives.

A *differential* is an infinitely small quantity.

A differential is stated with respect to some variable, like `x`, as `dx`. This represents an infinitely small change in `x`.

A differential `dx` is closely related to `Δx`, sometimes they are equal. In general, `Δx` represents the difference in x-coordinates between any two points on a line or curve. Usually, we fix one point (determined by the x-coordinate) and label it `x₀`, while the other point is determined by some difference, `h`. The `h` is the difference, or the amount we nugde the arbitrary point toward the fixed one.



When comparing small changes in quantities that are related to each other, like in case where `y` is a function, then the differential `dy`, related to the function `y = f(x)`, is written `dy = f′(x) dx`.

We get from `dy/dx = f′(x)` to `dy = f′(x) dx` by treating `dy/dx` as a fraction whose parts we can manipulate, rather than as an operator.

```js
y = f(x)              // given a function
d/dx y = f′(x)        // we take derivative of each side
dy/dx = f′(x)         // trating d/dx as fraction
dy = f′(x) dx         // manipulating the equation
```

We can use a differential to estimate the real change in value of a function, `Δy`, caused by a small change in `x`, written as `Δx`.

We are introducing differentials here as an introduction to the notation used in integration: in `dy = f′(x) dx`, the right part will be placed under the integral sign, yielding `∫ f′(x) dx`.

## Relation between `dy` and `Δy`, `dx` and `Δx`

Δx_Δy_dx_dy.md


- `Δx` and `dx` are small changes in input
- `Δy` and `dy` are the related small changes in output

- `Δx` means change in `x`
- `Δy` means change in `y`

`Δx` represents the difference between a fixed point on a curve (point determined by an `x` value denoted `x₀`) and another arbitrary point, often denoted `x` or `x₀ + h`, where `h` represents the distance between the x-coordinates of the two points.

`dx` is a very small change in `x`, whereas `Δx` can be any size change.

`Δy/Δx` represents the average rate of change between two points on a curve. It measures how much `y` changes for every unit increase in `x`.
