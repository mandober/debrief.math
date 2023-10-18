# Logic :: About :: Traditions of logic

## Classical reasoning

Propositions have a truth value - we can argue if they are true or not. They can be assigned a *truth value*, which in classical logic means that a propositions can either be true or false, not both and not neither.

Classical logic is a bivalent (two-valued) logic, but there are logics that have more than two truth values. For example, *multi-valued logic* has more than two, and *fuzzy logic* has an interval of truth values that ranges from 0 (absolutely false) to 1 (absolutely true).

Besides the law of bivalence, classical logic also admits the *law of excluded middle* (LEM), which is a strict binary or bipolar view of the world: things have two polarities: something either exists or it does not exists; a property is either present or absent; a statement is either true or it is false. In brief, LEM insists that there are only two extremes or options, and that no other (middle) option exists.



*Classical logic* admits the principle of bivalence and LEM, and together they imply something very important: **a proposition has exactly one of the two truth value - it is either true or false, not both and not neither**. Due to bivalence, there are two truth values, but due to LEM, any proposition must have a truth value, immediately! This is a much stronger requirement. It implies that the truth value of any proposition is always known - we may or may not discover it eventually, but it already exists. If no one else, God knows what it is.

Although this may seem reasonable because it frequently is so, this binary and deterministic view doesn't always hold. There are statements which cannot be shown to be true or false. An ancient example is the so-called *Liar's paradox*: a man that declares "I am a liar", makes a statement about himself that cannot be true nor false. Assuming the statement is true makes this person a liar, which in turn means the statement is false. Assuming the statement is false implies this person is not a liar, so he told the truth when he said he is a liar. Self-reference is a familiar situation that lets paradoxes creep in. It is the same case with the *Russell's paradox* and many similar ones, all which are related to the *Gödel's incompleteness theorem* (discussed later).

Failing to generalize is a big red flag and mathematical rigor shouldn't let such a theory or system slide through. In order to survive, the system (as a theory or as a logic system) must discard the responsible principle, if at all possible while remaining healthy ("healthy" is sneaked in to elide mentioning soundness, completeness and consistency just yet).

Despite this colossal problem, classical logic, or better said *classical reasoning*, is assumed by "default" and remains not only relevant but prevalent throughout mathematics (possibly thanks to its long tradition). 

*Classical reasoning* is used in the proof of a huge number of mathematical theorems that would otherwise remain unproved, at least not intuitionistically. 


## Intuitionistic logic

**Intuitionistic logic** not only lacks LEM but, being based on constructivist vierw of mathematics - which presses "show me the witness" approach to math in which a proof to a theorem must come accompanied by evidence, a witnessing element. For example, as part of the proof, a theorem in number theory would have to preoduce the number that satisfies what is claimed - that is, **it is not sufficient to merely claim that such a number exists** (you gotta show me the money).

Intuitionistic logic (IL) is a more sensible choice of logic, in general but especially in mathematics, because not admitting LEM is a more basic choice. That is, IL does not admit LEM by default, or better said, it doesn't recognize it, as it sahouldn't. LEM is not a primitive concept since it already imposes certain choice in allowing you to choose only between two possibilities. Particularly when the truth of statements is concerned, it is far more reasonable to assume that a statement might have a truth value without imposing immediacy and determinism to it - like classical reasoning does and puts itself in trouble by blindly accepting no other possibility. IL is not hard pressing us to make binary choices, although it is still a bivalent logic. But the most important thing about IL is its requirement regarding proofs. That means that having a proof also means having a proof procedure - and that has computational content - it can be used to compute things (and the witness).
