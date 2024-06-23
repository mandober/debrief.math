# Sequent Calculus

https://en.wikipedia.org/wiki/Sequent_calculus

In mathematical logic, *sequent calculus* is a *style of formal logical argumentation* in which every line of a proof is a *conditional tautology*, called a *sequent*, instead of an *unconditional tautology*, like in a Hilbert-style system.

Each conditional tautology is inferred from other conditional tautologies, on earlier lines in a formal argument, according to the rules of inference, giving a better approximation to the natural style of deduction to David Hilbert's style of formal logic, in which every line is an unconditional tautology.

More subtle distinctions may exist; for example, propositions may implicitly depend upon non-logical axioms. In that case, sequents signify conditional theorems in a first-order language rather than conditional tautologies.

Sequent calculus is one of several extant styles of *proof calculus* for expressing *line-by-line logical arguments*.

- *Hilbert style*: every line is an unconditional tautology (or theorem).
- *Gentzen style*: every line is a conditional tautology (or theorem) with zero or more conditions on the left.
  - *Natural deduction*: every (conditional) line has exactly one asserted proposition on the right.
  - *Sequent calculus*: every (conditional) line has zero or more asserted propositions on the right.

Natural deduction and sequent calculus systems are particular distinct kinds of Gentzen-style systems. Gentzen-style systems typically have very few axioms, relying more on a set of inference rules. Hilbert-style systems typically have a very small number of inference rules, relying more on a set of axioms.

Gentzen-style systems have significant practical and theoretical advantages compared to Hilbert-style systems.

For one, both natural deduction and sequent calculus systems facilitate the elimination and introduction of universal and existential quantifiers, so that unquantified logical expressions can be manipulated according to the much simpler rules of propositional calculus.

In a typical argument, quantifiers are eliminated, then propositional calculus is applied to unquantified expressions (which typically contain free variables), and then the quantifiers are reintroduced. This very much parallels the way in which mathematical proofs are carried out in practice by mathematicians.

Predicate calculus proofs are generally much easier to discover with this approach, and are often shorter.

Natural deduction systems are more suited to practical *theorem proving*. Sequent calculus systems are more suited to *theoretical analysis*.

## Contents

- Overview
  - Hilbert-style deduction systems
  - Natural deduction systems
  - Sequent calculus systems
  - Distinction between natural deduction and sequent calculus
  - Origin of word "sequent"
- Proving logical formulas
  - Reduction trees
  - Relation to standard axiomatizations
- The system LK
  - Inference rules
  - An intuitive explanation
  - Example derivations
  - Relation to analytic tableaux
  - Structural rules
  - Properties of the system LK
- Variants
  - Minor structural alternatives
  - Absurdity
  - Substructural logics
  - Intuitionistic sequent calculus: System LJ
- References



## Overview

In proof theory and mathematical logic, sequent calculus is a family of *formal systems* sharing a certain style of inference rules and formal properties.

The first sequent calculi systems, `LK` and `LJ`, were introduced in 1934 and 1935 by Gerhard Gentzen as a tool for studying natural deduction in first-order logic, in classical (LK) and intuitionistic setting (LJ).

Gentzen's so-called "Main Theorem" (ger `Hauptsatz`) about LK and LJ was the *cut-elimination theorem*, a result with far-reaching meta-theoretic consequences, including consistency. 

Gentzen further demonstrated the power and flexibility of this technique when he applied a cut-elimination theorem to give a (transfinite) proof of the consistency of Peano arithmetic, in a surprising response to Gödel's incompleteness theorems. 

Since this early work, sequent calculi, aka Gentzen-style systems, and the general concepts relating to them, have been widely applied in the fields of proof theory, mathematical logic, and automated deduction.

### Hilbert-style deduction systems

One way *to classify different styles of deduction systems* is to look at the *form of judgments* in the system, i.e., which things may appear as the conclusion of a (sub)proof.

The simplest judgment form is used in *Hilbert-style deduction systems*, where a judgment has the form

`B`

where `B` is any formula of FOL (or whatever logic the deduction system applies to, e.g. propositional calculus, HOL, modal logic, etc).

Then the theorems are those formulas that appear as the concluding judgment in a valid proof.

