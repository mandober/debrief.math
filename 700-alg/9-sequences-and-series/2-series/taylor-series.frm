# Taylor series

https://www.youtube.com/watch?v=fUbBKN70Ag8&list=PLKc2XOQp0dMwj9zAXD5LlWpriIXIrGaNb&index=5

Various functions expressed as Taylor series. 

## General form of the Taylor series

```js
/* general form of the Taylor series */

       ⎲∞     f⁽ⁿ⁾(a)
f(x) = ⎳ₙ₌₀  --------- (x - a)ⁿ
                 n!


  f⁽⁰⁾(a)          f⁽¹⁾(a)          f⁽²⁾(a)          f⁽³⁾(a)
= ------- (x-a)⁰ + ------- (x-a)¹ + ------- (x-a)² + ------- (x-a)³ + …
    0!                1!               2!               3!

// n=0              n=1              n=2              n=3

         f′(a)            f′′(a)             f′′′(a)
= f(a) + ----- (x - a) + ------- (x - a)² + -------- (x - a)³ + …
          1!                2!                 3!
```


## Exponential function

Exponential function, `eˣ`, as Taylor series.

```js
         ⎲∞    xⁿ
exp(x) = ⎳ₙ₌₀ ----
                n!
```


## Trig functions

Hyperbolic function as Taylor series differ from their trig pairs by not having alternating-sign terms. `sin(x)` and `sinh(x)` are the same except for the alternating sign in the former. And similarly for `cos(x)` and `cosh(x)`.

```js
/* Trig */

         ⎲∞         x²ⁿ
cos(x) = ⎳ₙ₌₀ (-1)ⁿ -----
                     (2n)!

         ⎲∞          x²ⁿᐩ¹
sin(x) = ⎳ₙ₌₀ (-1)ⁿ -------
                     (2n+1)!

/* Hyperbolic */

          ⎲∞    x²ⁿ
cosh(x) = ⎳ₙ₌₀ ------
                 (2n)!

          ⎲∞    x²ⁿᐩ¹
sinh(x) = ⎳ₙ₌₀ --------
                 (2n+1)!

/* Derivative of cosh as Taylor series */

           ⎲∞    x²ⁿᐩ¹
cosh′(x) = ⎳ₙ₌₀ --------
                  (2n+1)!

// Derivative of cosh as Taylor series needs to
// expand as odd-degree terms starting with x.


/* Derivative of sinh as Taylor series */

           ⎲∞     x²ⁿ
sinh′(x) = ⎳ₙ₌₀ -------
                  (2n)!

// Derivative of sinh as Taylor series needs to
// expand as even-degree terms starting with 1.
```
