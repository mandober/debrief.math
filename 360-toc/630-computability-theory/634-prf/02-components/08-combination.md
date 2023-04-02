# Combination

Not very often, the operation, weakly named *combination*, is also used as an operator over the initital functions.

The combination function combines the results of supplied functions, arranging them in a tuple. The combination function is denoted `f ⨯ g`. Both `f` and `g` take the same `k`-tuple of args, but each can return a different `j`-tuple of args, `(⨯) : ℕᵏ -> ℕʲ`, where `0 <= j <= k`.

## Definition

The combination, `⨯`, is a `j`-ary function, where `j = k+2`.   
The combination takes:
- 2 functions, `f` and `g`, both taking `k` args, `x₁ … xₖ`, as input
  - `fᵏ : ℕᵏ -> ℕᵐ`
  - `gᵏ : ℕᵏ -> ℕⁿ`
- `k` args, `x₁, …, xₖ`, where each `xᵢ ∈ ℕ`
  - sometimes abbreviated as `x̅ᵏ := x₁, …, xₖ`
  - their type is `x̅ᵏ : ℕᵏ`, actually: `(x₁, …, xₖ) : (ℕ ⨯ … ⨯ ℕ)`

So far, we have `(⨯) f, g, x₀, …, xₖ` on the lhs of the definition.

The result of applying
- `f` is `m`-tuple of elements, (y₁, …, yₘ)
  - that is, `f(x₁, …, xₖ) = (y₁, …, yₘ)`
  - abbr. as `f(x̅) = y̅ₘ`
- `g` is `n`-tuple  of elements, (z₁, …, zₙ)
  - that is, `g(x₁, …, xₖ) = (z₁, …, zₙ)`
  - abbr. as `f(x̅) = z̅ₙ`

Note that `f(x₁)` does not directly result in `y₁`. The only thing that is defined is that `f(x₁, …, xₖ) = (y₁, …, yₘ)`, not the individual applications. 

>In other wods, both functins `f` and `g` are applied to the entire input tuple, not to the individual elements.

Finally, the combination functional takes these resulting tuples 
- resulting `m`-tuple from the app of `f` and
- resulting `n`-tuple from the app of `g`

and concatenates them together into a single `m+n`-tuple, 
such that 
the first `m` elements in the `m+n` tuple come from `f`, 
and the following `n` elements come from `g`. 

The parameterized combination function, and combination with implicit args defined in math, and the corresponding dfefinition in Haskell:

```hs
-- in math (implicit args)
(⨯) : ℕᵏ -> ℕʲ
(f ⨯ g) (x₀, …, xₖ) = (y₀, …, yₘ, z₀, …, zₙ)
  where
  f : ℕᵏ -> ℕᵐ
  f (x₀, …, xₖ) = y₀, …, yₘ
  g : ℕᵏ -> ℕₙ
  g (x₀, …, xₖ) = z₀, …, zₙ

-- in math (parameterized)
(⨯) : (ℕᵏ -> ℕᵐ ⨯ ℕᵏ -> ℕₙ ⨯ ℕᵏ) -> ℕʲ
(⨯) (f, g, x₀, …, xₖ) = (y₀, …, yₘ, z₀, …, zₙ)
  where
  f : ℕᵏ -> ℕᵐ
  f (x₀, …, xₖ) = y₀, …, yₘ
  g : ℕᵏ -> ℕₙ
  g (x₀, …, xₖ) = z₀, …, zₙ


-- in Haskell (replacing tuples with lists)
(⨯) :: ([ℕ] -> [ℕ]) -> ([ℕ] -> [ℕ]) -> [ℕ] -> [ℕ]
f ⨯ g = \ xs -> [f xs, g xs]
  where
  f :: [ℕ] -> [ℕ]
  f xs = map f xs

  g :: [ℕ] -> [ℕ]
  g xs = map g xs
```

## Examples

```hs
(f ⨯ g) (1,2,3) = (3,1)
  where
  f = π³₃
  g = π³₁


(f ⨯ g) (1, 2, h(2,1)) = (2, h(2,1), 3)
  where
  f = π³₃ ∘ π³₂
  g = S ∘ π³₂
```

As in the example above, combination is often used exactly for this purpose - to recombine the arguments in another order, possibly discarding or duplicating some of them.



## restl

```hs
-- combination function: def
(⨯) : (ℕᵏ -> ℕᵐ) -> (ℕᵏ -> ℕₙ) -> ℕᵏ -> ℕʲ
(⨯) (f) (g) (x₀, …, xₖ) = (r₀, …, rₘ, rₘ﹢₁, …, rⱼ)

-- combination function: def
(⨯) : (ℕᵏ -> ℕᵐ) -> (ℕᵏ -> ℕₙ) -> ℕᵏ -> ℕʲ
(⨯) (f) (g) (x₀, …, xₖ) = (y₀, …, yₘ, z₀, …, zₙ)
  where
  f (x₀, …, xₖ) = y₀, …, yₘ
  g (x₀, …, xₖ) = z₀, …, zₙ

--------------------------------------------------
f : ℕᵏ -> ℕᵐ
f(x₀ … xₖ) = (y₀ … yₘ)

g : ℕᵏ -> ℕⁿ
g(x₀ … xₖ) = (z₀ … zₙ)

--------------------------------------------------
-- type of combination, (⨯)
(⨯) : ℕᵏ -> ℕᵐ

f : ℕᵏ -> ℕᵐ
f x̅ = y̅

g : ℕᵏ -> ℕⁿ
g x̅ = z̅

(⨯) : (ℕᵏ -> ℕᵐ) -> (ℕᵏ -> ℕⁿ) -> ℕᵏ -> ℕᵐᐩⁿ
(⨯) f g x̅ₖ = (y̅ₘ, z̅ₙ) = (y₀, …, yₘ, z₀, …, zₖ)

--------------------------------------------------
f :: (ℕ ⨯ ℕ ⨯ ℕ) -> (ℕ ⨯ ℕ)         f : ℕ³ -> ℕ¹
g :: (ℕ ⨯ ℕ ⨯ ℕ) -> (ℕ ⨯ ℕ ⨯ ℕ)     g : ℕ³ -> ℕ³

f ⨯ g (x, y, z) = (f x, f y, g x, g y, g z)

fᵏ ⨯ gᵏ (x₁ … xₖ)
```


(combination is similar to composition without the rightmost function?)
