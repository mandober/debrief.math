# Primitive recursive functions are computable

```hs
x̅ = x₀, x₁,...,xₖ

h    0  x̅ = f x̅
h (S n) x̅ = g n (h n x̅) x̅
```

Suppose a function `h` is defined by primitive recursion and suppose the functions `f` and `g` are computable (and letting `h` be a binary function for the ease of presentation),

```hs
h    0  x = f x            -- (1)
h (S n) x = g n (h n x) x  -- (2)
```

then `h 0 x` is obviously computable since it is just `f x`, which we assumed is computable. And `h 1 x` can then also be computed, since `h 1 x = h (S 0) x`

```hs
-- n = 0
h 0 x = f x                 -- by (1)

-- n = 1
h 1 x =
h (S 0) x =                 -- by 1 = S 0
  = g 0 (h 0 x) x           -- by (2)
  = g 0 (f x) x             -- by (1) h 0 x = f x

-- n = 2
h 2 x =
h (S 1) x =                 -- by 2 = S 1
  = g 1 (h 1 x) x           -- by (2)
  = g 1 (g 0 (h 0 x) x) x   -- by (n = 1), h 1 x = g 0 (h 0 x) x
  = g 1 (g 0 (f x) x) x     -- by (n = 1), h 1 x = g 0 (f x) x
```

Expands as
- h 0 x =                     f x
- h 1 x =                g 0 (f x) x
- h 2 x =           g 1 (g 0 (f x) x) x
- h 3 x =      g 2 (g 1 (g 0 (f x) x) x) x
- h 4 x = g 3 (g 2 (g 1 (g 0 (f x) x) x) x) x


Thus, a primitive recursive definition, `ρ(f,g)`, yields a new computable function if the functions `f` and `g` are computable.

Composition of functions also results in a computable function if the functions `f` and `g̅` are computable.

Since the initial functions are computable, and composition and primitive recursion yield computable functions from computable functions, this implies that every primitive recursive function is computable.
