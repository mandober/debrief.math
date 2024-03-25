# Symbolic notation

The strictest mode of notation implies the proliferation of parenthesis which negatively affect readability. The various conventions are established to lower the number of parenthesis without affecting the uniqueness of interpretation.

For example, sentences involving universal quantification can be expressed in various levels of strictness:
- `∃x(P(x))`  strict
- `∃xP(x)`    conventional
- `∃xPx`      loose

As the complexity of an expression increases, the strictness of notation decreases.

Strictly, a variable associated with a predicate is placed in parenthesis, `∀x(P(x) ⇒ Q(x))`, but when this notation is established, the parenthesis are often dropped, `∀x(Px ⇒ Qx)`.

The fully parenthesized formula `∀A(∃B(∀x((x ∈ B) ⇔ (∀a((a ∈ A) ⇒ (x ∈ a))))))` uses way to much parenthesis. Its vertical presentation is more readable:

```hs
∀A(
  ∃B(
    ∀x(
      (x ∈ B) ⇔ (
        ∀a(
          (a ∈ A) ⇒ (x ∈ a)
        )
      )
    )
  )
)
```

as is its de-parenthesized presentation: `∀A ∃B ∀x(x ∈ B ⇔ ∀a(a ∈ A ⇒ x ∈ a)`.

A convention that became a standard called *bounded quantification*. It is especially used in FOL formulas in set theory. Namely, the form of statement when a variable is quantified and then immediately used in the subformula to range over the elements of some set `A`, as in `∀x(x ∈ A ⇒ P(x))`, so as to imply that it then satisfies some predicate `P`, can be shortened using a bounded quantifier: `∀x ∈ A ⇒ P(x)`.

Bounded quantifier usually appear in this form:
- `∀x ∈ A ⇒ P(x)` expands into `∀x(x ∈ A ⇒ P(x))`
- `∃x ∈ A ∧ P(x)` expands into `∃x(x ∈ A ∧ P(x))`

In fact, it is even often the case that conjunction is used with ∀, instead of implication, which is the proper connective used with ∀:
- `∀x ∈ A ∧ P(x)` instead of `∀x ∈ A ⇒ P(x)`
