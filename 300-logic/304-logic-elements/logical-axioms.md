# Logical axiom

https://en.wikipedia.org/wiki/Logical_axiom

>Axioms are elementary basis for a logic system and together with inference rules define a deductive system.

In mathematical logic, there is a distinction between logical and non-logical axioms (it is somewhat similar to the ancient distinction between "axioms" and "postulates"). In brief, logical axioms pertain to logic, and so they are universal across different theories, while non-logic axioms are theory-specific.

A tautology is a formula in a formal language that is universally valid; that is, it is a formula that is satisfied by any assignment of values. Usually one takes as *logical axioms* at least some minimal set of tautologies that is sufficient for proving all tautologies in the language. However, in the case of predicate logic, more logical axioms than that are required, in order to prove logical truths that are not strictly tautologies.

## Propositional logic

In propositional logic, it is common to take as logical axioms all formulae of the following forms (where `a`, `b` and `c` are metavariables, and the only connectives are negation and implication):
1. `a -> (b -> a)`
2. `(a -> b -> c) -> ((a -> b) -> (a -> c))`
3. `(¬b -> ¬a) -> (a -> b)`

These three patterns are *axiom schema*, i.e. rules for generating an infinite number of axioms. For example, if `p`, `q` and `r` are propositional variables, then `p -> (q -> p)` and `(p -> ¬q) -> (r -> (p -> ¬q))` are both instances of axiom schema 1, and hence are axioms themselves.

It can be shown that with only these 3 axiom schemata, along with modus ponens (MP) as the only rule of inference, one can prove all tautologies of the propositional calculus. It can also be shown that no two of these three schemata (along with modus ponens) is sufficient for proving all tautologies (that is, all 3 axiom schema and the MP are needed).

Other axiom schema involving the same or different sets of primitive connectives can be alternatively constructed.

## First-order logic

The 3 axiom schemas listed above are also used in first-order logic, however, FOL also requires these additional logical axioms to deal with quantifiers:
- Axiom of Equality
- Axiom scheme for Universal Instantiation
- Axiom scheme for Existential Generalization

**Axiom of Equality**: let `𝓛` be a first-order language. For each variable `x`, the formula `x = x` is universally valid. This means, for any variable symbol `x`, the formula `x = x` can be regarded as an axiom. This also assumes either a precise notion of what is meant by `x = x` (or "to be equal"), or a purely syntactical use of the symbol `=`.

**Axiom scheme for Universal Instantiation**: given a formula `φ` in a first-order language `𝓛`, a variable `x`, and a term `t` that is substitutable for `x` in `φ`, the formula `∀x.φ → φ [x/t]` is universally valid (the expression `φ[x/t]` means replacing the term `t` by `x` in `φ`),    
`∀x.P(x) -->> P(c)`

This allows us to state that, if we know a certain property `P` holds for all objects `x`, and that `c` is one of those objects, then we can claim `P(c)`.

**Axiom scheme for Existential Generalization**: given a formula `φ` in a first-order language `𝓛`, a variable `x`, and a term `t` that is substitutable for `x` in `φ`, the formula `φ [x/t] → ∃x.φ` is universally valid.

This allows us to state that, if we know that a certain property `P` holds for a particular object `c`, then there exists some object `x` such that `P(c)`,   
`P(c) -->> ∃x.P(x)`
