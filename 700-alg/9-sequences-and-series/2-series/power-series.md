# Power series

https://www.youtube.com/watch?v=fUbBKN70Ag8&list=PLKc2XOQp0dMwj9zAXD5LlWpriIXIrGaNb&index=5

A power series is a convenient way to define or express a function as a *polynomial of infinite degree*. Inside the *interval of convergence* (which is their domain), we can treat such polynomials as regular polynomials and manipulate them in the same manner.

*Taylor polynomial* is a good approximation for a function near a known point. We can define Taylor polynomials in 3 different ways:
- using a limit
- using derivatives
- using explicit formula

## Motivation

What is the domain of the function `g(x) = Σ{n=0..∞} xⁿ/n3ⁿ`?

```js
       ⎲∞    xⁱ
g(x) = ⎳ᵢ₌₀ -----
              i3ⁱ
```

dom(g) = { x ∈ ℝ | series g(x) is convergent }

When x=0 the series converges, but which other values of `x` work too?

To check convergence we use the *ratio test*
- g(x) = Σ{n=0..∞} xⁿ/n3ⁿ
- let `aₙ = xⁿ/n3ⁿ`
- if the limit L < 1 then the series converges
- if the limit L > 1 then the series diverges

```js
L = lim{n→∞} |aₙ﹢₁| / |aₙ|

              |aₙ﹢₁|
L = lim{n→∞} -------
               |aₙ|


                 |x|ⁿᐩ¹
             -------------
             (n + 1) ⋅ 3ⁿᐩ¹
L = lim{n→∞} -------------
                 |x|ⁿ
             -------------
                n ⋅ 3ⁿ


                |x|ⁿᐩ¹ ⋅ n ⋅ 3ⁿ
L = lim{n→∞} --------------------
             |x|ⁿ ⋅ (n + 1) ⋅ 3ⁿᐩ¹


                |x|n
L = lim{n→∞} ----------
              3(n + 1)


              |x|     n
L = lim{n→∞} ----- -------
               3    n + 1

     |x|     ∞
L = ----- -------
      3    ∞ + 1

     |x|   ∞
L = ----- ---
      3    ∞

     |x|
L = ----- 1
      3

L = |x| / 3
```

- if limit `L < 1` then the series g(x) converges
  - L = |x|/3
  - |x|/3 < 1
  - |x| < 3
  - so the series `g(x)` converges if `|x| < 3`
  - which is when `-3 < x < 3`

- if limit `L > 1` then the series g(x) diverges
  - L = |x|/3
  - |x|/3 > 1
  - |x| > 3
  - so the series `g(x)` diverges if `|x| > 3`
  - which is when `-3 > x > 3`, i.e. `-3 > x` and `x > 3`

We still need to see what happens at -3 and 3
- g(x) = Σ{n=0..∞}    xⁿ/n3ⁿ
- g(3) = Σ{n=1..∞}    3ⁿ/n3ⁿ = Σ{n=1..∞}   1/n (divergent p-series)
- g(-3)= Σ{n=1..∞} (-3)ⁿ/n3ⁿ = Σ{n=1..∞} -1ⁿ/n (convergent by alternating test)

```
        cond converges                       diverges
diverges       │            converges            │      diverges
←──────────────┼────────────────┬────────────────┼──────────────→
              -3                0                3
```

- `x < -3`      diverges
- `x = -3`      conditionally converges
- `-3 < x < 3`  absolutelly converges
- `3 <= x`      diverges

So the domain of g(x) is `dom(g) = [-3, 3)`.

## Definition of power series

A power series, centered at `a ∈ ℝ`, is a function `f` defined by

```js
        ∞
       ⎲
f(x) = ⎳ cₙ(x - a)ⁿ (where cᵢ ∈ ℝ)
       ⁿ⁼⁰

dom(f) = {a} ∪ { x ∈ ℝ | series f converges }
```

Note that `a` is always in the domain of `f` function, `a ∈ dom(f)`.

The goal is to rewrite everything in Rust… akhm, as power series.


## Power series: the main theorem

3-part theorem about power series.

1. The domain of `f` is an interval centered at `a`.

If `R` is the length of the interval centered at `a`, then the interval can be
- open,        `(a-R, a+R)`
- closed,      `[a-R, a+R]`
- half-open,   `(a-R, a+R]`
- half-closed, `[a-R, a+R)`
- `ℝ` (all reals)
- `{a}` (only `a`)

This should make sense because the farther away `x` is from `a`, the larger `x-a` is, and therefore the more likely the series diverges. Whereas, the smaller `x-a` is, the closer it is to zero, which makes it more likely that the series converges.

The domain is called the *interval of convergence* (IC) of `f`.

The *radius of convergence* is the length `R` of the interval centered at `a`, and it could be `0 ≤ R ≤ ∞`. It is 0 in case the domain is a single point `a`; it is `∞` in case the domain is `ℝ`.

2. In the interior of the IC, the series is absolutely convergent.

- in the interior of the IC, the series is absolutely convergent
- in the exterior of the IC, the series is divergent
- anything is possible at endpoints

```hs
               ?                                 ?
diverges       │      absolutely converges       │     diverges
←──────────────┼────────────────┬────────────────┼──────────────→
              a-R               a              a+R
```

3. In the IC, power series can be treated "like polynomials".

In particular, they may be differentiated or integrated term-by-term, and this does not change the radius of convergence.

