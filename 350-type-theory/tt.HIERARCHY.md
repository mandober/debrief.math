# Type Theory: HIERARCHY

* Type theory: general
  - history of type theory
  - the need for types
  - types vs sets
  - type theory vs set theory

* Type theory: basic notions
  - judgement
  - terms
    - constants
      - primitive constants
      - defined constants
    - variables
    - abstraction
    - application
    - values
    - types
    - function space
    - reduction
    - canonical form
  - context
  - inference rules
  - typing rules
    - formation rules
    - introduction rules
    - elimination rules
    - computation rules
  * propositions
    - predicate
      - property, 1-place predicate
      - relation, 2-place predicate
      - Types of predicates
        - Boolean predicate
        - predicate as a function
        - inductive predicate: as inductive data type
  * proofs
    - proof rules
    - proof
    - witness, evidence
    - type erasure
    - irrelevant proofs


* Type theory: concepts
  * Curry-Howard correspondence
    - BHK interpretation
    - propositions-as-types
    - proofs-as-programs
  * Equality
    - definitional equality
      - notational equality
      - judgemental equality
      - computational equality
    - propositional equality
    - observational equality
    - intensional equality
    - extensional equality
    * more equality…
      - heterogeneous equality
      - telescopic equality
      - heteroindexed equality
  * Dependent types
    - Sigma, Σ
    - Pi, Π
  * Induction and recursion
    - induction, coinduction
    - recursion, corecursion
    - data, codata
    - recursion
      - well-defined
      - structural
      - strong
      - iteration
      - recursor
    - induction-induction
    - induction-recursion

* Type theory: properties
  - computability
    - termination checking
    - exhaustion checking
    - positivity checking
    - recursion checks
  - sorts
    - universe types
      - universe a la Tarski
    - type-in-type
    - comulativity
    - universe hierarchy
    - infinite universe hierarchy
    - `Set`, `Setω`, …
    - `Prop`, `Propω`, …
  - UIP
  - Axiom K (Starche's axiom)
  - Axiom J
  - injectivity of type constructors
  - function extensionality



* Type theory: types
  * Type concepts
    - sorts
    - universe
    - levels
    - type erasure
  * ADT
    - empty type
    - unit type
    - sum type
    - product type
    - expo type
    - equality type
  * Generalizations
    - Σ-types
    - Π-types
    - W-types
  * Data types
    - inductive data type
    - param data type
    - indexed data type
    - inductive type family
    - recursive data type
    - corecursive data type
    - inductive-inductive type
    - inductive-recursive type
  * Codata
    - data - finite types
    - codata - infinite types
    - data, induction, recursion
    - codata, coinduction, corecursion


* Type systems
  - type system a la Church
  - type system a la Curry
  - H-M type system
  * Types: flavors
    - univrse type
    - inductive types
    - indexed types
    - W-types
    - abstract types
    - affine types
    - dependent types
    - intersection types
    - linear types
    - refinement types
    - relevance types
  - injectivity of type constructors
  - function extensionality


* Type theory: flavors
  - algebraic type theory
  - computational type theory
  - constructive type theory
  - intuitionistic type theory
  - extensional type theory
  - intensional type theory
  - impredicative type theory
  - predicative type theory
  - ramified type theory
  - stratified type theory

* Type theory: calculi
  - Simple type theory (λ→)
  - Martin-Lof Type Theory (MLTT)
    - synonyms:
      - Intuitionistic Type Theory (ITT)
      - Constructive Type Theory (CTT)
  - Calculus of Constructions (COC)
  - Calculus of Inductive Constructions (CIC)
  - Observational type theory (OTT)
  - Setoid type theory
  - Cubical type theory
  - Homotopy type theory (HoTT)
  - Lao's (UTT)
