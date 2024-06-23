# Derivations of PRFs


## Predecessor

Consider the predecessor function, `pred`, defined as

```hs
pred    0  = 0
pred (S y) = y
```

This is almost a primitive recursive definition. It does not, strictly, fit into the pattern of definition by primitive recursion, since that pattern requires at least one extra argument, and also `pred` doesn't actually use `pred y` in the definition of `pred (S y)`. However, we can work around these two issues by first defining the precursor predecessor function `pred'`, and then we can define `pred` in terms of `pred'` that are compatible with primitive recursion.

```hs
-- we first define pred'
pred' x    0  = Z x                  -- = 0
pred' x (S y) = P³₂ x y (pred' x y)  -- = y

-- pred in terms of pred'
pred x = pred' (Z x, Id x)
```

So, `h = pred' = ρ(f,g)` where `f = Z` and `g = P³₂`.


## Monus

Monus or truncated subtraction, denoted `∸`, is definable from the `pred` function. It satisfies the equations:

```hs
y ∸   0 = y
y ∸ S x = Pred (y ∸ x)
```


## Factorial

Factorial of a number `n` is defined by the recurrence relation    

```hs
0!     = 1            -- (1)
(S n)! = (S n) * n!   -- (2)
-- or
0! = 1                -- (1)
n! = n * (n - 1)!     -- (2)

-- which amounts to
n! = n * (n - 1) * (n - 2) * … * 2 * 1
n! = 1 * 2 * … * (n - 2) * (n - 1) * n -- or alternatively

-- e.g.
0! = 1                     -- by def
1! = 1 * 0! = 1 * 1 = 1    -- by (2) and 0!
2! = 2 * 1! = 2 * 1 = 2    -- by (2) and 1!
3! = 3 * 2! = 3 * 2 = 6
4! = 4 * 3! = 4 * 6 = 24
5! = 5 * 4! = 5 * 24 = 120
-- etc.
```

We need to express this in terms of `h = ρ(f,g) = fac`. 
- For n = 0, 
  we need to return 1, 
  so the first equation `n! = 1` 
  in terms of `f` implies that
  `f = 1 = C⁰₁`
  i.e. `f` is `C⁰₁ = 1`
  aka `const 1 () = 1` [!?] what is the 2nd arg, `()`?!
- For `n = S n'`, 
  the second equation, `n! = n * (n - 1)!` 
  uses `h`, `mul`, `n` and `S n` 
  on its right hand side `n * (n - 1)!`


```hs
-- In Haskell
fac 0 = 1
fac n = n * fac (n - 1)

-- Factorial in math
fac 0 = 1
fac n = n * fac (n - 1)

```
