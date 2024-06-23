# Mathematical climate at the time

## Geometry

In the XIX century, it had been discovered, through the work of Riemann, Lobachevsky and others, that coherent models of *geometry* exist in which *Euclid's parallel postulate* did not hold.

This bore a huge shock to the unsuspecting mathematicians. For the last 2000 years Euclid's description of geometry was considered a prime example in rigorous mathematical thinking, showcasing how to bring about a theory by first establishing a minimal set of axioms (5 axioms) along with a set of universal logical truths, and then proceeds to derive theorems in deductive manner.

Euclid's "Elements" is the second most published book of all time, it was used in universities throught Europe as a textbook. It was worshipped as a mathematical achievement of the finestkind; the most trustworthy piece of knowledge everyone was familiar with. Euclidean geometry was the law.

The existence of *non-Euclidean geometries* not only challenged everyone's intuition about geometry, but had also shaken the deeply enrooted *Platonistic view* that mathematics was about the discovery and study of eternal pure forms, whose existence was objective, independent of the mind.

Even the recent content with the development of calculus was brought into question with the discovery of nowhere differentiable *continuous functions*.

This was the early XX century and Cantor's set theory had been just recently invented. Sets had managed to cause such an outrage that a faction of mathematician was so entirely disguisted, spitting fire and bile at Cantor, declaring him the corruptor of youth. On the other hand, others have embraced set theory, calling it a gift from heaven, hoping never to leave the paradise Cantor has created.

Attempts to re-establish the comfortable certainty of the past, by turning from geometry to set theory as the new foundation of mathematics, also ran aground.

*Set theory*, when pushed too hard, soon yielded such abominations as Russell's "set of all sets which do not include themselves". It proved difficult to construct a theory of sets which outruled such objects without sacrificing one's principles in the process. 

*Logicism*, as espoused by Frege, Dedekind and Russell, gave birth to structures so complicated and unwieldy that the stated intention to formalize the intuitive laws of reasoning was obscured. 

*Constructivism*, which rejected even the law of trichotomy (that every real number is either greater than, equal to, or less than zero) was perceived as fanatical.

To sidestep the embarrassing possibility that multiple, equally defensible versions of mathematical truth might exist, mathematicians soon claimed to have never been searching for truth in the first place.

The *formalists*, led by Hilbert, redefined mathematics as consisting of allegedly meaningless symbols which were not "about" anything in particular.

A mathematician was recast as a practitioner who merely manipulated these empty signs, attempting to derive theorems (sentences consisting of the aforementioned meaning-free symbols) from axioms without concerning himself with the "truth" of his findings.

Hilbert hoped to outmanoeuvre intuition, and, more importantly, to make possible a proof of the *consistency of mathematics*. 

The logicists before him, had already laid the foundation by developing a *formal language* in which mathematical statements could be expressed, along with symbolic transformation rules representing steps which could legally be followed in the progression from the beginning to the end of a valid proof.

The climactic, exhaustive chronicle of this endeavour is Russell and Whitehead's *Principia Mathematica* that famously took the first 362 pages to rigorously prove that 1 + 1 = 2. "Principia" was a work of the school of *logicism* that aimed to reduce mathematics to logic. This eventually failed miserably, with the exhausted Russell and Whitehead deciding to cut their losses and abandon the seemigly futile work. It wasn't all that bad, but it wasn't great either. The book was barely readble, overstuffed with strange symbols which greatly hindered readability. At the time, Russell semi-joked how Gödel was probably the only person who actually read it.

**Constructive logic** has a history well before the advent of electronic computers. Around the turn of the century 1899-1900 there arised doubts about the consistency of the axiomatic and logical foundations for the abstract mathematics that had started to develop with the support of set theory. Bertrand Russell had with his well-known paradox (1903) shown that unrestricted formation of sets from concepts may lead to outright contradictions. Also other principles in use, such as the *Axiom of Choice*, had been discovered to have unintuitive and unnatural consequences, even though no paradoxes where known to arise from them. *Ernst Zermelo* showed 1908 that the set of real numbers may be well-ordered. It was among many mathematicians considered as a serious scientific crisis of the subject, known as the *Grundlagenkrisis*. 

In that mood of time the outstanding Dutch mathematician, and founder of modern topology, *L.E.J. Brouwer* started a critical examination and reconstruction of the foundations for mathematics, which went further than previous attempts, and included the very logic and not only the axioms. By the introduction of his *intuitionistic mathematics* he wanted to put mathematics on a secure and intuitive footing. His idea was that every proof must built on a so-called *mental construction*. At that time (1910) there were of course no programming languages, and not even a mathematical notion of algorithm, but it turned out that his notion of mental construction could be interpreted as algorithmic construction in a precise way. This requirement led Brouwer to reject a logical law that had been taken for granted since Aristotle, namely the Principle of Excluded Middle. This states that for every proposition A, either A is true or A is false, in logical symbols, A ∨ ¬A (LEM). For concrete, finitely checkable, propositions there was no reason to doubt the law. The problematic case, according to Brouwer, is when A contains quantification over an infinite set, for instance the set of integers. Brouwer demonstrated that it was possible to develop mathematics also without the principle of excluded middle, and that it in many cases lead to more informative and insightful proofs. The immediate followers of Brouwer were not very numerous, and his use of the theory of choice sequences, which is inconsistent with classical logic, repelled many mathematicians from his philosophy. Later developments of constructive mathematics avoid this theory, and its results are immediately understandable and acceptable to mainstream mathematics.

*David Hilbert* was concerned with mathematics at large, pondering how to prove it consistent. He vented his concerns at the Paris conference, establishing what is called *Hilbert's program*, where he declared some 23 crucial problems that crucially needed resolution by the end of the XX century.

Hilbert though that it should be possible to study the combinatorial properties of the set of all sentences which could legally be derived from the system's axioms, and to prove that no two of them were logical opposites. This would obviously be an assurance that mathematics (or at least the portion modelled by this formal system) was free from internal contradiction: that is, that the axioms could not be used to prove both a theorem and its negation.

As well as proving the impossibility of internal contradiction, it was hoped that the set of "true" sentences (those which could be constructed by applying legal transformations to the axioms) could be proved complete in the sense that, given a sentence, one could be assured that either this sentence or its negation was a member of the set of true sentences. A formal system with this property is said to be *decidable*, since one need never be unsure of the truth of a given sentence.

In the end, Hilbert's dream - of reformulating classical mathematics as a formal axiomatic system equipped with absolute proofs of consistency and completeness - was killed in 1931 when Gödel presented his ingenious insights.

In his famous paper, Gödel proved that it was impossible to find a metamathematical proof of such a system's consistency without employing rules of inference inexpressible within the formal system under consideration.

More precisely, Gödel proved his results of any axiomatic system comprehensive enough to contain the whole of arithmetic. Henceforth, when the term "formal system" is used, it should be assumed that we are speaking of a system satisfying the aforementioned requirement. Less powerful systems, such as arithmetic equipped with addition alone or multiplication alone, can in fact be proved decidable and complete, as was shown by Presburger and Skolem in 1930.

Gödel's other main conclusion was that any such formal system is incomplete, and hence that "truth" within the system is undecidable. Specifically, he showed that it possible to construct a sentence such that neither the constructed sentence nor its negation is provable within the system. What is more, even if one were to arbitrarily decide that such a sentence was true and should therefore be added to the system's axioms, there would still exist other equally undecidable sentences within this new system; and no matter how far this process of augmentation is taken, there will always be further truths which elude proof.
