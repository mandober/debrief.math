# Programming in Martin-Löf's Type Theory - An Introduction

Programming in Martin-Löf's Type Theory - An Introduction, 1990
Bengt Nordstrom, Kent Petersson, Jan M. Smith


## Contents

1. Introduction
  1.1 Using type theory for programming
  1.2 Constructive mathematics
  1.3 Different formulations of type theory
  1.4 Implementations of programming logics
2. The identification of sets, propositions and specifications
  2.1 Propositions as sets
  2.2 Propositions as tasks and specifications of programs
3. Expressions and definitional equality
  3.1 Application
  3.2 Abstraction
  3.3 Combination
  3.4 Selection
  3.5 Combinations with named components
  3.6 Arities
  3.7 Definitions
  3.8 Definition of what an expression of a certain arity is
  3.9 Definition of equality between two expressions

__I Polymorphic sets__

4. The semantics of the judgement forms
  4.1 Categorical judgements
    4.1.1 What does it mean to be a set?
    4.1.2 What does it mean for two sets to be equal?
    4.1.3 What does it mean to be an element in a set?
    4.1.4 What does it mean for two elements to be equal in a set?
    4.1.5 What does it mean to be a proposition?
    4.1.6 What does it mean for a proposition to be true?
  4.2 Hypothetical judgements with one assumption
    4.2.1 What does it mean to be a set under an assumption?
    4.2.2 What does it mean for two sets to be equal under an assumption?
    4.2.3 What does it mean to be an element in a set under an assumption?
    4.2.4 What does it mean for two elements to be equal in a set under an assumption?
    4.2.5 What does it mean to be a proposition under an assumption?
    4.2.6 What does it mean for a proposition to be true under an assumption?
  4.3 Hypothetical judgements with several assumptions
    4.3.1 What does it mean to be a set under several assumptions?
    4.3.2 What does it mean for two sets to be equal under several assumptions?
    4.3.3 What does it mean to be an element in a set under several assumptions?
    4.3.4 What does it mean for two elements to be equal in a set under several assumptions?
    4.3.5 What does it mean to be a proposition under several assumptions?
    4.3.6 What does it mean for a proposition to be true under several assumptions?

5. General rules
  5.1 Assumptions
  5.2 Propositions as sets
  5.3 Equality rules
  5.4 Set rules
  5.5 Substitution rules

6. Enumeration sets
  6.1 Absurdity and the empty set
  6.2 The one-element set and the true proposition
  6.3 The set Bool

7. Cartesian product of a family of sets
  7.1 The formal rules and their justification
  7.2 An alternative primitive non-canonical form
  7.3 Constants defined in terms of the `Π` set
    7.3.1 The universal quantifier `∀`
    7.3.2 The function set `→`
    7.3.3 Implication `⊃`

8. Equality sets
  8.1 Intensional equality
  8.2 Extensional equality
  8.3 η-equality for elements in a Π set

9. Natural numbers

10. Lists

11. Cartesian product of two sets
  11.1 The formal rules
  11.2 Extensional equality on functions

12. Disjoint union of two sets

13. Disjoint union of a family of sets

14. The set of small sets (The first universe)
  14.1 Formal rules
  14.2 Elimination rule

15. Well-orderings
  15.1 Representing inductively defined sets by well-orderings

16. General trees
  16.1 Formal rules
  16.2 Relation to the well-order set constructor
  16.3 A variant of the tree set constructor
  16.4 Examples of different tree sets
    16.4.1 Even and odd numbers
    16.4.2 An infinite family of sets

__II Subsets__

17. Subsets in the basic set theory

18. The subset theory
  18.1 Judgements without assumptions
    18.1.1 What does it mean to be a set?
    18.1.2 What does it mean for two sets to be equal?
    18.1.3 What does it mean to be an element in a set?
    18.1.4 What does it mean for two elements to be equal in a set?
    18.1.5 What does it mean to be a proposition?
    18.1.6 What does it mean for a proposition to be true?
  18.2 Hypothetical judgements
    18.2.1 What does it mean to be a set under assumptions?
    18.2.2 What does it mean for two sets to be equal under assumptions?
    18.2.3 What does it mean to be an element in a set under assumptions?
    18.2.4 What does it mean for two elements to be equal in a set under assumptions?
    18.2.5 What does it mean to be a proposition under assumptions?
    18.2.6 What does it mean for a proposition to be true under assumptions?
  18.3 General rules in the subset theory
  18.4 The propositional constants in the subset theory
    18.4.1 The logical constants
    18.4.2 The propositional equality
  18.5 Subsets formed by comprehension
  18.6 The individual set formers in the subset theory
    18.6.1 Enumeration sets
    18.6.2 Equality set
    18.6.3 Natural numbers
    18.6.4 Cartesian product of a family of sets
    18.6.5 Disjoint union of two sets
    18.6.6 Disjoint union of a family of sets
    18.6.7 Lists
    18.6.8 Well-orderings
  18.7 Subsets with a universe

__III Monomorphic sets__

19. Types
  19.1 Types and objects
  19.2 The types of sets and elements
  19.3 Families of types
  19.4 General rules
  19.5 Assumptions
  19.6 Function types

20. Defining sets in terms of types
  20.1 `Π` sets
  20.2 `Σ` sets
  20.3 Disjoint union
  20.4 Equality sets
  20.5 Finite sets
  20.6 Natural numbers
  20.7 Lists

__IV Examples__

21. Some small examples
  21.1 Division by 2
  21.2 Even or odd
  21.3 Bool has only the elements true and false
  21.4 Decidable predicates
  21.5 Stronger elimination rules

22. Program derivation
  22.1 The program derivation method
    22.1.1 Basic tactics
    22.1.2 Derived tactics
  22.2 A partitioning problem

23. Specification of abstract data types
  23.1 Parameterized modules
  23.2 A module for sets with a computable equality

APPENDIX
  A Constants and their arities
  A.1 Primitive constants in the set theory
  A.2 Set constants

  B Operational semantics
  B.1 Evaluation rules for noncanonical constants
