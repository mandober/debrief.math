# Deduction theorem

https://en.wikipedia.org/wiki/Deduction_theorem

- [Natural deduction](https://en.wikipedia.org/wiki/Natural_deduction)
- [Rule of inference](https://en.wikipedia.org/wiki/Rule_of_inference)
- [System L](https://en.wikipedia.org/wiki/System_L)
- [Curry-Howard correspondence](https://en.wikipedia.org/wiki/Curry-Howard_correspondence)
- [Conditional proof](https://en.wikipedia.org/wiki/Conditional_proof)

# Deduction Theorem

https://en.wikipedia.org/wiki/Deduction_theorem

> The **deduction theorem** states that a sentence of the form `𝚽 -> 𝚿` is provable from a set of axioms `𝛁` iff the sentence `𝚽` is provable from the system whose axioms consist of `𝚿` and all the axioms of `𝛁`.


- The deduction theorem (DT) is a metatheorem of propositional and FOL
- DT is a formalization of the proof technique in which an implication `p -> q` is proved by assuming `p` and then deriving `q` from this assumption, conjoined with other, previously established, theorems.
- DT explains why proofs of conditional sentences in math are logically correct
- Though it seemed "obvious" for centuries that proving `q` from `p` conjoined with a set of theorems is tantamount to proving the implication `p -> q` based on those theorems alone, it was left to Herbrand and Tarski to show (independently) this was logically correct in the general case.

The deduction theorem states that if a formula `B` is deducible from a set of assumptions `𝛁 ⋃ {A}`, where `A` is a closed formula, then the implication `A -> B` is deducible from `𝛁`.

> `𝛁, {A} |- B` implies `𝛁 |- A -> B`

In case `𝛁` is empty, DT shows that `{A} |- B` implies `|- A -> B`.
