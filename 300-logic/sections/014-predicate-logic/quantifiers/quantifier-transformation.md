# Quantifier Transformation

A rule for quantifier transformation: `∀αϕ ⊣⊢ ¬∃α¬ϕ` (QT)

The rule licenses the replacement of a universal quantifier with an existential quantifier flanked by negation signs.

When you apply QT to the universally quantified sentence, you would replace the universal quantifier with an existential quantifier flanked by negation signs. `¬∃x¬(Px -> Wx)`. The result is an odd-looking existentially quantified conditional. You can, however, get from this sentence to the existentially quantified alternative sentence by applying *Cond*, `¬∃x¬(¬Px ⋁ Wx)`, then *DeM*, `¬∃x(Px ⋀ ¬Wx)`.
