# Logic and set theory

https://www.youtube.com/watch?v=AAJB9l-HAZs

## Predicate logic

Set theory cannot be discussed without first getting familiar with predicate logic, particularly, first-order logic (although they are synonyms), which is a language used to express everything about sets.

>First-order logic (FOL) is the internal language of set theory.

A **predicate** is an expression that ascribes a property to the objects identified by the variables of the sentence (formula).

For example, the sentence `x+2=7` is a predicate. It describes a characteristic of `x`. When expressions are substituted for `x`, the resulting sentence will be either a proposition that affirms that the value added to 2 equals 5 or another predicate. If x=5 is substituted, the result is the true proposition 5+2=7. That is, x+2=7 is satisfied by 5. If x=10 and the substitution is made, the resulting proposition 10+2=7 is false.

In mathematics, it is also common to substitute with *undetermined values*. For example, if the substitution is x=y, the result is the predicate y+2=7, and if the substitution is x=sinθ, the result is the predicate sinθ+2=7. Substituting x=y+2z² yields y+2z²+2=7, a predicate with multiple variables. If we substitute x=y²⨯7y, the result is y²⨯7y+2=7, which is a predicate with multiple occurrences of the same variable.


---

>A **quantifier** indicates how many objects satisfy the sentence.

The *existential quantifier* makes the sentence an *existential proposition*. Such a proposition claims that there is at least one object that satisfies the predicate. For example, `∃x(x ∈ ℝ ⋀ x+2=7)` is a true proposition. An existential quantifier asserts the existence of an object that satisfies the predicate.

The *universal quantifier* makes the sentence an *universal proposition*. Such a proposition claims that all objects satisfy the predicate. For example, the sentence `∀x(x+5 = 5+x)` is a true proposition. A universal quantifier **does not assert the existence** of an object (that satisfies the predicate) because a predicate may be vacuuously satisfied.




---

A **predicate** is a relation involving a number of variables.

A predicate is not a function or function-like, since functions evaluate to members of the DoD (i.e. to individuals), and relations (predicates, properties) evaluate to truth values; it becomes a part of a proposition when fully instantiated. A predicate `P(x,y)` evaluates to a truth value depending on variables `x` and `y`; `∀x ∀y P(x,y)` is a *sentence*, which when instantiated, e.g. x ⟼ a and y ⟼ b, becomes a *proposition* `P(a,b)`.


We can form new predicates from old ones.

Most easily this can be done by converting a predicate of, say, 3 vars into two conjoined predicates, one unary and two binary: `P(x,y,z) ≝ Q(x) ∧ R(y,z)`

*Quantification* lets us produce *propositions* from *predicates* by quantifying variables.

`∀x.P(x)` ⟼ `P(a)` where `a` is a constant (an element of DoD)

A unary predicate `P(x)` is converted into a proposition by universally or existentially quantifying variable `x`, i.e. `∀x.P(x)` or `∃x.P(x)`.

A predicate `P(x)` is not a proposition, but `∀x.P(x)` is. (The dot or space is used to separate the parts of the FOL sentence).

Universal quantification is denoted by `∀` and it acts as a **binder** for variables. Being a variable binding site, `∀x`, introduces a variable `x` which ranges over the elements in the **Domain Of Discourse** (DOD).

In proposition `∀x.P(x)`, variable `x` has two occurrences:
- binding occurrence, `∀x`
- applied occurrence, `P(x)`

In `P(x)`, variable `x` occurs **free**, but in `∀x.P(x)` it occurs **bound**.

>A proposition `∀x.P(x)` is defined to be true if `P(x)` is true, independently of `x`.


With only **universal quantification** defined, we can define **existential quantification**in terms of it by negating the universal quantifier and the predicate, i.e. by

`∃x.Px ≝ ¬∀x.¬Px`


>Proposition `∃x.P(x)` is defined to be true if `P(x)` is true, independently of `x`.


A corollary of the last definition is: 

`∀x.¬P(x) ⇔ ¬∃x.P(x)`


**The equalities**
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

>An **axiomatic system** is a finite sequence of propositions, `a₁, …, aₙ`, called *axioms*.


A **proof** of a proposition within an axiomatic system `a₁, …, aₙ` is a *finite* sequence of propositions `q₁, …, qₘ` (called proof steps), where the final proposition `qₘ` is the proposition we needed to prove, such that any step of the proof is either (A) an axiom, (T) tautology, or (M) modus ponens (deduction step).

If `p` can be proven from `a₁, …, aₙ` it is denoted `a₁, …, aₙ ⊢ p`.

An axiomatic system is consistent if there is a proposition `q` which cannot be proven from the axioms, `a₁, …, aₙ ⊬ q`.

The axiomatic system of propositional logic is the empty sequence. *Propositional logic is consistent* - suffices to show that there is a proposition which cannot be proven. Since only (T) and (M) are in effect (there are no axioms) only tautologies can be proven. The proposition `p ∧ ¬p` cannot be proven since it is not a tautology.
