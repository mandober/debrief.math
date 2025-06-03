# Taylor Series

https://www.youtube.com/playlist?list=PL68EAB0099AFEAAA5

## Summary

- everywhere continuous function
- infinitely differentiable function
- interval of convergence (IOC)
- domain of convergence (DOC)
- radius of convergence (ROC)
- power series
- analytic function
- common functions as power series
- Cauchy-Hadamard theorem
- Taylor polynomial, P(x)
- nth Taylor polynomial, Pₙ(x)
- Taylor series
- Maclaurin series, is a Taylor series at 0
- Maclaurin series for `f(x) = eˣ`
- Maclaurin series with a substitution


## Taylor series vs Maclaurin series

Both Taylor and Maclaurin series can express and approximate functions as infinite series. Both series can express any function exactly, meaning that applying the function to an argument `x` gives the same answer as an evaluation of the corresponding series at that `x`. The phrase "an evaluation" (instead of the evaluation) is meant to suggest that a concrete series, at a certain value, can be evaluated differently with respect to the number of terms which get evaluated. There is an infinite number of terms, and evaluating them all would yield identical answer as the function which the series models does for that input. Fortunately, there is seldom a need to evaluate a lot of terms since evaluating only a few already gives us a precise enough value. Roughly, it takes 5 to 10 terms and we already have a few correct digits after the decimal point. Sometimes it takes only 3-4 terms to get a decent enough approximation since many series rapidly converge to the exact value.

The Maclaurin series is the Taylor series with `a` fixed at zero (`a` is an x-value which determines the radius and thus the interval of convergence).

Maclaurin and Taylor series are equivalent in that both can express any function, but the big advantage of Taylor series is that it converges much faster. The evaluation of the Taylor series doesn't take nearly as many terms as the Maclaurin series does with `a` close to the value we want to evaluate the function at.


## Taylor series

```js
/* Taylor polynomial */
        n
        ⎲  f⁽ᵏ⁾(a)
Pₙ(x) = ⎳ -------- (x - a)ᵏ
       ᵏ⁼⁰    k!

/* Taylor series */
        ∞
       ⎲  f⁽ᵏ⁾(a)
f(x) = ⎳ -------- (x - a)ᵏ
       ᵏ⁼⁰    k!


/* Maclaurin series */
// Maclaurin series is like the Taylor series at a=0 (`a` is an x-value)
// f⁽ᵏ⁾(0) are the first k derivatives evaluated at 0
        ∞
       ⎲  f⁽ᵏ⁾(0)
f(x) = ⎳ -------- xᵏ
       ᵏ⁼⁰    k!


       f⁽⁰⁾(0)      f⁽¹⁾(0)    f⁽²⁾(0)     f⁽³⁾(0)
f(0) = -------x⁰ + -------x¹ + -------x² + -------x³ + …
          0!           1!         2!          3!


/* Maclaurin series for exp */
// exp(x) = eˣ and all its derivatives are the same, eˣ
// At x=0 they all evaluate to 1 since exp(0) = e⁰ = 1
               ∞                 ∞
              ⎲  e⁽ᵏ⁾(0)       ⎲  1
exp(x) = eˣ = ⎳ -------- xᵏ =  ⎳ ---- xᵏ
              ᵏ⁼⁰    k!         ᵏ⁼⁰  k!

/* Maclaurin series for sin */
          ∞
         ⎲         x²ᵏᐩ¹
sin(x) = ⎳ (-1)ᵏ ----------
         ᵏ⁼⁰       (2k + 1)!

/* Maclaurin series for cos */
          ∞
         ⎲        x²ᵏ
cos(x) = ⎳ (-1)ᵏ ------
         ᵏ⁼⁰       (2k)!
```


## Motivation and Derivation

We have a function `f` that is
- everywhere continuous
- infinitely differentiable
- `f` is a quadratic polynomial, `f(x) = a₀ + a₁x + a₂x²`
- we know the values: f(0), f′(0), f′′(0)
- f(0) = a₀
- f′(x) = a₁ + 2a₂x
- f′(0) = a₁

- f′′(x) = 2a₂
- f′′(0) = 2a₂