A Hilbert-style system needs no distinction between formulas and judgments (we make one here solely for comparison with the cases that follow).

The price of the simple syntax of a Hilbert-style system is that proofs tend to get extremely long. This is exacerbated by the fact that, almost always, proofs appeal to the deduction theorem. In order to cut down on the verbosity, the idea of *including the deduction theorem as a formal rule in the system* was introduced, giving rise to natural deduction systems.

### Natural deduction systems

In natural deduction, judgments have the shape `A₁, A₂, …, Aₙ ⊢ B` where the `Aᵢ` and `B` are again formulae (with n ≥ 0), and permutations of the `Aᵢ` formulae are immaterial.

In other words, a judgment consists of a, possibly empty, list of formulae on the left-hand side of the turnstile, which act as premises, with a single formula on the right-hand side acting as a conclusion.

The theorems are those formulae `B` such that `⊢ B` (or `∅ ⊢ B`, i.e. the lhs is empty) is the conclusion of a valid proof.

Note: in weirder presentations of natural deduction, the `Aᵢ` formulae and the turnstile are not written explicitly; instead a two-dimensional notation from which they can be inferred is used.

The standard semantics of a judgment in natural deduction is that it asserts that whenever each of the `Aᵢ` formulas is true, then `B` is true as well.

The judgments `A₁, …, Aₙ ⊢ B` and `⊢ (A₁ ∧ … ∧ Aₙ) → B` are equivalent in the sense that a proof of either one may be converted into the proof of the other. This is becuase `⊢` is basically just another symbol for implication - the meta-implication or the *provability relation*.

```hs
A₁, …, Aₙ ⊢ B         is equal to
(A₁ ∧ … ∧ Aₙ) ⊢ B     is equal to
⊢ ¬(A₁ ∧ … ∧ Aₙ) ∨ B  is equal to
⊢ (A₁ ∧ … ∧ Aₙ) → B

-- also

A, B, C ⊢ D             is equal to
(A ∧ B ∧ C) ⊢ D         is equal to
(B ∧ C) ⊢ (¬A ∨ D)      is equal to
C ⊢ (¬A ∨ ¬B ∨ D)       is equal to
⊢ (¬A ∨ ¬B ∨ ¬C ∨ D)    is equal to
⊢ (¬(A ∧ B ∧ C) ∨ D)    is equal to
⊢ ((A ∧ B ∧ C) → D)     is equal to
```

Natural deduction, being one of the two Gentzen style systems, has a lot in common with the Gentzen's other system, sequent calculus. In fact, Gentzen invented sequent calculus as a formalism in which he deemed was easier to proof things about natural deduction. So, we may consider natural deduction as a weaker version of sequent calculus in which the right-hand side is restricted to only allow a single formula. But, even with this restriction we can always write a single formula instead of a comma-separated list of formulas. Namely, in sequent calculus, the two lists of formulas are interpreted differently: the list on the lhs is a conjunction of formulas, while the list on the rhs is a disjunction of formulas. However, we can always represent the rhs by a single formula, i.e. by a disjunction; that is, instead of writing `⊢ A, B, C`, we can just write `⊢ A ∨ B ∨ C` to stay within the bounds of natural deduction.

### Sequent calculus systems

Sequent calculus generalizes the form of a natural deduction judgment to

`A₁, …, Aₙ ⊢ B₁, …, Bₘ`

which is a *syntactic object* called a sequent. The formulas on the left side of the turnstile comprise the *antecedent*, while the formulas on the right comprise the *consequent* (succedent). A *sequent* is comprised of an antecedent and consequent; separately, the two sides are called *cedents*.

>A **sequent** is comprised of two cedents: the left one is called an **antecedent**, and the right one is called a **consequent**. Each **cedent** is comprised of a list of formulas, which have different interpretations: conjunction in the antecedent, disjunction in the consequent.

Again, in a sequent, `A₁, …, Aₙ ⊢ B₁, …, Bₘ`, the `Aᵢ` and `Bᵢ` are formulas, with `n ≥ 0` and `m ≥ 0`. The antecedent or the consequent (or neither or both) may be empty.

