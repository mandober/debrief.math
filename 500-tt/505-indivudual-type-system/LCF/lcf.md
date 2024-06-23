# Logic for Computable Functions

https://en.wikipedia.org/wiki/Logic_for_Computable_Functions

## Logic of Computable Functions

*Logic of Computable Functions* is a deductive system for computable functions proposed by Dana Scott in 1969 in a memorandum unpublished until 1993 which inspired:
- *Logic for Computable Functions (LCF)*, theorem proving logic by Robin Milner.
- Programming Computable Functions (PCF), small theoretical programming language by Gordon Plotkin.


Timeline
- 1969 Logic of Computable Functions (LCF), Dana Scott
- 1973 Logic for Computable Functions (LCF), Robin Milner
- 1977 Logic for Computable Functions (PCF), Gordon Plotkin

Papers
- Dana S. Scott. `A type-theoretical alternative to ISWIM, CUCH, OWHY`. Theoretical Computer Science, __1969__, (published in 1993). Annotated version of the 1969 manuscript: https://www.cs.cmu.edu/~kw/scans/scott93tcs.pdf
- Robin Milner. __1973__. `Models of LCF`. http://i.stanford.edu/TR/CS-TR-73-332.html
- Plotkin, Gordon D. __1977__. `LCF considered as a programming language`. http://homepages.inf.ed.ac.uk/gdp/publications/LCF.pdf

Wikilinks
- https://en.wikipedia.org/wiki/Logic_of_Computable_Functions
- https://en.wikipedia.org/wiki/Logic_for_Computable_Functions
- https://en.wikipedia.org/wiki/Programming_Computable_Functions


## LCF

Logic for Computable Functions (LCF) is an interactive automated theorem prover developed at Stanford and Edinburgh by Robin Milner and collaborators in __1973__, based on the theoretical foundation of logic of computable functions previously proposed by Dana Scott ("Logic of Computable Functions", 1969).

Work on the LCF system introduced the general-purpose programming language ML to allow users to write theorem-proving tactics, supporting algebraic data types, parametric polymorphism, abstract data types, and exceptions.

## Contents

- 1. Basic idea
- 2. Advantages
- 3. Disadvantages
  - 3.1. Trusted computing base
  - 3.2. Efficiency and complexity of proof procedures
- 4. Influences
- 5. Notes
- 6. References

## Basic idea

Theorems in the system are terms of a special "theorem" abstract data type. The general mechanism of abstract data types of ML ensures that theorems are derived using only the inference rules given by the operations of the theorem abstract type. Users can write arbitrarily complex ML programs to compute theorems; the validity of theorems does not depend on the complexity of such programs, but follows from the soundness of the abstract data type implementation and the correctness of the ML compiler.

## Advantages

The LCF approach provides similar trustworthiness to systems that generate explicit proof certificates but without the need to store proof objects in memory. The Theorem data type can be easily implemented to optionally store proof objects, depending on the system's run-time configuration, so it generalizes the basic proof-generation approach. The design decision to use a general-purpose programming language for developing theorems means that, depending on the complexity of programs written, it is possible to use the same language to write step-by-step proofs, decision procedures, or theorem provers.

## Disadvantages

### Trusted computing base

The implementation of the underlying ML compiler adds to the trusted computing base. Work on CakeML[1] resulted in a formally verified ML compiler, alleviating some of these concerns.

### Efficiency and complexity of proof procedures

Theorem proving often benefits from decision procedures and theorem proving algorithms, whose correctness has been extensively analyzed. A straightforward way of implementing these procedures in an LCF approach requires such procedures to always derive outcomes from the axioms, lemmas, and inference rules of the system, as opposed to directly computing the outcome. A potentially more efficient approach is to use reflection to prove that a function operating on formulas always gives correct result.[2]

## Influences

Among subsequent implementations is Cambridge LCF. Later systems simplified the logic to use total instead of partial functions, leading to HOL, HOL Light, and the Isabelle proof assistant that supports various logics. As of 2019, the Isabelle proof assistant still contains an implementation of an LCF logic, Isabelle/LCF.
