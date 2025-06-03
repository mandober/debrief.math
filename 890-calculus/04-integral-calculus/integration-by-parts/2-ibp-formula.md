# Integration by parts :: Formula

>IBP-2: `⎰ u dv = uv - ⎰ v du`
>IBP-3: `∫ u v dw = uvw - ∫ v w du - ∫ u w dv`


```js
∫ f(x)g′(x) dx = f(x)g(x) - ∫ g(x)f′(x) dx
∫ f g′ dx = f g - ∫ g f′ dx
∫ u dv = u v - ∫ v du
```

The left-hand side of the formula represents the integral to be solved. Assembling it from the equations for chosen subexpr for `u` and `dv` should produce the same integral. Thus, the lhs is only for reference, the real action happens on the rhs.

## Deriving the IBP formula from the product rule

The formula for integration by parts (IBP) can be derived from the product rule of differentiation. In a way, we are reversing the product rule to derive the IBP rule.

The IBP is similar to u-substitution. With u-substitution, we pick one subexp and have it replaced by a fresh variable `u` as we let `u = f(x)`. The subexp that `u` replaces contains `x`, so it may be expressed as a function of `x`, i.e. `f(x)`. The other parts of the integral are also replaced by exprs derived from the equation for `u`, i.e. from `u = …x…`. If there are any `x`'s leftover, we replace them by isolating the `x` in `u = …x…`, i.e. `x = …u…`. The differential `dx` is replaced as well by an equation for `dx` we get by differentiating the equation for `u`, `u = f(x)`. We differentiate both sides as `d/dx u = f′(x)`, which gets us `du = f′(x)dx`, and then `dx = du/f′(x)`. Thus, the differential `dx` gets replaced by `du/f′(x)`.

The IBP method also involves substitution - in fact, two substitutions - instead of one like with u-subst. IBP is like an extended u-subst. Rather then just picking one subexpr to replace by `u`, we get to pick another to replace by `dv`. We obtain `du` by differentiating the equation for `u`, and we obtain `v` by integrating the equation for `dv`.

## Derving the IBP formula

The formula for the product rule of differentiation, `(fg)′ = f′g + fg′`, is reversed to obtain the IBP formula.

```js
// formula for the product rule
(fg)′ = f′g + fg′
// integrate both sides wrt x
∫ (fg)′ dx = ∫ f′g dx + ∫ fg′ dx
// integrating and diffing a fn results in that same fn
fg = ∫ f′g dx + ∫ fg′ dx
// rearrange
fg - ∫ f′g dx = ∫ fg′ dx
// rearrange and spread out for clarity
∫ f g′ dx = f g - ∫ g f′ dx

// now we define u and v:
u = f(x)            v = g(x)         // diff both sides
d/dx u = f′(x)       d/dx v = g′(x)   // rearrange
du/dx = f′(x)        dv/dx = g′(x)
du = f′(x) dx        dv = g′(x) dx    // we have now du and dv

// in the equation, replace all terms by their substitutes
∫ f  g′ dx = f   g - ∫ g  f′ dx
 └┬┘ └┬──┘  └┬┘└┬┘    └┬┘└┬──┘
∫ u   dv  =  u  v - ∫  v  du
```


## Derving the IBP formula again

This time we derive the IBP formula starting with the product rule expressed in terms of `u` and `v`.

```js
// product rule
(uv)′ = u′v + uv′
// switch notation for rhs
(uv)′ = d/dx u v + d/dx v u
(uv)′ = du/dx v + dv/dx u
// mul all by dx
(uv)′ dx = dx du/dx v + dx dv/dx u
// simplify dx's on the right
(uv)′ dx = du v + dv u
// integrate all
∫ (uv)′ dx = ∫ du v + ∫ dv u
// simplify left, rearrange right
uv = ∫ v du + ∫ u dv
// rearrange
∫ u dv = u v - ∫ v du
```

## Derving the IBP-3 formula

The product rule of differentiation deals with a product of two functions, but it can be easily extended to a product of 3 functions:
- `(uv)′ = u′v + uv′`
- `(uvw)′ = u′ v w + u v′ w + u v w′`

We can derive the IBP-3 rule of integration from the 3-product rule of differentiation.

```js
// 3-product rule
(uvw)′ = u′ v w + u v′ w + u v w′
// switch notation for rhs
(uvw)′ = d/dx u v w + u d/dx v w + u v d/dx w
(uvw)′ = du/dx v w + u dv/dx w + u v dw/dx
// mul all by dx
dx (uvw)′ = dx du/dx v w + dx u dv/dx w + dx u v dw/dx
// simplify
(uvw)′ dx = du v w + u dv w + u v dw
// integrate all
∫ (uvw)′ dx = ∫ du v w + ∫ u dv w + ∫ u v dw
// simplify
uvw = ∫ v w du + ∫ u w dv + ∫ u v dw
// rearrange
∫ u v dw = uvw - ∫ v w du - ∫ u w dv
```