```js
f(x) = a₀ + a₁x + a₂x²
// can we figure out the coefficients if we only know
// the values of f at 0, f′ at 0 and f′′ at 0

// if these are known:
f(0), f′(0), f′′(0)

// eval f at 0
f(0) = a₀ + a₁0 + a₂0² = a₀
f(0) = a₀
a₀ = f(0)       // coefficient a₀

// find the 1st derivative
f′(x) = (a₀ + a₁x + a₂x²)′ = a₁ + 2a₂x
f′(x) = a₁ + 2a₂x
// eval it at 0
f′(0) = a₁ + 2a₂0 = a₁
f′(0) = a₁
a₁ = f′(0)      // coefficient a₁

// find the 2nd derivative
f′′(x) = (a₁ + 2a₂x)′ = 2a₂
f′′(x) = 2a₂
// eval it at 0
f′′(0) = 2a₂
a₂ = f′′(0)/2   // coefficient a₂

// rewrite f
f(x) = a₀   + a₁x     + a₂x²
f(0) = f(0) + f′(0) x + x² f′′(0)/2

              f′(0)     f′′(0)
f(0) = f(0) + ----- x + ------ x²
                1         2

              f′(0)     f′′(0)
f(0) = f(0) + ----- x + ------ x²
                1!        2!

// with more terms in the polynomial, we'd get this series:

       f(0)      f′(0)      f′′(0)      f′′′(0)       f′′′′(0)
f(x) = ---- x⁰ + ----- x¹ + ------ x² + ------- x³ + -------- x⁴ + …
        0!         1!         2!           3!           4!
```

If we instead know the values at some other input `x₀`

```js
f(x) = a₀ + a₁(x - x₀) + a₂(x - x₀)² + a₃(x - x₀)³ + …

// plug in x₀
f(x₀) = a₀ + a₁(x₀ - x₀) + a₂(x₀ - x₀)² + a₃(x₀ - x₀)³ + …
f(x₀) = a₀ + a₁0 + a₂0² + a₃0³ + …
f(x₀) = a₀

// 1st derivative
f′(x) = (a₀ + a₁(x - x₀)¹ + a₂(x - x₀)² + a₃(x - x₀)³ + …)′
f′(x) =  0  + a₁(x - x₀)⁰ + 2a₂(x - x₀)¹ + 3a₃(x - x₀)² + …
f′(x) = a₁ + 2a₂(x - x₀)¹ + 3a₃(x - x₀)² + …
// eval it at x₀
f′(x₀) = a₁ + 2a₂(x₀ - x₀) + 3a₃(x₀ - x₀)² + …
f′(x₀) = a₁ + 2a₂0 + 3a₃0² + …
f′(x₀) = a₁

// 2nd derivative
f′′(x) = (a₀ + a₁(x - x₀)¹ + a₂(x - x₀)² + a₃(x - x₀)³ + …)′′
f′′(x) = (a₁ + 2a₂(x - x₀)¹ + 3a₃(x - x₀)² + …)′
f′′(x) =  0  + 2a₂(x - x₀)⁰ + 6a₃(x - x₀)¹ + …
f′′(x) = 2a₂ + 6a₃(x - x₀) + …
// eval it at x₀
f′′(x₀) = 2a₂ + 6a₃(x₀ - x₀) + …
f′′(x₀) = 2a₂ + 6a₃0 + …
f′′(x₀) = 2a₂

// 3rd derivative evaluated at x₀
f′′′(x₀) = 3 ⋅ 2 ⋅ 1 ⋅ a₃ + 4 ⋅ 3 ⋅ 2 ⋅ a₄(x₀ - x₀)¹ + …
f′′′(x₀) = 6a₃
```

The pattern emerges:

