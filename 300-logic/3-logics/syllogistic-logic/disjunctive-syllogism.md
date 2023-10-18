# Disjunctive syllogism

https://en.wikipedia.org/wiki/Disjunctive_syllogism

In classical logic, **disjunctive syllogism** is a valid argument form which is a syllogism having a disjunctive statement for one of its premises.

Disjunctive syllogism is historically known as *modus tollendo ponens* (MTP), which is Latin for "mode that affirms by denying".

In propositional logic, **disjunctive syllogism** is a valid rule of inference, also known as *disjunction elimination*, or-elimination, denoted by `∨E`.

A syllogism is a 3-step argument, consisting of two premises and a conclusion.
`P ∨ Q` is a disjunction, and `P` and `Q` are called *disjuncts*.

- If we know that `p ∨ q` is true, and
- if we know that `¬p` is true, then
- we know that `q` is true.

This rule makes it possible to eliminate a disjunction from a logical proof, 
`p ∨ q, ¬p ⊢ q`

It may also be expressed as a truth-functional tautology or theorem of propositional logic, where `p` and `q` are propositions in some formal system: 
`((p ∨ q) ∧ ¬p) → q`


## XOR or OR

Disjunctive syllogism works with both OR and XOR:

- If (`P` is true or `Q` is true) and `P` is false, then `Q` is true.
- If `P or Q` is true, and `P` is false, then `Q` is true.

1. if `P` is true, or `Q` is true and `P` is false, then `Q` is true
2. if `Q` is true and `P` is false, then `Q` is true

The widely used English language concept of OR is often ambiguous between these two meanings, but the difference is pivotal in evaluating disjunctive arguments.

This argument is valid regardless whether OR is inclusive or exclusive:

- p ∨ q   | P or Q
- ¬p      | Not P
- ∴ q     | Therefore, Q

However, this argument is valid only with exclusive OR:
- p ⊻ q   | Either P or Q but not both
- p       | P
- ∴ ¬q    | Therefore, not Q

With the inclusive meaning of OR you could draw no conclusion from the first two premises of that argument.

## Syllogisms

Unlike *modus ponens* and *modus ponendo tollens*, with which it should not be confused, disjunctive syllogism is often not made an explicit rule or axiom of logical systems, as the above arguments can be proven with a (slightly devious) combination of reductio ad absurdum (RAA) and disjunction elimination (∨E).

Forms of syllogism include:
- categorical syllogism
- disjunctive syllogism
- hypothetical syllogism

Disjunctive syllogism holds in classical propositional logic and intuitionistic logic, but not in some paraconsistent logics.
