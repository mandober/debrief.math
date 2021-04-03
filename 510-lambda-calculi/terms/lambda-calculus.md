# Lambda calculus

https://en.wikipedia.org/wiki/Lambda_calculus
https://en.wikipedia.org/wiki/Lambda_calculus_definition

**Lambda calculus** is a formal system in mathematical logic used as a tool for researching computation that relies on nothing but pure functions. As a minimal FPL, LC is also used for expressing and studying functions.

The λ-calculus and combinatory logic are formal systems of logic that can also serve as abstract FPLs. They both aim to describe very general properties related to functions.

The λ-calculus gives rules for the explicit definition of functions. The untyped version of LC also permits recursion and self-replication. Church's original system from 1932 also had rules for logic, but that system was proved inconsistent by Kleene and Rosser in 1936.


λ-calculus was invented by Alonzo Church in 1936, for expressing computation and exploring the problems related to computable numbers and functions, as well as for his research into the foundations of mathematics.

Lambda calculus is a universal model of computation, equivalent to a Turing machine. One of the aspects of the **Church-Turing thesis** establishes the fact that all three models of computation (these 3 were under consideration at that time, but actually there are planty more), viz. Turing machine, λ-calculus and primitive recursive functions with μ-operator are equivalent.

Lambda calculus is based on the notion of function. On the one hand, *function abstraction* is the form of how to define new functions, while *function application* shows how a function is applied, which further involves the notions of *variable binding* and *variable substitution*.

---

* Lambda calculus, a formulation of the theory of reflexive functions that has deep connections to computational theory.

* Extensional equality describes equality of functions, where as intensional equality describes equality of function implementations.


Lambda calculus is a type of formalism of matematical logic. As any formal language, LC is defined by a formal system consisting of the axioms that desribe what the well-defined formulas are (similarly to the way that a particular propositional calculus is defined).

Briefly, it has a form of *function abstraction* (notation for defining a new function) and it has a syntactic form of *function application* (syntactic form when a function can be applied to arguments). However, despite the fact that LC is often called the first functional language, this is not intended to imply that it comes, like most languages do, with features and predefined functionality out of the box. Rather, LC is just a set of very general rules that describe how the functions can be manipulated (applied) and how the new functions can be defined.

Many details are left to the user's discretion, such as the order of evaluation, introduction and nuances of types and typing rules, and most importantly, the meaning a user ascribes to each function he has defined. The last point being that unlike, e.g. propositional calculus, where the symbol "∧" always stands for conjunction, the meaning of most functions a user may design does not entail some expected meaning; well, more-less, there are some forms that may have strigs attached (a natural consequence in any framework however arbitrary it may be), but nothing is set in stone.
