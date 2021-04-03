# Function cardinality

Given two sets (types) `a` and `b`, the number of functions from `a` to `b` is `|b|` to the power of `|a|`.


If `φ ~ (a -> b)`, `n` = `|a|` and `m` = `|b|`, then `|φ|` is `mⁿ`.

For example
- if `f :: (Bool -> Ordering)`, then `|f|` is 3² = 9
- if `g :: (Ordering -> Bool)`, then `|g|` is 2³ = 8


## Extended example

Intuitively, for every output value, `y`, of type `b`, we can set each input value, `x`, of type `a`.

A function `g :: Ordering -> Bool` 
- the cardinality of the input type is 3,  `Ordering = {LT,EQ, GT}`
- the cardinality of the output type is 2, `Bool = {True, False}`
- the total number of such functions: 2³ = 8

The card. of output type, Bool, is 2, which means there will be 2 constant functions that ignore the input: one that always returns True and another that always returns False. Plus 6 more functions whose output depends on the input. In this case, of Bool output type, it is easy to identify them, but this case can serve as the guidance for any function type.

We know there will be 8 functions total. We know that each function will consist of 3 equations because the cardinality of the input type is 3 (each equation does a pattern match against the input type).

So all functions will have the same LHS:

```hs
g LT = ...
g EQ = ...
g GT = ...
```

The return type is Bool so the returned value is either True or False. There is no obvious way in which the input is associated with the output, so we can just enumerate all the possible ways we can have True and False as the LHS output.

We can start with F (False) and state that the returns of the first function are {F,F,F}, that is:

```hs
g0 LT = False
g0 EQ = False
g0 GT = False
```

This completes function #0. The next function has to return {F,F,T}:

```hs
g1 LT = False
g1 EQ = False
g1 GT = True
```

and so on. We need to iterate through all the permutations of 3 Boolean values, from {F,F,F} to {T,T,T}. If T is 1 and F is 0 then just enumerate the return values as increasing binary numbers, from 0 (F,F,F ≡ 000) to 8 (T,T,T ≡ 111).

fn \  # | 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |
--------|---|---|---|---|---|---|---|---|
g# LT = | T | T | T | T | F | F | F | F |
g# EQ = | T | T | F | F | T | T | F | F |
g# GT = | T | F | T | F | T | F | T | F |



```hs
g :: Ordering -> Bool

-- 0: {LT,EQ,GT} -> {F,F,F}  (AKA constant function False)
g0 LT = False
g0 EQ = False
g0 GT = False
-- or just:
g0 _ = False

-- 1: {LT,EQ,GT} -> {F,F,T}
g2 LT = F
g2 EQ = F
g2 GT = T

-- 2: {LT,EQ,GT} -> {F,T,F}
g3 LT = F
g3 EQ = T
g3 GT = F

-- 3: {LT,EQ,GT} -> {F,T,T}
-- 4: {LT,EQ,GT} -> {T,F,F}
-- 5: {LT,EQ,GT} -> {T,F,T}
-- 6: {LT,EQ,GT} -> {T,T,F}

-- 7: {LT,EQ,GT} -> {T,T,T}  (AKA constant function True)
g8 _ = T
```
