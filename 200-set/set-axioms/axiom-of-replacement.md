# Axiom of replacement

**Axiom schema of replacement**

> The axiom schema of replacement asserts that the image of a set under any definable function will also fall inside a set.


Formally, let ϕ be any formula in the language of ZFC whose free variables are among `x,y,A,w₁, …,wₙ`, so that in particular B is not free in ϕ. Then:

∀A ∀(w₁ … wₙ) ∀x((x ∈ A -> ∃!y.ϕ) -> ∃B ∀x(x ∈ A -> ∃y(y ∈ B ∧ ϕ)))



In other words, if the relation ϕ represents a definable function f, A represents its domain, and f(x) is a set for every x\in A, then the range of f is a subset of some set B. The form stated here, in which B may be larger than strictly necessary, is sometimes called the axiom schema of collection.
