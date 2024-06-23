# TT :: Basic notions :: Proof rules

There are numerous proof rules that govern data types, but the proof rules of formation, introduction, elimination, computation are nearly always present.

Proof rules (inference rules) of data types
- formation rule
- introduction rule
- elimination rule
- computation rule
- equaivalence rules
- cohesion rules


**Formation rule** states which types are involved - the types involved in the rules are declared (e.g. `A : Set`). They state *how to form the data type*.

**Introduction rules** describe under which conditions the data type holds; they state *how to define the data type*. An introduction rule introduces a formula for the data type, and the data type appears in the conclusion but not in the hypotheses.

**Elimination rules** describe what we may conclude when the data typoe holds; they state *how to use the data type*. An elimination rule eliminates a formula for the data type, and the data type appears in the hypotheses but not in the conclusion.
