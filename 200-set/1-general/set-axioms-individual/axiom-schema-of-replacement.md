# Axiom schema of replacement

https://en.wikipedia.org/wiki/Axiom_schema_of_replacement

In set theory, the axiom schema of replacement is a schema of axioms in Zermelo-Fraenkel set theory (ZF) that asserts that the image of any set under any definable mapping is also a set. It is necessary for the construction of certain infinite sets in ZF.

> **The Axiom Schema of Replacement** asserts that the image of any set under any definable function is also a set.

The axiom schema is motivated by the idea that whether a class is a set depends only on the cardinality of the class, not on the rank of its elements. Thus, if one class is "small enough" to be a set, and there is a surjection from that class to a second class, the axiom states that the second class is also a set. However, because ZFC only speaks of sets, not proper classes, the schema is stated only for definable surjections, which are identified with their defining formulas.


Formally, let ϕ be any formula in the language of ZFC whose free variables are among `x,y,A,w₁, …,wₙ`, so that in particular B is not free in ϕ. Then:

`∀A ∀(w₁ … wₙ) ∀x((x ∈ A -> ∃!y.ϕ) -> ∃B ∀x(x ∈ A -> ∃y(y ∈ B ∧ ϕ)))`



In other words, if the relation ϕ represents a definable function f, A represents its domain, and f(x) is a set for every x\in A, then the range of f is a subset of some set B. The form stated here, in which B may be larger than strictly necessary, is sometimes called the axiom schema of collection.
