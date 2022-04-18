# Probability axioms

https://en.wikipedia.org/wiki/Probability_axioms

The *Kolmogorov axioms* are the foundations of probability theory introduced by Andrey Kolmogorov in 1933.

These axioms remain central and have direct contributions to mathematics, the physical sciences, and real-world probability cases.

An alternative approach to formalising probability, favoured by some Bayesians, is given by *Cox's theorem*.

## Contents

- 1. Axioms
  - 1.1 First axiom
  - 1.2 Second axiom
  - 1.3 Third axiom
- 2. Consequences
  - 2.1 Monotonicity
  - 2.1.1 Proof of monotonicity
  - 2.2 The probability of the empty set
  - 2.2.1 Proof of probability of the empty set
  - 2.3 The complement rule
    - 2.3.1 Proof of the complement rule
  - 2.4 The numeric bound
    - 2.4.1 Proof of the numeric bound
- 3. Further consequences
- 4. Simple example: coin toss

## Axioms

The assumptions as to setting up the axioms can be summarised as follows: Let `(Ω, F, P)` be a measure space with `P(E)` being the probability of some event `E`, and `P(Ω) = 1`. Then `(Ω, F, P)` is a probability space, with sample space `Ω`, event space `F`, and probability measure `P`.

### First axiom

The probability of an event is a non-negative real number:

`P(E) ∈ ℝ. P(E) > 0. ∀E ∈ F`

where `F` is the event space. It follows that `P(E)` is always finite, in contrast with more general measure theory. Theories which assign negative probability relax the first axiom.

### Second axiom

This is the assumption of unit measure: that the probability that at least one of the elementary events in the entire sample space will occur is 1

`P(Ω) = 1`

### Third axiom

This is the assumption of σ-additivity:

Any countable sequence of disjoint sets (synonymous with mutually exclusive events) `E₁, E₂, …` satisfies

`P(⋃ {i=1..∞} Eᵢ)` = `Σ {i=1..∞} P(Eᵢ)`

Some authors consider merely finitely additive probability spaces, in which case one just needs an algebra of sets, rather than a σ-algebra. *Quasiprobability distributions* in general relax the third axiom.

## Consequences

From the Kolmogorov axioms, one can deduce other useful rules for studying probabilities. The proofs of these rules are a very insightful procedure that illustrates the power of the third axiom, and its interaction with the remaining two axioms. Four of the immediate corollaries and their proofs are shown below:

1. Monotonicity: `A ⊆ B -> P(A) <= P(B)`

If `A` is a subset of `B`, then the probability of `A` is <= to the probability of `B`.

Proof of monotonicity

In order to verify the monotonicity property, we set `E₁ = A` and `E₂ = B ∖ A`, where `A ⊆ B` and `Eᵢ = ∅` for `i >= 3`. From the properties of the empty set it is easy to see that the sets `Eᵢ` are pairwise disjoint and `E₁ ⋃ E₂ ⋯ = B`. Hence, we obtain from the third axiom that

`P(A) + P(B∖A) + Σ {i=3..∞} P(Eᵢ)` = `P(B)`

Since, by the first axiom, the left-hand side of this equation is a series of non-negative numbers, and since it converges to `P(B)` which is finite, we obtain both `P(A) <= P(B)` and `P(∅) = 0`.
