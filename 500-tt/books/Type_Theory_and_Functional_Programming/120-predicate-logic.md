# 1.2 Predicate logic

1.2 Predicate Logic
  1.2.1 Variables and substitution
  1.2.2 Quantifier rules





## 1.2.1 Variables and substitution



## 1.2.2 Quantifier rules

The rules for the quantifiers will explain how we can introduce and eliminate quantified formulas. In order to find out how to do this we look at the ways in which we use variables - there are two distinct modes of use:

1. we use variables in stating theorems. We intend free variables to be arbitrary values, such as in the trigonometrical formula, `sin²x + cos² = 1`,and we could equally well quantify it, `∀x.(sin²x + cos²x = 1)`. This is a general phenomenon; if `x` is arbitrary var then we should be able to make the inference `A` -->> `∀x.A`. This will be our rule for introducing `∀`, once we have decided what we mean by "arbitrary".

2. In the process of proving a theorem, we may use variables in a different way: if we make an assumption with a free `x`, `x > 0` say, and then prove a result like `∀z.(z ≤ x ∨ z ≥ 0)`, then this result is not true for all `x` (try `x = −1`). This is precisely because the `x` is not arbitrary - we have assumed something about it, namely, that it is greater than zero. In other words, we say that `x` is arbitrary iff `x` does not appear free in any of the assumptions of the proof of the result.


### ∀ Introduction

```
    A
-------- ∀I
  ∀x.A
```

The assumptions of the proof derived are the same as those of the proof of `A`.

Note that the formula `A` may or may not involve the free variable `x`, and may involve free variables other than `x`.

### ∀ Elimination

The elimination rule for ∀ says that if a universally quantified formula is true for an arbitrary object/formula, then it is true for any object/formula.

We express this by substituting the term for the quantified variable.

From a proof of `∀x.P(x)` we can infer `P(a)` for any term `a`.

```
 ∀x.P(x)
-------- ∀E (∀ Instantiation)
  P(a)
```

With our notation for substitution as above, we'd write

```
 ∀x.P
--------
P[a⟼x]
```



### Existential quantifier

There is a duality between the two quantifiers and we find it reflected in the rules.

The simpler of the rules to state is the existential introduction rule: it states that if we can prove a substitution instance of a formula, then we can infer the existentially quantified statement.
