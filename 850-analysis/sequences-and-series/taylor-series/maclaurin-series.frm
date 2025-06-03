# Maclaurin series of some functions

<!-- TOC -->

- [Geometric series](#geometric-series)
- [Exponential function](#exponential-function)
- [Logarithmic functions](#logarithmic-functions)
- [Trig functions](#trig-functions)
- [Inverse trig functions](#inverse-trig-functions)
- [Binomial series](#binomial-series)

<!-- /TOC -->

## Geometric series

- name: geometric series
- closed formula: Σxⁿ
- common ratio: x
- iteration start: n=0
- type: power series
- infinite sum: 1/(1-x)
- center of the series: 0
- radius of convergence: 1
- interval of convergence: `(-1, 1)`
- endpoints: -1 excluded, 1 excluded

```js
// geometric series (with r=x) converge if |x| < 1
  1     ⎲∞
----- = ⎳ₙ₌₀ xⁿ = x⁰ + x¹ + x² + x³ + x⁴ + x⁵ + ⋯
1 - x            = 1  + x  + x² + x³ + x⁴ + x⁵ + ⋯
```

## Exponential function

- name: exponential function
- closed formula: Σ xⁿ/n!
- iteration start: n=0
- type: power series
- center of the series: C = 0
- radius of convergence: R = ∞
- interval of convergence: `(-∞, ∞)`

```js
// exponential function
         ⎲∞    xⁿ     x⁰     x¹     x²     x³     x⁴     x⁵
exp(x) = ⎳ₙ₌₀ ---- = ---- + ---- + ---- + ---- + ---- + ---- +  ⋯
                n!     0!     1!     2!     3!     4!     5!

                    =  1 + x + x²/2 + x³/3 + x⁴/4 + x⁵/5 + ⋯

                    =  1 + x + 1⁄2x² + 1⁄3x³ + 1⁄4x⁴ + 1⁄5x⁵ + ⋯


// when x=1 we get the Euler's constant, e
         ⎲∞    1ⁿ     1      1      1      1      1
exp(1) = ⎳ₙ₌₀ ---- = ---- + ---- + ---- + ---- + ---- + …
                n!     0!     1!     2!     3!     4!

                    =  1 + 1 + 1/2! + 1/3! + 1/4! + 1/5! + ⋯
                    =  1 + 1 + 1/2 + 1/6 + 1/24 + 1/120 + ⋯
                    =  1 + 1 + 1⁄2 + 1⁄6 + 1⁄24 + 1⁄120 + ⋯
```

## Logarithmic functions

- center of the series: C = 0
- radius of convergence: R = 1
- interval of convergence: `(-1, 1]`
- endpoints: -1 (excluded), 1 (included)

```js
// R=1
          ⎲∞            xⁿ
ln(1+x) = ⎳ₙ₌₁ (-1)ⁿ⁻¹ ----
                         n
```


## Trig functions

```js
// R=∞
       ⎲∞          x²ⁿᐩ¹
sinx = ⎳ₙ₌₀ (-1)ⁿ --------   on (-∞, ∞)
                    (2n+1)!

// R=∞
       ⎲∞           x²ⁿ
cosx = ⎳ₙ₌₀ (-1)ⁿ --------   on (-∞, ∞)
                    (2n)!
```

## Inverse trig functions

```js
// R=1
         ⎲∞           x²ⁿᐩ¹
tan⁻¹x = ⎳ₙ₌₀ (-1)ⁿ ---------   on [-1, 1]
                      2n + 1

// R=1
         ⎲∞           x²ⁿᐩ¹
sin⁻¹x = ⎳ₙ₌₀ (-1)ⁿ ---------   on [-1, 1]
                      2n + 1
```


## Binomial series

```js
// R=1
           ⎲∞   ⎛ k ⎞
(1 + x)ᵏ = ⎳ₙ₌₀ ⎝ n ⎠ xⁿ
```
