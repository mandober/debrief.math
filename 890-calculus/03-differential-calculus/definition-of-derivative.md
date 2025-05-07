# Definition of derivative

- (1) The standard definition of a derivative
- (2) The "alternative" definition of a derivative

The standard formula that defines a derivative of function `f(x)` is (1). It produces a function, in general. The formula (2) produces a number, i.e. it evaluates the derivative of `f(x)` at an argument `a`.

```js
            f(x + h) - f(x)
f′(x) = lim ---------------        (1)
        h→0       h


            f(x) - f(a)
f′(a) = lim -----------            (2)
        x→a    x - a

// e.g. with a = 4
            f(x) - f(4)
f′(4) = lim -----------
        x→4    x - 4
```

In (2), there are 4 places where we need to substitute the actual arg for `a`. The deal then is to somehow expand the nominator `f(x) - f(a)` so as to eliminate the denominator `x - a`, and then the limit may be evaluated.


## Example

```js
f(x) = x³
f′(x) = 3x²
f′(4) = 3(4²) = 48

// using (1)

            (x + h)³ - x³
f′(x) = lim -------------
        h→0       h

            x³ + 3x²h + 3xh² + h³ - x³
f′(x) = lim --------------------------
        h→0            h

            3x²h + 3xh² + h³
f′(x) = lim ----------------
        h→0        h

             h(3x² + 3xh + h²)
f′(x) = lim -------------------
        h→0        h

f′(x) = lim{h→0} 3x(x + h) + h²
f′(x) = lim{h→0} 3x² + 3xh + h²
f′(x) = lim{h→0} 3x² + h(3x + h)
f′(x) = lim{h→0} 3x² + lim{h→0} h(3x + h)
f′(x) = 3x² + lim{h→0} 0(3x + 0) // 2xh + h² both depend on h→0 so 0
f′(x) = 3x² + 0
f′(x) = 3x²

// different evaluation route, but same answer

            (x + h)³ - x³
f′(x) = lim -------------
        h→0       h

            ((x+h) - x) ((x+h)² + (x+h)x + x²)
f′(x) = lim -----------------------------------
        h→0                   h

            h((x+h)² + x² + hx + x²)
f′(x) = lim ------------------------
        h→0            h

f′(x) = lim{h→0} (x+h)² + x² + hx + x²
f′(x) = lim{h→0} (x + 0)² + x² + 0x + x²
f′(x) = lim{h→0} x² + x² + x²
f′(x) = lim{h→0} 3x²


// Now, using the formula (2) with a = 4, f(x) = x³

            f(x) - f(a)
f′(a) = lim -----------            (2)
        x→a    x - a

            f(x) - f(4)
f′(4) = lim -----------
        x→4    x - 4

             x³ - 4³
f′(4) = lim ---------
        x→4   x - 4

             (x - 4)(x² + 8x + 4²)
f′(4) = lim -----------------------
        x→4         x - 4

f′(4) = lim{x→4} x² + 4x + 4²
f′(4) = lim{x→4} 4² + 4(4) + 4²
f′(4) = 16 + 16 + 16
f′(4) = 48
```
