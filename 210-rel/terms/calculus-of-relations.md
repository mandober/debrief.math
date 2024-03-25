# Calculus of relations

https://en.wikipedia.org/wiki/Calculus_of_relations
https://en.wikipedia.org/wiki/Algebraic_logic#Calculus_of_relations

*Algebraic logic* is the reasoning obtained by manipulating equations with free variables.

What is now usually called *classical algebraic logic* focuses on the identification and algebraic description of models appropriate for the study of various logics (in the form of classes of algebras that constitute the algebraic semantics for these deductive systems) and connected problems like representation and duality. Well known results like the *representation theorem for Boolean algebras* and *Stone duality* fall under the umbrella of classical algebraic logic (Czelakowski 2003).

Works in the more recent *abstract algebraic logic (AAL)* focus on the process of `algebraization` itself, like classifying various forms of `algebraizability` using the *Leibniz operator* (Czelakowski 2003).

## Calculus of relations

Any homogeneous binary relation is an element of `𝒫(X²)`, for some set `X`, while any heterogeneous relation is an element of `𝒫(X×Y)`, where two sets are distinct.

Whether a given relation holds for two individuals is exactly one bit of information (either 1 or 0), so relations may be studied using Boolean arithmetic.

Elements of a powerset are *partially ordered by inclusion*, and a lattice of these sets becomes an algebra through *relative multiplication* or *relational composition*.

The basic operations are set-theoretic operations of
- union
- intersection
- complementation
- relative multiplication
- conversion

Conversion refers to *converse relation* that always exists, as opposed to function theory where only bijections have an inverse function.

>A relation may be represented by a logical matrix; then the converse relation is represented by matrix transposition.

>A relation obtained by composition of two relations may be represented by a logical matrix resulting from matrix multiplication using Boolean arithmetic.

### Example

An example of calculus of relations arises in the *theory of questions* (erotetics). In the universe of utterances there are statements `S` and questions `Q`. There are two relations `π` and `α` from `Q` to `S`: `q α a` holds when `a` is a direct answer to question `q`. The other relation, `q π p` holds when `p` is a presupposition of question `q`. The converse relation `πᵀ` runs from `S` to `Q` so that the composition `πᵀ;α` is a homogeneous relation on `S`. The art of putting the right question to elicit a sufficient answer is recognized in Socratic method dialogue.

## Functions

The description of the key binary relation properties has been formulated with the calculus of relations.

The *univalence property* of functions describes a relation `R` that satisfies the formula `RᵀR ⊆ I` where `I` is the identity relation on the range of `R`.

The *injective property* corresponds to univalence of `Rᵀ`, or the formula `RRᵀ ⊆ I` where `I` is the identity on the domain of `R`.

But a univalent relation is only a partial function, while a univalent total relation is a function. The formula for totality is `I ⊆ RᵀR`. Charles Loewner and Gunther Schmidt use the term mapping for a total, univalent relation.

The facility of complementary relations inspired Augustus De Morgan and Ernst Schröder to introduce equivalences using `R'` for the complement of relation `R`.

These equivalences provide alternative formulas for univalent relations (RI' ⊆ R') and total relations (R' ⊆ RI'). Therefore, mappings satisfy the formula R' = RI'. Schmidt uses this principle as "slipping below negation from the left". For a mapping f, fA' = (fA)'.

## Abstraction

The relation algebra structure, based in set theory, was transcended by Tarski with axioms describing it. Then he asked if every algebra satisfying the axioms could be represented by a set relation. The negative answer opened the frontier of abstract algebraic logic.
