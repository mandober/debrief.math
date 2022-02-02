---
downloaded:       2022-01-22
page-url:         https://web.archive.org/web/20060518102346/http://www.earlham.edu/~peters/courses/logsys/revpl.htm
page-title:       Peter Suber, "Logical Systems, Predicate Logic Review"
article-title:    Peter Suber, "Logical Systems, Predicate Logic Review"
---
# Peter Suber, "Logical Systems, Predicate Logic Review"

Here I try to list all the important terms, distinctions, symbols, and results from the second half of the course, focusing on the metatheory of first order predicate logic.  It wouldn't help much as a study guide if I listed everything we covered.  You can get that by re-reading Hunter.  I've tried to limit the list to what's most important. Believe it or not, I've omitted a lot.
**Logical Systems  
Predicate Logic Review**

[Peter Suber][1], [Philosophy Department][2], [Earlham College][3]

Here I try to list all the important terms, distinctions, symbols, and results from the second half of the course, focusing on the metatheory of first order predicate logic. It wouldn't help much as a study guide if I listed everything we covered. You can get that by re-reading Hunter. I've tried to limit the list to what's most important. Believe it or not, I've omitted a lot.

The topics are only roughly in the order in which we encountered them. I've adjusted this order when I thought it important to cluster related topics together. I've put in some blank lines to separate clusters from one another.

I believe that all the technical terms on this list are defined in my [glossary][4]. If any are not, please let me know and I'll revise the glossary.

For a review sheet from the first half of the course, focusing on infinite sets and truth-functional propositional logic, see the [mid-term review][5].

---

