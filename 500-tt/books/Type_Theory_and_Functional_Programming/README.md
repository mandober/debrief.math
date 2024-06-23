# Type Theory and Functional Programming

`Type Theory and Functional Programming`, Simon Thompson, 1999


## TOC

1. [Introduction to Logic](100-introduction-to-logic.md)
2. [FP and λ-calculi](200-fp-and-λ-calculi.md)
3. [Constructive Mathematics](300-constructive-math.md)
4. [Introduction to Type Theory](400-introduction-to-type-theory.md)
5. [Exploring Type Theory](500-exploring-type-theory.md)
6. [Applying Type Theory](600-applying-type-theory.md)
7. [Augmenting Type Theory](700-augmenting-type-theory.md)
8. [Foundations](800-foundations.md)


## Contents

1. Introduction to Logic
  1.1 Propositional Logic
  1.2 Predicate Logic
    1.2.1 Variables and substitution
    1.2.2 Quantifier rules
    1.2.3 Examples
2. Functional Programming and λ-Calculi
  2.1 Functional Programming
  2.2 The untyped λ-calculus
  2.3 Evaluation
  2.4 Convertibility
  2.5 Expressiveness
  2.6 Typed λ-calculus
  2.7 Strong normalisation
  2.8 Further type constructors: the product
  2.9 Base Types: Natural Numbers
  2.10 General Recursion
  2.11 Evaluation revisited
3. Constructive Mathematics
4. Introduction to Type Theory
  4.1 Propositional Logic: an Informal View
  4.2 Judgements, Proofs and Derivations
  4.3 The Rules for Propositional Calculus
  4.4 The Curry Howard Isomorphism
  4.5 Some examples
    4.5.1 The identity function; A implies itself
    4.5.2 The transitivity of implication; function composition
    4.5.3 Different proofs
    4.5.4 and different derivations
    4.5.5 Conjunction and disjunction
  4.6 Quantifiers
  4.6.1 Some example proofs
  4.7 Base Types
    4.7.1 Booleans
    4.7.2 Finite types
    4.7.3 > and ⊥
  4.8 The natural numbers
  4.9 Well-founded types - trees
  4.10 Equality
    4.10.1 Equality over base types
    4.10.2 Inequalities
    4.10.3 Dependent Types
    4.10.4 Equality over the I-types
  4.11 Convertibility
    4.11.1 Definitions; convertibility and equality
    4.11.2 An example - Adding one
    4.11.3 An example - natural number equality
5. Exploring Type Theory
  5.1 Assumptions
  5.2 Naming and abbreviations
    5.2.1 Naming
    5.2.2 Abbreviations
  5.3 Revising the rules
    5.3.1 Variable binding operators and disjunction
    5.3.2 Generalising ∨
    5.3.3 The Existential Quantifier
  5.4 Derivability
    5.4.1 A is a type is derivable from a:A
    5.4.2 Unique types
  5.5 Computation
    5.5.1 Reduction
    5.5.2 The system T T0∗
    5.5.3 Combinators and the system T T0c
  5.6 T Tc0 : Normalisation and its corollaries
    5.6.1 Polymorphism and Monomorphism
  5.7 Equalities and Identities
    5.7.1 Definitional equality
    5.7.2 Convertibility
    5.7.3 Identity; the I type
    5.7.4 Equality functions
    5.7.5 Characterising equality
  5.8 Different Equalities
    5.8.1 A functional programming perspective
    5.8.2 Extensional Equality
    5.8.3 Defining Extensional Equality in T T0
  5.9 Universes
    5.9.1 Type families
    5.9.2 Quantifying over universes
    5.9.3 Closure axioms
    5.9.4 Extensions
  5.10 Well-founded types
    5.10.1 Lists
    5.10.2 The general case - the W type
    5.10.3 Algebraic types in Miranda
  5.11 Expressibility
  5.12 The Curry Howard Isomorphism?
    5.12.1 Assumptions
    5.12.2 Normal Forms of Proofs
6. Applying Type Theory
  6.1 Recursion
    6.1.1 Numerical functions
    6.1.2 Defining propositions and types by recursion
    6.1.3 Recursion over lists - 1
    6.1.4 Recursion over lists - 2
  6.2 A Case Study - Quicksort
    6.2.1 Defining the function
    6.2.2 Verifying the function
  6.3 Dependent types and quantifiers
    6.3.1 Dependent Types
    6.3.2 The Existential Quantifier
    6.3.3 The Universal Quantifier
    6.3.4 Implementing a logic
    6.3.5 Quantification and Universes - ∀
    6.3.6 Quantification and Universes - ∃
  6.4 A Case Study - Vectors
    6.4.1 Finite Types Revisited
    6.4.2 Vectors
  6.5 Proof Extraction; Top-Down Proof
    6.5.1 Propositional Logic
    6.5.2 Predicate Logic
    6.5.3 Natural Numbers
  6.6 Program Development - Polish National Flag
  6.7 Program Transformation
    6.7.1 map and fold
    6.7.2 The Algorithm
    6.7.3 The Transformation
  6.8 Imperative Programming
  6.9 Examples in the literature
    6.9.1 Martin-Lof
    6.9.2 Goteborg
    6.9.3 Backhouse et al
    6.9.4 Nuprl
    6.9.5 Calculus of Constructions
