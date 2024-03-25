# History of logic

from: `Logic - The Structure of Reason`
https://www.youtube.com/watch?v=yJxiWmmJ3dc


As a tool for characterizing rational thought, logic crosses many philosophical boundaries delving into metaphysics, epistemology, philosophy of mind and
language. It is a tool for working on basic notions like reference, predication, identity, truth, negation, quantification, existence, necessity, definition and entailment.

**Aristotle** was the father og logic. His system of syllogism was the first and very influential attempt at codifying logical reasoning.

The **stoic philosophers** who flourished in Athens beginning about 20 years after Aristotle's death, created a *propositional logic* which studied the truth value of statements. Statements with a truth value, called *propositions*, are either true or false. PL is about determining whether or not the truth or falsehood of a proposition follows from the truth of a set of propositions, and if so, how. It is called the *truth-functional propositional logic*. Unlike Aristotelian logic, the stoic's contribution to logic went virtually unnoticed for centuries.

The inexorable advance of science demanded new systems of thought. The English philosopher **Francis Bacon**, formulated a system in `Novum Organum` that challenged the orthodoxy of Aristotle's `Organon`. Bacon wanted to give us a rational way of organizing experience and interrogating nature, so that with this combination of reason and experience we could actually make progress.

Bacon said: "Now my method, though hard to practice, is easy to explain; and it is this. I propose to establish *progressive stages of certainty*. The evidence of the sense, helped and guarded by a certain process of correction, I retain. But the mental operation which follows the active sense, I, for the most part, reject; and instead of it, I open and lay out a new and certain path for the mind to proceed in, starting directly from the simple sensuous perception".

In the XIX century, philosophers began actively applying the structures of mathematics to logic. This mathematical turn marked the beginning of what we would recognize today as modern logic.

Logic really exploded after 1854, when **George Boole**, a great British mathematician, also an important contributor to the theory of differential equations and the creator of the calculus of finite differences, created *algebra of logic* or *algebra of classes*. Boole expanded on the earlier work of the German philosopher **Gottfried Leibniz**, to create the first algebra of logic. Boole discovered that the symbols of logic behaved just like those of algebra, and he used algebraic symbols to express hypothetical propositions.

For example: 
If A and B then C and D, 
but A and B 
then C and D.

Instead of dealing with the terms of the syllogism (A, B, C, D), Boole believed it was more important to consider the truth of the propositions in general; e.g. "if P is true, then Q will be true", where P and Q represent propositions.

This Boole's argument would be taken up and improved by the mathematician **Gottlob Frege**, giving rise to modern (propositional and predicate) logic. Frege was an obscure scholar in his own day; a mathematician who took it upon himself to demonstrate that the laws of arithmetic were ultimately reducible to logic - a position known as logicism. Along the way, Frege made the greatest single contributions to the study of logic in the history of the discipline: he was the first to identify the distinction between the logical axioms and rules which are necessary to make a deduction; he took the first steps towards making logic axiomatic; he created the propositional function; he refined Aristotle's concept of quantification.

**Aristotle** had a very simple view of the kind of statements that would figure in logical reasoning, with the very rudamentary view of quantification. He had 4 basic forms:
- all A's are B's
- no A's are B's
- some A's are B's
- some A's are not B's

Aristotle tried to figure out what are the valid rules of inference. However, the main problem was that the syllogistic logic was very constrained, severly restricting what can be expressed in it (e.g. "Eery boy loves a girl" cannot be expressed). So Frege's great breakthrough was to accommodate such statements in logic in a systematic manner. One of his great innovations was to be explicit about the use of variables.

So the same example "Every boy loves a girl" would be expressed as: for every `x`, if `x` is a boy, then there is a `y`, such that `y` is a girl, and `x` loves `y`, formalized as `∀x(B(x) -> ∃y(G(y) ∧ L(x,y)))`.

This apparatus of variables and quantifies enabled Frege to express a much wider variety of statements and give a much more inclusive account of what logical reasoning is.



There are two types of logic that are fundamental to all other types of logic:
- the *logic of sentences* called *sentential or propositional logic*
- the *logic of objects* called *predicate logic*

Sentential logic is interested only in true or false sentences and does not go inside individual sentences to analyze or discuss their meanings.

Predicate logic stands in contrast to sentential logic, where we treat sentences as units that we don't actually analyze.

