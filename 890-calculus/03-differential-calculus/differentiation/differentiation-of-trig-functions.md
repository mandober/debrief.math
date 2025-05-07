# Derivatives of trig functions

```js
sin′(x) = cos(x)          cos′(x) = -sin(x)
tan′(x) = sec²(x)         cot′(x) = -csc²(x)
sec′(x) = sec(x)tan(x)    csc′(x) = -csc(x)cot(x)
```

## Notes

- Derivatives of trig functions come in closed pairings:
    (e.g. csc′ mentions cot, and cot′ mentions csc)
  - sin  ⇔ cos
  - tan  ⇔ sec
  - csc  ⇔ cot
- Trig functions with co- prefix have negative derivatives:
  - cos′x = -sin(x)
  - csc′x = -csc(x)cot(x)
  - cot′x = -csc²(x)
- Derivatives of `sec` and `csc` are self-referential (and negative):
  - sec′(x) = -sec(x)tan(x)
  - csc′(x) = -csc(x)cot(x)
- Derivatives of tan and cot are squared
  - tan′(x) = sec²(x)
  - cot′(x) = -csc²(x)
- *Iterating differentiation* of `sin` or `cos` makes a cycle with period 4
  - sinx ⟼  cosx ⟼ -sinx ⟼ -cosx ⟼ sinx
  - cosx ⟼ -sinx ⟼ -cosx ⟼  sinx ⟼ cosx



## Differentiating cos from the first principles

```js
            f(x + h) - f(x)
f′(x) = lim ---------------
        h→0       h

              cos(x + h) - cos(x)
cos′(x) = lim -------------------
          h→0         h

              cos(x)cos(h) - sin(x)sin(h) - cos(x)
cos′(x) = lim ------------------------------------
          h→0                 h

              cos(x)cos(h) - cos(x) - sin(x)sin(h)
cos′(x) = lim ------------------------------------
          h→0                 h

                     cos(h) - 1          sin(h)
cos′(x) = lim cos(x) ---------- - sin(x) -------
          h→0             h                 h

// We use the fact that for SMALL VALUES of args:
// sin(x) ≈ x and cos(x) ≈ 1
// With h→0, we are indeed considering very small args.
cos′(x) = cos(x) × 0 - sin(x) × 1
cos′(x) = 0 - sin(x)
cos′(x) = -sin(x) 1
∎

// Alternatively at this point
              cos(x)cos(h) - sin(x)sin(h) - cos(x)
cos′(x) = lim ------------------------------------
          h→0                 h

// we could apply the fact that
// sin(x) ≈ x and cos(x) ≈ 1
// to get
              cos(x)(1) - sin(x)(h) - cos(x)
cos′(x) = lim ------------------------------
          h→0            h
// we then cancel cos(x)
              -sin(x)(h)
cos′(x) = lim ----------
          h→0     h
// we cancel h's
cos′(x) = lim{h→0} -sin(x)
// the limit operator does nothing here as we have no 'h' anymore
cos′(x) = -sin(x)
∎
```


## Differentiating sin from the first principles

