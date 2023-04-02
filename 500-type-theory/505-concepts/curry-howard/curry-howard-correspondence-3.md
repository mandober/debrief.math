# Curry-Howard correspondence

*Adapting proofs-as-programs - the Curry-Howard Protocol*

The *proofs-as-programs* paradigm constitutes a set of approaches to developing programs from proofs in constructive logic.

The idea was conceived over 30 years ago and at that time it was believed that proofs-as-programs had the potential for practical application as semi-automated software development tool.

*The Curry-Howard isomorphism* (CHI) says that intuitionistic logic can be presented as a constructive type theory in which proofs correspond to terms, formulae to types, logical rules to type inference and proof normalization to term simplification.

In order to represent intuitionistic proofs, terms of the constructive type theory contain constructive information used to prove formulae. This information can be used to synthesize correct, error-free programs from proofs. Such approaches to program synthesis, based upon the CHI, constitute the area referred to as the proofs-as-programs paradigm.

The advantage of proofs-as-programs techniques is that the task of programming a function is reduced to reasoning with domain knowledge.

Approaches to proofs-as-programs usually involve some form of optimization and extraction strategy, transforming intuitionistic proofs to a FPL that can encode simply typed lambda calculus (Haskell, SML, Scheme).


---

Proofs are represented in a logical type theory: a constructive type theory whose type inference rules reflect the rules of the constructive logic according to the the Curry-Howard isomorphism. Programs are authored in a different language, commonly in a FPL with the simply typed lambda terms, along with disjoint unions and product types. The two languages are related via a common signature so program values can be represented as terms of the logic and vice versa.


Correspondences between the natural deduction system and the λ-calculus:
- hypotheses               (logic), free variables (PL)
- implication elimination  (logic), application    (PL)
- implication introduction (logic), abstraction    (PL)
