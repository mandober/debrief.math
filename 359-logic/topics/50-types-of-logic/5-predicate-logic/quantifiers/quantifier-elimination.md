# Quantifier elimination

https://en.wikipedia.org/wiki/Quantifier_elimination

## Elimination of quantifiers

Quantifier elimination is a simplification. Informally, a quantified statement `∃xφ` can be viewed as a question "when is there an `x` such that `φ`? The statement without quantifiers can be viewed as the answer to that question.

One way of classifying formulas is by the amount of quantification. Formulas with less depth of quantifier alternation are thought of as being simpler, with the quantifier-free formulas as the simplest.

A theory has quantifier elimination if for every formula `ϕ`, there exists another formula `ϕ'` without quantifiers that is equivalent to it (modulo this theory), `∀ϕ ∃ϕ'.ϕ ≡ ϕ` (mod this-theory)


## Examples

An example from high school mathematics says that a single-variable quadratic polynomial has a real root iff its discriminant is non-negative:

```
ax² + bx + c = 0
       ________
- b ± √b² - 4ac
---------------- = 0
       2a

∃x ∈ ℝ (a ≠ 0 ⋀ ax² + bx + c = 0)  ⟺  a ≠ 0 ⋀ (b² - 4ac >= 0)
```

Here, the sentence on the left-hand side involves a quantifier, while the equivalent sentence on the right does not.
