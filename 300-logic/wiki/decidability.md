# Decidability

https://en.wikipedia.org/wiki/Decidability_(logic)

## Summary

- property: decidability
- pertains to: system if logic, theory, decision problem
- related properties: completeness, consistency
- related terms: decision problem, un/decidabile

## Decidability

- Decidability is a property of a logic system.
- Decidability is one of the crucial properties of a logic system, along with completeness and consistency.
- Decidability is about the existence of an effective method (algorithm) that can compute a definite (non-halting) answer derived from the *system's axioms*, to a *decision problem* formulated within that system.
- A decision problem is decidabile or undecidabile.


>A logic system is **decidabile** if there exists an algorithm (effective method) that can determine whether a statement (proposition) formulated within that system always follows from the system's axioms.

A true/false decision problem is *decidable* if there exists an effective method for deriving the correct answer.

A logic system is **decidabile** if 
there exists an algorithm (effective method) 
that can always determine (compute) 
whether a statement (proposition) follows 
from the axioms of that system.

A logic system is **complete** if 
all true propositions in that system 
can be proven, within that system, 
from the system's axioms.

* A logic system is *complete* if all true propositions in it can be proven true within that system, from the system's axioms.

* A logic system is *consistent* if there is a way to prove that no contradictory propositions arise within it.




## Hilbert 

Hilbert's 1st concern was the *completeness* of mathematics:
>Is there a way to prove all true propositions within a system of math? 

Hilbert's 2nd question was about the *consistency* of mathematics:
>Is there a way to prove that no contradictions arise in a system of math?

Hilbert's 3rd question was about the *decidability* of mathematics:
>Is there an algorithm that can determine if a prop follows from the axioms?

After formulating completeness and consistency, Hilbert's final big question was if mathematics were decidable. That is, is there an algorithm that can always determine whether a mathematical statement follows from the axioms? In 1936, Alan Turing has settled this question in the negative, followed by Gödel who demonstrated the same pesimistic properties of certain systems of math.


- Decidability: 
  Logic system is decidabile if there is an algorithm that can determine whether a statement always follows from the axioms.
- Completeness: 
  Logic system is complete if all true propositions can be proven within it.


*Decision problem*: in computability theory and computational complexity theory, a decision problem is a computational problem that can be posed as a yes-no question in terms of the input values. An example of a decision problem is deciding by means of an algorithm whether a given number belongs to some set; or whether a natural number is prime; or divisibility of two numbers.

## Intro

* In logic, a true/false *decision problem* is decidable if there exists an effective method for deriving the correct answer.
* *ZOL* (propositional logic) is decidable.
* *FOL* is not decidable.
* *HOL* is not decidable.
* A *logic system* is decidable if membership in its set of logically valid formulas (i.e. theorems) can be effectively determined.
* A *theory* (set of sentences closed under logical consequence) in a fixed logical system is decidable if there is an effective method for determining whether arbitrary formulas are included in the theory.

Many important problems are **undecidable**, that is, **it has been proven** that no effective method for determining membership (returning a correct answer after a finite, though possibly very long, amount of time) can exist for them.

## Contents

- Decidability of a logical system
- Decidability of a theory
- Some decidable theories
- Some undecidable theories
- Semidecidability
- Relationship with completeness
- Relationship to computability
- In context of games




## Refs

https://en.wikipedia.org/wiki/Decidability_(logic)
https://en.wikipedia.org/wiki/Propositional_calculus
https://en.wikipedia.org/wiki/First-order_logic
https://en.wikipedia.org/wiki/Higher-order_logic
https://en.wikipedia.org/wiki/Mathematical_induction
https://en.wikipedia.org/wiki/Equality_(mathematics)
https://en.wikipedia.org/wiki/System_F
https://en.wikipedia.org/wiki/System_U
https://en.wikipedia.org/wiki/Dependent_type
https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence

* Predicate Logic
https://cs.uwaterloo.ca/~plragde/flaneries/LACI/Predicate_Logic.html

* System F - An introduction by Franck Binard
https://www.site.uottawa.ca/~fbinard/Intuitionism/TypeTheory/SystemF/

* F-omega - the workhorse of modern compilers
https://web.archive.org/web/20140917015759/http://www.eecs.harvard.edu/~greg/cs256sp2005/lec16.txt

* The Girard-Reynolds Isomorphism (second edition) - Philip Wadler
https://homepages.inf.ed.ac.uk/wadler/papers/gr2/gr2.pdf

* Programming Languages and Semantics - Greg Morrisett - CS256 Spring 2005
https://web.archive.org/web/20150405073546/http://www.eecs.harvard.edu/~greg/cs256sp2005/
