# Judgement

https://en.wikipedia.org/wiki/Judgment_(mathematical_logic)


In mathematical logic, a *judgement* (or judgment) or *assertion* is a *statement* or *enunciation* in a *metalanguage*.

For example, typical judgments in first-order logic would be that a "string is a well-formed formula", or that a "proposition is true".

Similarly, a judgment may assert the occurrence of a free variable in an expression of the object language, or the provability of a proposition.

>In general, a judgment may be any inductively definable assertion in the metatheory.

Judgments are used in formalizing deduction systems: a logical axiom expresses a judgment, premises of a rule of inference are formed as a sequence of judgments, and their conclusion is a judgment as well (thus, hypotheses and conclusions of proofs are judgments).

A characteristic feature of the variants of Hilbert-style deduction systems is that the context is not changed in any of their rules of inference, while both natural deduction and sequent calculus contain some context-changing rules.

Thus, if we are interested only in the derivability of tautologies, not *hypothetical judgments*, then we can formalize the Hilbert-style deduction system in such a way that its rules of inference contain only judgments of a rather simple form.

The same cannot be done with the other two deductions systems: as context is changed in some of their rules of inferences, they cannot be formalized so that hypothetical judgments are avoidable - not even if we want to use them just for proving derivability of tautologies.

This basic diversity among the various calculi allows such difference that the same basic "thought" (e.g. deduction theorem) must be proven as a metatheorem in Hilbert-style deduction system, while it can be declared explicitly as a rule of inference in natural deduction.

In type theory, some analogous notions are used as in mathematical logic (giving rise to connections between the two fields via the Curry-Howard correspondence). The abstraction in the notion of judgment in mathematical logic can be exploited also in the foundation of type theory as well.
