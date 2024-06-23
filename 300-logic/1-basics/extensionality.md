# Extensionality

The single, most essential notion central to logic is that of *reasoning*, which is a cognitive processes used to discover new information based on the existing knowledge. Of the numerous ways of reasoning (analogical, associative, case-based, commonsense, counterfactual, cause-and-effect, default reasoning, etc.), which are studied in philosophy, psychology and other sciences, logic is primarily concerned with *logical reasoning*, which is a cognitive processes also used to *derive new information from the existing knowledge*, but in a way that is supported by logic. Logic has identified 3 types of logical reasoning according to the *certainty of their conclusions*: *inductive*, *abductive* and *deductive* reasoning, each with a different level of assurance. The truth of deductive arguments is the absolute, universal, necessary truth - deductive conclusions are true in all possible worlds. The truth of non-deductive conclusions, of induction and abduction, cannot be guaranteed and is only a matter of possibility or probability at best. Deduction deals with *necessity*, with the necessary truth, and is thus favored in logic; most formal systems of logic are deductive systems. Induction deals with *contingency* - with the contigent truth - and is thus underrepresented, along with abduction, which deals with the truth as to the best explanation. *All formal systems of logic are deductive*. Induction is sporadically mentioned only when exploring argumentation as the alternative, "inferior" method of deriving new information (which is curious since only induction allows us to obtain new information; deductive conclusions do not increase our knowledge as we'll see).

https://en.wikipedia.org/wiki/Argument
https://en.wikipedia.org/wiki/Inference
https://iep.utm.edu/argument/

https://www.youtube.com/watch?v=oQ9kuqblgq0&list=PLXKKIUdnOESFgNrlwPjmDv7s1K00vdXM2&index=12

- use and mention
- object vs meta language
- *conditional* (object language) vs *implication* (meta language)
- `p → (q → p)`
- `¬p → (p → q)`
- material conditional (object language), requires *use*, p → q
- material implication (meta language), requires *mention*, 'p' implies 'q'
- extensionality and intensionality
- extension of propositions is truth (Fregean view)
- *de dicto* vs *de re* (concerning the word vs concerning the thing)


## Extensionality in logic

Analog of propositions (sentences) in a logical system are formulas, so in the Fregean view, the extension of a formula, just like the extension of a sentence, is its truth value.

Suppose we have two formulas A and B, with B occuring in A. Suppose we take an arbitrary formula B′ that has the same truth value (the same extension) as B. We replace all the occurrences of B in A with B′, and call the result A′. So a **logic system is extensional** just in case that, after making such substitution, A′ has the same extension as A.

In truth-functional propositional logic, the truth value of the whole propositional sentence depends entirely on the truth value of its parts. In other words, the extension of the whole propositional sentence depends entirely on the extension of its parts.

Being truth-functional is the reason we call the standard logical connectives *truth functions*; and why we are able to make truth tables for them.

*Classical logic* is a paradigm example of an extensional system.

>An **intensional logic system** is any system that is not extensional.

It is easy to demonstrate that extensionality fails in modal logic. In a formula that expresses necessity, we cannot replace one proposition with another even if they have the same extension because that other proposition may not be necessarily true (only contigent or only true in some, but not all, possible worlds), `◻P`: `◻(2 + 2 = 4)` ≠ `◻(ISS is in orbit)`.

>Modal logics are intensional.

In an extensional language, truth value depends only on *what* is denoted, not on *how* it is denoted.

Intentions involve problematic ideas like meaning, synonymy, properties, qualities, etc. "The problem with synonymy" is Quine's argument against modal logic and intensionality in general. Quine prefers extensionality because it provide clarity and respect common sense.
