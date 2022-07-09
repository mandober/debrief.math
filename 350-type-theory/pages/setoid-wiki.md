# Setoid

https://en.wikipedia.org/wiki/Setoid

A setoid, `(X, ~)`, is a set (or a type) `X` equipped with an *equivalence relation* `~`.

A setoid is also called E-set, Bishop set, *extensional set*.

Setoids are especially studied in proof theory, type-theory and in type-theoretic foundations of mathematics.

Often in mathematics, when one defines an equivalence relation on a set, one immediately forms the *quotient set* (turning equivalence into equality).

In contrast, setoids may be used when the difference between identity and equivalence must be maintained, often with an interpretation of *intensional equality* (the equality on the original set), and *extensional equality* (the equivalence relation, or the equality on the quotient set).

## Proof theory

In proof theory, particularly in the proof theory of constructive mathematics based on the Curry–Howard correspondence, one often identifies a mathematical proposition with its set of proofs (if any).

A given proposition may have many proofs, and according to *the principle of proof irrelevance*, normally, only the truth of the proposition matters, not a particular proof.

However, the CHI can turn proofs into algorithms, and the differences between algorithms are important when it comes to their implementation. Therefore, we may prefer to identify a proposition with a *setoid of proofs*, considering two proofs equivalent if they are inter-convertable through beta conversion (or similar methods).

## Type theory

In type-theoretic foundations of mathematics, setoids may be used in a type theory that lacks *quotient types* to model general mathematical sets.

For example, in Per Martin-Löf's intuitionistic type theory, there is no type of real numbers, only a type of regular Cauchy sequences of rational numbers. To do real analysis in Martin-Löf's framework, therefore, one must work with a setoid of real numbers, the type of regular Cauchy sequences equipped with the usual notion of equivalence. Predicates and functions of real numbers need to be defined for regular Cauchy sequences and proven to be compatible with the equivalence relation. Typically (although it depends on the type theory used), the axiom of choice will hold for functions between types (intensional functions), but not for functions between setoids (extensional functions).[clarification needed] The term "set" is variously used either as a synonym of "type" or as a synonym of "setoid".

## Constructive mathematics

In constructive mathematics, one often takes a setoid with an apartness relation instead of an equivalence relation, called a constructive setoid. One sometimes also considers a partial setoid using a partial equivalence relation or partial apartness.
