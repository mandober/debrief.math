# Type Theory

https://en.wikipedia.org/wiki/Type_theory

In mathematics, logic, and computer science, a **type theory** is a formal system in which every term has a type. A type in type theory has a role similar to a type in a programming language: it dictates the operations that can be performed on a term and, for variables, the possible values it might be replaced with.

Some type theories serve as alternatives to set theory as a foundation of mathematics. Two such influential type theories were proposed by Alonzo Church as typed λ-calculus and by Per Martin-Löf as intuitionistic type theory.

Most computerized proof-writing systems use a type theory for their foundation. A common one is Thierry Coquand's Calculus of Inductive Constructions (CIC).

Type theory is closely related to, and in some cases overlaps with, *type systems*, which are a feature of programming languages. Because type theory and type systems can overlap, some experts use the phrase "type system" to refer to a specific formal system and the phrase "type theory" to refer to the academic study of them.

## Contents

- 1. History
- 2. Introduction
  - 2.1. Basics
    - 2.1.1. Terms and types
    - 2.1.2. Computation
  - 2.2. Functions
    - 2.2.1. Lambda terms
    - 2.2.2. Dependent typing
    - 2.2.3. Universes
  - 2.3. Common "by rule" types and terms
    - 2.3.1. Empty type
    - 2.3.2. Unit type
    - 2.3.3. Boolean type
    - 2.3.4. Product type
    - 2.3.5. Sum type
    - 2.3.6. Natural numbers
    - 2.3.7. Identity type
    - 2.3.8. Inductive types
- 3. Differences from set theory
- 4. Technical details
  - 4.1. Terms
  - 4.2. Judgements
  - 4.3. Rules
  - 4.4. Properties of type theories
  - 4.5. Axioms
  - 4.6. Decision problems
    - 4.6.1. Type inhabitation
    - 4.6.2. Type inference
  - 4.7. Research areas
- 5. Interpretations
  - 5.1. Types are propositions; terms are proofs
  - 5.2. Curry-Howard correspondence
  - 5.3. Intuitionistic logic
  - 5.4. Constructive mathematics
  - 5.5. Category theory
- 6. List of type theories
  - 6.1. Major
  - 6.2. Minor
  - 6.3. Active research
- 7. Applications
  - 7.1. Mathematical foundations
  - 7.2. Proof assistants
  - 7.3. Programming languages
  - 7.4. Linguistics
  - 7.5. Social sciences
- 8. See also
- 9. Further reading
- 10. References
- 11. External links
  - 11.1. Introductory material
  - 11.2. Advanced material


## History

https://en.wikipedia.org/wiki/History_of_type_theory

Type theory was created as a result of investigation into resolving paradoxes of naive set theory. Between 1902 and 1908, Bertrand Russell proposed various *theories of type* to fix the problem.

By 1908, Russell arrived at a *ramified theory of types* together with an *axiom of reducibility*, both of which featured prominently in Whitehead and Russell's "Principia Mathematica". This system avoided Russell's paradox by creating a hierarchy of types and then assigning each concrete mathematical entity to a type. Entities of a given type are built exclusively from entities of those types that are lower in the hierarchy, thus preventing an entity from being defined using itself (containing itself).

Types were not the only solution, there were other techniques to avoid Russell's paradox. However, types did gain a hold due to one particular logic, Alonzo Church's lambda calculus. The most famous early example is Church's simply typed lambda calculus. *Church's theory of types* helped the formal system avoid the Kleene-Rosser paradox that afflicted the original untyped lambda calculus. Church demonstrated that it could serve as a foundation of mathematics and it was referred to as a higher-order logic.

The phrase "type theory" now generally refers to a typed system based around lambda calculus. One influential system is *Per Martin-Löf's intuitionistic type theory*, which was proposed as a foundation for constructive mathematics.

*Thierry Coquand's calculus of constructions* is another theory used as the foundation by `Coq`, `Lean`, and other proof assistants.

Type theories are an active area of research, as demonstrated by *homotopy type theory*.