```js
            f(x + h) - f(x)
f′(x) = lim ---------------
        h→0       h

              sin(x + h) - sin(x)
sin′(x) = lim -------------------
          h→0         h

              sin(x)cos(h) + sin(h)cos(x) - sin(x)
sin′(x) = lim ------------------------------------
          h→0                  h

              sin(x)cos(h) - sin(x)    cos(x)sin(h)
sin′(x) = lim ---------------------- + --------------
          h→0          h                     h

                     cos(h) - 1          sin(h)
sin′(x) = lim sin(x) ---------- + cos(x) ------
          h→0             h                h

                     cos(h) - 1              sin(h)
sin′(x) = lim sin(x) ---------- + lim cos(x) ------
          h→0             h       h→0          h

// what follows is based on the fact that
// for SMALL VALUES of args sin(x) ≈ x and cos(x) ≈ 1
// With h→0, we are indeed considering very small values
// of args to sin, so sin(h) ≈ h and thus sin(h)/h = h/h = 1

           sin(h)            h
lim cos(x) ------- = cos(x) ---- = cos(x)
h→0           h              h

           cos(h) - 1          1 - 1
lim sin(x) ---------- = sin(x) ----- = 0
h→0            h                 h

// The left limit evaluates to 0, and the right to cos(x)
sin′(x) = 0 + cos(x)
sin′(x) = cos(x)



// This is a long-winded, vague and laregly igorable fork:
// from this we can calculate the (cos(h)-1)/h on the left of +

      sin²(h)
  lim ------- = 1²       // raise both sides to the power 2
  h→0   h²               // sin²x = 1 - cos²x

      1 - cos²(h)
  lim ----------- = 1    // difference of squares: 1-h² = (1+h)(1-h)
  h→0     h²

  // split into two limits
      1 + cos(h)      1 - cos(h)
  lim ----------- lim ----------- = 1
  h→0     h       h→0     h

      1 - cos(h)             h
  lim ----------- = lim ----------- = 1
  h→0     h         h→0  1 + cos(h)

      1 - cos(h)
  lim ----------- = 0
  h→0     h

      cos(h) - 1
  lim ----------- = 0
  h→0     h

  // …back to main equation
                       cos(h) - 1          sin(h)
  sin′(x) = lim sin(x) ---------- + cos(x) ------
            h→0             h                h

  sin′(x) = lim{h→0} sin(x)(0) + cos(x)(1)
  sin′(x) = cos(x)
  // yeah, right…
```


## Differentiating tan

```js
         sin(x)
tan(x) = -------
         cos(x)

dy   sin′(x)cos(x) - sin(x)cos′(x)
-- = -----------------------------
dx         cos²(x)

  cos(x)cos(x) - sin(x)(-sin(x))
= ------------------------------
          cos²(x)

  cos²(x) + sin²(x)      1
= ----------------- = --------- = sec²(x)
      cos²(x)         cos²(x)
```

## Proof of the derivative of tan using approximations

The derivative of `tan(x)` is `sec²(x)`.

```js
  d
---- tan(x) = sec²(x)
 dx



            f(x + h) - f(x)
f′(x) = lim ---------------
        h→0       h

            tan(x + h) - tan(x)
f′(x) = lim -------------------
        h→0         h

```



## Notes and sketches

```js
sin′(x) =  cos(x)
cos′(x) = -sin(x)

tan′(x) =  sec²(x)
sec′(x) =  sec(x)tan(x)

cot′(x) = -csc²(x)
csc′(x) = -csc(x)cot(x)
```


- Trig functions have derivatives in closed pairings:
  - sin  ⇔ cos
  - tan  ⇔ sec
  - csc  ⇔ cot
- Trig fns with co- prefix have negative derivatives
  - cos′x = -sinx
  - csc′x = -cscxcotx
  - cot′x = -csc²x
- Iterating differentiation of sin or cos is a cycle with period 4:
  - sinx → cosx → -sinx → -cosx → sinx (back to start with period=4)
  - cosx → -sinx → -cosx → sinx → cosx (back to start with period=4)


```hs
      sin                    tan                    cot
    ↗     ↘               /   ↑   \              /   ↑   \
⁻cos       cos           |    |    |           ⁻|    |⁻   |⁻
    ↖     ↙               ↘   |   ↙              ↘   |   ↙
     ⁻sin                    sec                    csc
                              ↺                      ↺
```

Any function is its own "zeroth" derivative, `f⁽⁰⁾(x) = f(x)`.

```js
sin(x) ≡ sin⁽⁰⁾(x)

sin′(x)   = sin⁽¹⁾(x) = cos(x)
sin′′(x)  = sin⁽²⁾(x) = cos⁽¹⁾(x) = -sin(x)
sin′′′(x) = sin⁽³⁾(x) = cos⁽²⁾(x) = -sin⁽¹⁾(x) = -cos(x)
sin′′′′(x) = sin⁽⁴⁾(x) = cos⁽³⁾(x) = -sin⁽²⁾(x) = -cos⁽¹⁾(x) = sin(x)
```
