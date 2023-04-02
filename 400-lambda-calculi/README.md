# 400 :: Lambda Calculi

This section, `340-lambda-calculus`, starts with a general introduction of lambda calculus, circumstances, rationale and historical background.

Since the untyped LC is the foundation of all other extensions of LC, it is thoroughly examined, particularly empasizing the factors that contributing the most to the further classification of this system, which include: approaches to avoid name capture substitution, reduction strategies (order of reduction, call by …), extensions of the basic rules (δ-rule, ζ-rule, ϵ-rule, …), lamba lifting and dropping, methodologies for implementing variable binding (naive, HOAS, PHOAS, De Bruijn indices, De Bruijn levels, locally nameless, …).

The other logical part of the section deals with typed λ-calculi, exploring numerous typing features and extensions.



* Prereq
  - math functions
  - anatomy of a function
  - declaration
  - definition
  - calling
  - vars, params, args
    - formal parameter
    - actual param
    - arg

* Lambda Calculus (general)
  - history
  - original Church's formalism
  - Curry's paradox
  - Church's other versions
  - untyped lambda calculus
  - typed lambda calculi

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
