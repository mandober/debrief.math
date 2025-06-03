# Evaluating limits

```js
// ℬ ℰ ℯ ℱ ℋ ℊ ℐ ℒ ℓ ℳ ℘ ℴ ℛ

lim{n→_} C = C
lim{n→_} n/n = 1

lim{n→0} 1/n = 1/0 = ∞
lim{n→∞} 1/n = 1/∞ = 0
lim{n→_} 1/2 = 1/2

lim{n→∞} n/n = 1
lim{n→∞} n²/n = n/1 = n = ∞
lim{n→∞} n/n³= 1/n² = 1/∞ = 0

lim{n→0} n/n = 1
lim{n→0} n²/n = n/1 = n = 0
lim{n→0} n/n³= 1/n² = 1/0 = ∞
```

Evaluating a limit is usually approached by first separating the terms into those that depend on the limiting variable (typically `n`) and those that are independent of it (in which `n` does not occur).

>The goal is to simplify the overall exporession and to separate the subexpressions into these two kinds of groups ideally joined by addition (subtraction).

This is because the terms that are free of the limiting variable can be simplified, if possible, but importantly they get to keep the value they evaluate to regardless of what happens with the evaluation of other terms.

If they such terms are joined by `+` or `-` with the other terms, they will keep their value regardless of what the other terms evaluate to.

Then we can directly evalute the limit; we can even replace `n` with the limiting value (tipically `∞`, but generally any number).

An expression consisting of terms (of both kinds, those dependent on the limiting variable and those that are not) joined by addition (subtraction) is in the ideal form to evaluate the limit since the evaluation can be done on a term-by-term basis.

```js
// term-by-term evaluation of the limit
lim{n→∞} 1/2 + n - 3n + 4n/2 - 1/n + 1/n² - n/n! + (1/2)ⁿ

lim{n→∞} 1/2 = 1/2
lim{n→∞} n = ∞
lim{n→∞} 3n = 3∞ = ∞
lim{n→∞} 4n/2 = 4∞/2 = ∞
lim{n→∞} 1/n = 1/∞ = 0
lim{n→∞} 1/n² = 1/∞² = 0
lim{n→∞} n/n! = n/n(n-1)! = 1/(n-1)! = 1/∞ = 0
lim{n→∞} (1/2)ⁿ = 1/2ⁿ = 1/∞ = 0
lim{n→∞} √n/³√n = n¹′² ÷ n¹′³ = n¹′⁶ = ⁶√n = n¹′⁶ = ∞¹′⁶ = ∞
```