```js
f(x)     = a₀             = a₀
f′(x)    = 1 ⋅ a₁          = a₁
f′′(x)   = 2 ⋅ 1 ⋅ a₂       = 2a₂
f′′′(x)  = 3 ⋅ 2 ⋅ 1 ⋅ a₃    = 6a₃
f′′′′(x) = 4 ⋅ 3 ⋅ 2 ⋅ 1 ⋅ a₄ = 24a₄

f⁽ⁿ⁾(x) = n ⋅ (n - 1) ⋅ … ⋅ 2 ⋅ 1 ⋅ aₙ
f⁽ⁿ⁾(x) = n! aₙ

// coefficient formula
     f⁽ⁿ⁾(x)
aₙ = --------
       n!


        ∞
       ⎲  f⁽ⁿ⁾(x₀)
f(x) = ⎳ ---------- (x - x₀)ⁿ
       ⁿ⁼⁰    n!


       f⁽⁰⁾(x₀)   f⁽¹⁾(x₀)          f⁽²⁾(x₀)            f⁽³⁾(x₀)             
f(x) = -------- + -------- (x-x₀) + --------- (x-x₀)² + -------- (x-x₀)³ + …
          0!         1!                2!                  3!                
```

- This is only possible if `f` is infinitely differentiable
- For sin, cos, and exponential functions, it always converges
- It doesn't converge for every function or every value of `x`


## Cauchy-Hadamard theorem

```js
// version 1
            1
r = ---------------------
     lim{n→∞} sup ⁿ√|aₙ|

// version 2

              |aₙ|
r = lim{n→∞} -------
              |aₙ﹢₁|
```

`sup` means getting the highest value out of the formula.


## Definition of Taylor polynomial

The `n`th Taylor polynomial for `f` at `a` is

```js
        ⁿ
        ⎲ f⁽ᵏ⁾(a)
Pₙ(x) = ⎳ ------- (x - a)ᵏ
       ᵏ⁼⁰   k!
```

- a ∈ ℝ
- n ∈ ℕ
- `f` is continuous at `a`, its first `n` derivatives must exist
- `a` is the input value around which is the ε-neighbourhood of δ
- `a` is the point around which we approximate

The polynomial, by construction, has degree at most `n`, degree `Pₙ ≤ n`. The terms up to degree `n` are enough to make sure the polynomial and the function have the same `n` derivatives.

*Uniqueness of Taylor polynomials*: In a way, the polynomial with degree at most `n` is the simplest one we can construct with the desired properties. Moreover, by insisting the degree is at most `n` we have made Taylor polynomials of the function at a point a *unique*.

## Taylor series

The higher the order of the Taylor polynomial, the better the approximation (the tighter it hugs the curve of the function).

Consider the approximation of the `sin(x)` function using the Taylor polynomial of higher and higer degrees. The higher the degree the better the estimate.
- 1st Taylor polynomial is the tangent line at a point
- 2nd Taylor polynomial looks like a flipped quadratic curve with good approx in the interval (-1, 1)
- 3rd Taylor polynomial is a complex curve that matches the `sin` curve exactly in the interval (-1.5, 1.2)
- 6th Taylor polynomial is a complex curve that matches the `sin` curve exactly in the interval (-2, 2.5). It quickly goes on its own way for x < -2, 2.5 < x.

Evidently, using a higher degree polynomial gives better approximation, so a polynomial of infinite degree should give the best approximation possible. However such polynomial is not a polynomial at all but a **power series**.

We refer to the *Taylor polynomial of infinite degree* as the *Taylor series of the function*.


>The Taylor series for `f` at point `a` is the power series centered at `a`

```js
        ∞
       ⎲ f⁽ᵏ⁾(a)
S(x) = ⎳ ------- (x - a)ᵏ
       ᵏ⁼⁰   k!
```

- a ∈ ℝ
- function `f` is infinitely differentiable at `a`

This formula basically means that all the derivatives of the power series at `a` are the same as the derivatives of `f` at `a`.

    ∀k ∈ ℕ. S⁽ᵏ⁾(a) = f⁽ᵏ⁾(a)

A Taylor series, like all power series, only makes sense whenever it is converging, i.e. in its *interval of convergence*.

The power series is intended as an approximation for `f` near `a`, but *in the ideal case*, a power series could be exactly the same as the function it is approximating. Functions that are equal to their Taylor series are called **analytic functions**. Most of the common functions are analytic.

*Maclaurin series* is a Taylor series at zero.

