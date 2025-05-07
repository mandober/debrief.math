# Logic

## SL

Logic of propositions.

Formulas are defined inductively
- T is a formula
- any propositional variable is a formula
- if φ is a formula so is ¬φ
- if φ and ψ are formulas, so are φ ∧ ψ, φ ∨ ψ, φ → ψ

**Proof theory**: how to use and manipulate formulas in deduction.

*Natural deduction*

*Judgement*, `Γ ⊢ φ`, where Γ is a context (set of formulas), and `φ` is a single formula.

*Rules of inference*

General format of rules of inference:
```
Γ ⊢ φ₁  …  Γ ⊢ φₙ
------------------
      Γ ⊢ φ
```

**Axioms** are rules of inference with no premises.

Structural rules of inference
- Weakening
- Contraction
- Exchange

Rules of inference
- formation
- introduction
- elimination

**Semantics**: Interpreting logical formulas as elements of a mathematical strucure.

**Valuation** is a mapping from propositions to a mathematical strucure, e.g. `V : Prop → 𝔹`. Then we extend `V` to a map on formulas by structural induction.

For example, if the domain math structure is a 2-element set `{tt, ff}`, the valuation function then maps formulas to its elements.
- V(⊤) = tt
- V(⊥) = ff
- V(p ∧ q) = V(p) ∧ V(q)
- V(p ∨ q) = V(p) ∨ V(q)
- V(p → q) = V(p) → V(q)

Here the lhs, e.g. `V(p ∧ q)` is syntax, and rhs, `V(p) ∧ V(q)`, is semantics (semantical interpretation). Valuation interprets the syntactic symbols in terms of math structure such as Boolean algebra.

`Γ ⊨ φ` is semantical entailment. If `V` has the property that for every formula of Γ, `V(ψ)` is true, then it must hold that `V(φ)` is true.

    ∀φ ∈ Γ. (V ψ = tt) ⇒ (V φ = tt)

If `⊨ φ` then `∀V. V(φ) = tt`. Such a formula is a *tautology*.

**Soundness**: `Γ ⊢ φ` ⇒ `Γ ⊨ φ`

If a formula can be proven then it is true. 
That is, the proof system is good enough that all provable statements are true. In particular, if `φ` is a theorem (⊢ φ), then `Γ ⊨ φ`.

**Completeness**: `Γ ⊨ φ` ⇒ `Γ ⊢ φ`   

If a formula is true then it can be proven. 
That is, the proof system is good enough to prove all true statements.

Completeness holds for propositional logic and first-order predicate calculus, but fails for arithemtic (e.g. PA).

**Satisfiability**: if `Γ` has no valuation s.t. `∀φ ∈ Γ. V(φ) = tt`, then `Γ` is unsatisfiable.

**Compactness**: if `Γ` is unsatisfiable then some finite subset of `Γ` is unsatisfiable.
