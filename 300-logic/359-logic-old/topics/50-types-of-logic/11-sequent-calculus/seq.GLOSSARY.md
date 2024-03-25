# Sequent Calculus :: GLOSSARY

## Contradiction
Contradiction (absurd, falsity) is a logical statement that is always false. 
Contradiction is a logical formula that cannot be satisfied, regardless of the assignment of variables. 
An example of contradiction is `p ∧ ¬p`. 
Contradiction is sometimes denoted by `⊥`. 

In IL, `¬p := p → ⊥`, which also holds in classical logic. 
In classic logic, we can assert `¬p` when the assumption of `p` leads to a contradiction.



Contradiction is dangerous because it allows us to infer anything. "Ex falsum quidlibet" - anything follow from contradiction, as captured by the principle of explosion. once you encounter a contradiction, you are free to derive any formula at all. 

Classical logic welcomes the use of contradiction (and the related principle of excluded middle); it relies on it for the proof-by-contradiction method, which lets us prove a statement by showing that its negation leads to a contradiction (with the LEM principle asserting that no other possibility exists - a statement is either true or false). 
IL rejects such proofs, complaining that they are useless since they don't yield algorithms for constructing a witness (an element of the domain that reflects the property/predicate in question).


## Curry-Howard Isomorphism
The Curry-Howard isomorphism states a correspondence between systems of formal logic (as encountered in proof theory) and computational calculi (as found in type theory). The important part of the Curry-Howard isomorphism is the idea that a constructive proof of an implication should yield an algorith for constructing the witnessing elements.

The Curry-Howard isomorphism is a name for the correspondence between the intuitionistic logic and simply typed lambda calculus. It states that the type signatures of functions in STLC correspond to logical propositions, and function bodies are equivalent to proofs of those propositions. Other names of this phenomenon are propositions-as-types, programs-as-proofs. Also, this isomorphism is often expressed as a correspondence betwen logic (or set theory), type theory, even category theory (often by suffixing Lambek), and functional programming.


## Gentzen-style calculi
Gentzen-style calculi, unlike Hilbert-style calculi, favor rules of inference (conditional assertions) over axioms (unconditional assertions). There are two Gentzen-style calculi: natural deduction and sequent calculus.

## Hilbert-style proof calculus

A variant of the Hilbert-style proof calculus uses the axioms I, K, S, and one rule of inference (modus ponens).



## Sequent
A sequent is a generalization of a conditional assertion, which in turn is a generalization of an unconditional assertion (tautology).

A sequent or cedent is 

left cedent
  - antecedent (hypothesis, premise)
- right cedent
  - succedent (conclusion, consequent)

## Sequent calculus
Sequent calculus is a style of formal logical argumentation or a proof calculus, invented by Gerhard Gentzen in 1934. Like natural deduction, sequent calculus is the Gentzen-style proof calculus. It generalizes the form of a natural deduction judgment to a syntactic object called a sequent; it generalizes natural deduction by allowing multiple formulas as conclusions. Gentzen-style calculi, unlike Hilbert-style calculi, favor rules of inference (conditional assertions) over axioms (unconditional assertions).


## Tautology
Tautology is an unconditional (it has no premises) assertion. Tautology is a logical statement that is always true. Tautology is a logical formula that is always satisfied, regardless of the assignment of variables. Some examples of tautologies are `¬p ∨ p`, `p → p` (I axiom; it is derivable from `¬p ∨ p` in classical logic, but not in IL), `p → (q → p)` (K axiom), `(a → b → c) → (a → b) → a → c` (S axiom), etc.

Tautology is sometimes denoted by `⊤`.
