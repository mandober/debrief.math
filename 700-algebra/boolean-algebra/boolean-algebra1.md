# Boolean algebra

https://en.wikipedia.org/wiki/Boolean_algebra

* Boolean algebra
  - Overview
  - History
  - Boolean values
    - truth values
    - basic operations
    - secondary operations
  - Laws
    - monotonicity, monotone laws
    - nonmonotone laws
    - completeness
    - duality principle, de Morgan laws
  - Diagrammatic representations
    - Venn diagrams
    - Digital logic gates
  - Boolean algebras
    - Concrete Boolean algebras
    - Subsets as bit vectors
    - The prototypical Boolean algebra
    - Boolean algebras: the definition
    - Representable Boolean algebras
  - Axiomatizing Boolean algebra
    - Propositional logic
    - Deductive systems for propositional logic
    - Sequent calculus
    - Two-valued logic
    - Boolean operations
    - Boolean searches
  - References


## Overview

Boolean algebra (BA) 
is a branch of algebra 
but unlike in elementary algebra, 
where variables range over numbers, 
in BA they range over the truth values.

The primary operations of Boolean algebra
- conjunction, `⋀`
- disjunction, `⋁`
- negation, `¬`

BA is a formalism for describing logical operations, in the same way that elementary algebra describes numerical operations. It was fundamental in the development of digital electronics, and is provided in all modern PLs. It is also used in set theory and statistics.

## History

Boolean algebra was introduced by George Boole in his first book "The Mathematical Analysis of Logic" from 1847, and set forth more fully in his "An Investigation of the Laws of Thought" from 1854.

According to Huntington, the term "Boolean algebra" was first suggested by Sheffer in 1913, although Charles Sanders Peirce gave the title "A Boolean Algebra with One Constant" to the first chapter of his "The Simplest Mathematics" in 1880.

A precursor of Boolean algebra was Gottfried Wilhelm Leibniz's *algebra of concepts*. Leibniz's algebra of concepts is deductively equivalent to the Boolean algebra of sets.


Boole's algebra predated the modern developments in abstract algebra and mathematical logic; it is however seen as connected to the origins of both fields.

In an abstract setting, Boolean algebra was perfected in the late 19th century by Jevons, Schröder, Huntington and others, until it reached the modern conception of an abstract mathematical structure.

For example, the empirical observation that one can manipulate expressions in the algebra of sets, by translating them into expressions in Boole's algebra, is explained in modern terms by saying that the algebra of sets is a Boolean algebra. In fact, M. H. Stone proved in 1936 that every Boolean algebra is isomorphic to a field of sets.

In the 1930s, while studying switching circuits, Claude Shannon observed that one could also apply the rules of Boole's algebra in this setting, and he introduced *switching algebra* as a way to analyze and design circuits by algebraic means in terms of logic gates. Shannon already had at his disposal the abstract mathematical apparatus, thus he cast his switching algebra as the *two-element Boolean algebra*. In modern circuit engineering settings, there is a little need to consider other Boolean algebras, thus "switching algebra" and "Boolean algebra" are often used interchangeably.

Efficient implementation of Boolean functions is a fundamental problem in the design of combinational logic circuits. Modern electronic design automation tools for VLSI circuits often rely on an efficient representation of Boolean functions known as (reduced ordered) *binary decision diagrams* (BDD) for logic synthesis and formal verification.

Logic sentences that can be expressed in classical propositional calculus have an equivalent expression in Boolean algebra. Boolean logic is sometimes used to denote propositional calculus performed in this way.

Boolean algebra is not sufficient to capture logic formulas using quantifiers, like those from first order logic.

Although the development of mathematical logic did not follow Boole's program, the connection between his algebra and logic was later put on firm ground in the setting of algebraic logic, which also studies the algebraic systems of many other logics.

The problem of determining whether the variables of a given Boolean (propositional) formula can be assigned in such a way as to make the formula evaluate to true is called the *Boolean satisfiability problem (SAT)*, and is of great importance to theoretical computer science, being the first problem shown to be NP-complete. The closely related model of computation known as a *Boolean circuit* relates time complexity (of an algorithm) to circuit complexity.

## Values
