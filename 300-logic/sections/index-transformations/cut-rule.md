# Cut rule

https://en.wikipedia.org/wiki/Cut-elimination_theorem

**The cut-elimination theorem** states that any judgement that possesses a proof in the sequent calculus making use of the cut rule also possesses a cut-free proof, that is, a proof that does not make use of the cut rule.

In sequent calculus:

`A₁,A₂,…,Aₙ |- B₁,B₂,…,Bₘ` means `A₁ ∧ A₂ ∧ … ∧ Aₙ |- B₁ ∨ B₂ ∨ … ∨ Bₘ`

"Cut" is a rule in the normal statement of the sequent calculus, and equivalent to a variety of rules in other proof theories, which, given `Γ ⊢ A,Δ` and `Π,A ⊢ Λ` allows one to infer `Γ,Π ⊢ Δ,Λ`. That is, it "cuts" the occurrences of the formula A out of the inferential relation.

Γ  ⊢ A, Δ
Π, A ⊢  Λ
---------- cut
Γ,Π ⊢ Δ,Λ

> The cut-elimination theorem states that (for a given system) any sequent provable using the rule Cut can be proved without use of this rule.

For sequent calculi that have only one formula on the RHS, the "Cut" rule is:

Γ ⊢ A
Π, A ⊢ B
---------- cut-E
Γ,Π ⊢ B

If we think of `B` as a theorem and `A` as lemma, then cut-elimination in this case says that a lemma `A` used to prove the theorem `B` can be inlined. Whenever the theorem's proof mentions lemma `A`, we can substitute the occurrences for the proof of `A`. Consequently, the cut rule is admissible.
