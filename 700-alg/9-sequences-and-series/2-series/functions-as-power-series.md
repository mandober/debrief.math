# Writing functions as power series

To rewrite a given function as a power series we need to match its defining equation to have the form of a geometric series (which is a power series with all the same coefficients) `1/(1 - x)`. So we want to obtain a term such that its nominator is 1 and its denominator is a difference of 1 and a term with `x`. This usually means we'll extract a term that multiplies a term that has the goal form; e.g. a nominator `xᵏ` will become `xᵏ(1)`, and denominator `a+x` will be expressed as `a-(-x)`, and then we extract 3 to get `a(1-(-x/a))`. Thereby we obtain two fractions, a factor `xᵏ/a` and another factor that has the form we are after, `1/(1 - (-x/a))`. 

The first factor will be the multiplier throughout - we can possibly reintegrate it into the exoression in the end. We take the second factor (one with the goal form), `1/(1 - (-x/a))`, and we repalce the `x`'s in the infinite series expansion by `-x/a`. So, in `1 + x + x² + x³ + x⁴ + …`, we repalce all `x`'s by `-x/a` thereby obtaining `1 + (-x/a) + (-x/a)² + (-x/a)³ + (-x/a)⁴+…`. We can then simplify this expression if possible, before we finally express it as a sum in sigma notation. The negative terms will give negative terms when raised to an odd power, which typically renders as an alternating series; this means we'll have a term `(-1)ⁿ` to yield such alternation. We can leave the first factor as a multiplier in front of sigma, or we can reintergrate it with the main expression inside the sigma notation.

```js
// function 1
         1     ⎲∞
f(x) = ----- = ⎳ xⁿ = 1 + x + x² + x³ + x⁴ + …
       1 - x   ⁿ⁼⁰

// function 2
         1      ⎲∞
f(x) = ------ = ⎳ (-1)ⁿx²ⁿ = 1 + x² - x⁴ + x⁶ - …
       1 - x²   ⁿ⁼⁰

// function 3
         1      ⎲∞        xⁿ
f(x) = ------ = ⎳ (-1)ⁿ ------ = 1/3 - x/3² + x²/3³ - x³/3⁴ - x⁴/3⁵ + …
       x + 3    ⁿ⁼⁰       3ⁿᐩ¹

// function 4
         1      ⎲∞       xⁿᐩ²
f(x) = ------ = ⎳ (-1)ⁿ ------ = x²/2 - x³/2² + x⁴/2³ - x⁵/2⁴ - x⁶/2⁵ + …
       2 + x    ⁿ⁼⁰       2ⁿᐩ¹
```

## Power series

A geometric series is a power series but with the same constant `c`.

```js
// power series
 n
⎲
⎳ cₙxⁿ = c₀ + c₁x + c₂x² + …
ⁿ⁼⁰

// geometric series
 n
⎲
⎳ axⁿ = a + ax + ax² + … = f(x)
ⁿ⁼⁰

// geometric series where a=1
 n
⎲
⎳ xⁿ = 1 + x + x² + … = f(x)
ⁿ⁼⁰

// in a geometric series
// r = ratio between two consequtive terms
// a = constant

            axⁿᐩ¹
ratio, r = ------ = x
            axⁿ

// geometric series
       a
aₙ = ------
     1 - r

// with a=1 (and ratio r=x, and x≠1) we get:
        ∞
       ⎲    1
f(x) = ⎳  ------ = 1 + x + x² + x³ + …
       ⁿ⁼⁰  1 - x
```

## Function 1

Can we write the function `f(x) = 1/(1-x)` as infinite power series?


```js
// function 1
         1     ⎲∞
f(x) = ----- = ⎳ xⁿ = 1 + x + x² + x³ + x⁴ + …
       1 - x   ⁿ⁼⁰
```

Are these really the same, `f₁(x) = f₂(x)`?
- `f₁(x) = 1/(1-x)` (for x ≠ 1)
- `f₂(x) = 1 + x + x² + x³ + …`

```js
// f₁(x) = 1/(1-x) (for x ≠ 1)
x=0, y=1
x=1, y=undefined
x=2, y=-1
x=3, y=-1/2
x=4, y=-1/3
x=5, y=-1/4
// in general, for k > 1
x=k, y=-1/(k-1) for k > 1
x=-1, y=1/2
x=-2, y=1/3
x=-3, y=1/4
x=-4, y=1/5
// in general, for j < 1
x=-j, y=1/(|j|+1) for j < 1
// we get these results:
f = {…, -1/5, -1/4, -1/3, -1/2, -1, 1, 1/2, 1/3, 1/4, 1/5, …}

x  |  f₁(x) | f₂(x)
---|--------|-----------------------------
-1 |  1/2   | 1 - 1 + 1 - 1 + 1 - 1 + …
 0 |  1     | 1
 2 | -1     | 1 + 2 +  4 +   8 +  16 + …
-2 |  1/3   | 1 - 2 +  4 -   8 +  16 - …
 3 | -1/2   | 1 + 3 +  9 +  27 +  81 + …
-3 |  1/4   | 1 - 3 +  9 -  27 +  81 - …
 4 | -1/3   | 1 + 4 + 16 +  64 + 256 + …
-4 |  1/5   | 1 - 4 + 16 -  64 + 256 - …
 5 | -1/4   | 1 + 5 + 25 + 125 + 600 + …
-5 |  1/6   | 1 - 5 + 25 - 125 + 600 - …


f(x) = 1 + x + x² + x³ + x⁴ + …
//
x= 0: 1 + 0 + 0 + 0 + … = 1 // at least this one checks out :)
x=-1: 1 + (-1) + (-1)² + (-1)³ + (-1)⁴ + … = 1 - 1 + 1 - 1 + 1 - 1 + …

x= 2: 1 +  (2) +  (2)² +  (2)³ +  (2)⁴ + … = 1 + 2 + 4 + 8 + 16 + …
x=-2: 1 + (-2) + (-2)² + (-2)³ + (-2)⁴ + … = 1 - 2 + 4 - 8 + 16 - …

x= 3: 1 + 3 + 9 + 27 + 81 + …
x=-3: 1 + (-3) + (-3)² + (-3)³ + (-3)⁴ + … = 1 - 3 + 9 - 27 + 81 - …
x= 4: 1 + 4 + 16 + 64 + 256 + …
x=-4: 1 + (-4) + (-4)² + (-4)³ + (-4)⁴ + … = 1 - 4 + 16 - 64 + 256 - …
x= 5: 1 + 5 + 25 + 125 + 600 + …
x=-5: 1 + (-5) + (-5)² + (-5)³ + (-5)⁴ + … = 1 - 5 + 25 - 125 + 600 - …
```