Predicate logic is a more powerful tool with additional inference rules that can accommodate variables and express equivalence among propositions. The support for variables and quantifiers. But to indicate a sentence in predicate logic, we break a sentence into a subject-predicate form.


Thanks to Frege, philosophers were able to develop a precise notation for logical analysis according to Aristotelian logic. In any given argument, the truth of its conclusion is implied in the truth of its premises. Therefore, we can turn any argument into a conditional, in the if-then form. If the premises are true, then the conclusion will also be true.

This can be symbolized as follows: `P` represents the premises in conjunction, `Q` the conclusion, and the symbol in between, `→`, represents the relationship between them. Thus, `P → Q`.

For example, the assertion "If I run then I get tired" may be symbolized this way: here the antecedent "if I run" is a sufficient but not necessary condition for the consequent "then I get tired" to take place. It is enough for me to run to get tired, but it's not necessary because I can get tired in many other ways. A *sufficient condition* is one that if true requires that the consequences also be true. However, this does not work the other way around: the consequent may be true even if the antecedent is false, without affecting the truth value of the overal conditional (material implication). For example, if I didn't actually run (i.e. if it is not the case that I have run), but I still got tired.

This kind of analysis, and especially the treatment of material implication, is at the core of contemporary logic.

Frege's monumental work on the foundations of arithmetic profoundly influenced the English philosopher **Bertrand Russell**. His "Principia Mathematica", co-authored with his mentor **Alfred North Whitehead**, acknowledged that it owed a tremendous debt to Frege's pioneering work. In "Principia", Russell took up to the further development of logicism that Frege initiated. Russell formulated his paradox with regards to the Frege's system of logic, finding it inconsistent, which eventually prompted Frege to give up on *logicism* (the reduction of mathematics, particularly of arithmetics, to symbolic logic). Frege joined the club, a trademark of too many logicians, by renting a cell in an asylum. Russell's "Principia" also failed; it was never completely finished, never achieving what it was set out to do. By abandoning Principia and logicism altogether, Russell evaded having to share a cell with Frege (and is thus not a true logician). R&WH wrote in Principia: "Vicious circles arise from supposing that a collection of objects may contain members which can only be defined by means of the collection as a whole."

Polish logician, **Alfred Tarski**, was the founder of *semantic logic*. `Logic, semantics and meta-mathematics` is Tarski's seminal work on the *semantic theory of truth*. Tarski noticed that you can say that a sentence is true without using the word "true" - just repeat the sentence. To say "Snow is white is true" without using the word "true" say, "Snow is white if snow is white", or just "Snow is white". But what then do we need the word "true" for?

Tarski: "People have not been aware that the language about which we speak, need by no means coincide with the language in which we speak. They have carried out the semantics of a language in that language itself, and generally speaking, they have proceeded as though there was only one language in the world".

The German mathematician **David Hilbert** was an avid student of the 'Principia' and in the early 1920's he formulated a proposal for formalizing mathematics in axiomatic form. This proposal came to be known as *Hilbert's program* and it brought logic into the realm of language.

Hilbert's call to axiomatize mathematics required to prove mathematics consistent, so Hilbert actually had to treat mathematics itself as a mathematical object, shifting the tension from the objects of mathematics to the symbols of mathematics. This is called *metamathematics*.

A large part of logic had to deal not with the actual objects themselves (with the things under discussion), but with the actual language used to discuss them. It wasn't always clear as to whether the discussion was about what the language represents or the language itself.

Hilbert's program exerted a defining influence on the Czech mathematician and logician, **Kurt Gödel**, who argued that all logical systems are essentially incomplete.

As mathematics moved farther away from the traditional Euclidean view, mathematicians sought new ways to ferret out possible internal inconsistencies in their work. They wanted to make sure that, if for a proven theorem, they can rule out the possibility that an opposite theorem could be proven to be true as well (consistency), rendering their system meaningless. This required that they be able to guarantee the *completeness* of their systems. Meaning that there would be a way to prove or disprove it. This might prove difficult for a particular theorem, but mathematicians were confident that it was true in principle.

However, Gödel's point was that any such sufficiently complex system embeds the liar paradox, unless it is inconsistent; i.e. unless it is the case that it doesn't have to be the case, that either a theorem is provable or its negation is provable. That's because provability is not the same as truth.

