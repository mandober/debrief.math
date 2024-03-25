# Quantifiers

Q: "Logical quantifiers" vs "quantifiers"? That is, are there non-logical quantifiers?

A **quantifier** is a logical constant.

A *logical constant* is a *logical symbol* (as opposed to a *non-logical symbol*) that is always interpreted in the same way (e.g. ∧, ∨, →, ⊤, ⊥, ∀, ∃).

Quantifiers are logical symbols introduced in predicate logics (they do not appear in syllogisic or propositional logic) intended to capture the "a part vs the whole" aspects of the world. Namely, quantifiers, as their name suggest, allow us to numerically quantify the amount of individuals that satisfies some condition.

There are two quantifiers, existential quantifier, `∃`, which can express the fact that some (i.e. at least one) individual satisfies some condition, and universal quantifier, `∀`, which expresses that fact that all individuals satisfy soem condition.

Quantifiers usually require that the domain of discourse is first established. The domain of discourse (DOD) gathers together all the individuals, i.e. objects under the study. For example, in ZF set theory, DOD is comprised exclusively of sets. It is important to establish the DOD precisely because variables used in logical formulas range over the DOD, i.e. over all the individuals.

A quantifier introduces (binds) a new variable, `x`, which ranges over the DOD, and is subsequantly used in a subformula, usually with some condition; e.g. in the statement `∀x(P(x))`, a fresh variable `x` is first declared (i.e. bound by the ∀ quantifer) and used in the subformula, `P(x)`, where `P` is a predicate that represents some condition that `x` should satisfy. Since the universal quantifier was used (and `x` ranges over all individuals), all individuals must satisfy the condition `P`. That is, each individual in the DOD is substituted for `x` and satisfy the condiotion `P(x)`. All it takes is a single individual to fail to satisfy the condition for the statement `∀x(P(x))` to be false.

On the other hand, if the statement is `∃x(P(x))` instead, then all it takes is a single individual to satisfy the condition for this statement to be true. In act, `∃` means "at least one", so more than one is ok.
