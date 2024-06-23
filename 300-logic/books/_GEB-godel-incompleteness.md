# Gödel's Incompleteness Theorem

(from *Gödel, Escher, and Bach*, "A Musico-Logical Offering" chapter)

In its barest form, Godel's discovery involves the translation of the so-called *liar paradox*, or *Epimenides paradox*, into mathematical terms. Godel's idea was to use mathematical reasoning in exploring mathematical reasoning itself. This notion of making mathematics "introspective" proved to be enormously powerful, and perhaps its richest implication was the one Godel found: **Godel's Incompleteness Theorem**. What the Theorem states and how it is proved are two different things.

Godel's theorem, appearing as *Proposition VI* in his 1931 paper *"On Formally Undecidable Propositions in Principia Mathematica and Related Systems I"*, states:

*To every w-consistent recursive class K of formulae there correspond recursive class-signs r, such that neither v Gen r nor Neg (v Gen r) belongs to Fig (K) (where v is the free variable of r)*.

or, translated in English:

> All consistent axiomatic formulations of number theory include undecidable propositions.

(math is either inconsistent or undecidable)

The proof of Godel's Incompleteness Theorem hinges upon the writing of a self-referential mathematical statement, in the same way as the liar paradox is a self-referential statement of language.

Godel had to connect the idea of self-referential statements with number theory.

~ ~ ~

Mathematical statements pertaining to the *number theory* are about the properties of the whole numbers.

Whole numbers are not statements, nor are their properties. A statement *of* number theory is not *about* a statement of number theory; it's just a statement of number theory.

Godel had the insight that a *statement of* number theory could be *about* a statement of number theory, possibly even about itself, **if only numbers could represent statements**.

The idea of a *code* is at the heart of his construction.

In the *Godel Code*, usually called **Godel-numbering**, numbers are made to stand for symbols and sequences of symbols. That way, each statement of number theory, being a sequence of specialized symbols, acquires a Godel number, something like a telephone number, by which it can be referred to.

And this coding trick enables statements of number theory to be understood on two different levels: *as statements of number theory*, and also as *statements about statements of number theory*.

Once Godel had invented this coding scheme, he had to work out in detail a way of transporting the Epimenides paradox into a number-theoretical formalism.

His final transplant did not say "This statement of number theory is false", but rather, *"This statement of number theory does not have any proof"*. The important thing is that proofs are demonstrations within a fixed system of propositions, and in the case of Godel's work, this fixed system of number-theoretical reasoning, to which the proof pertained to, was *Principia Mathematica* (PM). So the *Godel sentence G* should be more properly stated as:

> This statement of number theory does not have any proof in the system of Principia Mathematica.

Incidentally, this Godel sentence G is not Godel's Theorem - no more than the Epimenides sentence is the observation that "The Epimenides sentence is a paradox". Whereas the Epimenides statement creates a paradox since it is neither true nor false, the Godel sentence G is **unprovable (inside PM) but true**.

The grand conclusion is that the system of PM is **incomplete**, i.e. there are true statements of number theory which methods of proof of PM are too weak to demonstrate.

However, it's not just about PM - Godel's proof is pertaining to any axiomatic system which purported to achieve the same goals as PM. Each different system can be bought down by the similar method.

> In short, Godel showed that provability is a weaker notion than truth, no matter what axiomatic system is involved.

Therefore Godel's Theorem had a profound impact on logicians, mathematicians, and philosophers interested in the foundations of mathematics, for it showed that no fixed system, no matter how complex, could represent the complexity of the natural numbers.

Modem readers may not be taken by this as readers of 1931 were, since the years in between have brought relativity and quantum mechanics and their philosophically disorienting messages. Nowadays, there is a general mood of expectation of "limitative" results, but back in 1931, this was a shock.

(cont. in *GEB-history-of-math-logic.md*)
