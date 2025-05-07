# Polynomial long division

- factoring of polynomials
- long division of polynomials
- synthetic division of polynomials (shortcut when denom is linear)

## Factoring

Factor the polynomial in the de/nominator to cencel it with a similar term in the de/nominator.

```js
x² + 7x + 12   (x + 3)(x + 4)
------------ = -------------- = x + 4
  x + 3           x + 3

x² + 7x + 12 = (x + A)(x + B)
x² + 7x + 12 = x² + Ax + Bx + AB
x² + 7x + 12 = x² + (A + B)x + AB

A+B=7 ∧ A×B = 12
AB = 1×12 (✘), AB = 2×6 (✘), AB = 3×4 ⇒ this one ✔ cos 3 + 4 = 7
A = 3, B = 4
```

The constants must multiply to 12 and add to 7, `A×B=12` and `A+B=7`. Best to check divisors of 12 in ℕ; only 3 and 4 multiply to 12 and add to 7. Lucky.


## Example 1

```js
// polynomial division
       1 + x + x² + ⋯
1 - x ⟌1
     -(1 - x)
       0 + x
         -(x - x²)
               x²
```

## Example 2

```js
             x - 1 + 3/(x-2)
x - 2 ⟌x² - 3x + 5
     -(x² - 2x)
       0  -  x
            -x + 5
          -(-x + 2)
             0 + 3
                 3 ⇒ 3/(x-2)

// thus
x² - 3x + 5             3
----------- = x - 1 + -----
  x - 2               x - 2   ∎
```

## Example 3

```js
2x³ - 2x² + 7            -2x + 9
------------- = 2x - 2 + --------
    x² + 1                x² + 1

                         2x - 2
x² + 0x + 1 ⟌2x³ - 2x² + 0x + 7
           -(2x³ + 0x² + 2x)
              0  - 2x² - 2x + 7
                -(-2x² - 0x - 2)
                    0  - 2x + 9  // remainder since degree(x²) > degree(2x)
∎
```
