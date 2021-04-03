# Calculus of Constructions

https://en.wikipedia.org/wiki/Calculus_of_constructions

**Calculus of Constructions** (CoC) is a type theory, created by Thierry Coquand, that can serve as a typed programming language and as a constructive foundation for mathematics.

The CoC and its variants have been the basis for Coq and other proof assistants.

Some of its variants include
- *Calculus of Inductive Constructions* which adds inductive types
- *Calculus of (Co)Inductive constructions* which adds coinduction
- *Predicative Calculus of Inductive Constructions* removes some impredicativity

The CoC is a higher-order typed lambda calculus positioned at the top of the Barendregt's lambda cube.

In CoC, it is possible to define functions between terms and types
- from types to types: `Int -> Int` (usual)
- from types to terms: `Int -> 5`   (?)
- from terms to terms: `5 -> 5`     (?)
- from terms to types: `5 -> Int`   (dependent?)

term ----------> term
↑                   |
|        CoC        |
|                   ↓
type <---------- type


The CoC is *strongly normalizing*, although it is impossible to prove this property within the CoC since it implies consistency, which by Gödel's incompleteness theorem is impossible to prove from within the system itself.


The CoC can be considered an extension of the Curry-Howard isomorphism.

The Curry-Howard isomorphism associates a term in the simply typed lambda calculus with each natural-deduction proof in intuitionistic propositional logic.

The calculus of constructions extends this isomorphism to proofs in the full intuitionistic predicate calculus, which includes proofs of quantified statements (which we will also call "propositions").
