# Series of reciprocals

```js
⎲∞      1         1       1       1       1       1       1
⎳ₙ₌₁ -------- = ----- + ----- + ----- + ----- + ----- + ----- + …
      n(n + 1)    1∙2     2∙3     3∙4     4∙5     5∙6     6∙7

    1     1      1      1      1      1
= ---- + ---- + ---- + ---- + ---- + ---- + …
    3     6      12     20     30     42

S₀ = 1/2
S₁ = 1/2 + 1/6 = 3/6 + 1/6 = 4/6 = 2/3
S₂ = 2/3 + 1/12 = 8/12 + 1/12 = 9/12 = 3/4
S₃ = 3/4 + 1/20 = 15/20 + 1/20 = 16/20 = 4/5
Sₙ = {1⁄2, 2⁄3, 3⁄4, 4⁄5, 5⁄6, 6⁄7, 7⁄8, 8⁄9, 9⁄10, …}

⎲∞     1
⎳ₙ₌₀ ------ =
      n(n+1)

  ⎲∞     1
= ⎳ₙ₌₀ ------ =
        n² + n

  ⎲∞  ⎛  1      1   ⎞
= ⎳   ⎜ --- - ----- ⎟
  ₙ₌₀  ⎝  n     n+1  ⎠

= (1 - 1/2) + (1/2 - 1/3) + (1/3 - 1/4) + (1/4 - 1/5) + …
= (1 - 1⁄2) + (1⁄2 - 1⁄3) + (1⁄3 - 1⁄4) + (1⁄4 - 1⁄5) + …
// if we regroup the parens:
= 1 - (1⁄2 + 1⁄2) - (1⁄3 + 1⁄3) - (1⁄4 + 1⁄4) - 1⁄5 + …
// we get pairs that cancel out leaving only 1
// but is this allowed? there sre minus signs in there and subtraction
// is not associative - in fact, neither is addition with infinite series!

// It seems this series converges to 1
= 1
```
