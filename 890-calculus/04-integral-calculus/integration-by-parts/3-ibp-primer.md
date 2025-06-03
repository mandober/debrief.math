# Integration by parts :: Example

>Integration by parts formula: `⎰u dv = uv - ⎰v du`

## Example

To solve an indefinite integral `∫ x cos(x) dx` we use IBP rule.

We have these subexpressions: `x cos(x) dx` with restriction that `dx` goes with one of them.

We need to pick which subexp will correspond to `u` and which to `dv`. We must consider which one is easier to integrate and which is easier to differentiate:
- the one we choose for `u` will be differentiated
- the one we choose for `dv` will be integrated

We pick `x` for `u` since differentiating `x` is easy (not that diffing `cos` is hard, but let's go with this choice), so `dv` gets the `cos(x) dx` part.

We now differentiate both sides of `u = x` with respect to `x`:

```js
u = x
d/dx u = (x)′
du/dx = 1
du = dx
```

We now integrate both sides of `dv = cos(x) dx`, rhs with respect to `x`, lhs with respect to `v`. On the left hand side, `dv` is integrated as `∫dv`, which has an implicit constant 1: `∫ 1 dv`. Integrating the constant 1 wrt `v` gives us `v` alone (usual consequence of intergating constants). On the other side, we integrate `cos(x) dx` wrt `x`, except we don't add another trailling `dx`. So the left side becomes: `∫ cos(x) dx`. The antiderivative of `cos` is `sin`, so `sin(x)` is the result on that side.


```js
∫ x cos(x) dx

u = x            | dv = cos(x) dx
d/dx u = (x)′     | ∫ dv = ∫ cos(x) dx
du/dx = 1        | v = sin(x)
du = dx          | v = sin(x)

// put this into the formula
⎰ u dv        = u v      - ⎰ v      du
// we have the original integral on the left
// and we have the integral of sin on the right
// which we know how to solve
⎰ x cos(x) dx = x sin(x) - ⎰ sin(x) dx
// and don't forget the constant of integration
⎰ x cos(x) dx = x sin(x) + cos(x) + C
```

In effect, we used IBP to transform the integral of `xcos(x)` which we don't know how to solve, into a simpler integral that we know how to solve.
