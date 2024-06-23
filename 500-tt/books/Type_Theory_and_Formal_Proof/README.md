# Type Theory and Formal Proof - An Introduction
Rob Nederpelt, Herman Geuvers, 2014

## Contents

- 1. [Untyped lambda calculus](./1-untyped-lambda-calculus.md)
  - 1.1 Input-output behaviour of functions
  - 1.2 The essence of functions
  - 1.3 Lambda-terms
  - 1.4 Free and bound variables
  - 1.5 Alpha conversion
  - 1.6 Substitution
  - 1.7 Lambda-terms modulo α-equivalence
  - 1.8 Beta reduction
  - 1.9 Normal forms and confluence
  - 1.10 Fixed Point Theorem
  - 1.11 Conclusions
  - 1.12 Further reading
  - 1.13 Exercises

- 2. [Simply typed lambda calculus](./2-simply-typed-lambda-calculus.md)
  - 2.1 Adding types
  - 2.2 Simple types
  - 2.3 Church-typing and Curry-typing
  - 2.4 Derivation rules for Church's λ→
  - 2.5 Different formats for a derivation in λ→
  - 2.6 Kinds of problems to be solved in type theory
  - 2.7 Well-typedness in λ→
  - 2.8 Type Checking in λ→
  - 2.9 Term Finding in λ→
  - 2.10 General properties of λ→
  - 2.11 Reduction and substitution in λ→
  - 2.12 Consequences
  - 2.13 Conclusions
  - 2.14 Further reading
  - 2.15 Exercises

- 3. [Second-order typed lambda calculus](./3-second-order-typed-lambda-calculus.md)
  - 3.1 Type-abstraction and type-application
  - 3.2 Π-types
  - 3.3 Second order abstraction and application rules
  - 3.4 The system λ2
  - 3.5 Example of a derivation in λ2
  - 3.6 Properties of λ2
  - 3.7 Conclusions
  - 3.8 Further reading
  - 3.9 Exercises

- 4. [Types dependent on types](./4-types-dependent-on-types.md)
  - 4.1 Type constructors
  - 4.2 Sort-rule and var-rule in λω
  - 4.3 The weakening rule in λω
  - 4.4 The formation rule in λω
  - 4.5 Application and abstraction rules in λω
  - 4.6 Shortened derivations
  - 4.7 The conversion rule
  - 4.8 Properties of λω
  - 4.9 Conclusions
  - 4.10 Further reading
  - 4.11 Exercises

- 5. [Types dependent on terms](./5-types-dependent-on-terms.md)
  - 5.1 The missing extension
  - 5.2 Derivation rules of λP
  - 5.3 An example derivation in λP
  - 5.4 Minimal predicate logic in λP
  - 5.5 Example of a logical derivation in λP
  - 5.6 Conclusions
  - 5.7 Further reading
  - 5.8 Exercises

- 6. [The Calculus of Constructions](6-calculus-of-constructions.md)
  - 6.1 The system λC
  - 6.2 The λ-cube
  - 6.3 Properties of λC
  - 6.4 Conclusions
  - 6.5 Further reading

- 7. [The encoding of logical notions in λC](./7-encoding-of-logical-notions-in-lc.md)
  - 7.1 Absurdity and negation in type theory
  - 7.2 Conjunction and disjunction in type theory
  - 7.3 An example of propositional logic in λC
  - 7.4 Classical logic in λC
  - 7.5 Predicate logic in λC
  - 7.6 An example of predicate logic in λC
  - 7.7 Conclusions
  - 7.8 Further reading

- 8. [Definitions](./8-definitions.md)
  - 8.1 The nature of definitions
  - 8.2 Inductive and recursive definitions
  - 8.3 The format of definitions
  - 8.4 Instantiations of definitions
  - 8.5 A formal format for definitions
  - 8.6 Definitions depending on assumptions
  - 8.7 Giving names to proofs
  - 8.8 A general proof and a specialised version
  - 8.9 Mathematical statements as formal definitions
  - 8.10 Conclusions
  - 8.11 Further reading

