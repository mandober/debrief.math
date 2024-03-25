# Projection

The projection function, `πᵏᵢ : ℕᵏ -> ℕ`, takes up to `k` arguments and returns the `i`-th argument, where `0 < i < k-1`.

The projection usually counts the arguments using the 1-based indexing, although some authors use the 0-based indexing.

Projection
`Projⁿᵢ`, `π`, `πⁿᵢ(x₀, x₁,...,xₙ) = xᵢ`
projection is an n-ary function that takes an n-tuple as the arg and returns the ith component of the tuple, for 1 ≤ i ≤ n
`π³₁(1,2,3) = 1` (not that π is here 1-based, but it may be 0-based as well)
the projection functions πⁿₘ. The collection of projection functions map m-tuples onto the n-th component of the m-tuple. e.g. π³₂(7, 11, 4) returns the 2nd element of the 3-tuple (7, 11, 4), i.e. 11.



```hs
πᵏᵢ :: ℕᵏ -> ℕ
πᵏᵢ(x₀, x₁,...,xₖ) = xᵢ

-- examples
π³₃(1,2,3) = 3
π³₁(1,2,3) = 1
π¹₁(1) = 1


-- possible errors:
-- 1) mismatch between the number of expected and present args
π²₁(1)     = error "argc mismatch: too few args"
π²₁(1,2,3) = error "argc mismatch: too many args"
π²₁()      = error "argc mismatch: arg missing"
-- 1) indexing errors
π³₄(1,2,3) = error "index out of bounds"
π³₀(1,2,3) = error "index out of bounds"
```

## Identity

The follwing instance of the projection function, `π¹₁(x) = x`, is encountered enough often that we should make an abbreviation for it, `id = π¹₁`.

```hs
id :: ℕ -> ℕ
id = π¹₁
id(x) = π¹₁(x) =x

-- examples
id(1) = 1

-- possible errors
id(1,2) = error "argc mismatch: too many args"
id() = error "argc mismatch: arg missing"
```

The identity function, `id`, is a unary function that just returns its sole argument.


## First and second projections

```hs
π²₁(a,b) = a  -- fst
π²₂(a,b) = b  -- snd
```
