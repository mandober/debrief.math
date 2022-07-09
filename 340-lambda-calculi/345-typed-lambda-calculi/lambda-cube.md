# Lambda Cube

https://en.wikipedia.org/wiki/Lambda_cube

The **lambda cube** is a way of organizing typed lambda calculi, introduced by Henk Barendregt, to showcase the most important type-related features.

The lambda cube is presented as a cube with the Simply Typed λ-calculus (λ→) at the origin, so that 3 dimensions represent additions of various typing features to it. In fact, each dimension corresponds to a new kind of *dependency between terms and types* (where the term "dependency" refers to the capacity of a term or type to bind a term or type).

The 3 axes of the λ-cube
- at origin : terms can bind terms (STLC, λ→)
- x-axis (→): types can bind terms (dependent types)
- y-axis (↑): terms can bind types (polymorphism)
- z-axis (↗): types can bind types (type operators)


The 3 axes of the λ-cube
- origin: terms may depend on terms (STLC, λ→)
- x-axis: terms may depend on types (polymorphism)
- y-axis: types may depend on types (type ctors)
- z-axis: types may depend on terms (dependent types)


In this way, the lambda cube represents different dimensions in which the CoC is a generalization of the simply typed λ-calculus (STLC). 


contributing features that are added to the simply typed λ-calculus, on one end of the λ-cube, in order to turn it into the feature-full Calculus of Constructions (CoC), on the other end of the λ-cube.



The different ways to combine these 3 dimensions yield the 8 vertices of the cube, each corresponding to a different kind of typed system. The λ-cube can be generalized into the concept of a pure type system.

Dimensions:
- polymorphism
- type operators
- dependent types


LC   | term | type  |
-----|------|-------|
term |  1   |   2   |
-----|------|-------|
type |  3   |   4   |


## Contents

- Examples of Systems
  - (λ→) Simply typed lambda calculus
  - (λ2) System F
  - (λω) System Fω
  - (λP) Lambda-P
  - (Fω) System Fω
  - (λC) Calculus of constructions
- Formal definition
- Comparison between the systems
  - λ→
  - λ2
  - λP
  - λω
  - λC
- Relation to other systems
- Common properties
- Subtyping
