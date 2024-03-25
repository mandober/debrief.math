# Type Theory :: TERMS

- General terms
  - type theory
  - type
  - context
  - judgement
  - equality
  - type inhabitation

- Classification of type theories
  - ramified type theory
    - stratified type theory

Proofs
- proofs in logic
- proof theory
- proofs in math
- proofs in TT

CHI
- propositions-as-types
- terms as proofs
- programs-as-proofs

Propositions
- Statements
  - Propositions = statements = have truth value (in CBL)
  - Natural language statements
    - declarative sentences
  - Logical statements
    - formulas = translations of declarative sentences into symbolic logic
    - kinds of formulas
      - tautology
      - contradiction
      - contingency
    - propositional logic statements; Sentential Logic (SL)
      - whole NL sentence is a proposition
      - propositional vars: entire NL sentences
      - connectives join sentences
      - truth-functional
      - truth tables for deriving the truth value
    - predicate logic statements; Quantification Logic (QL)
      - FOL is an extension of SL with granular structure, more entities
      - quantification: we can talk about parts of a whole (some, all)
      - variables, constants, functions <- domain of discourse
      - functions produce members of DOD
      - connectives
      - predicates (relations, properties)
      - inference rules for deriving the truth value
      - FOL
        - quantification only on vars
        - vars range only over individuals in DOD
      - HOL
        - quantification also over predicates, functions
  - mathematical propositions
    - expressed (mostly) in FOL
    - theorems - proved propositions
    - lemma - auxillary theorem
    - theory - a collection of theorems on a particular subject
    - implication, contraposition, inverse, converse
  - TT
    - mathematical propositions are expressed in the lang of TT
    - props can be proved or disproved
    - proofs are manipulated as proper math objects
    - propositions (potentially) have proof
    - propositions are repr by types (props are types)
    - terms are elems of types
    - proved prop is an inhabited type
    - its element (term) is a witness/evidence/proof of the prop the type repr
    - prop has a proof vs prop is provable
