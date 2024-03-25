# Primitive recursion

Primitive recursion is the fundamental recursion scheme over the natural numbers. All primitive recursive functions are total. That is, besides composition, primitive recursion is another safe operations to build more complex functions. By combining the 3 elementary functions with the operations of composition (⊚⊚) and primitive recursion, all the obtained functions will be total and convergant.

and from them and the two operations derived functions.


h x̅    0  = f x̅
h x̅ (S y) = g x̅ y (h x̅ y)



Primitive recursion is symbolized by the `ρ` operator, `ρ(f, g) = h`.

The primitive recursion operator `ρ(f, g) = h` takes two primitive recursive functions `f` and `g`, and returns another primitive recursive function `h`, defined recursively in terms of `f` and `g`.

`ρ` takes two functions `f` and `g` and uses 
`f` in the base case, 
`g` in the recursive case.

If the arity of `h` is `k` then 
the arity of `f` is `k - 1`, and 
the arity of `g` is `k + 1`.

* General form of primitive recursion

Primitive recursion must have an argument to recurse over, so there must be at least one argument.

Besides the parameter that is used for recursing, there may be one or more additional parameters, which may hold information relevant for recursion. These parameters may be referenced during the recursion, but they are immutable.

It may have one or more optional, immutable, parameters, which are often denoted as `x̅` := `x₀, x₁, …, xₖ`.

```hs
-- Primitive recursion
h    0  x₀ x₁ … xₖ = f x₀ x₁ … xₖ
h (S y) x₀ x₁ … xₖ = g (S y) (h y x₀ x₁ … xₖ) x₀ x₁ … xₖ

-- Primitive recursion (on the first arg)
h    0  x̅ = f x̅
h (S n) x̅ = g n (h n x̅) x̅

-- Primitive recursion (on the second arg)
h x̅    0  = f x̅
h x̅ (S n) = g x̅ (h n x̅) 
```

* Primitive recursion with one parameter

Primitive recursion with a variable `y` and 1 parameter `x`

```hs
h    0  x = f x
h (S n) x = g n (h n x) x
```

Primitive recursion with a variable `y` and 2 parameters `x₀` and `x₁`

```hs
h    0  x₀ x₁ = f x₀ x₁
h (S n) x₀ x₁ = g n (h n x₀ x₁) x₀ x₁
```
