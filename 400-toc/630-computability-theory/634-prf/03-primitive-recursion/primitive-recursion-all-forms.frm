# All forms of the primitive recursive operator `ρ`

Given
- `k`-ary function `f(x₁, …,xₖ)`
- `k+2`-ary `g(y, z, x₁, …,xₖ)`

`ρ(f, g) ≝ h`

where the `k+1`-ary function `h` is defined by:

## One argument

```hs
-- math:
h(0)    = f
h(S(y)) = g(y, h(y))                                      -- (arg1)
h(S(y)) = g(h(y), y)                                      -- (arg1-alt)

-- Haskell:
h    Z  = f
h (S y) = g y (h y)                                       -- (arg1)
h (S y) = g (h y) y                                       -- (arg1-alt)
```

## Two arguments - recurse on first

```hs
-- math:
h(  0 , x) = f(x)
h(S(y), x) = g(y, h(y, x), x)                             -- (arg2-v1)
h(S(y), x) = g(y, x, h(y, x))                             -- (arg2-v2)

-- Haskell:
h    0  x = f x
h (S y) x = g y (h y x) x                                 -- (arg2-v1)
h (S y) x = g y x (h y x)                                 -- (arg2-v2)
```

## Two arguments - recurse on second

```hs
-- math:
h(x,   0)  = f(x)
h(x, S(y)) = g(x, y, h(x, y))                             -- (arg2-rec2-v1)
h(x, S(y)) = g(x, h(y, x), y)                             -- (arg2-rec2-v2)

-- Haskell:
h x    0  = f x
h x (S y) = g y (h y x) x                                 -- (arg2-rec2-v1)
h x (S y) = g y x (h y x)                                 -- (arg2-rec2-v2)
```


## Three arguments

```hs
-- math:
h(  0 , x, z) = f(x, z)
h(S(y), x, z) = g(y, h(y, x, z), x, z)                    -- (arg3-rec1-v1)
h(S(y), x, z) = g(y, x, z, h(y, x, z))                    -- (arg3-rec1-v2)

-- Haskell:
h    0  x z = f x z
h (S y) x z = g y (h y x z) x z                           -- (arg3-rec1-v1)
h (S y) x z = g y x z (h y x z)                           -- (arg3-rec1-v2)


```



## Multiple arguments

```hs
h(x₁, …,xₖ,   0 ) = f(x₁, …,xₖ)

h(x₁, …,xₖ, S(y)) = g(y, h(y, x₁, …,xₖ), x₁, …,xₖ) -- (g-1a)
h(x₁, …,xₖ, S(y)) = g(y, h(x₁, …,xₖ, y), x₁, …,xₖ) -- (g-1b)

h(x₁, …,xₖ, S(y)) = g(h(y, x₁, …,xₖ), x₁, …,xₖ, y) -- (g-2a)
h(x₁, …,xₖ, S(y)) = g(h(x₁, …,xₖ, y), x₁, …,xₖ, y) -- (g-2a)

h(x₁, …,xₖ, S(y)) = g(x₁, …,xₖ, h(y, x₁, …,xₖ), y) -- (g-3a)
h(x₁, …,xₖ, S(y)) = g(x₁, …,xₖ, h(x₁, …,xₖ, y), y) -- (g-3b)






h(  0 , x₁, …,xₖ) = f(x₁, …,xₖ)
h(S(y), x₁, …,xₖ) = g(y, h(y, x₁, …,xₖ), x₁, …,xₖ) -- (g1)
h(S(y), x₁, …,xₖ) = g(y, x₁, …,xₖ, h(y, x₁, …,xₖ)) -- (g2)
```
