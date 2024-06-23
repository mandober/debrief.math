# Evaluation of Untyped Lambda Calculus


## Small step call-by-value evaluation semantics

```hs
  M → Mʹ
------------ T∙App1
M N → Mʹ N

  N → Nʹ
------------ T∙App2
v N → v Nʹ

-------------------- T∙Beta
(λx.B)A ⟶ᵦ [x:A]B
```

In the call-by-value evaluation strategy:

In an application `M N`
- We first reduce the left term `M`, as much as possible, revealing it to be an abstraction `λx.B`.
- Then we reduce the right term `N` as much as possible, obtaining the arg `A`.
- We still have the application, although of the form `(λx.B) A`.
- We apply the abs to the arg by binding the formal parameter `x` to arg `A`, which proceeds by name-capture avoiding substitution, `[x:A]B`.

M N → (λx.B) A → [x:A]B

- T∙App1 rule above is invoked repeatedly to reduce the *left term* `M` until we obtain a value, `v` (as denoted in the rule T∙App2), which is an abstraction.
- T∙App2 rule above is invoked repeatedly to reduce the *right term* `N` until it cannot be reduced anymore and we call it the argument `A`.
- T∙Beta rule above fires the last when both terms `M` and `N` have been reduced. The rule specify that we should perform β-reduction via substitution.
