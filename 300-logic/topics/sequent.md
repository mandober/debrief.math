# Sequent

https://en.wikipedia.org/wiki/Sequent

sequent                sequent
cedent              cedent |- cedent
formula         antecedent |- consequent
hypothesis      hypothesis |- conclusions
antecedent       ϑ ⋀ φ ⋀ ϱ |- ϖ o ϙ ∨ ϰ
conclusion
consequent
succedent


## Sequents

A **sequent** is a generalization of a conditional assertion, which in turn is a generalization of an unconditional assertion.

> `A₁, …, Aₙ |- B₁, …, Bₘ`  ≡  A₁ ∧ … ∧ Aₙ |- B₁ ∨ … ∨ Bₘ

The turnstile symbol (can be read as: entails, therefore, implies, proves) splits a sequent into the LHS that contains conjunction of **antecedents** (hypothesis, condition formulas), and the RHS that contains disjunctions of **consequents** (succedents, conclusions, asserted formulas). Collectively, they are also called *cedents*.

Therefore, a sequent is understood to mean that if all of the antecedent conditions are true, then at least one of the consequent formulas is true. This style of conditional assertion is almost always associated with the conceptual framework of sequent calculus.

Unless relaxed, both cedents are taken to mean sequences of logical formulas, not sets, so multiplicity and order of occurrences of formulas are significant (especially in substructural logics).

Sequent forms:
- *Unconditional assertion*: no antecedent formulas, `|- B`, means `B` holds
- *Conditional assertion*: any number of antecedents
  - *Simple conditional assertion*: single consequent, `A₁ … Aₙ |- B`
  - *Sequent*: multiple consequents, `A₁,…,Aₙ |- B₁,…,Bₘ`


## Syntax

The structural rules of inference of sequent calculus:
- *weakening* (thinning): addition of a formula in a cedent
- *exchange* (interchange): swapping of two cedent formula
- *contraction*: deduplication of a formula in a cedent



## Properties

Since every formula in the antecedent must be true to conclude the truth of at least one formula in the succedent, adding formulas to either side results in a weaker sequent, while removing them from either side gives a stronger one. This is one of the symmetry advantages which follows from the use of disjunctive semantics on the RHS of the assertion symbol, whereas conjunctive semantics is adhered to on the LHS.


**Empty antecedent**: means the consequent is unconditional. This differs from the simple unconditional assertion (assumption) because the number of consequents is arbitrary, not necessarily a single consequent. For example, `|- A,B` means that either A or B, or both, are true. An empty antecedent formula list is equivalent to the "always true" proposition, called verum, denoted by `⟙`.

**Empty consequent**: the rule is still that at least one term on the right be true, which is clearly impossible. This is signified by the "always false" proposition, called falsum, denoted `⟘`. Since the consequence is false, at least one of the antecedents must be false. For example, `A, B |-` means that at least one of the antecedents, A and B, must be false.

This again shows the symmetry due to disjunctive semantics of the RHS:
- If the LHS is empty, then one or more RHS propositions must be true.
- If the RHS is empty, then one or more LHS propositions must be false.

**Empty cedents**: means "not satisfiable". In this case, the meaning of the sequent is effectively `⟙ |- ⟘`, which is equivalent to `|- ⟘` (asserting bottom), which cannot be valid.



## Examples

A sequent of the form $$\vdash\alpha, \beta$$ for logical formulas $$\alpha$$ and $$\beta$$, means that either $$\alpha$$ is true or $$\beta$$ is true, but it doesn't mean that either of them is a tautology.

To clarify this, consider: $$\vdash B\lor A,C\lor \lnot A$$

This is a valid sequent because either $$B \lor A$$ is true or $$C \lor \lnot A$$ is true. But neither of these expressions is a tautology in isolation. It is the disjunction of these two expressions which is a tautology.

Similarly, a sequent of the form $$\alpha, \beta \vdash$$ 
for logical formulas $$\alpha$$ and $$\beta$$, means that either $$\alpha$$ is false or $$\beta$$ is false, but it doesn't mean that either $$\alpha$$ is a contradiction or $$\beta$$ is a contradiction.

To clarify this, consider: $$B\land A,C\land \lnot A \vdash$$

This is a valid sequent because either $$B\land A$$ is false or $$C\land \lnot A$$ is false. But neither of these expressions is a contradiction in isolation. It is the conjunction of these two expressions which is a contradiction.

## Rules
Most proof systems provide ways to deduce one sequent from another. These inference rules are written with a list of sequents above and below a line. This rule indicates that if everything above the line is true, so is everything under the line.

A typical rule is:

$$
\underline{\Gamma ,\alpha \vdash \Sigma \qquad \Gamma \vdash \alpha}\\
\quad \quad \quad {\Gamma \vdash \Sigma}
$$

This indicates that if we can deduce that $$\Gamma , \alpha$$ yields $$\Sigma$$, and that $$\Gamma$$ yields $$\alpha$$, then we can also deduce that $$\Gamma$$ yields $$\Sigma$$.


## Interpretation
The assertion symbol in sequents originally meant exactly the same as the implication operator. But over time, its meaning has changed to signify provability within a theory rather than semantic truth in all models.


The intuitive meaning of the sequent $$\Gamma \vdash \Sigma$$ is that under the assumption of Γ the conclusion of Σ is provable.

Classically, the formulae on the left of the turnstile can be interpreted conjunctively while the formulae on the right can be considered as a disjunction.

This means that, when all formulae in Γ hold, then at least one formula in Σ also has to be true.

If the succedent is empty, this is interpreted as falsity, i.e. $$\Gamma \vdash$$ means that Γ proves falsity and is thus inconsistent.

On the other hand an empty antecedent is assumed to be true, i.e., $$\vdash \Sigma$$ means that Σ follows without any assumptions, i.e., it is always true (as a disjunction). A sequent of this form, with Γ empty, is known as a __logical assertion__.

Since formal proofs in proof theory are purely syntactic, the meaning of (the derivation of) a sequent is only given by the properties of the calculus that provides the actual rules of inference.

In their introductory logical form, Γ represents a set of assumptions that we begin our logical process with, for example "Socrates is a man" and "All men are mortal". The Σ represents a logical conclusion that follows under these premises. For example "Socrates is mortal" follows from a reasonable formalization of the above points and we could expect to see it on the Σ side of the turnstile. In this sense, $$\vdash$$ means the process of reasoning, or "therefore" in English.


## Variations
The general notion of sequent introduced here can be specialized in various ways.

**LJ Sequent Calculus**    
The restriction of the general sequent calculus to single-succedent-formula sequents, with the same inference rules as for general sequents, constitutes an intuitionistic sequent calculus, denoted as __LJ__.

Similarly, one can obtain calculi for __dual-intuitionistic logic__ (a type of paraconsistent logic) by requiring that sequents be singular in the antecedent.

In many cases, sequents are assumed to consist of multisets or sets instead of sequences, disregarding the order and number of occurrences of a formula.

For classical propositional logic this does not yield a problem, since the conclusions that one can draw from a collection of premises do not depend on these data. In substructural logic, however, this may become quite important.

__Natural deduction systems__ use single-consequence conditional assertions, but they typically do not use the same sets of inference rules as Gentzen introduced in 1934. Tabular natural deduction systems are particularly used, being very convenient for practical theorem-proving in propositional calculus and predicate calculus.






---

- https://en.wikipedia.org/wiki/Sequent_calculus
- https://blog.tchatzigiannakis.com/structural-rules-and-substructural-logics/
