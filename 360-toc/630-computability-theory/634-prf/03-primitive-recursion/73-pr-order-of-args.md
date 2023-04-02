# Primitive recursion

- selecting the recursion arg: first or last
  - the last arg is better for defining non-commutative operations
- the order of args in `g`
  - with the first as the recursive arg, 
    the order is normally `g x̅ (h x̅ n) n`
    i.e. the order follows the order of `h` as much as it can.
  - but nothing's wrong with `g n (h x̅ n) x̅` if `g` complies to it.


It is quite arbitrary whether we use the first or the last arg to recurse over when defining the primitive recursive combinator ρ. On the one hand, using the first arg is perhaps easier when it comes to an implementation of PR in some PL because that way the rec param is always in the first position. However, using the first arg makes defining non-commutative operations harder. On the other hand, using the last arg makes defining non-commutative operations easier, but knowing the position of the rec arg becomes trickier.

Some authors choose the first arg for recursion yielding equations like

```hs
-- recursing over the first param
h    0  x̅ = f x̅
h (S n) x̅ = g n (h n x̅) x̅
  where
  x̅ = x₀, x₁,...,xₖ
```

Other authors choose the last arg for recursion yielding equations like

```hs
-- recursing over the first param
h x̅    0  = f x̅
h x̅ (S n) = g x̅ (h x̅ n) n
```

However, choosing the first arg to recurse over makes it harderto define non-commutative operations. Namely, e.g. exponentiation, which is right-associative and non-commutative, can only use the second of its two args for recursion because it is defined by this relation: `nᵐᐩ¹ = nᵐ ⨯ n¹`.

Using the first param for recursion means you'll have to some how flip the order of args by defining a flipped exp, i.e. `revexp(m,n) = exp(n,m) = nᵐ`. It is similar for defining monus, proper subtraction, division, etc.

In the recursive case, on the right-hand side of `h`, the order of paramters is not very important as long as `g` knows abou it.

What's more important is that `g` takes 3 args, not their exact order:
- the previous value of `n` (the current is `S n` on lhs)
- the previous value of `h` (the current value of `h` is being defined on lhs)
- the extra args, `x̅`


## Fitting the pattern of primitive recursion

Even if we understand the definition of primitive recursion as requiring at least one extra arg, we can work around this and still be able to define functions like `pred` that don't have any extra args. Consider

```hs
pred    0  = 0
pred (S y) = y
```

This is almost a primitive recursive definition. It does not, strictly speaking, fit into the pattern of definition by primitive recursion, since that pattern requires at least one extra argument; also, `pred` doesn't actually use `pred y` in the definition of `pred (S y)`.

However, we can work around this by first defining `pred'` and then we can define `pred` in terms of `pred'`.

```hs
-- first define pred'
pred' x    0  = Z x                  -- = 0
pred' x (S y) = P³₂ x y (pred' x y)  -- = y

-- then pred is
pred x = pred' (Z x, Id x)
```

So, `h = pred' = ρ(f,g)` where
- `f = Z`
- `g = P³₂`