7. Augmenting Type Theory
  7.1 Background
    7.1.1 What is a specification?
    7.1.2 Computational Irrelevance; Lazy Evaluation
  7.2 The subset type
    7.2.1 The extensional theory
  7.3 Propositions not types
    7.3.1 Squash types
    7.3.2 The subset theory
    7.3.3 Godel Interpretation
  7.4 Are subsets necessary?
  7.5 Quotient or Congruence Types
    7.5.1 Congruence types
  7.6 Case Study - The Real Numbers
  7.7 Strengthened rules; polymorphism
    7.7.1 An Example
    7.7.2 Strong and Hypothetical Rules
    7.7.3 Polymorphic types
    7.7.4 Non-termination
  7.8 Well-founded recursion
  7.9 Well-founded recursion in type theory
    7.9.1 Constructing Recursion Operators
    7.9.2 The Accessible Elements
    7.9.3 Conclusions
  7.10 Inductive types
    7.10.1 Inductive definitions
    7.10.2 Inductive definitions in type theory
  7.11 Co-inductions
    7.11.1 Streams
  7.12 Partial Objects and Types
  7.13 Modelling
8. Foundations
  8.1 Proof Theory
    8.1.1 Intuitionistic Arithmetic
    8.1.2 Realizability
    8.1.3 Existential Elimination
  8.2 Model Theory
    8.2.1 Term Models
    8.2.2 Type-free interpretations
    8.2.3 An Inductive Definition
  8.3 A General Framework for Logics
  8.4 The Inversion Principle
9. Conclusions and Related Work
  9.1 The Nurpl System
  9.2 TK: A theory of types and kinds
  9.3 PX: A Computational Logic
  9.4 AUTOMATH
  9.5 Type Theories



## Outline

Each chapter begins with a more detailed introduction, so we shall be brief here. We follow this with a guide on how the book might be approached.

Chapters 1-3 survey the three fields upon which TYPE THEORY depends: 
*logic*, *λc and FP* and *constructive mathematics*. Chapter 2 discusses some issues in the λ-calculus and FP which suggest analogous questions in type theory.

Chapter 4 forms the focus of the book. We give the formal system for type theory, developing examples of both programs and proofs as we go along.

The system of type theory is complex, and in chapter which follows we explore a number of different aspects of the theory. We prove certain results about it (rather than using it) including the important facts that programs are terminating and that evaluation is deterministic. Other topics examined include the variety of equality relations in the system, the addition of types (or universes) of types and some more technical points.

Chapter 6 covers a variety of examples and larger case studies. From the functional programming point of view, we choose to stress the differences between the system and more traditional languages. After a lengthy discussion of *recursion*, we look at the impact of the *quantified types*, especially in the light of the *universes* added above. We also take the opportunity to demonstrate *how programs can be extracted from constructive proofs*, and one way that imperative programs can be seen as arising.

As an aside it is worth saying that for any formal system, we can really only understand its precise details after attempting to implement it. The combination of symbolic and natural language used by mathematicians is surprisingly suggestive, yet ambiguous, and it is only the discipline of having to implement a system which makes us look at some aspects of it. In the case of TT, it was only through writing an implementation in the FPL `Miranda` that the author came to understand the distinctive role of *assumptions* in TT, for instance. The system is expressive, as witnessed by the previous chapter, but are programs given in their most natural or efficient form? 

Chapter 7 looks at proposals of *how to augment the system*. Crucial to them is the incorporation of a *class of subset types*, in which the witnessing information contained in a type like `(∃x:A).B(x)` is suppressed. As well as describing the subset type, we lay out the arguments for its addition to type theory, and conclude that it is not as necessary as has been thought. Other proposals include *quotient (or equivalence class) types*, and ways in which *general recursion* can be added to the system without its losing its properties like *termination*. A particularly elegant proposal for the addition of *co-inductive types*, such as infinite streams, without losing these properties, is examined.

Chapter 8 examines the foundations of the system: how it compares with other systems for constructive mathematics, how models of it are formed and used and how certain of the rules, the closure rules, may be seen as being generated from the introduction rules, which state what are the canonical members of each type. We end the book with a survey of related systems, implemented or not, and some concluding remarks.

Bibliographic information is collected at the end of the book, together with a table of the rules of the various systems.


## Using the book

In the hope of making this a self-contained introduction, we have included chapters 1 and 2, which discuss natural deduction logic and the λ-calculus - these chapters survey the fields and provide an introduction to the notation and terminology we shall use later.
The core of the text is chapter 4, which is the introduction to type theory.
Readers who are familiar with natural deduction logic and the λ-calculus could begin with the brief introduction to constructive mathematics provided by chapter 3, and then turn to chapter 4.
This is the core of the book, where we lay out type theory as both a logic and an functional programming system, giving small examples as we go. 
The chapters which follow are more or less loosely coupled. Someone keen to see applications of type theory can turn to chapter 6, which contains examples and larger case studies; only occasionally will readers need to need to refer back to topics in chapter 5.
Another option on concluding chapter 4 is to move straight on to chapter 5, where the system is examined from various mathematical perspectives, and an number of important results on the consistency, expressibility and determinacy are proved. Chapter 8 should be seen as a continuation of this, as it explores topics of a foundational nature.
Chapter 7 is perhaps best read after the examples of chapter 6, and digesting the deliberations of chapter 5.
In each chapter exercises are included. These range from the routine to the challenging. Not many programming projects are included as it is expected that readers will to be able to think of suitable projects for themselves - the world is full of potential applications, after all.
