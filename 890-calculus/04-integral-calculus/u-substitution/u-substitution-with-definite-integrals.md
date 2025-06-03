# Definite integrals and u-substitution

The process is largely the same as for indefinite integrals up to the point when we obtain the antiderivative that is to be evaluated.

One way to proceed from that point on, is to transform the bounds of integration to be in terms of `u`, after which we can evaluate it.

Alternatively, we can leave the bounds alone, and instead do the back substitution, replacing `u` by the selected expression. And then we can evaluate it.

In both cases we get the same result, so it's only the question of which way produces easier to evaluate expressions. It would seem that the first way would, but it's still good to know that it can be done another way, just in case.

## Solving a definite integral

First we pick the expression that `u` will represent (1), and we derive the equation for `dx` (2).

Then we rewrite the integral replacing the nested subsexpression `x²+4` with `u` and `dx` with `du/2x` (3).

We cancel the fortunate occurrences of `2x` as a multiplier and `2x` in the denominator (4). Then we find the antiderivative (5) to be evaluated.

```js
∫ {0..2} 2x (x² + 4)² dx

    let u = x² + 4    // (1)
        du/dx = 2x
        dx = du/2x    // (2)

∫ {0..2} 2x u² du/2x  // (3)
∫ {0..2} u² du        // (4)

= [u³/3]{0..2}        // (5)
```

At this step, when we have a derivative, we can proceed by transforming the bounds to be in terms of `u`. The bounds are x-values so we transform them by plugging each bound into the equation for `u`, i.e. each bound is plugged in for `x` and the result is the updated bound value.

The lower bound was 0, so to get its updated value, we replace `x` in the equation `u = x² + 4` by 0. So, `u = 0² + 4 = 4`. Thus, the lower bound is 4.

The upper bound was 2, so to get its updated value, we replace `x` in the equation `u = x² + 4` by 2. So, `u = 2² + 4 = 8`. Thus, the upper bound is 8.

```js
// adjusting the bounds: plug in each bound for x:
u = x² + 4
// adjust lower bound (x=0)
u = 0² + 4 = 4
// adjust upper bound (x=2)
u = 2² + 4 = 8
```

Now we update the bounds (6), and proceed to evaluate the antiderivative (7).

```js
= [u³/3]{0..2}        // (5)
= [u³/3]{4..8}        // (6)
= 8³/3 - 4³/3         // (7)
= 512/3 - 64/3
= 448/3
```

Since the integral is now fully evaluated there is no back substitution replacing `u` with the expression we picked for it - the cost of which is needing to adjust the bounds.

Unlike the indefinite integrals which yield a function, the result of solving a definite integral is a constant.

### Alternative

At step (5), we could have proceeded in another way: rather then transforming the bounds, we could have done back substitution, bringing back the expression `x²+4` to replace `u` (11), and then evaluating the antiderivative (12). The result would be the same either way.

```js
= [u³/3]{0..2}             // (5)

= [(x²+4)³/3]{0..2}        // (11)
= (2²+4)³/3 - (0²+4)³/3    // (12)
= 8³/3 - 4³/3
= 512/3 - 64/3
= 448/3
```
