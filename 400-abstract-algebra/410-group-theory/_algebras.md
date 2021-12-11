# Index of algebraic structures

"We may always depend upon it that algebra which cannot be translated into good English and sound common sense is bad algebra." -- William Kingdon Clifford


* Group-like: carrier set + 1 bin op
  - magma:          CLOSURE
  - semi-group:     CLOSURE, ASSOC
  - monoid:         CLOSURE, ASSOC, ID
  - group:          CLOSURE, ASSOC, ID, INVERSE
  - abelian group:  CLOSURE, ASSOC, ID, INVERSE, COMMUTATIVITY

* ring: 2 bin ops
  - 1st bin op CLOSURE, ASSOC, ID, INVERSE
  - 2nd bin op ID, ASSOC, DISTR over 1st
  - A ring is an ABELIAN GROUP with a second bin op that is ASSOC, DISTRIBUTIVE over the abelian group op and has ID element.

A ring is a set R equipped with 2 binary operations + and · satisfying the following axioms (called the ring axioms):
* R is an abelian group under addition
* R is a monoid under multiplication
* Multiplication is distributive with respect to addition


* Field-like:
  - field: carrier set + 2 bin op
    - CLOSURE, ASSOC, 2xID, 2xINVERSE (additive and multiplicative), DISTR
    - may also be defined as having 4 ops: add (sub), mul (div)
    - addition: a + b, subtraction: `a + (-b)` using add. inverse element
    - mult: ab, division: `a ÷ 1/b` using mult. inverse element
    - DISTRIBUTIVITY of mult over addition

* category: ID, ASSOC
