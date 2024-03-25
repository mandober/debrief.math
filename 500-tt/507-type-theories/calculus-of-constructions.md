# Calculus of Constructions

https://en.wikipedia.org/wiki/Calculus_of_constructions

**Calculus of Constructions** (CoC) is a type theory, created by Thierry Coquand, that can serve as a typed programming language and as a constructive foundation for mathematics. It has (with variants) also been the basis for Coq and other proof assistants. CoC is a *higher-order typed λ-calculus* positioned at the top of the *Barendregt's lambda cube*.

CoC variants include
- Calculus of Inductive Constructions (CIC)
- Calculus of (Co)Inductive Constructions
- Predicative Calculus of Inductive Constructions

In CoC, it's possible to define functions from any to any (term, type)
- from types to types, `A -> A`, regular
- from terms to types, `t -> A`, dependant
- from types to terms, `A -> t`
- from terms to terms, `x -> y`

The CoC is **strongly normalizing**, although it is impossible to prove this property within the CoC since it implies consistency, which by Gödel's incompleteness theorem is impossible to prove from within the system itself.

The CoC can be considered an extension of the Curry-Howard isomorphism (CHI). The CHI associates a term in the STLC with each natural-deduction proof in *intuitionistic propositional logic*. The CoC extends this isomorphism to proofs in the full *intuitionistic predicate calculus*, which includes proofs of quantified statements.

---

(from `Introduction to the Calculus of Inductive Constructions` by Christine Paulin-Mohring, 2015)

The CoC which is the purely FP underlying the CIC has been introduced by Coquand and Huet. It can be defined as a pure type system (PTS). A PTS is a typed lambda-calculus with a unique syntactic language describing both terms and types.

Terms include variables, typed abstractions, written `fun x:A ⇒ t` and applications, written `t u`, as in ordinary lambda-calculus.

The type of an abstraction is a dependent product `Πx:A,B` making possible for the type `B` of `t` to depend on the variable `x`. The notation `A -> B` for the type of functions from type `A` to type `B` is just an abbreviation in the special case where `B` does not depend on `x`.

Types are themselves typed objects, the type of a type will be a special constant called a *sort*. There is at least one sort called `Type`. Different PTS depend on the set of sorts we start with (each sort corresponds to a certain universe of objects) and also which products can be done (in which universes).

For instance, with `A` a type, the identity function `fun x:A ⇒ x` is a term of type `A -> A`. With `A` being a type variable, we may build the polymorphic identity `fun A:Type ⇒ fun x:A ⇒ x` of type `Π A:Type, A -> A`.

Calculus of Constructions has an infinite set of sorts. The sort `Prop` captures the type of expressions which denote logical propositions. We follow CHI where a proposition `A` is represented by a type (namely the type of proofs of `A`) and a proof of the logical proposition `A` will correspond to an object `t : A`.

If `A` and `B` are two types corresponding to logical propositions, then the proposition `A ⇒ B` is represented by the type `A → B` of functions transforming proofs of `A` into proofs of `B`.

The proposition `A ∧ B` will be represented by the type `A × B` of pairs build with a proof of A and a proof of B.

Given a type `T`, the type `Πx:T,B` will represent the type of dependent functions which given a term `t:T` computes a term of type `B[t/x]` corresponding to proofs of the logical proposition `∀x : T, B`.

Because types represent logical propositions, the language contains empty types corresponding to unprovable propositions.
