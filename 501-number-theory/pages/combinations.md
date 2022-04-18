# Combination

https://en.wikipedia.org/wiki/Combination


- permutations
- combinations
- combinations with repetitions
- binomial theorem
- Pascal's triangle

A combination is a selection of items from a set that has distinct members, such that the order of selection does not matter (unlike permutations where the order matters).

For example, given 3 fruits, say an apple, an orange and a pear, there are 3 combinations of 2 that can be drawn from this set.

More formally, a `k`-combination of a set `S` is a subset of `k` distinct elements of `S`. So, two combinations are identical iff each combination has the same members.

The number of `k`-combinations of an `n`-element set is denoted by any of
- `nCk`
- `C(n,k)`
- `Cᵏₙ`
- `(ⁿₖ)` "n-choose-k"

If the set has `n` elements, the number of `k`-combinations, denoted `C(n,k)` is equal to the binomial coefficient `n! / k!(n - k)!` whenever `k <= n`, and which is zero when `k > n`.

This formula can be derived from the fact that each `k`-combination of a set `S` of `n` members has `k!` permutations so:

`P(n,k) = C(n,k) ⨯ k!` and `C(n,k) = P(n,k) / k!`

```js
⎛ n ⎞    n(n - 1) ⋯ (n - k + 1)        n!
⎜   ⎟ = ------------------------ = -----------
⎝ k ⎠        k(k - 1) ⋯ 1          k!(n - k)!

⎛ n ⎞             P(n,k)
⎜   ⎟ = C(n,k) = --------
⎝ k ⎠               k!

⎛ n ⎞   ⎛   n   ⎞      n!           n!
⎜   ⎟ = ⎜       ⎟ = --------- = ----------
⎝ k ⎠   ⎝ n - k ⎠   k! (n-k)!    (n-k)! k!

⎛ 6 ⎞   ⎛ 6 ⎞
⎜   ⎟ = ⎜   ⎟ = C(6,2) = C(6,4)
⎝ 2 ⎠   ⎝ 4 ⎠

⎛ n ⎞
⎝ k ⎠  n-choose-k
```


### All k-combinations of n-set

The set of k-combinations of an n-set `S` is denoted `C(n,k)`, where `n = |S|`, but the set of all `k`-combinations of a set `S` is denoted by `C(S,k)`.

If `n = |S| = 6` then `k = 0..6`

```
⎛ 6 ⎞   ⎛ 6 ⎞
⎜   ⎟ = ⎜   ⎟ = 1
⎝ 0 ⎠   ⎝ 6 ⎠

⎛ 6 ⎞   ⎛ 6 ⎞     6!       6∙5!
⎜   ⎟ = ⎜   ⎟ = ------- = ------ = 6
⎝ 1 ⎠   ⎝ 5 ⎠   1! ∙ 5!      5!

⎛ 6 ⎞   ⎛ 6 ⎞      6!      6∙5∙4!     30
⎜   ⎟ = ⎜   ⎟ = ------- = -------- = ---- = 15
⎝ 2 ⎠   ⎝ 4 ⎠   2! ∙ 4!    2 ∙ 4!      2

⎛ 6 ⎞      6!         6∙5∙4 ∙3!     120
⎜   ⎟ = -------- = ------------- = ----- = 20
⎝ 3 ⎠   3! ∙ 3!    (1∙2∙3) ∙ 3!      6
```

So, the total number of `k`-combinations of the 6-set `S` is the sum of all `n-choose-kᵢ` combinations, where `i=0..6`. This number is equal to the sum of numbers in the `6`th row of the Pascal's triangle, (1,`6`,15,20,15,6,1).

```
⎛ S ⎞
⎜   ⎟ = 1 + 6 + 15 + 20 + 15 + 6 + 1 = 2+12+30+20 = 64 = 2⁶
⎝ k ⎠

 n
⎲ ⎛ n  ⎞   ⎛ n ⎞   ⎛ n ⎞   ⎛ n ⎞   ⎛ n ⎞   ⎛ n ⎞   ⎛ n ⎞   ⎛ n ⎞
⎳ ⎝ kᵢ  ⎠ = ⎝ 0 ⎠ + ⎝ 1 ⎠ + ⎝ 2 ⎠ + ⎝ 3 ⎠ + ⎝ 4 ⎠ + ⎝ 5 ⎠ + ⎝ 6 ⎠
i=0
```
