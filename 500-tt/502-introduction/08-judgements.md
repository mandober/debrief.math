# Type theory :: Introduction

## Notation



Under the proposition-as-types view, proposition are types, as opposed to Boolean-valued functions which only return either true or false. When proposition are types, the empty type (being uninhabited) is used for the role of logical false value, with the unit type representing logical truth. That is, the fact that a proposition is false is represented by the empty type - it lacks proof since it has no terms (no witnesses or no evidence). The mere fact that a proposition is true can be represented by the unit type; since the unit type only has a single term (called star), it is used to represent a true proposition, with its sole term representing a trivial proof. More complex types represent other, true propositions with more complex, non-trivial proofs.

A **judgement** is an assertion that may or may not be provable from the rules of type theory. A judgement contains the turnstile symbol, `⊢`, that separates a multiset of assumptions on the left, from the conclusion on the right, just like sequents in natural deduction. A **context** is a list of hypothesis; it may be empty.

Types of judgements:
- Γ context       says `Γ` is a valid context, i.e. a multiset of wffs
- Δ context       says `Δ` is another context
- Γ ≡ Δ           says `Γ` and `Δ` are definitinally equal contexts
- A Type          says `A` is a well-formed type
- `Γ ⊢ A Type`    says `A` is a type in context `Γ`
- `Γ ⊢ A ≡ B`     says `A` and `B` are definitinally equal types in context `Γ`
- `Γ ⊢ a : A`     says `a` is a term of some type `A` in context `Γ`
- `Γ ⊢ a ≡ b : A` says `a` and `b` are definitinally equal terms of type `A`

4 basic judgements in MTLL (and other ITTs, like HoTT)
- `Γ ⊢ A Type`
- `Γ ⊢ A ≡ B`
- `Γ ⊢ x : A`
- `Γ ⊢ x ≡ y : A`
