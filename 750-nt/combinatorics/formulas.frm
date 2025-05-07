# Formulas

The combination formula `n-choose-k` determines the number of ways of choosing `k` elements from a set of `n` elements.

```js
n! = n × (n-1)! = n × ⋯ × 2 × 1


⎛ n ⎞   n(n-1) ⋯ (n-k+1)       n!
⎜   ⎟ = ----------------- = ----------
⎝ k ⎠       k(k-1) ⋯ 1      k!(n - k)!


⎛ n ⎞             P(n,k)
⎜   ⎟ = C(n,k) = --------
⎝ k ⎠               k!

⎛ n ⎞   ⎛   n   ⎞      n!           n!
⎜   ⎟ = ⎜       ⎟ = --------- = ----------
⎝ k ⎠   ⎝ n - k ⎠   k! (n-k)!    (n-k)! k!


⎛ 6 ⎞   ⎛ 6 ⎞
⎜   ⎟ = ⎜   ⎟ = C(6,2) = C(6,4)
⎝ 2 ⎠   ⎝ 4 ⎠

// 5-choose-k

⎛ 5 ⎞   ⎛ 5 ⎞
⎝ 5 ⎠ = ⎝ 0 ⎠

⎛ 5 ⎞   ⎛ 5 ⎞
⎝ 4 ⎠ = ⎝ 1 ⎠

⎛ 5 ⎞   ⎛ 5 ⎞
⎝ 3 ⎠ = ⎝ 2 ⎠

```
