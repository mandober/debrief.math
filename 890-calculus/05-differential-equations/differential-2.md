# Differentiatial

Differential comprises multiple related meanings of the word, both in calculus and differential geometry, such as an infinitesimal change in the value of a function.

## The Differential

In the differentiation chapter, we wrote `dy/dx` and `f′(x)` to mean the same thing - taking a derivative. We've used `dy/dx` as an operator. We'll now see a different way to write and think about derivatives.

A **differential** is an infinitely small quantity. A differential with respect to variable x is written `dx` and represents an infinitely small change in x. (x is just a dummy variable, it might've been y, t, then the corresponding differentials would be written dy, dt, etc.)

When comparing small changes in quantities that are related to each other, like in case where `y` is a function (value of a function), then the differential `dy`, related to the function `y = f(x)`, is written `dy = f′(x) dx`.

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

- Δx is any amount of change in input x
- Δx is just a difference between any two input values, `Δx = x₂ - x₁`
- Δy is a change in output y, as a consequence of the change in input x
- Δy is a difference between two output values, `Δy = y₂ - y₁`
- however, `Δy` depends on `Δx`, just like output `y` depends on input `x`
- in fact, output value `y` is fn applied to input value x, `f(x) = y`

In any function `f(x) = y`, variable `x` represents input values. Input values make up the domain set, call it `A`, and `x` is free to take on any value from set `A`. As a formula, `∀x(x ∈ A)`. Thus, `x` is an independent variable - it need not "consult" other variables before it takes on any input value. On the other hand, variable `y` represents output value of function `f`. In ranges over the codomain set `B`, but unlike `x`, it is not free to take on any value from that set. This is because `y` is a dependent variable, it depends on `x`. It must "consult" with `x` before it can take on a value.


the result of the function (i.e. function output value, or function value). However, it cannot represent

unlike `x`, variable `y` is not independent; on the contrary, it dependes exactly on the input `x`.


It ranges over the set of domain values. It is 

  - but output `y` is a dependent variable - it depends on input `x`
  - it doesn't freely range over the codomain set but is constrained by the relation `f(x) = y`, for all x in the domain.
  - thus, any var standing for output is really fn `f` applied to arg x, `f(x)`
  - so `Δy = y₂ - y₁ = f x₂ - f y₁`




- `Δx` and `dx` are small changes in input
- `Δx` and `dx` are small changes in input
- `Δy` and `dy` are the related small changes in output
- `Δy` means change in `y`

`Δx` represents the difference between a fixed point on a curve (point determined by an `x` value denoted `x₀`) and another arbitrary point, often denoted `x` or `x₀ + h`, where `h` represents the distance between the x-coordinates of the two points.

`dx` is a very small change in `x`, whereas `Δx` can be any size change.

`Δy/Δx` represents the average rate of change between two points on a curve. It measures how much `y` changes for every unit increase in `x`.
