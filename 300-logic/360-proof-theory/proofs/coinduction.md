# Coinduction

https://en.wikipedia.org/wiki/Coinduction

Coinduction is a technique for defining and proving properties of systems of concurrent interacting objects.

*Coinduction* is the mathematical dual to *structural induction*.

Coinductively defined types are known as *codata* and are typically infinite data structures, such as streams.

As a definition or specification, coinduction describes how an object may be observed, decomposed, broken down or destructed into simpler objects.

As a proof technique, it may be used to show that an equation is satisfied by all possible implementations of such a specification.

To generate and manipulate codata, one typically uses corecursive functions, in conjunction with *lazy evaluation*. Informally, rather than defining a function by pattern-matching on each of the (inductive) data constructors, one defines each of the deconstructors (or "observers") over the function result.

In programming, *co-logic programming* (`co-LP`) is a natural generalization of logic programming and coinductive logic programming, which in turn generalizes other extensions of logic programming, such as infinite trees, lazy predicates, and concurrent communicating predicates. Co-LP has applications to rational trees, verifying infinitary properties, lazy evaluation, concurrent logic programming, model checking, bisimilarity proofs, etc. Experimental implementations of co-LP are available from The University of Texas at Dallas and in Logtalk and SWI-Prolog.

==============================================================================

## A Tutorial on Co-induction and Functional Programming
Andrew D. Gordon (paper)

Abstract: Co-induction is an important tool for reasoning about unbounded structures. This tutorial explains the foundations of co-induction, and shows how it justifies intuitive arguments about lazy streams, of central importance to lazy FP. We explain from first principles a theory based on a new formulation of bisimilarity for FPs, which coincides exactly with Morris-style contextual equivalence. We show how to prove properties of lazy streams by co-induction and derive Bird and Wadler's Take Lemma, a well-known proof technique for lazy streams.

### Intro

The aim of this paper is to explain why co-inductive definitions and proofs by co-induction are useful to functional programmers.

Coinduction is dual to induction.

∷    
To say that a set is **inductively defined** just means it is the *least solution* of a certain form of inequation.

For instance, the set of natural numbers, ℕ, is the least solution (ordered by set inclusion, ⊆) of the inequation:

`{0} ⋃ { S(x) | x ∈ X } ⊆ X`          (1)

The corresponding **induction principle** just says that if some other set satisfies the inequation (1), then it contains the inductively defined set.

To prove a property for all (natural) numbers, let `X` be the set of (natural) numbers with that property, and then show that `X` satisfies inequation (1). If so, then `ℕ ⊆ X`, since ℕ is the least such set. This is simply mathematical induction.

∷   
Dually, a set is **coinductively defined** if it is the *greatest solution* of a certain form of inequation.

For instance, suppose that `~>` repr the reduction relation in a FPL. The *set of divergent programs*, `↑`, is the greatest solution of the inequation:

`X ⊆ { a | ∃b(a ~> b ⋀ b ∈ X) }`     (2)

The corresponding **coinduction principle** says that if some other set satisfies the inequation (2), then the coinductively defined set contains it.

For instance, suppose that program `Ω` reduces to itself, i.e. `Ω ~> Ω`. To see that `Ω` is contained in `↑`, consider the set `X = {Ω}`. Since `X` satisfies the inequation (2), `X ⊆ ↑`, as `↑` is the greatest such set. Hence, `Ω` is a member of `↑`.

### Bisimilarity

Bisimilarity is an equality based on operational behaviour. This paper seeks to explain why bisimilarity is an important co-inductive definition for functional programmers.

Bisimilarity was introduced into CS by Park (1981) and developed by Milner in his theory of CCS (1989). Bisimilarity in CCS is based on labelled transitions. A transition `a ----α---> b` means that program (process) `a` can perform an observable action `α` to become successor program `b`.

Any program gives rise to a, possibly infinite, *derivation tree*, whose nodes are programs and whose arcs are transitions, labelled by actions.

Two programs are *bisimilar* if they root the same derivation trees, when one ignores the syntactic structure at the nodes. *Bisimilarity* is a way to compare behaviour, represented by actions, whilst discarding syntactic structure.

*Contextual equivalence* (Morris 1968) is widely accepted as the natural notion of operational equivalence for PCF-like languages (Milner 1977, Plotkin 1977).

Two programs are *contextually equivalent* if, whenever they are each inserted into a hole in a larger program of integer type, the resulting programs either both converge or both diverge.

The main technical novelty of this paper is to show how to define a labelled transition system for PCF-like languages (for instance, Miranda and Haskell) such that bisimilarity, i.e. operationally-defined behavioural equivalence, coincides with Morris' contextual equivalence.

By virtue of this characterisation of contextual equivalence we can prove properties of FP programs using coinduction. We intend in a series of examples to show how coinduction formally captures and justifies intuitive operational arguments.

