# Primitive recursion formulae

The equations for primitive recursion are not set in stone, expecially the choice of param used for recursion, and the order of params in the function `g` that handles the recursive case on the rhs of the second equation.

The canonical Primitive Recursion form expects 3 arguments to be given to function `g`:
- recursive param, `y`
- the extra args, `x̅`
- a recursive call to function `h`, which in turn takes
  - extra args, `x̅`
  - recursive arg, `y`

This may be interpreted as providing `g` with
- the previous value of the function `h` 
  (with its current value being defined on the lhs)
- the previous value of the rec arg `y` 
  (with its current value on the lhs as `S y`)
- the fixed args, `x̅`

## Recursing on the last parameter

```hs
-- | Multi-argument PR
h x̅    0  = f x̅               -- version L-BASE
h x̅ (S y) = g x̅ (h x̅ y) y     -- version L1
h x̅ (S y) = g x̅ y (h x̅ y)     -- version L2 (aka PR at SEP)
h x̅ (S y) = g y x̅ (h x̅ y)     -- version L3
h x̅ (S y) = g y (h x̅ y) x̅     -- version L4
h x̅ (S y) = g (h x̅ y) x̅ y     -- version L5
h x̅ (S y) = g (h x̅ y) y x̅     -- version L6
```

## Recursing on the first parameter

```hs
-- | Multi-argument PR
h    0  x̅ = f x̅               -- version F-BASE
h (S y) x̅ = g x̅ (h x̅ y) y     -- version F1
h (S y) x̅ = g x̅ y (h x̅ y)     -- version F2
h (S y) x̅ = g y x̅ (h x̅ y)     -- version F3
h (S y) x̅ = g y (h x̅ y) x̅     -- version F4 (aka Kleen's version)
h (S y) x̅ = g (h x̅ y) x̅ y     -- version F5
h (S y) x̅ = g (h x̅ y) y x̅     -- version F6
```

## Single parameter PR

With a single parameter PR, all choices collapse: there is only one param to recurse over and there are only two possible arg orders in `g`:

```hs
h    0  = f                   -- version S-BASE
h (S y) = g (h y) y           -- version S1
h (S y) = g y (h y)           -- version S2
```

## Evaluation

```hs
-- | Evaluating h(4) in version S1
h    0  = f            -- version S-BASE
h (S y) = g (h y) y    -- version S1

h 0 =                                  f
h 1 = h (S 0) = g (h 0) 0 =          g f 0
h 2 = h (S 1) = g (h 1) 1 =       g (g f 0) 1
h 3 = h (S 2) = g (h 2) 2 =    g (g (g f 0) 1) 2
h 4 = h (S 3) = g (h 3) 3 = g (g (g (g f 0) 1) 2) 3


-- | Evaluating h(4) in version S2
h    0  = f            -- version S-BASE
h (S y) = g y (h y)    -- version S2

h 0 =                                          f
h 1 = h (S 0) = g 0 (h 0) =                g 0 f
h 2 = h (S 1) = g 1 (h 1) =           g 1 (g 0 f)
h 3 = h (S 2) = g 2 (h 2) =      g 2 (g 1 (g 0 f))
h 4 = h (S 3) = g 3 (h 3) = g 3 (g 2 (g 1 (g 0 f)))
```