## Maclaurin series

Maclaurin series is a Taylor series at `a=0`.

>Definition of Maclaurin series:

```js
// Taylor series
        ∞
       ⎲ f⁽ᵏ⁾(a)
S(x) = ⎳ ------- (x - a)ᵏ
       ᵏ⁼⁰   k!

// Maclaurin series is Taylor series with a=0, so:
        ∞
       ⎲ f⁽ᵏ⁾(0)
S(x) = ⎳ ------- (x - 0)ᵏ
       ᵏ⁼⁰   k!

        ∞
       ⎲ f⁽ᵏ⁾(0)
S(x) = ⎳ ------- xᵏ
       ᵏ⁼⁰   k!
```



Maclaurin series for `f(x) = eˣ`

```js
        ∞
       ⎲  xᵏ     x⁰     x¹     x²     x³     x⁴     x⁵
S(x) = ⎳ ---- = ---- + ---- + ---- + ---- + ---- + ---- + …
       ᵏ⁼⁰  k!     0!     1!     2!     3!     4!     5!
```


- ∀k ∈ ℕ
- f⁽ᵏ⁾(x) = eˣ (all derivatives of `eˣ` are the same, `eˣ`)
- f⁽ᵏ⁾(0) = 1 (all derivatives of `eˣ` at 0 are 1)
- `f(x) = eˣ` is an analytic function
- the function `f(x) = eˣ` equals its Maclaurin series, for all `x`:

```js
              x²     x³     x⁴     x⁵
eˣ = 1 + x + ---- + ---- + ---- + ---- + …
              2!     3!     4!     5!
```

## Taylor series via Maclaurin series

If, instead of the Maclaurin series, we wanted a Taylor series centered at some other `c` we can repeat the calculation and evaluate the derivatives at `c`, rather than at 0. In this case, the two series would be similar, but there is also an alternative trick.

## Maclaurin series for `exp`

To write `f(x) = eˣ` in terms of powers of `(x - c)` (what Taylor series would do), we instead use the substitution `u = x - c`. Then we write the function in terms of powers of `u` instead.

```js
                         ∞
                        ⎲  uⁿ
eˣ = eᶜᐩᵘ = eᶜ ⋅ eᵘ = eᶜ ⎳ ----
                        ⁿ⁼⁰  n!
```

Substituting back `u = x - c`, we get this power series centered at `c`:

```js
         ∞
        ⎲  (x - c)ⁿ
eˣ = eᶜ ⎳ ----------
        ⁿ⁼⁰    n!

      ∞
     ⎲  eᶜ
eˣ = ⎳ ---- (x - c)ⁿ
    ⁿ⁼⁰  n!
```

This trick is quite convenient and it works for many functions. It is the reason why most of the time we only work with Maclaurin series. If we ever need a Taylor series center at a different point, we can reinterpret it as a Maclaurin series with a substitution, as described above.

Again,

```js
// Maclaurin series (Taylor series at a=0) for `exp` function.
// exp(x) = eˣ and all its derivatives are the same, eˣ
// At x=0 they all evaluate to 1 since exp(0) = e⁰ = 1
               ∞                 ∞             ∞
              ⎲  e⁽ᵏ⁾(0)       ⎲  1        ⎲   xᵏ
exp(x) = eˣ = ⎳ -------- xᵏ =  ⎳ ---- xᵏ =  ⎳ -----
              ᵏ⁼⁰    k!         ᵏ⁼⁰  k!       ᵏ⁼⁰  k!
```

## Maclaurin series for `cos`

First derivatives of `sin` and `cos`
- sin′(x) =  cos(x)
- cos′(x) = -sin(x)

Sequence of derivatives of `cos(x)`
- cos⁽⁰⁾(x) =  cos(x)    cos function itself
- cos⁽¹⁾(x) =  sin(x)    1st derivative of cos
- cos⁽²⁾(x) = -cos(x)    2nd derivative of cos
- cos⁽³⁾(x) = -sin(x)    3rd derivative of cos
- cos⁽⁴⁾(x) =  cos(x)    4th derivative of cos


