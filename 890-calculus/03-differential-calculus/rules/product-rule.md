# Product rule

The product rule

```js
// short
(f×g)′ = f′g + fg′

// long
(f(x) × g(x))′ = f′(x)g(x) + f(x)g′(x)

// again
y = f(x)g(x)

(fg)′ = f′g + fg′

        d(fg)           df
(fg)′ = ------    f′ = ----
         dx             dx

// Extended Product Rule
(fgh)′ = f′gh + fg′h + fgh′
```




The sum rule of differentiation is linear in that the derivative of the sum of two functions is equal to the sum of their derivatives, `(f + g)′ = f′ + g′`. This is not the case with multiplication since the derivative of a product is not the product of the derivatives, `(f × g)′ ≠ f′ × g′`.

## The proof of the product rule

```js
// for y = f(x)

            f(x + h) - f(x)
f′(x) = lim ---------------
        h→0       h

// for y = f(x)g(x)

                  f(x+h)g(x+h) - f(x)g(x)
(f(x)g(x))′ = lim -----------------------
              h→0            h

      f(x+h)g(x+h) - f(x)g(x+h) + f(x)g(x+h) - f(x)g(x)
= lim -------------------------------------------------
  h→0                           h

             f(x+h) - f(x)         g(x+h) - g(x)
= lim g(x+h) ------------- + f(x) --------------
  h→0              h                     h
      └─┬──┘└─────┬──────┘   └─┬─┘└─────┬──────┘
        g         f′           f        g′
        ↓
lim{h→0} g(x + h) = g(x + 0) = g(x)
```
