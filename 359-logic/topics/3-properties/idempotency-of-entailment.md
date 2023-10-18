# Idempotency of entailment

https://en.wikipedia.org/wiki/Idempotency_of_entailment

**Idempotency of entailment** is a property of the entailment relation of logic systems that states that we can derive the same consequences from one or many instances of premises.

This property sections the ability to duplicate formulas (in premises). When we apply an inference rule, we don't have to discard the formulas that went in the rule as assumptions, but we can keep them around (if we need them).

This property can be captured by a structural rule called *contraction*. We say that the entailment of a logic system is idempotent iff contraction is an admissible rule.

In sequent calculus, the rule of contraction is:

```hs
Γ, C, C ⊢ B
------------
Γ, C    ⊢ B
```

In linear and affine logic, entailment is not idempotent. That is, there is a restriction on the number of uses of a formula. In linear logic, a formula may be used at most once. In affine logic, a formula must be used exactly once.
