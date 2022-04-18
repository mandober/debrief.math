# Order Theory :: Diagramms

## Diagramm 1: infimum and supremum

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


## Diagramm 2: bounds et al

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

## Diagramm 3: infimum and supremum

```js
              P
    ┌─────────┴───────────────────┐
    │               S             │
    │         ┌─────┴───┐         │
----○-○-○-○-○-●-●-●-●-●-●-○-○-○-○-○---> ℝ
            ↑             ↑
      infimum             suprimum
```
