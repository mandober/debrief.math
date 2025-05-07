# Subtraction

https://en.wikipedia.org/wiki/Subtraction


The subtraction is usually considered as one of the four fundamental arithmetic operations, even though we can express subtraction in terms of addition.

In ℕ, with ∀xy ∈ ℕ, we only have addition and multiplication defined as usual, and we have special variants of subtraction and division. Namely, instead of the genral division which requires a field, and we only have a group, we can define saturated subtraction as `x ∸ y = z for xyz ∈ ℕ ∧ x >= y`; otherwise, in case `x < y`, we can set a constant return value to 0:

```
∀xyz ∈ ℕ:
x ∸ y = z   if x >= y
x ∸ y = 0   if x < y
```


x - y = x + (-y)
