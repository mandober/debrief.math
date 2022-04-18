---
downloaded:       2022-01-22
page-url:         https://web.archive.org/web/20060213035258/http://www.earlham.edu/~peters/courses/logsys/low-skol.htm
page-title:       Peter Suber, "The Löwenheim-Skolem Theorem"
article-title:    Peter Suber, "The Löwenheim-Skolem Theorem"
---
# Peter Suber, "The Löwenheim-Skolem Theorem"

Let S be any first-order theory.  The Löwenheim-Skolem Theorem (LST) states that if S has a model (i.e. if it is consistent), then it has a model with a countable domain.  It's that simple!
**The Löwenheim-Skolem Theorem**

[Peter Suber][1], [Philosophy Department][2], [Earlham College][3]

-   [Review][4]
-   [Skolem's Paradox][5]
-   [An Example of a Non-Standard Model][6]
-   [Incurable Ambiguity: Plural Interpretations][7]
-   [Serious Incurable Ambiguity: Plural Models][8]
-   [Very Serious Incurable Ambiguity: Non-Categoricity][9]
-   [Very Very Serious Incurable Ambiguity: Upward and Downward LST][10]
-   [Coping][11]

Let S be any first-order theory. The Löwenheim-Skolem Theorem (LST) states that if S has a model (i.e. if it is consistent), then it has a model with a countable domain. It's that simple!

**Review**

A model is an interpretation of a system in which each theorem comes out true for that interpretation. An interpretation of a system is a reading of the marks on paper so that they refer to certain objects, properties, relations, and functions. These references are assigned by the logician, not native to the marks. The domain of an interpretation is the set of the objects from which the logician may choose in making these assignments. The domain therefore includes the objects which may serve as the referents of the (1) individual constants of the language, (2) arguments of functions, and (3) arguments of predicates. Functions and predicates are not themselves members of the domain, but are defined as ranging over members of the domain. For example, a formal system whose intended interpretation is some portion of number theory will have a domain of numbers. The domain that LST says is countable is this domain of objects. A domain is countable iff it contains countably many objects, that is, iff it contains at most 0 members.

A first-order theory is a system of predicate logic with a few additions. The motivation for the additions is to "outfit" the system to capture arithmetic. We may add denumerably many constants, so that it can name all the natural numbers. We may add countably many proper axioms (axioms which are not logically valid wffs) to supplement the logical axioms (axioms which are logically valid wffs) of predicate logic.

If we take one 2-place predicate, say Pxy, and demand that all interpretations assign it the meaning of "identity" (so that Pxy means x=y), and if we add suitable proper axioms specifying the use of the new identity predicate, then we have a first-order theory with identity. The interpretations in which Pxy is given the stipulated meaning are called "normal" interpretations.

First-order theories with identity have all the additions they need to capture arithmetic --at least as well as well as arithmetic can be captured formally. While all first-order theories are vulnerable to LST, systems of arithmetic are the most important victims.

**Skolem's Paradox**

LST has bite because we believe that there are *un*countably many real numbers (more than 0). Indeed, let's insist that we *know* it; Cantor proved it in 1873, and we don't want to open the question again. What is remarkable about LST is the assertion that even if the intended interpretation of S is a system of arithmetic about the real numbers, and even if the system is consistent and has a model that makes its theorems true, its theorems (under a different interpretation) will be true for a domain too small to contain all the real numbers. Systems about uncountable infinities can be given a model whose domain is only countable. Systems about the reals can be interpreted as if they were about some set of objects no more numerous than the natural numbers. It is as if a syntactical version of "One-Thousand and One Arabian Nights" could be interpreted as "One Night in Centerville".

This strange situation is not hypothetical. There are systems of set theory (or number theory or predicate logic) that contain a theorem which asserts in the intended interpretation that the cardinality of the real numbers exceeds the cardinality of the naturals. That's good, because it's true. Such systems therefore say that the cardinality of the reals is uncountable. So the cardinality of the reals must really *be* uncountable in all the *models* of the system, for a model is an interpretation in which the theorems come out *true* (for that interpretation). Now one would think that if theorems about uncountable cardinalities are true for a model, then the domain of the model must have uncountably many members. But LST says this is not so. Even these systems, if they have models at all, have at least one countable model.

Insofar as this is a paradox it is called Skolem's paradox. It is at least a paradox in the ancient sense: an astonishing and implausible result. Is it a paradox in the modern sense, making contradiction apparently unavoidable? We know from history all too many cases of shocking results initially misperceived as contradictions. Think about the existence of pairs of numbers with no common divisor, no matter how small, or the property of every infinite set that it can be put into one-to-one correspondence with some of its proper subsets.

**An Example of a Non-Standard Model**

The proof for LST relies on the fact that there are at most countably many descriptions of anything, viz. names, sentences, paragraphs, books... There are at most countably many strings of symbols (when the strings are finite in length). This fact is easily proved by arithmetizing the alphabet of our language of description. Each wff then becomes a natural number. Since there are only countably many natural numbers, there are at most countably many wffs to do the describing.

One countable model that is always available for inspection, if only to demystify LST a bit, is the interpretation in which the terms of the language are assigned to their own tokens, or to the typographic strings which express them. We've seen that by arithmetization there are at most countably many such strings. Hence, even if the intended interpretation of the marks on paper refers to the uncountably many real numbers, one obvious alternate interpretation refers only to the countably many marks on paper that comprise the system.

As the typographic interpretation of S shows, the interpretations with merely countable models will be (or may as well be) non-standard. The "meaning" of the marks changes at the same time as the domain. The theorem which in the intended interpretation made some assertion about uncountable reals speaks of something entirely different in the countable LST models.

Remember, a formal system "about the reals" is really a system of wffs of some formal language. The language is inherently uninterpreted. We might give its symbols some interpretation, and on that intended interpretation we may say that the system is "about" the reals. LST asserts that every consistent first-order theory can be intepreted as being "about" some set of things no more numerous than the natural numbers, even if we thought it was --indeed, even if under another interpretation it *is*\-- "about" the uncountable reals.

LST does not deny the possibility that some system S might have uncountable models alongside the critical countable model. In that sense, S might "succeed". LST qualifies this success by giving S other models whether it wanted them or not. How does this detract from S's success? In only one way: S is thwarted if it aspired to capture its intended domain *unambiguously* or *uniquely*.

**Incurable Ambiguity: Plural Interpretations**

To talk about incurable ambiguity suggests calamity, and this is how it seems to some logicians. LST shows that the real numbers cannot be specified uniquely by any first order theory. If that is so, then one of the most important domains in mathematics cannot be reached with the precision and finality we thought formal systems permitted us to attain.

But this is not a calamity from another point of view. If formal languages were not ambiguous or capable of many interpretations, they would not be formal. From this standpoint, LST is less about deficiences in our ability to express meanings univocally, or about deficiencies in our ability to understand the real numbers, than it is about the gap between form and content (syntax and semantics).

Other metatheorems prove this ambiguity for statements and systems in general. LST proves this ambiguity for any system attempting to describe uncountable infinities: even if they succeed on one interpretation, there will always be other interpretations of the same underlying syntax by which they describe only countably many objects.

LST has this similarity to Gödel's first incompleteness theorem. While Gödel's theorem only applies to "sufficiently strong" systems of arithmetic, LST only applies to first-order theories of a certain adequacy, namely, those with models, hence those that are consistent. Gödel's theorem finds a surprising weakness in strength; sufficiently powerful systems of arithmetic are incomplete. LST also finds a surprising weakness in strength; first-order theories with models are importantly ambiguous in a way that especially hurts set theory, arithmetic, and other theories concerned to capture truths about uncountable cardinalities.

**Serious Incurable Ambiguity: Plural Models**

But LST proves a kind of ambiguity much more important than the permanent plurality of interpretations. There can be plural *models*, that is, plural interpetations in which the theorems come out *true*.

As we become familiar with formalism and its susceptibility to various interpretations, we might think that plural interpretations are not that surprising; perhaps they are inevitable. Plural *models* are more suprising. We might think that we must go out of our way to get them. But on the contrary, LST says they are inevitable for systems of a certain kind.

**Very Serious Incurable Ambiguity: Non-Categoricity**

But the ambiguity is stronger still. The plural permissible models are not always isomorphic with one another. The isomorphism of models is a technical concept that we don't have to explain fully here. Essentially two models are isomorphic if their domains map one another; their elements have the same relations under the functions and predicates defined in the interpretations containing those domains.

If all the models of a system are isomorphic with one another, we call the system *categorical*. LST proves that systems with uncountable models also have countable models; this means that the domains of the two models have different cardinalities, which is enough to prevent isomorphism. Hence, consistent first-order systems, including systems of arithmetic, are *non-categorical*.

We might have thought that, even if a vast system of uninterpreted marks on paper were susceptible of two or more coherent interpretations, or even two or more models, at least they would all be "equivalent" or "isomorphic" to each other, in effect using different terms for the same things. But non-categoricity upsets this expectation. Consistent systems will always have non-isomorphic or *qualitatively different* models.

We don't even approach univocal reference "at the limit" or asymptotically, by increasing the number of axioms or theorems describing the real numbers until they are infinite in number. We might have thought that, even if a certain vast system of bits sustained non-isomorphic models, we could approach unambiguity (even if we could not reach it) by increasing the size of the system. After all, "10" could symbolize everything from day and night to male and female, and from two to ten; but a string of 1's and 0's a light-year in length must at least narrow down the range of possible referents. But this is not so, for LST applies even to infinitely large systems. LST proves in a very particular way that no first-order formal system of any size can specify the reals uniquely. It proves that no description of the real numbers (in a first-order theory) is categorical.

**Very Very Serious Incurable Ambiguity: Upward and Downward LST**

If the intended model of a first-order theory has a cardinality of 1, then we have to put up with its "shadow" model with a cardinality of 0. But it could be worse. These are only two cardinalities. The range of the ambiguity from this point of view is narrow. Let us say that degree of non-categoricity is 2, since there are only 2 different cardinalities involved.

But it *is* worse. A variation of LST called the "downward" LST proves that if a first-order theory has a model of *any* transfinite cardinality, x, then it also has a model of *every* transfinite cardinal y, when y > x. Since there are infinitely many infinite cardinalities, this means there are first-order theories with arbitrarily many LST shadow models. The degree of non-categoricity can be any countable number.

There is one more blow. A variation of LST called the "upward" LST proves that if a first-order theory has a model of any infinite cardinality, then it has models of any arbitrary infinite cardinality, hence every infinite cardinality. The degree of non-categoricity can be any infinite number.

A variation of upward LST has been proved for first-order theories with identity: if such a theory has a "normal" model of any infinite cardinality, then it has normal models of any, hence every, infinite cardinality.

**Coping**

Most mathematicians agree that the Skolem paradox creates no contradiction. But that does not mean they agree on how to resolve it.

First we should note that the ambiguity proved by LST is curable in the sense that LST holds only in first-order theories. Higher-order logics are not afflicted with it, although they are afflicted with many weaknesses absent in first-order logic. The ambiguity is also curable as soon as we add ordering to our collection of domain objects supposed to be real numbers. Once ordering is added, systems intended to capture the reals can become categorical.

But the ambiguity remains baffling and frustrating for first-order theories prior to the introduction of ordering.

*Can* such a system really assert the uncountability of the reals if the assertion is "just as much" about some merely countable infinite? Or can it really assert that the cardinality of the continuum is 1 (assuming the continuum hypothesis) if the assertion is "just as much" about *every* other infinite cardinality? LST may not force us to retract our belief that the reals are uncountable; but on one terrifying reading it does, and to avoid that reading we may well have to alter the *modality* of our belief that the reals are uncountable.

In metalogic the term "model" is used in (at least) two senses. We have used the term in the more technical sense, as an interpretation of a system in which its theorems come out true for that interpretation. But the term "model" may also be used more casually to refer to the domain of things on which we want to focus, such as the real numbers, especially if we assume that such things have an existence independent of formal systems and human logicians. In this less strict second sense of "model", Platonists in mathematics who believe that the real numbers exist independently of human minds and formal systems can say that there is an uncountable model of the real numbers: namely, the real numbers themselves. However, they must (by LST) admit that first-order formal systems that seem to capture the real numbers can always be satisfied by a merely countable domain. For this reasons, Platonists will remain Platonic and will not pin their hopes on formalization.

One reading of LST holds that it proves that the cardinality of the real numbers is the same as the cardinality of the rationals, namely, countable. (The two kinds of number could still differ in other ways, just as the naturals and rationals do despite their equal cardinality.) On this reading, the Skolem paradox would create a serious contradiction, for we have Cantor's proof, whose premises and reasoning are at least as strong as those for LST, that the set of reals has a greater cardinality than the set of rationals.

The good news is that this strongly paradoxical reading is optional. The bad news is that the obvious alternatives are very ugly. The most common way to avoid the strongly paradoxical reading is to insist that the real numbers have some elusive, essential property not captured by system S. This view is usually associated with a Platonism that permits its proponents to say that the real numbers have certain properties independently of what we are able to say or prove about them.

The problem with this view is that LST proves that if some new and improved S' had a model, then it too would have a countable model. Hence, no matter what improvements we introduce, either S' has no model or it does not escape the air of paradox created by LST. (S' would at least have its own typographical expression as a model, which is countable.) As Morris Kline put it, while Gödel's first incompleteness theorem showed that certain strong formal systems always prove less than we'd like, LST shows that they also prove more than we'd like.

Howard DeLong says the situation reverses the consternation of the Pythagoreans in discovering the irrational numbers. The discovery that the diagonal of a square was incommensurable with its side forced the Pythagoreans to move from the rational numbers they loved to the irrationals, or from a countable to an uncountable domain. LST, by contrast, forces us to move in the opposite direction. DeLong says that if the Greeks had known LST, Pythagoreanism would be a thriving sect today.

A widely held interpretation is that of Thoralf Skolem himself. He believed that LST showed a relativity in some of the fundamental concepts of set theory. Uncountable cardinalities in particular have no meaning apart from specific sets of axioms. A set may be uncountable within a certain formal system and countable when viewed from the standpoint of an unintended model of that system. This means that there simply are no sets whose cardinality is absolutely uncountable. For many, this view guts set theory, arithmetic, and analysis. It is also clearly incompatible with mathematical Platonism which holds that the real numbers exist, and are really uncountable, independently of what can be proved about them.

If we want to insist on the non-relativity of our set theoretic notions, and if we hold that our formal systems to date fail fully to capture the secret of the real numbers, then we must choose between the unattractive options (1) that the theory of real numbers is inconsistent, hence has no model, and (2) that the secret of the real numbers cannot be captured by any first-order formal system, i.e. that every attempt will fail either by having no model or by "incurring" a merely countable model. LST puts us to the choice between inconsistency and non-categoricity. If we discard the first of these, then we are left with a view that implies that our notions of uncountable infinities, including the continuum, cannot be fully formalized. As John Myhill put it, in LST we have proved an insurmountable limitation of formalization itself.

If Gödel's theorem showed that no formal system could fully capture the natural numbers (because of incompleteness), then LST shows that no first-order system can fully capture the real numbers (because of ambiguity).

Because metatheorems about the limits of formal systems map onto theorems about the limits of digital computers (see earlier [hand-out on machines][12]), LST proves that the set of bytes or 8-bit wffs at all the memory addresses of some computer running some program is always susceptible of more than one interpretation, and more, that it is susceptible of non-isomorphic interpretations. If we think of the brain as a parallel processing digital computer for a moment, then LST means that our states of consciousness only seem to wear one semantic garment. (Perhaps to many they do not even seem to wear one.) Making the "paradigm shift" to an alternate, non-isomorphic interpretation of our experience may be rare and difficult, but it is not precluded by the "meaning" of perception and conception.

Marvin Minsky was undoubtedly thinking of LST when he said that we cannot predict the outcome of asking intelligence to follow rules. For if the intelligence is too small, it may not understand the rules. But "if it is too large, or too alien, \[it\] may invent some consistent interpretation of the rules that was not intended."

Finally, there is the working faith of the working mathematician whose specialization is far from model theory. For most mathematicians, whether they are Platonists or not, the real numbers are unquestionably uncountable and the limitations on formal systems, if any, don't matter very much. When this view is made precise, it probably reduces to the second view above that LST proves an unexpected limitation on formalization. But the point is that for many working mathematicians it need not, and is not, made precise. The Skolem paradox has no sting because it affects a "different branch" of mathematics, even for mathematicians whose daily rounds take them deeply into the real number continuum, or through files and files of bytes, whose intended interpretation is confidently supposed to be univocal at best, and at worst isomorphic with all its fellow interpretations.

[1]: https://web.archive.org/web/20060213035258/http://www.earlham.edu/~peters/hometoc.htm
[2]: https://web.archive.org/web/20060213035258/http://www.earlham.edu/~phil/index.htm
[3]: https://web.archive.org/web/20060213035258/http://www.earlham.edu/
[4]: https://web.archive.org/web/20060213035258/http://www.earlham.edu/~peters/courses/logsys/low-skol.htm#review
[5]: https://web.archive.org/web/20060213035258/http://www.earlham.edu/~peters/courses/logsys/low-skol.htm#skolem
[6]: https://web.archive.org/web/20060213035258/http://www.earlham.edu/~peters/courses/logsys/low-skol.htm#example
[7]: https://web.archive.org/web/20060213035258/http://www.earlham.edu/~peters/courses/logsys/low-skol.htm#amb1
[8]: https://web.archive.org/web/20060213035258/http://www.earlham.edu/~peters/courses/logsys/low-skol.htm#amb2
[9]: https://web.archive.org/web/20060213035258/http://www.earlham.edu/~peters/courses/logsys/low-skol.htm#amb3
[10]: https://web.archive.org/web/20060213035258/http://www.earlham.edu/~peters/courses/logsys/low-skol.htm#amb4
[11]: https://web.archive.org/web/20060213035258/http://www.earlham.edu/~peters/courses/logsys/low-skol.htm#coping
[12]: https://web.archive.org/web/20060213035258/http://www.earlham.edu/~peters/courses/logsys/machines.htm
