# Integration by parts :: Introduction

Integration By Parts (IBP) is a rule of integation that corresponds to the product rule of differentiation; it is a kind of reversal of the product rule.

Integration by parts may be attempted when u-substitution cannot be used. It is employed when integrating a product of functions, e.g.
- ⎰ 2 x sin(x) dx
- ⎰ 2 x² exp(x) dx
- ⎰ exp(x) cos(x) dx

Central questions:
- Deriving the IBP formula
- When to use integration by parts?
- Which subexpression to assign to `u` and which to `dv`?

## Choosing subexpressions

Which subexpression to assign to `u` and which to `dv` knowing that the one assigned to `u` will undergo integration and the one assign to `dv` will undergo differentiation.

## With indefinite integrals

Solving an indefinite integral is done the usual way, so don't forget to add the constant of integration. The standard formula for IBP is for indefinite integrals:

>IBP formula for indefinite integrals: `⎰u dv = uv - ⎰v du`

## With definite integrals

The procedure (like always) is the same with definite integrals except we have bounds of integration, `a` and `b`.

The procedure for solving a definite integral starts when the one for indefinite integrals stops. The function we obtained by solving the indefinite integral, the so-called *antiderivative*, is then evaluated by substituting each bound for `x`. In fact, the solution is the difference between the substitution with the upper bound and the substitution with the lower bound.

∫ {a..b} f(x) dx = [F(x)]{a..b} = F(b) - F(a)

## Similarities with u-subst

The formula for integration by parts (IBP) can be derived from the product rule of differentiation. In a way, we are reversing the product rule to derive the IBP rule.

The IBP is similar to u-substitution, which corresponds to the chain rule and can be derived from it.

With u-substitution, we pick one subexp and have it replaced by a fresh variable `u` as we let `u = f(x)`. The subexp that `u` replaces contains `x`, so it may be expressed as a function of `x`, i.e. `f(x)`. The other parts of the integral are also replaced by exprs derived from the equation for `u`, i.e. from `u = …x…`. If there are any `x`'s leftover, we replace them by isolating the `x` in `u = …x…`, i.e. `x = …u…`. The differential `dx` is replaced as well by an equation for `dx` we get by differentiating the equation for `u`, `u = f(x)`. We differentiate both sides as `d/dx u = f′(x)`, which gets us `du = f′(x)dx`, and then `dx = du/f′(x)`. Thus, the differential `dx` gets replaced by `du/f′(x)`.

The IBP method also involves substitution - in fact, two substitutions - instead of one like with u-subst. IBP is like an extended u-subst. Rather then just picking one subexpr to replace by `u`, we get to pick another to replace by `dv`. We obtain `du` by differentiating the equation for `u`, and we obtain `v` by integrating the equation for `dv`.
