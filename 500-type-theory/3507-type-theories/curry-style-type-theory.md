# Curry-style type theory

(synonyms)
- Extrinsic type theory
- Curry-style type theory
- Type theory à la Curry

It stands opposed to a *type theory ala Church* (intrinsic type theory), where the terms are explicitly annotated with types, so the compiler performs *type-checking*.

In the approach à la Curry, types are assigned to existing untyped objects, using typing rules that refer to the structure of the objects in question. In these systems, the typability problem (i.e. given an object, does it have a type?) becomes interesting.



`Cedille` is an interactive theorem-prover and dependently typed programming language based on extrinsic type theory. In Cedille, terms are nothing more than annotated versions of terms of pure untyped lambda calculus. In contrast, in Coq or Agda, the typing annotations are intrinsic parts of terms. The typing annotations can only be erased as an optimization under certain conditions, not by virtue of the definition of the type theory.

Cedille's type theory allows one to derive inductive datatypes, together with their induction principles. These derivations are done via *lambda-encodings*, including not just the familiar *Church encoding* (with its well-known limitation to inefficient accessors), but also the more efficient encodings such as the *Parigot encoding* and the *Mendler encoding*. Further, Cedille supports datatype declarations and *pattern-matching recursion* via *elaboration* to some of these encodings.
