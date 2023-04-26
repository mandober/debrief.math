# Logic and set theory

https://www.youtube.com/watch?v=AAJB9l-HAZs


## Predicate logic

Set theory cannot be discussed without first getting familiar with logic, especially predicate logic, most commonly first-order logic (FOL) which is used to express almost everything about sets.

>Predicate logic is the internal language of set theory.

A predicate is a proposition-valued "function", better expression, of some variables (hmm, a predicte is not really a function since functions evaluate to members of the DOD, and predicates evaluate to truth values). A predicate `P(x,y)` evaluates to a truth value depending on variables `x` and `y`.

We can form new predicates from old ones. Most easily this can be done by converting a predicate of, say, 3 vars into two conjoined predicates, one of one var and the other of two vars, `P(x,y,z) :⇔ Q(x) ∧ R(y,z)`.

Quantification lets us produce propositions from predicates by quantifying variables. A predicate of one var `P(x)` is converted into a proposition by universally quantifying the variable `x`, `∀x.P(x)`. A predicate `P(x)` is not a proposition, but `∀x.P(x)` is. Universal quantification, `∀x`, acts as a variable binding site - it introduces a variable `x` that ranges over the domain of discourse (DOD). In the proposition `∀x.P(x)`, the var `x` occurs twice: `∀x` is its binding occurrence and inside `P(x)` is its application occurrence. In `P(x)`, var `x` occurs free, but in `∀x.P(x)` it is bound. A proposition `∀x.P(x)` (for all `x`, `P(x)` is true) is defined to be true if `P(x)` is true, independently of `x`.

Having available forall quantifier, we can define existential quantification by negating the universal quantification and the predicate, `∃x.Px :⇔ ¬∀x.¬Px`.

The proposition `∃x.P(x)` (these exists some `x` for which `P(x)` is true) is defined to be true if `P(x)` is true, independently of `x`.

A corollary of this last definition is `∀x.¬P(x) ⇔ ¬∃x.P(x)`.

The equalities:
- ∀x. Px ⇔ ¬∃x.¬Px
- ∀x.¬Px ⇔ ¬∃x. Px
- ∃x. Px ⇔ ¬∀x.¬Px
- ∃x.¬Px ⇔ ¬∀x. Px

Convert a negated quantifier to a non-negated one by flipping the quantifier (¬∃ ⇔ ∀ and ¬∀ ⇔ ∃) and pulling in the negation, negating the predicate:
- ¬∀x. Px ⇔ ∃x.¬Px
- ¬∀x.¬Px ⇔ ∃x. Px
- ¬∃x. Px ⇔ ∀x.¬Px
- ¬∃x.¬Px ⇔ ∀x. Px

Convert simple propositions of one var (relies on double negation):
- ∀x. Px ⇔ ¬∃x.¬Px
- ∀x.¬Px ⇔ ¬∃x.¬¬Px ⇔ ¬∃x.Px
- ∃x. Px ⇔ ¬∀x.¬Px
- ∃x.¬Px ⇔ ¬∀x.¬¬Px ⇔ ¬∀x.Px


## Axiomatic systems and proof theory

An **axiomatic system** is a finite sequence of propositions, `a₁, …, aₙ`, called axioms.

A **proof** of a proposition within an axiomatic system `a₁, …, aₙ` 
is a *finite* sequence of propositions `q₁, …, qₘ` (proof steps) 
(where the final proposition `qₘ` is the proposition we needed to prove), 
such that any step of the proof is either (A) an axiom, (T) tautology, or (M) modus ponens (deduction step).

If `p` can be proven from `a₁, …, aₙ` it is denoted `a₁, …, aₙ ⊢ p`.

An axiomatic system is consistent if there is a proposition `q` which cannot be proven from the axioms, `a₁, …, aₙ ⊬ q`.

The axiomatic system of propositional logic is the empty sequence. *Propositional logic is consistent* - suffices to show that there is a proposition which cannot be proven. Since only (T) and (M) are in effect (there are no axioms) only tautologies can be proven. The proposition `p ∧ ¬p` cannot be proven since it is not a tautology.
