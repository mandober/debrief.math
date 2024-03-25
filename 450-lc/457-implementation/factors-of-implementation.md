# Factors of implementation

Terms and factors of implementation

- Syntax
  - grammar
    - EBNF style
  - metavariables
  - metalanguage
  - inference rules
    - axioms
    - premise
    - conclusion
    - rule schema
  - object language

- Semantics
  - Operational semantics
    - small-step (structural) semantics
    - big-step (natural) semantics
  - Denotational semantics
  - Axiomatic semantics

- Reduction
  - meaning of terms
  - reduction relation
  - evaluatation relation
  - simplification

- Evaluatation (reduction) strategy
  - direction
    - left to right
    - right to left (same as L2R)
  - scope
  - nesting
    - inner redex
    - outer redex
  - order
    - normal order
    - applicative order
  - evaluating args
    - strict
      - call by value
    - lazy
      - call by name
      - call by need
      - call by sharing
  - reduction under lambda
    - full beta reduction


- Canonical forms
  - β-redex, redex
  - normal form
  - weak head normal form
  - reducts
    - values
    - diverging term
    - (run-time) error