```js
          ∞
         ⎲   xᵏ
cos(x) = ⎳ ----- f⁽ᵏ⁾(0)
         ᵏ⁼⁰  k!

          ∞
         ⎲        x²ᵏ
cos(x) = ⎳ (-1)ᵏ ------
         ᵏ⁼⁰       (2k)!


          ∞
         ⎲        x²ᵏ          x²     x⁴     x⁶     x⁸
cos(x) = ⎳ (-1)ᵏ ------ = 1 - ---- + ---- - ---- + ---- - …
         ᵏ⁼⁰       (2k)!        2!     4!      6!    8!
```


## Maclaurin series for `sin`

First derivatives of `sin` and `cos`
- sin′(x) =  cos(x)
- cos′(x) = -sin(x)

`g⁽⁰⁾(x)` is an alt notation for the function itself, `g⁽⁰⁾(x) = g(x)`.

The derivatives of `sin` (and `cos`) repeat in a cycle of 4 functions.


Sequence of derivatives of `sin(x)`
- sin⁽⁰⁾(x) =  sin(x)    sin function itself
- sin⁽¹⁾(x) =  cos(x)    1st derivative of sin
- sin⁽²⁾(x) = -sin(x)    2nd derivative of sin
- sin⁽³⁾(x) = -cos(x)    3rd derivative of sin
- sin⁽⁴⁾(x) =  sin(x)    4th derivative of sin

Maclaurin series is a Taylor series at 0, 
so we evaluate derivatives of `sin(x)` at 0:
- sin⁽⁰⁾(0) =  sin(0) = 0
- sin⁽¹⁾(0) =  cos(0) = 1
- sin⁽²⁾(0) = -sin(x) = 0
- sin⁽³⁾(0) = -cos(x) = -1
- sin⁽⁴⁾(0) =  sin(x) = 0


Sequence of derivatives of `sinx` (they have a period 4)
- `(sinx, cosx, -sinx, -cosx)`

Sequence of evaluations of derivatives of sin at `x=0`
- (sin(0),   cos(0),   -sin(0),   -cos(0))    =   (0, 1, 0 -1)
- (sin(0)=0, cos(0)=1, -sin(0)=0, -cos(0)=-1)

```js
// Maclaurin series (Taylor series at a=0) for `sin` function.
// Derivatives of sin repeat as (sinx, cosx, -sinx, -cosx) sequence.
// At x=0 they evaluate to (0, 1, 0 -1) sequence.

          ∞
         ⎲   xᵏ             x⁰            x¹            x²
sin(x) = ⎳ ----- f⁽ᵏ⁾(0) = --- f⁽⁰⁾(0) + --- f⁽¹⁾(0) + --- f⁽²⁾(0) + …
         ᵏ⁼⁰  k!             0!            1!            2!

          x⁰            x¹            x²            x³            x⁴
sin(x) = --- f⁽⁰⁾(0) + --- f⁽¹⁾(0) + --- f⁽²⁾(0) + --- f⁽³⁾(0) + --- f⁽⁴⁾(0) + …
          0!            1!            2!            3!            4!


          x⁰      x¹      x²      x³         x⁴
sin(x) = --- 0 + --- 1 + --- 0 + --- (-1) + --- 0 + …
          0!      1!      2!      3!         4!


          x¹      x³         x⁵      x⁷
sin(x) = --- 1 + --- (-1) + --- 1 + --- (-1) + …
          1!      3!         5!      7!


          x¹    x³    x⁵    x⁷
sin(x) = --- - --- + --- - --- + …
          1!    3!    5!    7!
```

Again, we are considering the `sin(x)` function, which is eveywhere continuous and infinitely differentiable.

Taking a few of its derivatives, we see they form a cycle with a period 4: the function itself is `sinx`, whose 1st derivative is `cosx`, whose derivative is `-sinx`, whose derivative is `-cosx`, whose derivative is `sinx` again, and so on, the cycle repeats.

The derivatives of `sin` form a cycle `(sinx, cosx, -sinx, -cosx)`, with the `sin` itself as the first entry (the 0th derivative of a function is the function itself); at index then the first derivative of sin which is cos


