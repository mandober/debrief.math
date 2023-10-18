# Consistency proof

https://en.wikipedia.org/wiki/Consistency_proof

In classical deductive logic, a **consistent theory** is one that does not lead to a logical contradiction.

<!-- #region NOTE about consistency -->

* Tarski 1946 states it this way: "A deductive theory is called *consistent* or *non-contradictory* if no two asserted statements of this theory contradict each other, or in other words, if of any two contradictory sentences … at least one cannot be proved", where Tarski defines *contradictory* as: "With the help of the word 'not' one forms the negation of any sentence; two sentences, of which the first is a negation of the second, are called contradictory sentences". (Tarski 1946)
* Tarski's definition requires a notion of *proof*. In 1931, Gödel defined the notion of proof like this: "The class of provable formulas is defined to be the smallest class of formulas that contains the axioms and is closed under the relation 'immediate consequence', i.e. formula `c` of `a` and `b` is defined as an immediate consequence in terms of modus ponens or substitution". (Gödel 1931)
* Tarski defines *proof* informally as "statements follow one another in a definite order according to certain principles … and accompanied by considerations intended to establish their validity [true conclusion for all true premises - Reichenbach 1947]" (Tarski 1946)
* In 1952, Kleene defines the notion with respect to either an induction or as a finite sequence of formulas such that each formula in the sequence is either an axiom or an "immediate consequence" of the preceding formulas. A proof is said to be a proof of its last formula, and this formula is said to be (formally) provable, or be a (formal) theorem. (Kleene 1952)

<!-- #endregion -->


The lack of contradiction can be defined in either semantic or syntactic terms.

The **semantic definition of consistency** states that a theory is consistent if it has a model, i.e. there exists an interpretation under which all formulas in the theory are true. This is the sense used in traditional Aristotelian logic, although in contemporary mathematical logic *satisfiability* is used instead.

The **syntactic definition of consistency** states that a theory `T` is consistent if there is no formula `φ` such that both `φ` and its negation, `¬φ`, are elements of the set of consequences of `T`, `T ⊬ φ ∧ ¬φ`.


Let A be a set of closed sentences (informally "axioms") and  \langle A\rangle }⟨A⟩ the set of closed sentences provable from  A}A under some (specified, possibly implicitly) formal deductive system. The set of axioms  A}A is consistent when  \varphi ,\lnot \varphi \in \langle A\rangle }φ,¬φ∈⟨A⟩ for no formula  \varphi }φ.

If there exists a deductive system for which these semantic and syntactic definitions are equivalent for any theory formulated in a particular deductive logic, the logic is called complete.[citation needed] The completeness of the sentential calculus was proved by Paul Bernays in 1918[citation needed][3] and Emil Post in 1921,[4] while the completeness of predicate calculus was proved by Kurt Gödel in 1930,[5] and consistency proofs for arithmetics restricted with respect to the induction axiom schema were proved by Ackermann (1924), von Neumann (1927) and Herbrand (1931).[6] Stronger logics, such as second-order logic, are not complete.

A consistency proof is a mathematical proof that a particular theory is consistent.[7] The early development of mathematical proof theory was driven by the desire to provide finitary consistency proofs for all of mathematics as part of Hilbert's program. Hilbert's program was strongly impacted by the incompleteness theorems, which showed that sufficiently strong proof theories cannot prove their own consistency (provided that they are in fact consistent).

Although consistency can be proved by means of model theory, it is often done in a purely syntactical way, without any need to reference some model of the logic. The cut-elimination (or equivalently the normalization of the underlying calculus if there is one) implies the consistency of the calculus: since there is no cut-free proof of falsity, there is no contradiction in general.
