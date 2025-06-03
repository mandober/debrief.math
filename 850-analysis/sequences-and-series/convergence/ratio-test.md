# Ratio test

```js
    ⎜ aₙ﹢₁  ⎜           L < 1       ⇒ absolutely converges
lim ⎜ ---- ⎜ = L  and  L > 1 or ±∞ ⇒ diverges
n→∞ ⎜  aₙ   ⎜           L = 1       ⇒ inconclusive

// What about if the limit DNE?
```

The ratio test involves dividing the next by the current term, taking the absolute value of the quotient, then taking the limit of that. Then we check that limit, `L`, against 1:
- if L < 1, then ↓↓
- if L > 1, then ↑
- if L = 1, then ?


Is the abslute value of the quotient equal to quotient of absolute values?

```js
|aₙ﹢₁|    |  aₙ﹢₁ |
------ = | ----- |
 |aₙ|     |   aₙ  |
```