function | 0      | 1 | 2 | 3 | derivative at 0 | eval at x=0
---------|--------|-----|-----------------|---------------

sin(x)   | sin(x) | sin(0) | 0

cos(x) |    | cos(x)          | 0

sin(x) | sin(x)  | sin⁽⁰⁾(x) | sin(x) | 0
sin(x) | sin′(x) | sin⁽¹⁾(x) | cos(x) | cos(0) = 1


0.deriv of  sin = sin
1.deriv of  sin = cos
1.deriv of  cos = -sin
1.deriv of -sin = -cos
1.deriv of -cos = -(-sin) = sin


2.deriv of 
3.deriv of 

   1.deriv of fn        2.deriv of   3.deriv of 
-  sin(x) = sin⁽⁰⁾ (x) 
-  cos(x) = sin⁽¹⁾ (x)  = cos⁽⁰⁾ (x)
- -sin(x) = sin⁽²⁾ (x)  = cos⁽¹⁾ (x) = -sin⁽⁰⁾ (x)
- -cos(x) = sin⁽³⁾ (x)  = cos⁽²⁾ (x) = -cos⁽⁰⁾ (x)


- 0th deriv is `sinx`
- 1st deriv of `sinx` = `cosx`
- 2nd deriv of `sinx` = 1st deriv of `cosx` = `-sinx`
- 3rd deriv of `sinx` = 2nd deriv of `cosx` = 1st deriv of `-sinx` = `-cosx`
- 4th deriv of `sinx` = 3rd deriv of _ = 2nd deriv of _ = 1st deriv of _ = x


- ([0] = sinx, [1] = cosx, [2] = -sinx, [3] = -cosx)
- ([sin(x)] = sinx, [sin′(x)] = cosx, [sin′′(x)] = -sinx, [sin′′′(x)] = -cosx)
- ([sin⁽⁰⁾(x)]=sinx, [sin⁽¹⁾(x)]=cosx, [sin⁽²⁾(x)]=-sinx, [sin⁽³⁾(x)]=-cosx)



Derivatives of sin repeat 
At x=0 they evaluate to (0, 1, 0 -1) sequence.


All the even derivatives disappear because they evaluate to 0. The coefficients of odd derivatives alternate between 1 and -1 which results in the terms being added or subtracted in alternation, beginning with subtraction (2nd term is subtracted from the 1st).

This sum can be rewritten like this:

```js
          ∞
         ⎲         x²ᵏᐩ¹
sin(x) = ⎳ (-1)ᵏ ----------
         ᵏ⁼⁰       (2k + 1)!
```

The `sin` function is analytic, so is not just that the Maclaurin series for `sin` is analytic but `sin` itself as well. `sin(x)` equals this power series for all values of `x`.

## The 4 main Maclaurin series

The 4 main Maclaurin series
- `exp(x)` (for all x)
- `sin(x)` (for all x)
- `cos(x)` (for all x)
- geometric series, `1/(1-x)` (for |x| < 1)


## Analytic function

>Analytic at a point
Let `f`, an everywhere continuous and infinitely differentiable function, be defined on an open interval `I`. Let `a ∈ I`. Let `Sₐ` be the Taylor series of `f` at `a`. We say that `f` is analytic at point `a` when there exists an open interval `Jₐ` centered at `a` such that `∀x ∈ Jₐ` we have that `f(x) = Sₐ(x)`.

>Analytic at all points
We say that `f` is analytic when `∀a ∈ I`, `f` is analytic at `a`. 
An analytic function is equal to its Taylor series.

## Some results related to analytic functions

- polynomials are analytic; they are finite power series.
- sums, products, quotients of analytic functions are analytic
- derivatives and antiderivatives of analytic functions are analytic
- the Taylor series of a function at a point is unique

An analytic function can be written as a power series, and we know that in the interior of the interval of convergence a power series can be manipulated like a polynomial.


## Elementary functions

All elementary functions can be written in terms of `exp` and `sin`, polynomials and these operations:

```js
// trig functions
cos(x) = sin(π/2 - x)

         sin(x)
tan(x) = -------
         cos(x)

arctan(x) = ∫ {0,x} 1/(1+t²) dt

// logarithmic
ln(x) = ∫ {0,x} 1/t dt

// exponential
xᶜ = eᶜ ˡⁿ⁽ˣ⁾
```

## Impact of `exp` and `sin`

Once we know `exp` and `sin` are analytic, getting the Taylor series of new functions will be easy by manipulating the known Taylor series.

## Comparing Taylor vs Maclaurin series

Approximation with Taylor polynomial.

We are going to demonstrate why we would use the Taylor series rather than the Maclaurin series.

`f(x) = √x`

```js
// The general form of the Taylor series
        ∞
       ⎲  f⁽ⁿ⁾(a)
f(x) = ⎳ --------- (x - a)ⁿ
       ⁿ⁼⁰   n!
```

https://www.youtube.com/watch?v=iXwy9N6x8AQ&list=PLX2gX-ftPVXVIwX5BGW1Qd7qpkS2YtGfS&index=82&pp=iAQB0gcJCX4JAYcqIYzv


## Evaluating the Error

A function applied to an argument `x` (where x is some constant `a`, in fact let's say `a=16`) gives us the correct value, naturally. But that value at `x=16` can also be quickly approximated by evaluating just a few term of the corresponding Taylor series at `a=16`. Maclaurin series would need perhaps even 10 terms to be evaluated to get that near.

- degree = 2 (highest power is 2, i.e. higest derivative is the second derivative)
- a = 16
- 15 ≤ x ≤ 17
- f(x) = √x

We saw previously that if we use the Taylor series expansion only to a few terms we get a very close evaluation of the function - the function was `√x` - when we picked a value for `a` that was close to the value we wanted to evaluate the function `f`. In the example, we evaluated the function `√x` for values of `15 ≤ x ≤ 17`, so in the Taylor series expansion we used `a=16` which is smack dub in the middle of that range.

In the previous video we showed that when we evaluated a function at `x=17` expanding only 3 terms - up to degree 2 - so, the first term is `f(16)`, the second `f′(16) × (17-16)` and `f′′(16)/2 × (17-16)²`. The degree number is the number of derivative terms that we have in the Taylor series expansion. So when we evaluated at `x=17`, we got `4.123047`, while the calculator showed the actual value of `4.123106`. This *difference*, or *error*, is very small, `err=0.000059`.

```js
  4.123106    // estimated value
- 4.123047    // exact value
= --------
  0.000059    // error or difference
```

By evaluating only 3 terms of the Taylor series we got a value that was very close to the actual value for `√17`. We can actually calculate the error for a particular degree `n`.

We denote the error by `|Rₙ|` (we take the absolute value because we don't care if the error is positive or negative, we only want the magnitude).

We find the error by evaluating the next term in the series. Since the degree was 2, we have evaluated 3 terms including `f⁽⁰⁾(x)`, `f⁽¹⁾(x)` and `f⁽²⁾(x)`. To calculate the error, we now evaluate one more term, `f⁽³⁾(x)`. We'll find out if the error - that we got using the first 3 terms - *is going to be less than the value of the next term*.

That next term is:

```js
// The next term has this general form (with degree that is still n=2).
// This is a term after those (three) terms we have previously evaluted
// as part of the regularly scheduled programme (with degree n=2).
// Thus, the term after the last (which was 'n') is n+1 (pay no mind).
f⁽ⁿᐩ¹⁾(a)
-------- (x - a)ⁿᐩ¹ ≥ |Rₙ|
 (n+1)!

// x=17, a=16, n=2
f′′′(16)                     3                  1          1
-------- (17 - 16)³ = -------------- 1³ = ------------ = ----- = 0.000061
   3!                 32 × 256 × 3!       2⁵ × 2⁸ × 2     2¹⁴

  1        1
----- = ------- = 0.00006103515625
 2¹⁴    16,384
```

So the estimated error, i.e. the value of the next term in the series, is now caomputed to be about `0.000061`, which is slightly larger then the `|Rₙ|` we got previously, which was `0.000059`.

`0.000061 > 0.000059`