As in natural deduction, theorems are those formulas `B` where `⊢ B` is the conclusion of a valid proof.

The standard semantics of a sequent is an assertion that whenever every `Aᵢ` is true, at least one `Bᵢ` will also be true.

>Thus the empty sequent, having both cedents empty, is false.

One way to express this is that a comma to the left of the turnstile should be thought of as an "and", and a comma to the right of the turnstile should be thought of as an (inclusive) "or".

The sequents `A₁, …, Aₙ ⊢ B₁, …, Bₘ` and `⊢ (A₁ ∧ … ∧ Aₙ) → (B₁ ∨ … ∨ Bₘ)` are equivalent in the sense that a proof of either sequent may be extended to a proof of the other sequent.

At first sight, this extension of the judgment form may appear to be a strange complication - it is not motivated by an obvious shortcoming of natural deduction, and it is initially confusing that the comma seems to mean entirely different things on the two sides of the turnstile.

However, in a classical context the semantics of the sequent can also (by propositional tautology) be expressed either as

`⊢ ¬A₁ ∨ ¬A₂ ∨ ⋯ ∨ ¬Aₙ ⋁ B₁ ∨ B₂ ∨ ⋯ ∨ Bₘ`

i.e. at least one of the `Aᵢ` is false, or one of the `Bᵢ` is true; or as

`⊢ ¬(A₁ ∧ A₂ ∧ ⋯ ∧ Aₙ ⋀ ¬B₁ ∧ ¬B₂ ∧ ⋯ ∧ ¬Bₘ)`

i.e. it cannot be the case that all of the `Aᵢ` are true and all of the `Bᵢ` are false.

In these formulations, the only difference between formulae on either side of the turnstile is that one side is negated. Thus, swapping left for right in a sequent corresponds to negating all of the constituent formulae. This means that a symmetry such as De Morgan's laws, which manifests itself as logical negation on the semantic level, translates directly into a left-right symmetry of sequents - and indeed, the inference rules in sequent calculus for dealing with conjunction are mirror images of those dealing with disjunction.

Many logicians feel that this symmetric presentation offers a deeper insight in the structure of the logic than other styles of proof system, where the classical duality of negation is not as apparent in the rules.

### Distinction between natural deduction and sequent calculus

- `NK` natural deduction (N) in classical logic (K)
- `NJ` natural deduction (N) in intuitionistic logic (J)
- `LK` sequent calculus (L) in classical logic (K)
- `LJ` sequent calculus (L) in intuitionistic logic (J)

Gentzen asserted a sharp distinction between his single-output natural deduction systems (`NK` and `NJ`) and his multiple-output sequent calculus systems (`LK` and `LJ`).

He wrote that the intuitionistic natural deduction system `NJ` was somewhat ugly. He said that the special role of the excluded middle in the classical natural deduction system `NK` is removed in the classical sequent calculus system `LK`. He said that the sequent calculus gave more symmetry than natural deduction in case of intuitionistic logic (`LJ` vs `NJ`), but also in classical logic (`LK` vs `NK`). Then he said that in addition to these reasons, the sequent calculus with multiple succedent formulas is intended particularly for his principal theorem, the Hauptsatz, i.e. the cut-elimination theorem.

### The origin of the term "sequent"

The German word "Sequenz" that appears in the Gentzen's 1934 paper is translated into English as "sequent". As Kleene comments: Gentzen says 'Sequenz', which we translate as 'sequent', because we have already used 'sequence' for any succession of objects, where the German is 'Folge'.

## Proving logical formulas

### Reduction trees

Sequent calculus can be seen as a tool for proving formulas in propositional logic, similar to the method of *analytic tableaux*.

Sequent calculus gives a series of steps which allows us to prove a logical formula by reducing it into simpler formulas until we arrive at the atomic formulas which we can finish off by citing the I axiom, thus completing the proof.




### Relation to standard axiomatizations





## The system LK


### Inference rules


### An intuitive explanation


### Example derivations


### Relation to analytic tableaux


### Structural rules


### Properties of the system LK





## Variants


### Minor structural alternatives



### Absurdity



### Substructural logics



### Intuitionistic sequent calculus: System LJ

## References
