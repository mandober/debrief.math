# Setoid

https://en.wikipedia.org/wiki/Setoid

In mathematics, a setoid `(X, ~)` is a set (or type) `X` equipped with an equivalence relation `~`.

A setoid is also called E-set, Bishop set, or extensional set.

Setoids are studied especially in proof theory and in type-theoretic foundations of mathematics.

Defining an equivalence relation on a set immediately forms the *quotient set*, thus turning equivalence into equality. In contrast, setoids are used when the difference between equality (identity) and equivalence must be maintained. This is the case when there is an interpretation of *intensional equality* (the equality on the original set) and *extensional equality* (as the equivalence relation, or the equality on the quotient set).

## Type theory

In type-theoretic foundations of mathematics, setoids may be used in a type theory that lacks *quotient types* to model general mathematical sets.

For example, in Per Martin-Löf's intuitionistic type theory, there is no type of real numbers, only a type of *regular Cauchy sequences of rational numbers*.

Therefore to do real analysis in MLTT, we must work with a setoid of real numbers, the type of regular Cauchy sequences equipped with the usual notion of equivalence. Predicates and functions of real numbers need to be defined for regular Cauchy sequences and proven to be compatible with the equivalence relation. Typically (although it depends on the type theory used), the axiom of choice will hold for functions between types (intensional functions), but not for functions between setoids (extensional functions). The term "set" is variously used either as a synonym of "type" or as a synonym of "setoid".

## Constructive mathematics

In constructive mathematics, we often take a setoid with an *apartness relation* instead of an equivalence relation, called a **constructive setoid**. Sometimes we also considers a **partial setoid** using a *partial equivalence relation* (PER) or *partial apartness*.
