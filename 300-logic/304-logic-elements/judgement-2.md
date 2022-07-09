# Judgement


https://en.wikipedia.org/wiki/Judgement

A **judgement** or **assertion** is a statement or enunciation (enunciation is the act of formally expressing and explaining a principle) in the metalanguage.

Judgments arose in mathematical logic, but they are also extensively used in type theory. In type theory, some analogous notions are used as in mathematical logic, giving rise to connections between the two fields, primarily through the *Curry-Howard correspondence*. The abstraction in the notion of judgment in mathematical logic can be exploited also in foundation of type theory as well.

For example, typical judgments in first-order logic would be that a string is a well-formed formula, or that a proposition is true. Similarly, a judgment may assert the occurrence of a free variable in an expression of the object language, or the provability of a proposition.

In general, a judgment may be any inductively definable assertion in the metatheory.

Judgments are used in formalizing deduction systems. Similarly to formulas, they come in many forms: from atomic judgements, all the way to compound the judgements.

Some forms of judgements:
- logical axiom expresses a judgment
- premises of a rule of inference are formed as a sequence of judgments
- their conclusion is a judgment as well
- thus, hypotheses and conclusions of proofs are judgments

Logical axiom, `a -> b -> a`, is a judgement. It may be also expressed in the sequent format, `|- a -> b -> a`.


## Representation of judgements

Judgements are assertions found in a logic system, and their intended semantics is asserting that something (a logical proposition) is true or that it holds.

An example of the most elementary judgement can be `|- a`, which asserts that the proposition `a` is true. Sometimes, this can also be annotated explicitly as `|- a is true`, but usually the "is true" part is implicit.

The symbol `|-` is called a "turnstile", but in the context of judgements it may be read as *"entails"* or *"proves"*. For instance, `a |- b`, may be read "a entails b" or "a proves b".

The logic sentence (formula) containing the "entails" symbol can be referred to as **entailment**, and although it shares a lot of similarities with logical implication, it is often more general; in a way, it is a generalization of an implication.

`a |- b` ~ `a -> b`

A sequent is also a judgement
