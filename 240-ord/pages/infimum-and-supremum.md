# Infimum and supremum

https://en.wikipedia.org/wiki/Infimum_and_supremum

## Def

Let `F` be an ordered field, and let `S ⊆ F` and `S ≠ ∅`, then

The infimum of `S`, if exists denoted by `inf(S)`, is some `m₀ ∈ F` s.t.
1. `m₀` is a lower bound of `S`
2. for all lower bounds `m` of `S`, `m₀ >= m`

The supremum of `S`, if exists denoted by `sup(S)`, is some `n₀ ∈ F` s.t.
1. `n₀` is an upper bound of `S`
2. for all upper bounds `n` of `S`, `n₀ <= n`


## Intro

If it exists, the **infimum** of a subset `S` of a poset `P` is the greatest element in `P` that is <= to all elements of `S`.

If it exists, the **supremum** of a subset `S` of a poset `P` is the least element in `P` that is >= to all elements of `S`.

```js
    lower bounds             S              upper bounds
    ┌──────┴───┐ ┌────────────┴──────────┐  ┌───────┴──────┐
----▽-----▽-▽  ▼  ○-○-○-○-○-○-○-○-○-○-○-○-○ ◼ ◻-◻----◻----◻----> ℝ
    │          ↑                          ↑              │
    │         inf(S)                    sup(S)           │
    └─────────────────────────┬──────────────────────────┘
                              P
```
 
If `S` is the closed interval `(1,5)` of reals, then `1` is the infimum (the greatest lower bound), and `5` is the supremum (the least upper bound).

The supremum is also called the least upper bound (LUB), and the infimum the greatest lower bound (GLB). Infimum and supremum are dual to each other.

Infima and suprema of real numbers are common special cases that are important in analysis, however, the general definitions remain valid in the more abstract setting of order theory where arbitrary posets are considered.

The concepts of infimum and supremum are close to *minimum* and *maximum*, but are more useful in analysis because they better characterize special sets which may have no minimum or maximum.


## Illustrations

A set `P ⊆ ℝ` of real numbers (hollow and filled circles), a subset `S ⊆ P` (filled circles), with the infimum and suprimum of `S` indicated. For finite, totally ordered sets, the infimum and the minimum are equal.

```js
P ⊆ ℝ, P = {○, ○, ●, ○, ●, ●, ●, ○, ○}
S ⊆ P, S = {      ●,    ●, ●, ●}

                          P ⊆ ℝ
    ┌─────────────────────┴─────────────────────────────┐
    │                            S ⊆ P                  │
    │         ┌───────────────┬──┴───────┬────┐         │
----○----○----●----------○----●----------●----●----○----○-----> ℝ
              ↑                               ↑
        infimum of S                    suprimum of S
```

A set `A` of real numbers (hollow circles, ○)
- a set of upper bounds of `A` (squares, ◻ and ◼)
- the smallest such upper bound, i.e. the supremum of `A` (filled square, ◼)
- a set of lower bounds of `A` (traingles, ▽ and ▼)
- the greatest such lower bound,  i.e. the infimum of `A` (filled traingle, ▼)

```js
      lower bounds              A               upper bounds
    ┌──────┴──────┐┌────────────┴───────────┐┌───────┴──────┐
----▽----▽-▽-▽-▽▼○○○○-○-○-○-○----○-○-○-○○○○◼◻◻-◻-◻-◻----◻----> ℝᐩ
                  ↑                          ↑
                inf(A)                     sup(A)
```

For example, ℝᐩ does not have a minimum (because any given element of ℝᐩ could simply be divided in half to get a smaller number that is still in ℝᐩ). There is, however, exactly one infimum of ℝᐩ, `0`, which is smaller than all the positive real numbers and greater than any other real number which could be used as a lower bound.

* The real `(0, 1)` interval excludes both endpoints, 0 and 1. It has the unique infimum, `0`, and the unique supremum, `1`, but it has no minimum or maximum element.

* The real `[0, 1]` interval includes both endpoints, 0 and 1. It has the unique minimum, `0`, and the unique maximum, `1`, but it has no infimum or supremum element.

* The sequence of natural numbers `(1, 2, …, 10)` includes both endpoints, 1 and 10. It has the unique minimum, `1`, and the unique maximum, `10`. It has the unique infimum, `0`, and the unique supremum, `11`.



## Formal definition

Let `S` be a subset of a poset `(P, ⩽)`

* (1A) `S ⊆ (P, ⩽)`

The lower bounds of `S` are such elements `l` in `P` that, for all elements `x` in `S`, it holds that `l ⩽ x`.

* (1B) Lower bounds: `∃l(l ∈ P ⋀ ∀x(x ∈ S -> l ⩽ x))`

A lower bound `m` of `S` is called an *infimum* (greatest lower bound, meet) of `S` if, for all lower bounds `l ∈ S`, it holds that `m` is LE to any other lower bound `l`, `m ⩽ l`.

* (1C) GLB: `∃m∃l( (m ∈ P ⋀ l ∈ P) ⋀ ∀x(x ∈ S -> (m ⩽ x ⋀ l ⩽ x)) ⋀ m ⩽ l)`


```js
      lower bounds              S ⊆ (P, ⩽)       upper bounds
    ┌──────┴──────┐┌────────────┴───────────┐┌───────┴──────┐
----▽----▽-▽-▽-▽▼○○○○-○-○-○-○----○-○-○-○○○○◼◻◻-◻-◻-◻----◻----> ℝᐩ
                  ↑                          ↑
                inf(A)                     sup(A)
```

The definitions don't claim that either infimum or supremum are unique, but it turns out they provable are.




















## Essential infimum and essential supremum

https://en.wikipedia.org/wiki/Essential_infimum_and_essential_supremum
