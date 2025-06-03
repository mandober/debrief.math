# Telescoping Series

When summing a telescoping series, the middle terms cancel out and we are generally only left with the first and last term.

```js
⎲∞     1         1
⎳ₙ₌₁ ------- - ------
       n + 1    n + 2

      1       1
Sₙ = ---- - ------
      2     n + 2

a₁ = 1/2 - 1/3 = 1/6
a₂ = 1/3 - 1/4 = 1/12
a₃ = 1/4 - 1/5 = 1/20
a₄ = 1/5 - 1/6 = 1/30
a₅ = 1/6 - 1/7 = 1/42
a₆ = 1/7 - 1/8 = 1/56
a₇ = 1/8 - 1/9 = 1/8×9 = 1/72
aⱼ = 1/(j+1) - 1/(j+2) = 1/(j+1)(j+2)

S₁ = 1/6
S₂ = 1/6 + 1/12 = 2/12 + 1/12 = 3/12 = 1/4
// using the summation formula
S₂ = 1/2 - 1/4 = 2/4 - 1/4 = 1/4 // agrees
S₃ = 1/4 + 1/20 = 5/20 + 1/20 = 6/20
```
