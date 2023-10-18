# Normal forms

* Normal forms
  - [Canonical normal form](./canonical-normal-form.md)
  - [Logical forms](./logic-forms.md)
  - [Logical form](./logical-form.md)
  - [Algebraic normal form](./algebraic-normal-form.md)
  - [Conjunctive normal form (CNF)](./cnf.md)
  - [Disjunctive normal form (DNF)](./dnf.md)
  - [Horn clause](./horn-clause.md)
  - [Negation normal form (NNF)](./negation-normal-form.md)
  - [Implicative normal form (INF)](./implicative-normal-form.md)
  - [Prenex normal form](./prenex-normal-form.md)
  - [Universal-existential normal form](./prenex-normal-form.md#universal-existential-normal-form)
  - [Skolem normal form](./skolem-normal-form.md)
  - [Skolemization](./skolemization.md)


* Normal forms
  * in general
    - (normal form aka canonical form aka standard form)

  * In Logic and Boolean algebra
    - Literal: atomic formula or its negation
    - Clauses
      - Clause: disjunction of literals
      - Horn clause: max 1 positive literal
      - Dual-Horn clause: max 1 negative literal
      - definite clause (strict Horn clause): exactly 1 positive literal
        - unit clause: definite clause without negative literals
          - fact clause: unit clause without variables
      - goal clause: Horn clause without positive literals
        - empty clause: goal clause without literals
    * clausal forms
      - Clausal normal form
      - Conjunctive normal form CNF
      - Disjunctive normal form DNF
      - Negation normal form NNF
      - Implicative normal form INF
    * Canonical normal form
      - Canonical Disjunctive normal form (CDNF), dual of CCNF
      - Canonical Conjunctive normal form (CCNF), dual of CDNF
      - Blake Canonical Form (BCF), dual of CSoPI
      - Complete sum of prime implicants (CSoPI), dual of Blake
    * other forms in logic
      - Algebraic normal form (ANF)
        - Ring sum normal form (RSNF or RNF)
        - aka Zhegalkin normal form
        - aka Reed-Muller normal form
        - Positive Polarity (Parity) Reed-Muller (PPRM) expression
      - Normal form in natural deduction
        An inference rule of natural deduction is in normal form if no formula occurrence is both the principal premise of an elimination rule and the conclusion of an introduction rule (according to Dag Prawitz).
      - Prenex normal form
        - Universal-existential normal form
      - Skolem normal form
      - Herbrand normal form


  * in Lambda Calculus
    - redex
    - Beta normal form
    - Head normal form
    - Weak Head normal form

  * In Formal Language Theory
    - Normal form (abstract rewriting) element that can't be further rewritten
    - Chomsky normal form
    - Greibach normal form
    - Kuroda normal form
  * (other)
    - Normal form in game theory
    - Normal form in dynamical systems
    - Normal form in dbs
    - Normal form in music
    - Hesse  normal form
    - Jordan normal form

---

https://en.wikipedia.org/wiki/Canonical_normal_form
In Boolean algebra, any Boolean function can be put into
- canonical disjunctive normal form (CDNF) or minterm canonical form
- canonical conjunctive normal form (CCNF) or maxterm canonical form

Other canonical forms include
- Complete sum of prime implicants (CSPI) dual of Blake
- Blake canonical form BCF (dual of CSPI)
- algebraic normal form (also called Zhegalkin or Reed-Muller)


Minterms are called products because they are the logical AND of a set of variables, and maxterms are called sums because they are the logical OR of a set of variables. These concepts are dual because of their complementary-symmetry relationship as expressed by De Morgan's laws.

Two dual canonical forms of any Boolean function are a "sum of minterms" and a "product of maxterms." The term "Sum of Products" (SoP or SOP) is widely used for the canonical form that is a disjunction (OR) of minterms. Its De Morgan dual is a "Product of Sums" (PoS or POS) for the canonical form that is a conjunction (AND) of maxterms. These forms can be useful for the simplification of these functions, which is of great importance in the optimization of Boolean formulas in general and digital circuits in particular.



https://en.wikipedia.org/wiki/Algebraic_normal_form
In Boolean algebra, the algebraic normal form (ANF), ring sum normal form (RSNF or RNF), Zhegalkin normal form, or Reed-Muller expansion is a way of writing logical formulas in one of three subforms:



https://en.wikipedia.org/wiki/Category:Normal_forms_(logic)
https://en.wikipedia.org/wiki/Conjunctive_normal_form
https://en.wikipedia.org/wiki/Disjunctive_normal_form
https://en.wikipedia.org/wiki/Negation_normal_form
https://en.wikipedia.org/wiki/Horn_clause
https://en.wikipedia.org/wiki/Algebraic_normal_form
https://en.wikipedia.org/wiki/Beta_normal_form
https://en.wikipedia.org/wiki/Head_normal_form
https://en.wikipedia.org/wiki/Blake_canonical_form
https://en.wikipedia.org/wiki/Herbrand_normal_form
https://en.wikipedia.org/wiki/Herbrandization
https://en.wikipedia.org/wiki/Skolem_normal_form
https://en.wikipedia.org/wiki/Prenex_normal_form
https://en.wikipedia.org/wiki/Canonical_form_(Boolean_algebra)
https://en.wikipedia.org/wiki/Zhegalkin_normal_form
https://en.wikipedia.org/wiki/Reed%E2%80%93Muller_expansion
https://en.wikipedia.org/wiki/Boolean_function
https://en.wikipedia.org/wiki/Logical_graph
https://en.wikipedia.org/wiki/Zhegalkin_polynomial
https://en.wikipedia.org/wiki/Negation_normal_form
https://en.wikipedia.org/wiki/Karnaugh_map
https://en.wikipedia.org/wiki/Boolean_ring