- 9. [Extension of λC with definitions](9-extension-of-lc-with-definitions.md)
  - 9.1 Extension of λC to the system λD₀
  - 9.2 Judgements extended with definitions
  - 9.3 The rule for adding a definition
  - 9.4 The rule for instantiating a definition
  - 9.5 Definition unfolding and δ-conversion
  - 9.6 Examples of δ-conversion
  - 9.7 The conversion rule extended with →Δ
  - 9.8 The derivation rules for λD₀
  - 9.9 A closer look at the derivation rules of λD₀
  - 9.10 Conclusions
  - 9.11 Further reading

- 10. [Rules and properties of λD](10-rules-and-properties-of-λD.md)
  - 10.1 Descriptive versus primitive definitions211
  - 10.2 Axioms and axiomatic notions
  - 10.3 Rules for primitive definitions
  - 10.4 Properties of λD
  - 10.5 Normalisation and confluence in λD
  - 10.6 Conclusions
  - 10.7 Further reading

- 11. Flag-style natural deduction in λD
  - 11.1 Formal derivations in λD
  - 11.2 Comparing formal and flag-style λD
  - 11.3 Conventions about flag-style proofs in λD
  - 11.4 Introduction and elimination rules
  - 11.5 Rules for constructive propositional logic
  - 11.6 Examples of logical derivations in λD
  - 11.7 Suppressing unaltered parameter lists
  - 11.8 Rules for classical propositional logic
  - 11.9 Alternative natural deduction rules for ⋀
  - 11.10 Rules for constructive predicate logic
  - 11.11 Rules for classical predicate logic
  - 11.12 Conclusions
  - 11.13 Further reading

- 12. Mathematics in λD - a first attempt
  - 12.1 An example to start with
  - 12.2 Equality
  - 12.3 The congruence property of equality
  - 12.4 Orders
  - 12.5 A proof about orders
  - 12.6 Unique existence
  - 12.7 The descriptor ι
  - 12.8 Conclusions
  - 12.9 Further reading

- 13. Sets and subsets
  - 13.1 Dealing with subsets in λD
  - 13.2 Basic set-theoretic notions
  - 13.3 Special subsets
  - 13.4 Relations
  - 13.5 Maps
  - 13.6 Representation of mathematical notions
  - 13.7 Conclusions
  - 13.8 Further reading

- 14. Numbers and arithmetic in λD
  - 14.1 The Peano axioms for natural numbers
  - 14.2 Introducing integers the axiomatic way
  - 14.3 Basic properties of the 'new' ℕ
  - 14.4 Integer addition
  - 14.5 An example of a basic computation in λD
  - 14.6 Arithmetical laws for addition
  - 14.7 Closure under addition for natural and negative numbers
  - 14.8 Integer subtraction
  - 14.9 The opposite of an integer
  - 14.10 Inequality relations on ℤ
  - 14.11 Multiplication of integers
  - 14.12 Divisibility
  - 14.13 Irrelevance of proof
  - 14.14 Conclusions
  - 14.15 Further reading

- 15. An elaborated example
  - 15.1 Formalising a proof of Bezout's Lemma349
  - 15.2 Preparatory work
  - 15.3 Part I of the proof of Bezout's Lemma
  - 15.4 Part II of the proof
  - 15.5 Part III of the proof
  - 15.6 The holes in the proof of Bezout's Lemma
  - 15.7 The Minimum Theorem for ℤ
  - 15.8 The Division Theorem
  - 15.9 Conclusions
  - 15.10 Further reading

- 16. Further perspectives
  - 16.1 Useful applications of λD
  - 16.2 Proof assistants based on type theory
  - 16.3 Future of the field
  - 16.4 Conclusions
  - 16.5 Further reading

- 17. Appendices
  - Appendix A: Logic in λD
    - A.1 Constructive propositional logic
    - A.2 Classical propositional logic
    - A.3 Constructive predicate logic
    - A.4 Classical predicate logic
  - Appendix B: Arithmetical axioms, definitions and lemmas
  - Appendix C: Two complete example proofs in λD
    - C.1 Closure under addition in ℕ
    - C.2 The Minimum Theorem
  - Appendix D: Derivation rules for λD