-   predicate constants
-   predicates / terms
-   individual constants / individual variables
-   universal quanitier / existential quantifier
-   how to define the existential quantifier through the universal quantifier and negation (and *vice versa*)
-   why terms can contain terms
-   why functions and their terms together are terms
-   why predicates and their terms together are not terms
-   quantifier scope
-   bound / free variables
-   why a variable can be both free and bound in the same wff
-   closure of a wff
-   open / closed wffs
-   vacuous quantifiers
-   one-place (monadic) predicates / many-place (polyadic) predicates
-   first order / higher order predicate logic
-   interpreting a PL language
-   which symbols of the language get the same meaning in every standard interpretation
-   domain of an interpretation / domain of a function
-    for P /  for Q
-     A for P /   A for Q
-   satisfaction / truth for I / k-validity / logical validity
-   tautologies / logical valid formulas
-   satisfaction / satisfiability / simultaneous satisfiability
-   why satisfaction must be defined separately for 11 kinds of PL wff
-   why a set of PL wffs can be simultaneously satisfiable but not have a model
-   why consistency depends on simultaneous satisfiability rather than simultaneous truth for I
-   why satisfaction depends on sequences, rather than sets, of objects from the domain
-   how to define satisfaction through finite or infinite sequences
-   when open wffs can bear truth-values
-   40.8, that A iff Ac (for the syntactic version of this metatheorem, see 45.5)
-   how wff A differs from At/vk
-   40.22, that given an arbitrary wff A and an arbitrary natural number k, there is an effective method for testing the k-validity of A
-   unnumbered metatheorem after 40.22, that there are wffs which are k-valid for every finite k and yet not logically valid
-   why QS contains all the wffs, axioms, rules, and theorems of PS, plus many new ones
-   42.1, that QS is consistent
-   43.5, that if A, then A
-   43.7, that if  A, then  A (compare with 46.2, below)
-   how first order theories (FOTs) differ from QS
-   logical / proper axioms
-   why "1 + 2 = 3" is not true for I (for any I) and not logically valid
-   45.5, that A iff Ac (for the semantic version of this metatheorem, see 40.8)
-   45.6, that if A is a closed wff which is not a theorem of some FOT K, then ~A may be added to the set of axioms of K without triggering inconsistency (the non-standardness theorem for FOTs)
-   negation incompleteness
-   why negation completeness is undesirable for QS and desirable for a FOT of arithmetic
-   closed wffs / closed systems
-   why closed systems have countable domains
-   why any model of an extension of a system is also a model of the original system
-   45.8, that any FOT with a model will be consistent (but not always *vice versa*)
-   45.10, that any consistent FOT has a consistent, negation-complete extension with the same wffs (Lindenbaum's lemma for FOTs)
-   45.13, that any consistent FOT has a consistent, closed, negation-complete extension
-   45.14, that any consistent, closed FOT as a denumerable model
-   45.15, that any consistent FOT has a denumerable model
-   45.18, that any FOT with a model has a denumerable model (Löwenheim-Skolem theorem)
-   Skolem paradox
-   why the Skolem paradox and the Löwenheim-Skolem theorem entail no actual contradictions
-   45.20, that if every finite subset of the set of proper theorems of a FOT has a model, then the FOT has a model (the compactness theorem)
-   46.1, that if A, then A (semantic completeness of QS)
-   46.2, that if  A, then  A (compare with 43.7, above)
-   46.4, negation incompleteness of QS
-   46.5, syntactic incompleteness of QS
-   why syntactic completeness is undesirable for QS
-   what additions are needed to create QS\= (QS with identity) from QS, and a FOT\= (a FOT with identity) from a FOT
-   why QS\= has theorems which are not logically valid and why this is desirable
-   interpretations / normal intpretations
-   why normal interpretations are needed to deal with QS\= or FOT\=
-   47.1, consistency of QS\=
-   for the next two results, let's say that A is quasi-logically valid (or quasi-A) iff A is true for all normal interpretations.
-   isomorphism of models
-   upward / downward Löenheim-Skolem theorem
-   categoricity of systems
-   \-categoricity
-   why no consistent FOT is categorical
-   48.2, that if interpretations I and I' are isomorphic, then A is true for I iff A is true for I'
-   48.3, that if all normal models of a FOT\= are isomorphic, then the FOT\= is negation-complete
-   standard / non-standard models
-   Robinson's non-standard arithmetic
-   how a formal system can have a model in its typographical tokens
-   numeral nouns / adjectives
-   50.1, that in QSM (monadic predicate logic) if A, then A (consistency of QSM)
-   50.3, that in QSM if A, then A (semantic completeness of QSM)
-   50.4, that QSM is negation-incomplete
-   50.5, that QSM is syntactically incomplete
-   50.7, that if a closed wff of QSM with k distinct predicate symbols is false for some interpretation I, then it is false for some interpretation I' of at most 2k members
-   50.8, that a closed wff of QSM with k distinct predicate symbols is logically valid iff it is 2k valid (Bernays-Schönfinkel theorem)
-   50.9, that QSM is decidable
-   51.1, that all effective methods can be articulated with precision
-   51.2, that there are denumerably many effective methods
-   51.3, that there are sets of natural numbers which are not effectively enumerable
-   51.4, that there are undecidable sets of natural numbers
-   computable / uncomputable functions
-   51.7, that there are uncomputable total functions from natural numbers to natural numbers
-   51.9, that there are enumerable but not effectively enumerable sets (one example: the set of computable functions of one argument from natural numbers to natural numbers)
-   diagonalization on a list assumed to be complete, producing a new member, proving the list to be incomplete / diagonalization on a list known to be complete, producing a new object, proving the object to be a non-member
-   representation of a set in a formal system
-   the three conditions of a formal system of arithmetic
    -   that on its intended interpretation some of its theorems express truths of number theory
    -   that on its intended interpretation the language contains a numeral for every natural number
    -   the wffs are finitely long, composed of symbols from a finite alphabet
-   the two conditions of a well-made system of arithmetic (not in Hunter)
    -   that it has a decidable set of wffs
    -   that it has a decidable set of proofs
-   the three conditions of a respectable system of arithmetic
-   Gödel numbering
-   51.10, that all respectable systems of arithmetic are undecidable
-   51.11, that all well-made, then the set of its theorems is effectively enumerable
-   51.12, that if a system is consistent, well-made, negation complete, and characterized by "A iff Ac", then it is decidable
-   51.13, that all well-made, respectable systems of arithmetic are negation incomplete (generalized Gödel theorem)
-   51.14, that if some finite extension of QS (or of QS\=) is undecidable, then so is QS (or QS\=)
-   51.15, that if a finite extension of QS (or of QS\=) is a formal system of arithmetic, consistent, represents every decidable set of natural numbers, and such that all its new axioms are closed wffs, then QS (or QS\=) is undecidable
-   recursive function theory
-   recursive / decidable sets
-   Church's Thesis / Church's Theorem
-   representation / strong representation / definability of a function in a system
-   unnumbered metatheorem at p. 235, that if every recursive function is represented in some system, then every recursive set is also represented in that system.
-   why system H is a finite extension of QS\= but not a finite extension of QS
-   56.21, that system H is undecidable
-   57.1, that QS\= is undecidable
-   57.2, that QS is undecidable (Church's theorem)
-   recursively enumerable sets / effectively enumerable sets
-   why the set of QS theorems is recursive but not recursively enumerable.
-   57.4, that the set of QS theorems (or QS\= theorems) is effectively enumerable, but that the set of QS non-theorems (or QS\= non-theorems) is not effectively enumerable
-   omega inconsistency / omega incompleteness
-   axiom of choice

[1]: https://web.archive.org/web/20060518102346/http://www.earlham.edu/~peters/hometoc.htm
[2]: https://web.archive.org/web/20060518102346/http://www.earlham.edu/~phil/index.htm
[3]: https://web.archive.org/web/20060518102346/http://www.earlham.edu/
[4]: https://web.archive.org/web/20060518102346/http://www.earlham.edu/~peters/courses/logsys/glossary.htm
[5]: https://web.archive.org/web/20060518102346/http://www.earlham.edu/~peters/courses/logsys/revtfpl.htm
