# Entailment

- Logical consequence
- Entailment


One of the core questions in logic is whether a conclusion follows from a set of premises; that is, whether the premises actually entail the conclusion.

>Entailment is a relation between premises and a conclusion.

Entailment is the name for logical consequence viewed as a relation between premises and a conclusion.

>The entailment relation holds if the conclusion is indeed the logical consequence of the premises.

Entailment comes in two flavors:
- syntactic, `⊢`
- semantic, `⊨`

>*Semantic entailment* entails *syntactic entailment*.

Syntactic entailment is determined solely by examining the symbols in a given formula. For example, `p -> q, p ⊢ q`, holds always, and is, in fact, one of the fundamental rules of inference in logic, called modus ponens. However, syntactic entailment can be any tautology, e.g. `p ∧ q ⊢ p`.

More precisely, without knowing the truth values of all variables in a given formula, we cannot, in principle, determine whether the formula holds; or whether the syntactic entailment holds. This is generally true save for the situations where the formula is a *tautology* - a formula that always holds regardless of the assignment of truth values to variables.

>A syntactic entailment holds if the formula is a tautology.

If such assignment is available then we have a semantic entailment, for which we can determine the truth value.

For example, `p ∨ q, r ⊨ p ∧ r`, holds if the assignemnt of truth values is:
- p = 1
- r = 1
- q = _ (the truth value of `q` is unimportant, it can be either)


>Entailment is an indefeasable relation, denoted `S₁ ⇒ S₂`, between a premise `S₁` and a valid conclusion `S₂` expressed as a natural language sentence.
