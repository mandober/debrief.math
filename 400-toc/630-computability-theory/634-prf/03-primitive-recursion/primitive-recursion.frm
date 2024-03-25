# Forms of the primitive recursive operator `ρ`

The primitive recursive operator `ρ` doesn't have a single fixed form because several of its aspects are left underdetermined:
- choice of parameter to recurse over (first or last)
- paramater of `f` function
- shape and order of paramaters of `g` function

The operator `ρ` takes two functions, `f` (of arity `k - 1`) and `g` (of arity `k + 1`) to produce the resulting function `h` (of arity `k`). In fact, `f` handles the base case, when the recursive argument is 0. If `h` is a unary function (i.e. if there are no extra parameters), then `f` is a nullary function, that is, `f` collapses into a constant; otherwise, `f` is given the opportunity to do something with the extra parameters (`x₁, …,xₖ`).


## Definition from Wikipedia

Given
- a `k`-ary function `f(x₁, …,xₖ)`
- a `k+2`-ary `g(y, z, x₁, …,xₖ)`

`ρ(f, g) ≝ h`

where the `k+1`-ary function `h` is defined by:

```hs
h(  0 , x₁, …,xₖ) = f(x₁, …,xₖ)
h(S(y), x₁, …,xₖ) = g(y, h(y, x₁, …,xₖ), x₁, …,xₖ)
  ↑↑↑↑                ↑   ↑
note that `S y` appears only on the lhs while the rhs has just `y`
i.e. a natural that is one less than `S y` (smaller term)
```

This definition from Wikipedia uses the first argument for recursion, which is fine when `h` is an associative operation (add, mul, etc), but will require extra effort to workaround defining a non-associative operations like exponentiation (which is right-associative operation). Thus, the choice to recurse on the last argument seems more practical.

```hs
h(x₁, …,xₖ,   0 ) = f(x₁, …,xₖ)

h(x₁, …,xₖ, S(y)) = g(y, h(y, x₁, …,xₖ), x₁, …,xₖ) -- (g-1a)
h(x₁, …,xₖ, S(y)) = g(y, h(x₁, …,xₖ, y), x₁, …,xₖ) -- (g-1b)

h(x₁, …,xₖ, S(y)) = g(h(y, x₁, …,xₖ), x₁, …,xₖ, y) -- (g-2a)
h(x₁, …,xₖ, S(y)) = g(h(x₁, …,xₖ, y), x₁, …,xₖ, y) -- (g-2a)

h(x₁, …,xₖ, S(y)) = g(x₁, …,xₖ, h(y, x₁, …,xₖ), y) -- (g-3a)
h(x₁, …,xₖ, S(y)) = g(x₁, …,xₖ, h(x₁, …,xₖ, y), y) -- (g-3b)
```

### Variations by number of paramaters

#### Single argument

```hs
h(  0)  = f
h(S(y)) = g(y, h(y))
```

#### Two arguments

```hs
h(  0 , x) = f(x)
h(S(y), x) = g(y, h(y, x), x)
```

#### Multiple arguments

In case of multiple arguments, we reiterate the initial definition, noting that we can then have variations on the order of arguments in `g`:

```hs
h(  0 , x₁, …,xₖ) = f(x₁, …,xₖ)
h(S(y), x₁, …,xₖ) = g(y, h(y, x₁, …,xₖ), x₁, …,xₖ) -- (g1)
h(S(y), x₁, …,xₖ) = g(y, x₁, …,xₖ, h(y, x₁, …,xₖ)) -- (g2)
```
