# Primitive recursion

```hs
-- (Primitive) RECURSION
h    0  = f
h (S y) = g y (h y)

-- ITERATION
h    0  = f
h (S y) = g (h y)

-- Folding
fold  g f []     = f
foldr g f (x:xs) = g x (foldr g f xs)
foldl g f (x:xs) = foldl g (g f x) xs
-- hmmm
foldr g f _ = g _ (foldr g f _)
foldl g f _ = foldl g (g f _) _
```

## Primitive recursion operator

The primitive recursion operator `ρ` takes two PR functions `f` and `g`, produing another PR function `h`

`h = ρ(f,g)`

```hs
-- general case with k fixed params
h(  y, x̅) = f(x̅)
h(S y, x̅) = g(y, h(y,x̅), x̅)
  where
  x̅ = x₁, …, xₖ
-- same with but with FP syntax
h    y  x̅ = f x̅
h (S y) x̅ = g y (h y x̅) x̅


-- special case with no params
h(  y) = f
h(S y) = g(y, h(y))
  where
  f ∈ ℕ
-- same with but with FP syntax
h    y  = f
h (S y) = g y (h y)

-- sure looks a lot like a definition by induction!
-- in "recursion vs induction vs prim-rec schemes"
-- wtf is recursor. whatabout iteration in terms of
-- recursion, wta co/induction and co/recursion?!

-- ITERATIVE FUNCTIONS
-- obtained by removing more args (on the rhs)

-- general case with k fixed params
h(  y, x̅) = f (x̅)
h(S y, x̅) = g (h(y,x̅), x̅)
-- with FP syntax
h   y   x̅ = f x̅
h (S y) x̅ = g (h y x̅) x̅

-- special case
h(  y) = f
h(S y) = g(h(y))
-- with FP syntax
h    y  = f
h (S y) = g (h y)
-- alt
-- h   = g . h . (- 1)
```

>So, iteration can be defined in terms of primitive recursion!




In the general case, on the rhs:

```hs
recursion runs over this (first) arg
    │
    │ fixed args (do not change)
    │   x̅ = x₁, …, xₖ
    │   │
h (S y, x̅) = g ( y, h (y, x̅), x̅ )
    │        │   │  └──┬───┘  │
    │        │   │     │      │
the current  │   │     │      3ʳᵈ arg to g
rec arg      │   │     │
             │   │     2ⁿᵈ arg to g
         g³ ─┘   │
                 1ˢᵗ arg to g is actually the
                 predecessor of the current
                 (recursive, first) arg, S y.
                 (weak PR works fine with S y here)
```





## Primitive recursion

A primitive recursive function (PRF) takes a fixed number of arguments, each a natural number, and returns a natural number.

There are 3 fundamental initial PRFs:
1. *Contant* PRF
  - `const` or `Cᵏₙ`
  - it takes `k` args but always returns some fixed nat `n`
  - `Cᵏₙ (x₁ … xₖ) = n`, e.g. C⁴₁(5,6,7,8) = 1
  - as a special case, *zero* or `ζ` or `Z` is defined as `Zᵏ = Cᵏ₀`
    - zero takes `k` args but always returns 0, e.g. Z¹(4) = 0
2. *Successor* PRF
  - `succ` or `σ` or `S¹`
  - returns the successor of its single argument
3. *Projection* PRF
  - `proj` or `πᵏᵢ`
  - proj takes `k` args and returns the `i`-th one
  - `πᵏᵢ (x₁ … xₖ) = xᵢ`, e.g. π³₂(1,2,3) = 2
  - usually, proj uses the 1-based indexing for the tuple of args
  - as a special case the *identity* function, `I` = `π¹₁`

Operations to combine the fundamental PRFs:
- composition, `∘`, (substitution)
- primitive recursion, `ρ`

Notes:
- the domain of a function defined by an operator is the set of the values of the arguments such that every function application that must be done during the computation provides a well-defined result.


## Composition

Given    
- A function `h` that takes `m` args, `hᵐ`       
  `hᵐ (x₁ … xₖ)`
- and `m` functions `g`, each of which takes `k` args, `gᵏ₁ … gᵏₘ`
  `gᵏ₁ (x₁ … xₖ), …, gᵏₘ (x₁ … xₖ)`
- then `f` is the composition of `h` with `g`'s
  `f = h ∘ (g₁, …, gₘ)`
- defined by:      
  `fᵏ (x₁ … xₖ) = hᵐ { gᵏ₁ (x₁ … xₖ), …, gᵏₘ (x₁ … xₖ) }`

Note:
- the args are the same for all functions `g`
- the domain of a function defined by an operator is the set of the values of the arguments such that every function application that must be done during the computation provides a well-defined result (i.e `h` must be compatible with the *results* of `g`'s)
- `h` takes a tuple of results, each returned from a particular function `g`
- `g` functions need not be the same.
- in the simplest case when there is only 1 function `g` that takes 1 arg `x`, the primitive composition looks like a regular function composition, i.e.    
`f = h ∘ g` that is `f(x) = h(g(x))`.


Example:

```hs
-- the primitive composition of
h = π²₁
g₁ = π²₂
g₂ = ζ²

-- is
f = h ∘ (g₁, g₂)

-- i.e.
f (1,2) = h   (g₁ (1,2), g₂ (1,2))
       = π²₁ (π²₂ (1,2), ζ² (1,2))
       = π²₁ (2       , 0)
       = 2
```



## Primitive recursion

Given 2 primitive recursive functions `f` and `g`,    
their primitive recursion is `ρ(f,g) = h`    
where
- `f` takes `k - 1` args
- `g` takes `k + 1` args
- `h` takes `k` args
such that
- `h (   0, x₁, …, xₖ) = f (x₁, …, xₖ)`
- `h (S(y), x₁, …, xₖ) = g (y, h (y,x₁, …, xₖ), x₁, …, xₖ)`


With only a single arg `x` this becomes
- `h (  0, x) = f (x)`
- `h (S y, x) = g (y, h (y,x), x)`
