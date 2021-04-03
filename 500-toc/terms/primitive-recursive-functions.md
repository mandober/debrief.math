# Primitive Recursive Functions

Most number-theoretic functions definable using recursion on a single variable are primitive recursive. Basic examples include the addition and truncated subtraction functions.

```
h    0  x = f x             | add    0  x = x
h (S y) x = g y (h y x) x   | add (S y) x = S (add y x)

h = add = ρ(f, g)

f = π¹₁         π¹₁(x) = x
g = σ . π³₂     σ . π³₂ (x, y, z) = σ (π³₂ (a,b,c)) = σ(b)
                                  = σ (π³₂ (y, h(y,x), x))
                                  = σ (        h(y,x)    )
```
