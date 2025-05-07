# Derivatives of inverse trig functions

```js
                  f′(x)
arcsin′(f(x)) = ---------
                √(1 - x²)

                 -f′(x)
arccos′(f(x)) = ---------
                √(1 + x²)


                 f′(x)
arctan′(f(x)) = --------
                 1 + x²

                -f′(x)
arccot′(f(x)) = --------
                 1 + x²


                     f′(x)
arcsec′(f(x)) = --------------
                |x| √(x² - 1)

                    -f′(x)
arccsc′(f(x)) = --------------
                |x| √(x² - 1)
```

Derivatives
- arcsin and arccos are similar save for the sign and `-` vs `+` in denom
- arctan is simpler then both arcsin and arccos cos it lacks `√`
- arcsec and arccsc are almost the same save for the sign
- arccot and arctan are almost the same save for the sign
- co fns have negative derivative



* Inverse trigonometric functions may be written with `⁻¹` superscript or with "arc" prefix, e.g. `sin⁻¹(x)` is the same as `arcsin(x)`.

* Inverse of a fn means swapping `x`'s and `y`'s.
* Inverse of `y = arcsin(x)` function may be denoted `x = arcsin(y)`. This gives the full inverse of arcsin, not just the slither with the restricted domain. The full inverse of arcsin looks like sin rotated by 90ᵒ.
* The offical `arcsin(x)` is almost like an overlay on top of a part of `tan(x)`




The first derivatives of inverse trig functions are fractions with nominator being 1 if the argument to the trig function is simple (`x` alone, a constant); if the argument is f(x), then the nominator is its derivative, `f′(x)`.

Curiously, in a derivative of any trig function, the denominator is the same regardless of whether the argument to the function is simple or a function. The nominator, on the other hand, is `1` in case the arg is simple, or `f′(x)` if the arg is a function; but these two nominators do not agree with each other: if both are treated as a function - that is, if a simple arg is also treated as a function (identity, or constant function or similar) - then the nominator would be 1 only in the case the arg was `x`, since `(x)′ = 1`; but a constant arg would be 0, since `(k)′ = 0` for any constant k (e.g. (2)′ = 0).

- arcsin′(x) = 1/(√(1-x²))
- arcsin′(f(x)) = f′(x)/(√(1-x²))
- arcsin′(1) = 1/(√(1-1²)) = 1/√0




```js
// derivative of arcsin is this but only if the arg is a constant;
// if the arg is a function f(x) then we need to employ some of the rules
// (like the product, chain or quotient rule) to find the derivative.
// Anyway, it is better to state these formulas for derivatives with the fn
// as the argument, not only is that the more common case, but any constant
// can be expressed as a const fn (not the other way around).

                  f′(x)
arcsin′(f(x)) = ----------
                √(1 - x²)

                 1
arcsin′(x) = ---------
             √(1 - x²)

                1                        -1                        1
arcsin′(x) = -------      arccos′(x) = -------       arctan′(x) = ------
             √(1-x²)                   √(1-x²)                    1 - x²

                  1                        -1                      -1
arcsec′(x) = -----------  arccsc′(x) = -----------   arccot′(x) = ------
             |x| √(x²-1)               |x| √(x²-1)                1 + x²




// if arg is simple:             if arg is a function:

                  1                           f′(x)
arcsin′(x) = -----------    arcsin′(f(x)) = ----------
              √(1 - x²)                      √(1 - x²)

                 -1                               -f′(x)
arccos′(x) = -----------         arccos′(f(x)) = -----------
              √(1 - x²)                           √(1 - x²)

               1                                 f′(x)
arctan′(x) = -------             arctan′(f(x)) = ------
             1 + x²                              1 + x²
```


## Example 1

Find the derivative of `arcsin(x³)`

`d/dx arcsin(u) = u′/√(1 - u²)` so
- u = x³
- u′ = 3x²

```js
d/dx arcsin(x³) =

      3x²           3x²
= ------------ = ---------
  √(1 - (x³)²)   √(1 - x⁶)
```

## Example 2

Find the derivative of `arctan(√x)`

```js
d/dx arctan(√x)

    1/2√x       1/2√x           1            1             1
= ---------- = --------- = ----------- = ---------- = ------------
  1 - (√x)²     1 - x       2√x(1 - x)   2√x - 2x√x    2√x - 2√x³
```