```js
        ∞
       ⎲
f(x) = ⎳ cₙ xⁿ = c₀ + c₁x + c₂x² + c₃x³ + …
       ⁿ⁼⁰

         ∞
        ⎲
f′(x) = ⎳ cₙ nxⁿᐩ¹ = c₁ + 2c₂x + 3c₃x² + …
       ⁿ⁼⁰

              ∞
⌠ˣ           ⎲    xⁿᐩ¹          x         x²        x³        x⁴
⌡₀ f(t) dt = ⎳ cₙ ----- === c₀----- + c₁----- + c₂----- + c₃----- + …
             ⁿ⁼⁰   n + 1         1         2         3         4
```

## Approximating functions by polynomials

The tangent line at a point `a` of the curve defined by function `f(x)` is an excellent approximation for the values of `f` but only in a very small range around the point `a`. After that range, the differences get larger fast.

- function `f(x)` with `a ∈ dom(f)`
- polynomial `P`
- difference (error) `R(x) = f(x) - P(x)`

`R` is the difference between the true value at `x`, as given by `f(x)`, and an estimation of that value as given by the polynomial `P(x)`. Here, this difference `R` is also referred to as "error" or "remainder".

We want that `P(x) ≈ f(x)` when `x` is close enough to `a`. However, to be precise we need to quantify the difference between the true value of the function `f` for an input `x` and the value obtained by a polynomial as an approximation, `R(x) = f(x) - P(x)`. The `R` signifies this difference or the "error" made due to using the polynomial `P` instead of the function `f` to calculate the value at `x`. We want to minimize `R(x)`.

### Figuring out the conditions that give a small error

We want an approximation near `a`, so perhaps the condition is that the error (difference) `R` at `a` is zero, `R(a) = 0`? This is not enough because there are many other lines that also have the error 0 at `a`, and some of them are terrible approximations (they are not tangent lines, though).

We want the approximation to be good when `x` is near `a`, not only exactly at `a`, so perhaps we need to take the limit, as `x` approaches `a`, of the error at `x` to be zero, `lim{x→a} R(x) = 0`. But this is still not enough because there are other lines which also satisfy that the limit of the error is zero (they are not tangent lines, though).

So, what's so special about the tangent line? The error for the tangent line approaches zero *faster* than for any other line. But then we have a problem to define what "fast" means. We'd need to somehow measure how fast a function is approaching its limit, and for that we need a scale.

### Precursor to the definition of approximation

Let `f` and `g` be two continuous functions at 0, and n ∈ ℕ. We say that `g` is an *approximation of `f` near `0` of order `n`* when the limit (as input `x` tends to 0) of the difference between `f(x)` and `g(x)` divided by `xⁿ`, is 0.

```js
         f(x) - g(x)
lim{x→0} ----------- = 0
              xⁿ
```

- `f` is the original function
- `g` is the function used to approximate `f`
- `a` is the point around which we approximate, here `a = 0`
- `n` measures how good the approximation is

This means that `f(x) = g(x) + R(x)`, and, as `x` tends to 0, `R(x)` tends to 0 faster then `xⁿ` does.

In the formula above, we might get an indeterminate form `0/0`. For it to resolve into 0, the numerator must win over the denominator. That is, the numerator must approach zero faster than the denominator does (which makes this a sensible definition for the notion of error).

### Definition of approximation

This works when `a = 0`, so for other approximations we need to shift the scale. To study approximations near `a`, we compare the error with powers of `x` minus `a`, `R(x)` and `(x-a)ⁿ`.

[def] Let `f` and `g` be continuous functions at `a`, and `a ∈ ℝ`, `n ∈ ℕ`. We say that `g` is an *approximation of `f` near `a` of order `n`* when the limit (as input `x` tends to `a`) of the difference between `f(x)` and `g(x)` divided by `xⁿ`, is zero.

```js
         f(x) - g(x)
lim{x→a} ----------- = 0
          (x - a)ⁿ
```

This means that `f(x) = g(x) + R(x)`, and, as `x` tends to `a`, error `R(x)` tends to 0 faster then `(x - a)ⁿ` does.

## First definition of a Taylor polynomial

The nth Taylor polynomial for the function `f` at `a ∈ ℝ`
- is a polynomial `Pₙ` such that
- it is an approx of `f` near `a` of order `n`
- with a degree that is at most `n`

```js
         f(x) - Pₙ(x)
lim{x→a} ----------- = 0
          (x - a)ⁿ
```

## Second definition of a Taylor polynomial

The first definition of a Taylor polynomial is not very friendly for computation, so we present another definition that uses derivatives.

A function `f(x)` is called
- `Cₙ` when its first `n` derivatives are continuous
- `C𝆘` when all its derivatives are continuous

Assuming `f` and `g` are continuous, we can rewrite this condition into a condition about derivatives.

```js
         f(x) - g(x)
lim{x→a} ----------- = 0
          (x - a)ⁿ
```

### Reprise of the L'Hopital's Rule

The notation below is problematic because the limit may not exist. However, for simplicity, we'll refer to this expression as `L` whether the limit exists or not.

```js
             f(x) - g(x)
L = lim{x→a} ----------- = 0
              (x - a)ⁿ
```

- if `f(a) - g(a) ≠ 0`, then `L = n/0` = `±∞`, where `n ≠ 0`. Since `n` is non-zero (or whatever) dividing it by 0 is *undefined* (and not ±∞).

Denominator is 0 because `(x-a)ⁿ`, as `x` tends to `a`, will be `(a-a)ⁿ = 0ⁿ = 0`. Possibly, the limit from the left and from the right will be different, but in any case, the limit won't be zero.

```js
              f′(x) - g′(x)
L ≛ lim{x→a} -------------- = 0
               n(x - a)ⁿ⁻¹
```

`≛` because the limit may not exist.