### 1. Induction and Coinduction

Let `𝓤` be some universal set, and `F : 𝓟(𝓤) -> 𝓟(𝓤)` be a monotone function, meaning that `F(X) ⊆ F(Y) <=> X ⊆ Y`.

Induction and co-induction are dual proof principles that derive from the definition of a set to be either the least or the greatest solution, respectively, of equations of the form `X = F(X)`.

- A set `X ⊆ 𝓤` is *F-closed* iff `F(X) ⊆ X`.
- Dually, a set `X ⊂ 𝓤` is *F-dense* iff `X ⊂ F(X)`.
- A fixpoint of `F` is a solution of the equation `X = F(X)`.

Let `μX.F(X)` and `νX.F(X)` be the following subsets of `𝓤`
* μX.F(X) ≝ ⋂ { X | F(X) ⊆ X }
* νX.F(X) ≝ ⋃ { X | X ⊆ F(X) }

Lemma 1
1. `μX.F(X)` is the least F-closed set
2. `νX.F(X)` is the greatest F-dense set

Theorem 1 (Tarski-Knaster)
1. `μX.F(X)` is the least fixpoint of `F`
2. `νX.F(X)` is the greatest fixpoint of `F`

We say that `μX.F(X)`, the least solution of `X = F(X)`, is the set inductively defined by `F`, and dually, that `νX.F(X)`, the greatest solution of `X = F(X)`, is the set co-inductively defined by `F`. We obtain two dual proof principles associated with these definitions:
* Induction:    `μX.F(X) ⊆ X` if `X` is F-closed
* Co-induction: `X ⊆ νX.F(X)` if `X` is F-dense

An example of mathematical induction:   
- suppose there is an element `0 ∈ 𝓤` and
- an injective function `S : 𝓤 -> 𝓤`
- if we define a monotone function `F : 𝓟(𝓤) -> 𝓟(𝓤)` by
- `F(X) = {0} ⋃ { S(x) | x ∈ X }`
- and set `ℕ ≝ μX.F(X)`, the associated principle of induction is that `ℕ ⊆ X` if `F(X) ⊆ X`, which is to say that `ℕ ⊆ X` if both `0 ∈ X` and 
`∀x(x ∈ X -> S(x) ∈ X)`








==============================================================================


## What the heck is coinduction?

https://ask.metafilter.com/42858/What-the-heck-is-coinduction

Coinduction is a method of proving the equivalence of opaque structures by exploiting bisimilarity. Briefly, given two, possibly infinite, state automata, with outputs in the same set, they are *bisimilar* if there exists a binary relation that "matches up" their state transitions and outputs. *The bisimilarity relation* on a given automaton is the union of all such binary relations from that automaton to itself. *Coinduction* is then the principle that map distributes over the bisimilarity relation, given a mapping from states to output. The effective statement is that two bisimilar initial states will arrive at the same output.


==============================================================================

## See also

* Coinduction
https://cseweb.ucsd.edu//groups/tatami/handdemos/doc/coind.htm

* What the heck is coinduction?
https://ask.metafilter.com/42858/What-the-heck-is-coinduction

* Co-Logic Programming | Lambda the Ultimate
http://lambda-the-ultimate.org/node/2513

* Gopal Gupta's Home Page
http://www.utdallas.edu/~gupta/

* Logtalk3
https://github.com/LogtalkDotOrg/logtalk3/tree/master/examples/coinduction

* Corecursion
https://en.wikipedia.org/wiki/Corecursion


## Further reading

* Textbooks
  - `Introduction to Bisimulation and Coinduction` Davide Sangiorgi, 2012,
  - `Advanced Topics in Bisimulation and Coinduction`
    Davide Sangiorgi and Jan Rutten, 2011

* `A Tutorial on Co-induction and Functional Programming`
  Andrew Gordon, 1994
  https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.37.3914

* `A Tutorial on (Co)Algebras and (Co)Induction` 
  Bart Jacobs and Jan Rutten, 1997
  http://citeseer.ist.psu.edu/jacobs97tutorial.html
  https://www.cs.ru.nl/B.Jacobs/PAPERS/JR.pdf

* `A Tutorial on [Co-]Inductive Types in Coq` 
  Eduardo Giménez and Pierre Castéran, 2007
  http://www.labri.fr/perso/casteran/RecTutorial.pdf

* `Coinduction - short introduction`
  http://www.cs.ucsd.edu/groups/tatami/handdemos/doc/coind.htm

* `On the Origins of Bisimulation and Coinduction`
  Davide Sangiorgi, 2009
  http://www.cs.unibo.it/~sangio/DOC_public/history_bis_coind.pdf

* `Co-Logic Programming: Extending Logic Programming with Coinduction`
  Describes the co-logic programming paradigm.
  http://www.utdallas.edu/~gupta/ppdp06.pdf
