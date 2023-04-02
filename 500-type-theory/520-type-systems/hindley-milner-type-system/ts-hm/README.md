---
section-parent: Type theory
section-name: hindley-milner-type-system
---
# Hindley-Milner type-system

- 1. [Introduction](./01-introduction.md)
- 2. [Mono vs polymorphism](./02-mono-vs-polymorphism.md)
- 3. [Let polymorphism](./03-let-polymorphism.md)
- 4. [The definition of the Hindley-Milner type system](04-hm-type-system-definition.md)


## Contents

1. Introduction
2. Monomorphism vs. polymorphism
3. Let-polymorphism
4. The Hindley-Milner type system

  3.1 Syntax
    3.1.1 Monotypes
    3.1.2 Polytypes
    3.1.3 Context and typing
    3.1.4 Free type variables
  3.2 Type order
    3.2.1 Principal type
    3.2.2 Substitution in typings
  3.3 Deductive system
    3.3.1 Typing rules
  3.4 Let-polymorphism
  3.5 Generalization rule
4. An inference algorithm
  4.1 Degrees of freedom choosing the rules
  4.2 Syntax-directed rule system
  4.3 Degrees of freedom instantiating the rules
  4.4 Algorithm J
5. Proving the algorithm
  5.1 Algorithm W
  5.2 Proof obligations
6. Extensions
  6.1 Recursive definitions
    6.1.1 Typing rule
    6.1.2 Consequences
  6.2 Overloading
  6.3 Higher-order types
  6.4 Subtyping
7. References


## Refs

https://en.wikipedia.org/wiki/Hindley-Milner_type_system
https://en.wikipedia.org/wiki/Type_inference

https://stackoverflow.com/questions/12532552/what-part-of-hindley-milner-do-you-not-understand
