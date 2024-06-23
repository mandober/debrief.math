# Identity elimination in HoTT

* Understanding Identity Elimination in HoTT - Dan Licata, 10 Apr 2011
https://homotopytypetheory.org/2011/04/10/just-kidding-understanding-identity-elimination-in-homotopy-type-theory/


>**Uniqueness of Identity Proofs** (UIP): any two proofs of the same propositional equality are themselves propositionally equal.

Several proof assistants, such as Agda and Epigram, support UIP.

Homotopy type theory generalizes this picture to account for higher-dimensional types, where UIP does not hold-e.g. a universe (type of types), where equality is taken to be isomorphism, and there can be many different isomorphisms between two types. On the other hand, Coq does not provide uniqueness of identity proofs (but nor does it allow you to define higher-dimensional types that contract it, except by adding axioms).
