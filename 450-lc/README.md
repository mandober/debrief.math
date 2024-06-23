# 450 Lambda Calculi

This section, `450-lc`, starts with a general introduction to lambda calculus, rationale for inventing it and its historical background.

Lambda calculus as a field of mathematics is (in the least) interlaced with the fields of mathematics logic, type theory and theory of computation (to which it belongs being a formal language), as well as to the theory of programming in computer science (since many programming languages are based on lambda calculus).

Lambda calculi can first be divided into untyped and types, with the former making the foundation of all other variants and extensions.

Factors contributing to the further classification of lambda calculi include:
- type system (polymorphic, type ctors, dependent types)
- order of evaluation
- reduction strategy
- name binding(naive, HOAS, PHOAS, deBruijn indices, deBruijn levels, locally nameless, final tagless, etc.)
- dealing with substitution (direct, environment)
- extensions of basic rules (δ-rule, ζ-rule, ϵ-rule, …)
- lamba lifting
- lamba dropping

## Fundamentals

- mathematical function
  - anatomy of a function
  - function application

- Lambda calculus
  - history
  - original Church's formalism
  - Curry's paradox
  - Church's other versions
  - untyped lambda calculus
  - typed lambda calculi
  - typing à la Church
  - typing à la Curry

* Untyped Lambda Calculus
  - λ-calculus specification
  - λ-calculus syntax
  - λ-calculus conventions
  - λ-calculus semantics
  - λ-calculus implementations

* λ-calculus syntax
  - definition of lambda calculus
  - syntactical entities
  - grammar
  - main elements
    - var
    - abs
    - app
  - basic operations
    - α
    - β
    - η
  - lambda forms
    - lambda expression
    - lambda term
    - variables
      - variable occurences
        - binding occurence
        - free occurence
        - bound occurence
        - application occurence
    - lambda abstraction
      - lambda head
        - lambda binder
          - lambda symbol
          - binding variable
        - lambda body
          - variable application occurences
    - lambda application
      - λ-term as abstraction
      - λ-term as argument
    - name binding strategies




* Typed lambda calculi
  - typed λ-calculi
    - simply-typed lambda calculus
    - typing a la Church
    - typing a la Curry
  - lambda cube
    - organization of typed featurefull calculi
    - axes of orthogonal features
      - x-axis: types that can bind terms; dependent types
      - y-axis: terms that can bind types; polymorphism
      - z-axis: types that can bind types; type operators
    - lambda cube calculi
      - System F
      - System Fω
      - System ΠFω
