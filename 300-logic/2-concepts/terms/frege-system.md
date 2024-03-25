# Frege system

https://en.wikipedia.org/wiki/Frege_system

In *proof complexity*, a **Frege system**, more commonly called a **Hilbert system**, is a *propositional proof system* whose proofs are sequences of formulas derived using a finite set of sound and implicationally complete inference rules.

## Formal definition

Let `K` be a finite functionally complete set of Boolean connectives, and consider propositional formulas built from variables `p₀, p₁, p₂, …` using K-connectives. A Frege rule is an inference rule of the form

```
    B₁, …, Bₙ
r = ---------
        B
```
where `B₁, …, Bₙ, B` are formulas.

If `R` is a finite set of Frege rules, then `F = (K,R)` defines a derivation system in the following way:

If `X` is a set of formulas, 
and `A` is a formula, 
then an F-derivation of `A` 
from axioms `X` 
is a sequence of formulas `A₁, …, Aₘ` 
such that `Aₘ = A`, 
and every `Aₖ` is a member of `X`, 
or it is derived from some of the formulas `Aᵢ`, `i < k`, 
by a substitution instance of a rule from `R`. 
An F-proof of a formula `A` is an F-derivation of `A` 
from the empty set of axioms, `X = ∅`.

`F` is called a Frege system if
- `F` is sound: every *F-provable formula* is a tautology.
- `F` is *implicationally complete*: for every formula `A` and a set of formulas `X`, if `X` entails `A`, then there is an F-derivation of `A` from `X`.
- The *length* (number of lines) in a proof `A₁, …, Aₘ` is `m`. The size of the proof is the total number of symbols.

A derivation system `F` as above is *refutationally complete*, if for every inconsistent set of formulas `X`, there is an F-derivation of a fixed contradiction from `X`.

## Examples

- *Frege's propositional calculus* is a Frege system.
- There are many examples of sound Frege rules in Propositional calculus.
- *Resolution* is not a Frege system because it only operates on clauses, not on formulas built in an arbitrary way by a functionally complete set of connectives. Moreover, it is not implicationally complete, i.e. we cannot conclude `A∨B` from `A`. However, adding the weakening rule: `A ⊢ A ∨ B` makes it implicationally complete. Resolution is also refutationally complete.

## Properties

- *Reckhow's theorem* (1979) states that all Frege systems are *p-equivalent*.

- Natural deduction and sequent calculus (Gentzen system with cut) are also p-equivalent to Frege systems.

- There are polynomial-size Frege proofs of the pigeonhole principle (Buss 1987).

- Frege systems are considered to be fairly strong systems. Unlike, say, resolution, there are no known superlinear lower bounds on the number of lines in Frege proofs, and the best known lower bounds on the size of the proofs are quadratic.

- The minimal number of rounds in the prover-adversary game needed to prove a tautology `ϕ` is proportional to the logarithm of the minimal number of steps in a Frege proof of `ϕ`.

## Extended Frege system

An important extension of a Frege system, the so called **Extended Frege**, is defined by taking a Frege system `F` and adding an extra derivation rule which allows to derive formula `p ↔ D`, where `↔` abbreviates its definition in the language of the particular F and the atom `p` does not occur in previously derived formulas including axioms and in the formula `D`.

The purpose of the new derivation rule is to *introduce 'names' or shortcuts for arbitrary formulas*. It allows to interpret proofs in Extended Frege as Frege proofs operating with circuits instead of formulas.

*Cook's correspondence* allows to interpret Extended Frege as a nonuniform equivalent of *Cook's theory PV* and *Buss's theory* `S¹₂` formalizing feasible (polynomial-time) reasoning.

## Refs

* p-equivalence
https://en.wikipedia.org/wiki/Propositional_proof_system#Relation_with_computational_complexity_theory

* Cook's correspondence
https://en.wikipedia.org/wiki/Bounded_arithmetic#Correspondence_to_propositional_proof_systems
