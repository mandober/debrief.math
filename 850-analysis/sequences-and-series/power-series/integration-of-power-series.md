# Power Series :: Integration

A power series `Σaₙ` can represent a function `f(x)` but only when the domain is restricted to a certain interval, called the *interval of convergence*. Only when the domain of `f` is within that *domain of convergence* does the series approximate the function accurately. Outside the domain of div, the series diverges.

```js
// power series (general form)
       ⎲∞
f(x) = ⎳ₙ₌₀ aₙ(x-c)ⁿ = a₀ + a₁(x-c) + a₂(x-c)² + a₃(x-c)³ + a₄(x-c)⁴ + ⋯

// fully explicit general form
       ⎲∞
f(x) = ⎳ₙ₌₀ aₙ(x-c)ⁿ = a₀(x-c)⁰ + a₁(x-c)¹ + a₂(x-c)² + a₃(x-c)³ + a₄(x-c)⁴+ ⋯
```

## Integrating terms

We want to integrate the power series, but with respect to… what? With respect to `x`, of course. Since terms have the general form `aₙ(x-c)ⁿ`, we need to use u-substitution by setting `u = x-c`.

```js
u = x - c
d/dx u = d/dx (x - c)
du/dx = 1
du = dx
```

Replacing `(x-c)` in each term by `u` means the terms will have the form `aₙuⁿ`, i.e. `a₀u⁰ + a₁u¹ + a₂u² + ⋯`, and `aₙ` coefficients are treated as constants.

```js
// term 0:
∫ a₀   du = a₀u    ==> a₀(x-c)
// term 1:
∫ a₁u  du = a₁u²/2 ==> a₁(x-c)²/2 = 1⁄2a₁(x-c)²
// term 2:
∫ a₂u² du = a₂u³/3 ==> a₂(x-c)³/3 = 1⁄3a₂(x-c)³
// term 3:
∫ a₃u³ du = a₃u⁴/4 ==> a₃(x-c)⁴/4 = 1⁄4a₃(x-c)⁴

// pattern emerges
Σ {n=1..∞} 1/n aₙ₋₁(x-c)ⁿ

// Note: we had to adjust the counter to start at 1
// (it was 0 in the original function)

// Thus, integrating f(x)
∫ f(x) dx =
// gives antiderivative that can be descibed by
⎲∞
⎳ₙ₌₁ 1/n aₙ₋₁(x-c)ⁿ = 1⁄1 a₀(x-c)¹
                     + 1⁄2 a₁(x-c)²
                     + 1⁄3 a₂(x-c)³
                     + 1⁄4 a₃(x-c)⁴
                     + 1⁄5 a₄(x-c)⁵
                     + 1⁄6 a₅(x-c)⁶
                     + ⋯
                     + C

// don't forget to append the constant of integration (+ C)
```


The integration of power series produces an indefinite integral (thus the trailling constant of integration `C`), which is a function that has a closed formula in the sigma notation. However, while the original function corresponding to the closed formula for power series in sigma notation initiates the count from 0, this one must either start the count from 1 or we must adjust the occurrences on `n` in the formula (to avoid division by zero).

```js
// starts at n=0
⎲∞     aₙ
⎳ₙ₌₀ ------- (x-c)ⁿᐩ¹
       n + 1

// starts at n=1
⎲∞    aₙ₋₁
⎳ₙ₌₀ ------ (x-c)ⁿ
        n

// initial term produced by the first formula:
(n=0): a₀/0+1 (x-c)⁰ᐩ¹ = a₀(x-c)

// initial term produced by the second formula:
(n=1): a₁₋₁/1 (x-c)¹ = a₀(x-c)

// The fact they are the same means the two formulas are equivalent.
```
