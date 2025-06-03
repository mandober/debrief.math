# Substitution


## Steps

0. Figure out the functions that are composed in the integral,  
  `(f ∘ g)(x)` = `f(g(x))`
1. Select the inner function `g` to replace by `u`
   `u = g(x)`
  - Take derivative of both sides
    d/dx u = g′(x)
    du/dx = g′(x)
    du/dx = g′(x)
  - Move `dx` to the rhs as if that is legal
   `du = g′(x)dx`
2. Match the rhs of `du`, i.e. try matching `g′(x)dx` in the equation
3. Rewrite integral with `u` and in terms of `du`
4. Take antiderivative
5. Do back-substitution

>For definite integrals, both limits need also be tranformed with the u-substitution.

The tranformation of bounds is done by plugging the bounds into `u`. For example, if the integral's original bounds were [0,1], and we set `u = 1 + x²`, the new limits are [1,2] derived by treating `u` as a function with arg `x`:
- u(0) = 1 + x² = 1 + 0² = 1
- u(1) = 1 + x² = 1 + 1² = 2


## Example 1: Ideal match

```js
⎰ 2x sin(x²) dx
    u = x²              // let u = x²
    d/dx u = (x²)′      // take derivative of both sides
    du/dx = 2x          // move dx to the rhs as if it is legal
    du = 2x dx          // see if (2x dx) matches a subexp in original exp
= ⎰ 2x sin(x²) dx       // (R)
= ⎰ sin(x²) 2x dx       // it does!
= ⎰ sin(u) du           // rewrite x² by u, and 2xdx by du
= -cos(u) + C           // solve
= -cos(x²) + C          // back-substitution
```

## Example 2: Adjusting the Constant

```js
⎰ e²ˣ/(1 + e²ˣ) dx
    u = 2x
    d/dx u = (2x)′
    du/dx = 2
    du = 2dx
⎰ eᵘ / (1 + eᵘ) dx

```



## Example 2: Ideal match

```js
⎰ 3x² (x³+5)⁷ dx

     u = x³ + 5
d/dx u = (x³ + 5)′
 du/dx = 3x²
du = 3x² dx

⎰ 3x² u⁷ dx
⎰ u⁷ 3x² dx
⎰ u⁷ du
⎰ u⁸/8 du

⎰ (x³+5)⁸/8 du                ■
```

## Example: manipulate the `u` substitution

```js
⎰ x √(x+2) dx

u = x+2
x = u-2

d/dx u = (x+2)′
du/dx = 1
du = dx

⎰ x √u du          // must express unmatched x in terms of u, x = u - 2
⎰ (u - 2) √u du
⎰ (u - 2) u⁰⋅⁵ du
⎰ (u^3⁄2 - 2u^1⁄2) du

```



## Example

Sometimes, an integral is too complex to be solved directly by applying our standard rules. There may not be any obvious rule we can apply. Consider, for example, this indefinite integral, `⎰3x²(x³+5)⁷dx`.

The first thing we should do is try to identify a subexpression to replace by `u`. Ideally, this subexpression should be the inner function in a function composition, which in this case seems to be `x³+5`. So we replace it by `u`, i.e. we let `u = x³+5`. We take a derivative of both sides:

```
⎰3x²(x³+5)⁷dx               original integral

⎰ 3x² ( x³ + 5 )⁷ dx        select a subexp that will be replaced by u
        └─┬───┘
      let u = x³+5          we chose to subst the part in parens
      d/dx u = (x³+5)′      take derivative of both sides
      du/dx = 3x²           resulting derivative

      du = 3x²dx            move dx to the rhs as if that is normal

⎰ 3x² u⁷ dx               subexp replaced by u
⎰ u⁷ 3x² dx               rearrange terms merely to identify that
     └──┬──┘
       du


⎰ u⁷ du                   du exactly matches the rest of the equation, 3x²dx
u⁸/8 + c                  find antiderivative
(x³+5)⁸/8 + c             perform back-substitution
■




      d/dx u = (x³+5)′      take derivative of both sides
                            can also be denoted by:
                               d/dx u = d/dx (x³+5)
                                du/dx = d/dx (x³+5)
                                du/dx = (x³+5)′
```
