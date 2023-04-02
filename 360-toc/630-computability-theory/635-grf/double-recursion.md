# Double recursion

https://en.wikipedia.org/wiki/Double_recursion

In computability theory (recursive function theory), double recursion is an extension of primitive recursion which allows the definition of *non-primitive recursive functions* like the Ackermann function.

Raphael M. Robinson called functions of two natural number variables `G(n,x)` double recursive with respect to given functions, if
- `G(0, x)` is a given function of `x`
- `G(n+1, 0)` is obtained by substitution from the function `G(n,·)` and given functions
- `G(n+1, x+1)` is made by substitution from `G(n+1, x)`, the function `G(n,·)`, and the given functions.

(paper "Recursion and Double Recursion" Raphael M. Robinson, 1948)

Robinson goes on to provide a specific double recursive function (originally defined by Rózsa Péter):

```hs
-- math style
G(0, x) = x + 1
G(n + 1, 0) = G(n, 1)
G(n + 1, x + 1) = G(n, G(n + 1, x))

-- Haskell style
g :: Integer -> Integer -> Integer
g 0 n = n + 1
g m 0 = g (m - 1) 1
g m n = g (m - 1) (g m (n - 1))

-- Haskell style 2
g :: Int -> Int -> Int
g 0 n = succ n
g m 0 = g (pred m) 1
g m n = g (pred m) (g m (pred n))

-- Haskell style 3
g :: Nat -> Nat -> Nat
g    0     n  = S n
g (S m)    0  = g m 1
g (S m) (S n) = g m (g m n)
```

where the given functions are primitive recursive, but `G` is not primitive recursive. In fact, this is precisely the function now known as the *Ackermann function*.