Unlike the Russell's paradox which needs a very strong set theory to manifest itself, Gödel's incomplesteness theory only needs a basic system of arithemtic.

>Gödel proved that in a formal axiomatic system, we simply cannot have both consistency and completeness. Either we cannot prove every theorem in a particular system (no completeness), or we cannot guarantee that the system is free of contradictions (no consistency).

Gödel theory showed the limitations of formal systems. Gödel said: "One cannot claim with certainty of any formal system that all conceptual considerations are representable in it".

Gödel was a frequent visitor to a group of thinkers who gathered in Vienna to discuss philosophy. This group, known as **the Vienna circle**, consisted of Moritz Schlick, **Rudolf Karnap**, Otto Neurath (physicalism), and many others. They were inspired by the rapid advancements in science and logic and initiated a movement called **Logical Positivism**.

>The positivist view was that a statement about the world could be meaningful iff it is either empirically verifiable or it can be shown to be true through logical analysis of its symbols.








As logic evolved in the XX century, one area where it had tremendous impact is in the development of computer science. George Boole had already expressed statements of logic using a binary code of ones and zeros, familiar to any contemporary programmer.

A *Turing machine* is the abstract representation of a computer, named after the British mathematician and logician **Alan Turing**, intended to formalize the workings of a computer and the idea of a mechanical procedure that will eventualy produce a result. Turing Machine represents a set of instructions, nowadays called an *algorithm*, which will possibly produce a result without any kind understanding, invention or creativity on our (human) part. It is an algorithmic, symbol-manipulating, completely mechanical system.

~ ~ ~

One area of logic, that has intrigued philosophers for centuries, is *inductive reasoning*, which dictates how we infer general truths from a series of observed events. How we *go from particular to universal*.

The importance of induction to science, in which hypotheses are supported by an accumulation of evidence, prompted many philosophers to attempt to pinpoint its place if any invalid reasoning.

The Austrian philosopher **Carl Popper** believed that in everyday life we use a method of trial-and-error that might look like induction, but whose logical structure was completely different.

**Peter Straussen** argued that induction wasn't obliged to mimic deduction in order to be valid. There is an inherent uniformity to nature that validates the conclusions of inductive reasoning.

The american philosopher **Nelson Goodman** believed that you couldn't create a formal system of inductive logic because for every hypothesis confirmed by evidence there were an infinite number of alternative hypotheses which are also confirmed by that evidence.

*Bayesian confirmation theory* named for the 18th century english mathematician **Thomas Bayes** supports an inductive logic founded on statistical probability by combining common sense knowledge with observational evidence.

~

As logic's influence in philosophy has grown so have the number of systems that have been developed to address different areas or types of inquiry.

*Extensional logic* was created to make statements about objects relations between objects and about the relations themselves.

*Modal logic* introduces the operators 'necessary' and 'possible' but without taking into account the existence or non-existence of that which is necessary or possible. The american philosopher **C. I. Lewis** initiated the modern analysis of *modality* with the publication of his book "Survey of Symbolic Logic" in 1918.

*Deontic logic* brings the operators 'ought' and 'can' into the logician's lexicon introducing a new kind of language into the philosophical discussion of ethics. Deontic logic parses out issues of duty and attempts to make sense of propositions, such as "it is obligatory", "it is permitted", or "it is forbidden".

*Epistemic logic* as its name implies tackles the epistemological issues inherent in statements like "Tom knows", "Sally assumes" or "I believe".

*Deviant logic* rejects the principle of the excluded middle which had since the time of Aristotle ruled out any possible middle ground between truth and falsehood. Deviant logic encompasses *multi-valued logic*, *universal logic* and *fuzzy logic*.

*Multi-valued logic* accepts more than two truth values, whereas *universal logic* aims at constructing valid systems for every possible world. *Fuzzy logic* allows for an infinite number of truth values and is a useful tool in areas like economics where decisions must be made in an environment of pervasive uncertainty.

The ongoing dialogue between logic and philosophy has a long and sometimes rancorous history. One critical issue is whether logic should place its emphasis on formalism and rigor, or on semantic content.

Perhaps Lewis Carroll captured the nature of logic best when he wrote: "If it was so, it might be. And if it were so, it would be. But as it isn't, it ain't. That's logic".
