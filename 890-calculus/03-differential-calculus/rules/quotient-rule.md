# Quotient rule

The quotient rule

```js
⎛  f  ⎞′  f′g - fg′
⎜---- ⎟ = ---------
⎝  g  ⎠      g²

⎛ f(x) ⎞′  f′(x)g(x) - f(x)g′(x)
⎜------⎟ = ---------------------
⎝ g(x) ⎠           g²(x)
```

## Deriving the quotient rule

Deriving the quotient rule from the reciprocal and product rules

```js
// division of two functions as a new function
     f        1
y = ---- = f ----
     g        g

    f(x)           1
y = ---- = f(x) ------
    g(x)         g(x)

// Differentiating a function that is a quotient of two functions
// using the reciprocal and product rules.

 dy        1       ⎛ 1 ⎞′
---- = f′ ---- + f ⎜---⎟
 dx        g       ⎝ g ⎠

 dy        1        -g′
---- = f′ ---- + f -----
 dx        g         g²

 dy     f′     fg′
---- = ---- - -----
 dx     g       g²

 dy     f′g    fg′
---- = ---- - -----
 dx     g²      g²

 dy    f′g - fg′
---- = ---------
 dx       g²

⎛ f(x) ⎞′  f′(x)g(x) - f(x)g′(x)
⎜------⎟ = ---------------------
⎝ g(x) ⎠           g²(x)
```
