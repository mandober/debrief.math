# Sequents

A sequent is a generalization of a conditional assertion (`A ⊢ B`), which in turn is a generalization of an unconditional assertion (`⊢ A`).

A *sequent* is composed of two *cedents*, separated by the *turnstile* symbol (which is, in the context of sequent calculus, usually read as "entails") with *antecedent* (hypothesis, premises, conditions) on the left, and *succedent* (conclusions, consequents) on the right.

>A sequent is understood to mean that if all of the antecedent formulas are true, then at least one of the consequent formulas is true.

In sequent calculus, a sequent looks like this

`A₀, A₁, …, Aₙ ⊢ B₀, B₁, …, Bₘ`

and the formulas on each side are interperted as

`A₀ ∧ A₁ ∧ … ∧ Aₙ ⊢ B₀ ∨ B₁ ∨ … ∨ Bₘ`

These collections of formulas in both cedents are usually abbreviated

`Γ ⊢ Δ`

By convention, `Γ` is used for the left context and `Δ` for the right context (collection of formulas). The formulas which are currently in focus are then empahized by denoting them explicitly

`Γ, A ⊢ B, Δ`



```
          turnstile
          "entails"
antecedent    │    succedent
┌──┴────────┐ │ ┌──────┴───┐

A₀, A₁, …, Aₙ ⊢ B₀, B₁, …, Bₘ

└───────┬───┘   └──────┬───┘
     cedent         cedent
└────────────┬─────────────┘
         sequent
```

Unless relaxed, both cedents are taken to mean sequences of logical formulas, not sets, so multiplicity and order of occurrences of formulas are significant (especially in substructural logics).

Several kinds of structures may be used to accomodate the formulas in a sequnt.

Sets are less common then multisets since the latter allows for the repeatition of formulas while keeping the order unimportant. Other structures like lists, trees, graphs, are also possible. In fact, the specific kind of calculus employed will constrain the data structures that can be used to store the formulas of sequents.

Structural rules, as opposed to the logic rules, affect the structure of sequents, controlling the aspects such as duplication and deduplication of formulas, dis/allowing the swapping formulas, so these rules will restrict the possibile choices of data structures as the underlying storage of formulas.

These structural aspects are particularly important in substructural logics, which are realized by manipulation of structural rules (from their default state, as used in sequent calculus) yielding a particular logic system for almost any permuation of structural rules.

The 3 structural rules of sequent calculus are weakinging, exchange, contraction.