Well, they agree at least in case x=0, then both give 1. As for the rest of inputs… well, is `-1` equal to `1+2+4+9+16+…`? Don't think that it is…
>Are they *weirdly equal*™ (?!)


## Function 2

Can we write the function `f(x) = 1/(1-x²)` as infinite power series?

```js
         1
f(x) = ------ = 1 + x + x² + x³ + …
       1 - x

         1          1
f(x) = ------ = --------- =
       1 - x²   1 - (-x²)

= 1 + (-x²) + (-x²)² + (-x²)³ + …
= 1 + x² - x⁴ + x⁶ - …

// function 2
         1      ⎲∞
f(x) = ------ = ⎳ (-1)ⁿx²ⁿ = 1 + x² - x⁴ + x⁶ - …
       1 - x²   ⁿ⁼⁰
```

## Function 3

Can we write the function `f(x) = 1/(x+3)` as infinite power series?   
We neeed to match this equation with `1/(1-x)`.

```js
// goal form
         1
f(x) = ------ = 1 + x + x² + x³ + …
       1 - x

// function to express as power series
         1        1          1           1            1        1
f(x) = ------ = ------ = --------- = ------------- = ---- × ----------- =
       x + 3    3 + x    3 - (-x)    3(1 - (-x/3))    3     1 - (-x/3)

= 1/3 [ 1 + (-x/3) + (-x/3)² + (-x/3)³ + (-x/3)⁴ + … ] =

= 1/3 [ 1 - x/3 + x²/3² - x³/3³ - x⁴/3⁴ + … ] =
= 1/3 - x/3² + x²/3³ - x³/3⁴ - x⁴/3⁵ + … =

       ∞                ∞
   1  ⎲        xⁿ     ⎲         xⁿ
= --- ⎳ (-1)ⁿ ----  = ⎳ (-1)ⁿ ------
   3  ⁿ⁼⁰       3ⁿ     ⁿ⁼⁰       3ⁿᐩ¹

// function 3
         1      ⎲∞        xⁿ
f(x) = ------ = ⎳ (-1)ⁿ ------ = 1/3 - x/3² + x²/3³ - x³/3⁴ - x⁴/3⁵ + …
       x + 3    ⁿ⁼⁰       3ⁿᐩ¹
```

## Function 4

Can we write the function `f(x) = x²/(x+2)` as infinite power series?

We neeed to match this equation with `1/(1-x)`.

```js
// goal form
         1
f(x) = ------ = 1 + x + x² + x³ + …
       1 - x

// function to express as power series
         x²           x²          x²      1
f(x) = ------ = -------------- = ---- ----------
       x + 2    2(1 - (-x/2))     2   1 - (-x/2)


= x²/2 [ 1 + (-x/2) + (-x/2)² + (-x/2)³ + (-x/2)⁴ + … ] =

= x²/2 [ 1 - x/2 + x²/2² - x³/2³ - x⁴/2⁴ + … ] =

= x²/2 - x³/2² + x⁴/2³ - x⁵/2⁴ - x⁶/2⁵ + … =

       ∞                ∞
   x² ⎲        xⁿ     ⎲        xⁿᐩ²
= --- ⎳ (-1)ⁿ ----  = ⎳ (-1)ⁿ ------
   2  ⁿ⁼⁰        2ⁿ     ⁿ⁼⁰       2ⁿᐩ¹

// so it can be expressed as power series:
                 ∞
         1      ⎲        xⁿᐩ²
f(x) = ------ = ⎳ (-1)ⁿ ------
       2 + x    ⁿ⁼⁰       2ⁿᐩ¹

// function 4
         1      ⎲∞       xⁿᐩ²
f(x) = ------ = ⎳ (-1)ⁿ ------ = x²/2 - x³/2² + x⁴/2³ - x⁵/2⁴ - x⁶/2⁵ + …
       2 + x    ⁿ⁼⁰       2ⁿᐩ¹
```


https://www.youtube.com/watch?v=v_HeaeUUOnc&list=TLPQMTIwNDIwMjXX5EBGu5KTug&index=5
