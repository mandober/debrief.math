---
downloaded:       2022-01-22
page-url:         https://web.archive.org/web/20060201230923/http://www.earlham.edu/~peters/courses/logsys/nonstbib.htm
page-title:       Peter Suber, "Non-Standard Logics"
article-title:    Peter Suber, "Non-Standard Logics"
---
# Peter Suber, "Non-Standard Logics"

In the kinds of non-standard logics included, this bibliography aims for completeness,
although it has not yet succeeded.  In the coverage of any given non-standard logic, it does not at all aim for completeness.  Instead it aims to include works suitable as introductions for those who are already familiar with standard first-order logic.
In the kinds of non-standard logics included, this bibliography aims for completeness, although it has not yet succeeded. In the coverage of any given non-standard logic, it does not at all aim for completeness. Instead it aims to include works suitable as introductions for those who are already familiar with standard first-order logic.

Looking at these non-standard logics gives us an indirect, but usefully clear and comprehensive idea of the usually hazy notion of "standardness". In standard first-order logics:

-   Wffs are finite in length (although there may be infinitely many of them).
-   Rules of inference take only finitely many premises.
-   There are only two truth-values, "truth" and "falsehood".
-   Truth-values of given proposition symbols do not change within a given interpretation, only between or across interpretations.
-   All propositional operators and connectives are truth-functional.
-   "p  ~p" is provable even if we do not have p or ~p separately; that is, the principle of excluded middle holds.
-   Contradictions are always simply false (as opposed to both true and false).
-   Contradictions imply everything. If the axioms contain an inconsistency, then all wffs are theorems.
-   "" is monotonic. That is, if the set of premises is enlarged, the set of derivable conclusions does not shrink.
-   Inferences are from wffs to wffs, or from truth-values to truth-values (by means of rules), not from meanings to meanings. Rules of inference refer to syntactic features of wffs or to semantic truth-values, but not to other semantic features beyond truth-value such as meaning or intension.
-   There are individual variables (as opposed to none).
-   There are quantifiers (as opposed to none).
-   Predicates take only individuals as arguments (as opposed to other predicates).
-   Quantifiers bind only individual variables (as opposed to binding predicates).
-   Domains are non-empty by default, or at least one individual exists in every interpretation.
-   Universal quantifiers lack existential import. (Hence, Aristotle is non-standard.)
-   All structure inside predicates is ignored (except the order of arguments and quantifiers, which can help us distinguish the subject from the objects of the verb), e.g. tense on verbs; adverbs that modify verbs, adjectives, and other adverbs.

This list of standard features is limited to the features that someone has thought it interesting to deny or alter. There are many other features that are not interesting (or perhaps "not logical") to deny or alter. For example, in standard logics:

-   There are wffs; there are proofs; there are propositional symbols; there are connectives; there are predicates; etc. Would it be interesting to omit any of these?
-   The set of wffs is decidable; hence the sets of symbols and rules of grammar are decidable. Would it be interesting to make these sets undecidable?
-   The set of proofs is decidable; hence the set of axioms and rules of inference are decidable. Would it be interesting to make these sets undecidable?
-   We can do without axioms if our rules allow us to prove logically valid wffs from zero premises. We can do without rules if all the theorems we want are axioms. But we can't do without both axioms and rules unless we are willing to do without theorems too. Even if we were willing, would we say we then had a non-standard system or a non-system?

There are other features that might be interesting to deny or alter but that seem to have gone unexplored so far. For example, in standard logics:

-   Standard truth-functions are total functions from the domain of sequences of truth-values to the range truth-values. Try permitting *partial* truth functions.
-   Predicates are total functions from the domain of individuals to the range of truth-values. Try permitting *partial* predicate functions.
-   Rules of inference are total functions from the domain of sequences of wffs to the range of wffs. Try permitting *partial* rule of inference functions.
-   The formal language and rules of inference are arranged so that the language is closed under the operations of the rules. That is, when the rules of inference take wffs as input, they generate only wffs as output. Try making the language open under the rules of inference.
-   Theoremhood is binary (yes or no). Try making it fuzzy (in real degrees from 0 to 1). That would make the set of theorems a fuzzy set
-   The order of theorem-derivation does not matter, provided that a theorem's own premises are derived before the theorem. Try making order matter such that self-amendment becomes possible, i.e. theorems of a given type change the axioms, rules, or language for subsequent theorems. Or try making order matter such that a wff is provable iff it is derivable in the usual way *and* the previously proved theorem has such-and-such a form.
-   *Use your imagination to extend this list!*

**Categorical logic**

Goldblatt, R. *Topoi: The Categorical Analysis of Logic*. North-Holland, 1979; rev. ed., 1984.

Lambek, J., and P.J. Scott. *Introduction to Higher Order Categorical Logic*. Cambridge University press, 1988.

Moortgat, M., "Categorial Logics: A Computational Perspective", in the proceedings of *Computing Science in the Netherlands*, 1990.

Reyes, G.E., "Logic and Category Theory," in Agazzi, 235-252.

**Combinatory logic**

> Logics that replace variables with functions in order to clarify intuitive operations on variables such as substitution. Systems of arithmetic built from combinatory logic can contain all partial recursive functions and avoid Gödel incompleteness.

Curry, Haskell B. *Combinatory Logic*. Vol. 1 by Curry and R. Feys; vol. 2 by Curry, J.R. Hindley, and J.P. Seldin. North-Holland, 1958, 1972.

Fitch, Frederic. *Elements of Combinatory Logic*. Yale University Press, 1974.

Hindley, R., B. Lercher, J. Seldin. *Introduction to Combinatory Logic*. Cambridge University Press, 1972.

**Conditional logic**

> Logics that deal with the truth of conditional sentences, particularly in the subjunctive mood. The logic of counterfactual assertions.

Nute, Donald, "Conditional Logic," in Gabbay and Guenthner, vol. II.

Nute, Donald. *Topics in Conditional Logic*. D. Reidel, 1980.

**Constructive logic**

> Logics in which a wff is true iff it is provable. Therefore, undecidable truths (like Gödel's G) are ruled out by definition.

Beeson, Michael J. *Foundations of Constructive Mathematics*. Freeman Cooper and Co., 1980.

Bridges, Douglas, and Fred Richman. *Varieties of Constructive Mathematics*. Cambridge University Press, 1987.

Goodstein, R.L. *Constructive Formalism*. University College, Leicester, 1951.

Heyting A. (ed.) *Constructivity in Mathematics: Proceedings of the Colloquium Held at Amsterdam, 1957*. North-Holland, 1959.

Troelstra, A.S. and D. van Dalen. *Constructivism in Mathematics*. North-Holland, 1988.

**Cumulative logic**

> A logic extending the theory of types. Predicates are true of objects of all lower types, not (as in the simple theory of types) only of objects of the immediately preceding type.

Degen, J. Wolfgang. *Systeme der kumulativen Logik*. Philosophia Verlag, 1984.

**Deontic logic**

> Logics of permission and obligation (derived from modal logics of possibility and necessity); hence the logic of norms and normative systems.

-   See modal logic; prohairetic logic.

Anderson, A.R. *The Formal Analysis of Normative Systems*. Technical Report No. 2, U.S. Office of Naval Research Contract No. SAR/Nonr-609 (16) (1956).

Aqvist, Lennart, "Deontic Logic," in Gabbay and Guenthner, vol. II.

Copi and Gould, 4 essays.

Forrester, James. *Being Good and Being Logical: Philosophical Groundwork for a New Deontic Logic*. M.E. Sharpe, 1996.

Hilpinen, R. (ed.). *Deontic Logic: Introductory and Systematic Readings*. Reidel, 1971.

Hilpinen, R. (ed.). *New Studies in Deontic Logic*. Reidel, 1981.

Rescher, Nicholas. *The Logic of Commands*. Routledge & Kegan Paul, 1966.

Ross, Alf. *Directives and Norms*. Humanities Press, 1968.

Wright, Georg Henrik von. *An Essay on Deontic Logic and the General Theory of Action*. North-Holland, 1968.

Wright, Georg Henrik von. *Norm and Action: A Logical Inquiry*. Kegan Paul, 1963.

**Dynamic logic**

> Logics for reasoning about computer programs, especially for proving that a program is "correct" or lacks semantic bugs or does what it is intended to do without error. In dynamic logics, the truth-values of wffs can change according to the rules or functions of a program.

-   See temporal logic.

Turner, chapter 2.

Harel, David, "Dynamic Logic," in Gabbay and Guenthner, vol. II.

Harel, David. *First Order Dynamic Logic*. Springer-Verlag, 1979.

**Epistemic logic**

> The logic of non-truth-functional operators such as "believes" and "knows". For example, let \*p mean that I know proposition p. If \*p and p  q are given, then what must we add in order to infer \*q?

Hintikka, Jaakko. *Knowledge and Belief: An Introduction to the Logic of the Two Notions*. 1962.

Hintikka, Jaakko and Merrill. *The Logic of Epistemology and the Epistemology of Logic: Selected Essays*. Kluwer Academic Publishers, 1988.

Schlesinger, George N. *The Range of Epistemic Logic*. Aberdeen University Press, 1985.

**Erotetic logic**

> The logic of questions and answers. When does a proposition answer a question (correctly or incorrectly)? What's wrong with questions that presuppose false propositions (such as "Have you stopped beating your spouse?")? Do questions bear truth-values? What is the most efficient strategy of asking questions to get an answer from a data base?

Aqvist, L.E. *A New Approach to the Logical Theory of Questions, Part I*. Filosofiska Foreningen, 1965.

Belnap, N.D. and T.B. Steel. *The Logic of Questions and Answers*. Yale University Press, 1976.

Harrah, David, "Erotetic Logics," pp. 3-21 of K. Lambert (ed.), *The Logical Way of Doing Things*. Yale University Press, 1969.

Harrah, David, "The Logic of Questions," in Gabbay and Guenthner, vol. II.

Harrah, David, "A System for Erotetic Sentences," in A.R. Anderson et al. (eds.), *The Logical Enterprise*.

Hintikka, Jaakko. *The Semantics of Questions and the Questions of Semantics*. North-Holland, 1976.

Kubinski, Tadeusz. *An Outline Of the Logical Theory of Questions*. Akademie-Verlag, 1980.

Lehnert, W. *The Process of Question Answering*. Wiley, 1978.

MacMillan, C.J.B. *A Logical Theory of Teaching: Erotetics and Intentionality*. Kluwer Academic Publishers, 1988.

Wisniewski, Andrzej. *The Posing of Questions: Logical Foundations of Erotetic Inferences*. Kluwer Academic Publishers, 1995.

**Free logic**

> Standard logic without any existence assumptions. While quantifiers do have existential import, singular terms may sometimes denote no existing object or not denote at all. Logical truths must be true for the empty domain as well as all non-empty domains. One motive is to make logic purer by eliminating some remaining metaphysical implications; another is to make translations from natural languages more direct.

Bencivenga, Ermanno, "Free Logics," in Gabbay and Guenthner, vol. III.

Lambert, Karel (ed.). *Philosophical Applications of Free Logics*. Oxford University Press, 1991.

Schock, R. *Logics Without Existence Assumptions*. Stockholm: Almqvist and Wiksell, 1968.

**Fuzzy logic**

> Logics in which the underlying set theory is fuzzy set theory. In fuzzy set theory, set membership is not a binary predicate (yes/no, or in/out), but a continuous quantity from 1 to 0. Fuzzy logic introduces a similar gradation of truth-values.

-   See many-valued logic.

Bandemer, Hans, and Siegfried Gottwald. *Fuzzy Sets, Fuzzy Logic, Fuzzy Methods With Applications*. Wiley, 1996.

Gupta, Madan M. and Takeshi Yamakawa (eds.). *Fuzzy Logic in Knowledge-Based Systems, Decision and Control*. Elsevier Science Publishers, 1988.

Mamdari, E.H., and J. Efstathiou, "Fuzzy Logic," *Proceedings of the 1982 ACM Symposium on Expert Systems*, 1982.

McNeill, Daniel, and Paul Freiberger. *Fuzzy Logic*. Simon and Schuster, 1993.

Nguyen, Hung T., and Elbert A. Walker. *A First Course in Fuzzy Logic*. CPC Press, 1996.

Turner, chapter 7.

Zadeh, L.A., "Fuzzy Logic and Approximate Reasoning," *Synthese*, 30 (1975) 407-28.

**Higher-Order logic**

> Predicate logics in which quantifers bind predicate variables, and predicates can take other predicates as arguments. In first-order predicate logic, by contrast, quantifiers bind only individual variables, and predicates take only individual terms as arguments.

Benthem, Johan van, and Kees Doets, "Higher-Order Logic," in Gabbay and Guenthner I, pp. 275-329.

Boolos, George, "On Second Order Logic," *Journal of Philosophy*, 72 (1975) 509-27.

Hickman, Larry. *Modern Theories of Higher Level Predicates: Second Intentions in the Neuzeit*. Philosophia Verlag, 1980. (Contemporary theories and those of post-medieval scholasticism c. 1500-1800.)

Lambek, J., and P.J. Scott. *Introduction to Higher-Order Categorical Logic*. Cambridge University Press, 1986.

Leblanc, Hughes, "Alternatives to Standard First-Order Semantics," in Gabbay and Guenthner, vol. I, pp. 189-274.

Shapiro, Stewart. *Foundations without Foundationalism: A Case for Second-Order Logic*. Oxford University Press, 1991.

**Infinitary logic**

> Logics permitting infinitely long wffs, especially disjunctive strings to replace existential quantifiers and conjunctive strings to replace universal quantifiers, or permitting rules of inference that take infinitely many premises. Spurred by Gödel's proof of the incompleteness of *finitary* logic and arithmetic.

Barwise, J., "Infinitary Logics," in Agazzi, pp. 93-112.

Turner, chapter 8.iii.

**Intensional logic**

> Logics that include apparatus for signifying when two meanings (as opposed to two wffs, truth-values, sets, predicates, functions) are identical, and that analyzes inferences involving meanings. (Non-intensional logics are called extensional.)

Anderson, Anthony C., "General Intensional Logic," in Gabbay and Guenthner, vol. II.

Benthem, Johan van. *A Manual of Intensional Logic*. Second ed., revised and expanded. University of Chicago Press, 1985.

Slater, B.H. *Intensional Logic: An Essay in Analytical Metaphysics*. Avebury, 1994.

Zalta, Edward N. *Intensional Logic and the Metaphysics of Intensionality*. MIT Press, 1988.

**Intuitionistic logic**

> Propositional logics (and their predicate logic extensions) in which neither "p  ~p" nor "~~p  p" are provable. They accept disjunctions A  B as theorems only if one of the disjuncts is separately provable: i.e. if either A or B. They have the same rules of inference as classical logic. Propositional connectives are undefined primitives.

Dalen, Dirk van, "Intuitionistic Logic," in Gabbay and Guenthner, vol. III, pp. 225-339.

Dummett, M. *Elements of Intuitionism*. Oxford University Press, 1977.

Dummett, M., "The Philosophical Basis of Intuitionistic Logic," in H.E. Rose and J.C. Sheperdson (eds.), *Logic Colloquium 1973*, North-Holland, 1973, pp. 5-40; reprinted in Dummett's *Truth and Other Enigmas*, Duckworth, 1978, pp. 215-47.

Heyting, A. *Intuitionism, An Introduction*. North-Holland, 1956.

Turner, chapter 4.

**Linear logic**

-   See relevant logic.

Abramsky, S., "Computational Interpretations of Linear Logic," Imperial College Research Report DOC 90/20 (Oct. 1990).

Lafont, Y., "Introduction to Linear Logic," Lecture Notes for Summer School on Constructive Logics and Category Theory (Isle of Thorns, August 1988).

Scedrov, A., "A Brief Guide to Linear Logic," *Bulletin of the EATCS*, 41 (June 1990) 154-165.

Troelstra, A. *Lectures on Linear Logic*. University of Chicago Press, 1992.

**Many-sorted logic**

> Logics in which variables are "typed" as they are in many computer programming languages.

Turner, chapter 8.i.

**Many-valued logic**

> Logics in which there are more than the two standard truth-values "truth" and "falsehood". Motivated by semantic paradoxes like the liar ("this statement is false") and by future contingents ("tomorrow there will be a sea-battle"), that don't easily take either standard truth-value, and by attempts to deal with uncertainty, ignorance, and "fuzziness".

-   See fuzzy logic.

Ackermann, R. *Introduction to Many-Valued Logics*. Routledge & Kegan Paul, 1967.

Copi and Gould, 2 essays.

Dunn, J.H. and G. Epstein (eds.). *Modern Uses of Multiple-Valued Logics*. D. Reidel Pub. Co., 1975.

Haack 1974 and 1978.

Malinowski, Grzegorz. *Many-Valued Logics*. Oxford University Press, 1994.

Rescher, Nicholas. *Many-Valued Logics*. McGraw-Hill, 1969.

Rine, D. (ed.). *Computer Science and Multiple-Valued Logics: Theory and Applications*. Amsterdam, 1977.

Rose, A., "Many-Valued Logics," in Agazzi, pp. 113-130.

Rosser, J.B. and A.R. Turquette. *Many-Valued Logics*. North- Holland, 1952.

Turner, chapter 3.

Urquhart, Alisdair, "Many-Valued Logic," in Gabbay and Guenthner, vol. III.

Zinoviev, A. *Philosophical Problems of Many-Valued Logic*. Reidel, 1963.

**Modal logic**

> The logic of the modal categories (possibility, actuality, and necessity) and their use in reasoning, for example, in "strict" implication.

-   See deontic logic; relevant logic.

Benthem, Johan van. *Modal Logic and Classical Logic*. Naples: Bibliopolis, 1983.

Bradley, Raymond, and Norm Schwartz. *Possible Worlds: An Introduction to Logic and Its Philosophy*. Hackett Pub. Co., 1979.

Bull, Robert A., and Krister Segerberg, "Basic Modal Logic," in Gabbay and Guenthner, vol. II.

Copi and Gould, 4 essays.

Chellas, Brian F. *Modal Logic: An Introduction*. Cambridge University Press, 1980.

Hughes, G.E., and M.J. Cresswell. *A Companion to Modal Logic*. Routledge, 1984.

Hughes, G.E., and M.J. Cresswell. *An Introduction to Modal Logic*. Methuen, 1968. And: *A Companion to Modal Logic*, Methuen, 1984.

Konyndyk, Kenneth, Jr. *Introductory Modal Logic*. University of Notre Dame Press, 1986.

Lemmon, Edward. *The "Lemmon Notes": An Introduction to Modal Logic*. Basil Blackwell, 1977.

Lewis, C.I., and C. Langford. *Symbolic Logic*. Dover Publications; Original 1932.

Mints, Grigori. *A Short Introduction to Modal Logic*. University of Chicago Press, 1992.

Popkorn, Sally. *First Steps in Modal Logic*. Cambridge University Press, 1995.

Turner, chapter 2.

Zeman, J.J. *Modal Logic*. Oxford University Press, 1973.

**Non-monotonic logic**

> Logics in which the set of implications determined by a given group of premises does not necessarily grow, and can shrink, when new wffs are added to the set of premises.

Brewka, G. *Nonmonotonic Reasoning: From Theoretical Foundation to Efficient Computation*. Cambridge University Press, 1990.

Davis, M., "The Mathematics of Non-Monotonic Reasoning," *Artificial Intelligence*, 13 (1980) 73-80.

Gabbay, Dov M., et al. *Handbook of Logic in Artificial Intelligence, Vol. 3: Nonmonotonic Reasoning and Uncertain Reasoning*. Oxford University Press, 1994.

Genesereth and Nilsson, chapter 6.

Ginsberg, Matthew L. (ed.). *Readings in Nonmonotonic Reasoning*. Morgan Kaufmann Pub. Inc., 1987.

Rankin, Terry L., "When is Reasoning Nonmonotonic?" in James H. Fetzer (ed.), *Aspects of Artificial Intelligence*, Kluwer Academic Publishers, 1988, pp. 289-308.

Turner, chapter 5.

**Paraconsistent logic**

> Logics in which it is generally false that contradictions imply any and every proposition. Contradictory statements (p·~p) are both true and false, as opposed to simply false. Hence the principle of excluded middle is affirmed, while the principle of non-contradiction denied. Paraconsistent logics can be "lived" if one vows to accept all truths, but does not insist on rejecting all falsehood. Paraconsistent logics do not hold that all paradoxes can be "solved" and urges that they be recognized as contradictions.

Priest, Graham, "Contradiction, Belief, and Rationality," *Proceedings of the Aristotelian Society*, 86 (1986) 99-116.

Priest, Graham. *In Contradiction: A Study of the Transconsistent*. Kluwer Academic Publishers, 1987.

Priest, Graham, R. Routley, and J. Norman. *Paraconsistent Logics*. Philosophia Verlag, 1986.

Priest, Graham, R. Routley, and J. Norman (eds.). *Paraconsistent Logic: Essays on the Inconsistent*. Philosophia Verlag, 1987.

Priest, Graham, "When Inconsistency is Inescapable: A Survey of Paraconsistent Logics," *South African Journal of Philosophy* 7 (May 1988) 83-89.

**Partial logic**

> Logics in which wffs need not be either true or false, or in which singular terms need not denote anything, or both. Logics that can cope with "truth-value gaps" and "denotation failures".

Blamey, Steven, "Partial Logic," in Gabbay and Guenthner, vol. III.

**Prohairetic logic**

> The logic of preference. For example, if someone prefers A to B and B to C, must she prefer A to C? Must preference be transitive?

-   See deontic logic.

Halldén, Sren. *The Logic of Better*. Copenhagen, 1957.

Moutafakis, Nicholas J. *The Logics of Preference: A Study of Prohairetic Logics in Twentieth Century Philosophy*. Kluwer Academic Publishers, 1987.

Wright, Georg Henrik von. *The Logic of Preference*. Edinburgh, 1963.

**Quantum logic**

> To reflect quantum indeterminacy and uncertainty, quantum logic adds a third truth-value ("indeterminate"); hence the metatheory denies the principle of excluded middle (PEM). Nevertheless, for every p, "p  ~p" is logically valid in systems of quantum logic. That is, PEM is true in the theory, false in the metatheory. Because both disjuncts of a true disjunction can be false, disjunction and conjunction behave asymetrically; hence the distribution laws generally fail. Motivated to capture the queerness of quantum-mechanics; in quantum logic this queerness shows up on the propositional level, in redefined connectives.

Dalla Chiara, Maria-Luisa, "Quantum Logic," in Gabbay and Guenthner, vol. III.

Dalla Chiara, Maria-Luisa, "Logical Foundations of Quantum Mechanics," in Agazzi, pp. 331-352.

Hooker, C.A. (ed.) *The Logico-algebraic Approach to Quantum Mechanics*. D. Reidel Pub. Co., \[1975\]-1979.

Jauch, J.M. and C. Piron, "What is Quantum Logic?", in *Quanta*, University of Chicago Press, 1969.

Mittelstaedt, P. *Quantum Logic*. D. Reidel, 1978.

Mittelstaedt, P. and W. Stachow, "The Principle of Excluded Middle in Quantum Logic", *Journal of Philosophical Logic*, 7 (1978) 181-208.

Stachow, W., "Completeness of Quantum Logic", *Journal of Philosophical Logic*, 5 (1976) 237-280.

van Fraassen, Bas, "The Labyrinth of Quantum Logics," in R. Cohen et al. (eds.), *Logical and Epistemological Studies in Contemporary Physics*, D. Reidel, 1974, pp. 224-54.

**Relevant logic**

> Logics in which "p implies q" only if p is *relevant* to q. Designed to prevent the paradoxes of material implication from arising; p should never imply q simply because p is false or because q is true. The advantage is that implication claims in natural language are better translated; the disadvantage is that implication loses truth-functionality.

-   See linear logic, modal logic.

Anderson, Alan Ross and Nuel D. Belnap, Jr. *Entailment: The Logic of Relevance and Necessity*. Princeton University Press, Vol. 1, 1975, Vol. 2 (with J. Michael Dunn), 1993.

Diaz, M. Richard. *Topics in the Logic of Relevance*. Philosophia Verlag, 1981.

Dunn, J. Michael, "Relevance Logic and Entailment," in Gabbay and Guenthner, vol. III.

Norman, Jean, and Richard Sylvan (eds.). *Directions in Relevant Logic*. Kluwer Academic Publishers, 1989.

Read, Stephen. *Relevant Logic: A Philosophical Examination of the Basis of Inference.* Basil Blackwell, 1989.

Routley, Richard, et al. *Relevant Logics and Their Rivals*. Ridgeview Pub. Co., 1987.

**Stoic logic**

> The logic of the ancient Stoics, marked by the introduction of tense operators.

-   See temporal logic

Frede, Michael. *Die Stoische Logik*. Vandenhoeck and Ruprecht, 1974.

Mates, Benson. *Stoic Logic*. University of California Press, 1953.

**Substance logic**

> The logic of entities related to one another by such indices as time, space, and possible worlds. Complex entities can model situations normally modelled by n-place relations.

Zemach, Eddy, and E. Walther, "Substance Logic," in Boston Studies in the Philosophy of Science, Reidel, vol 43, YEAR?, pp. 55-74.

Zemach, Eddy, "A Plea for a New Nominalism," *Canadian Journal of Philosophy*, 12 (YEAR?) 527-37.

Zemach, Eddy, "Numbers," *Synthese*, 64 (YEAR?) 225-39.

**Substructural logic**

Restall, Greg. *An Introduction to Substructural Logics*. Routledge, 2000. ([Details][1].)

Schroeder-Heister, Peter (ed.). *Substructural Logics*. Oxford University Press, 1994.

**Temporal (Tense) logic**

> Logics in which the times at which propositions bear certain truth-values can be indicated, in which the "tense" of the assertion can be indicated, and in which truth-values can be affected by the passage of time.

-   See dynamic logic, Stoic logic.

Benthem, Johan van. *The Logic of Time*. Second, revised edition. Kluwer Academic Publishers, 1991.

Burgess, John, "Basic Tense Logic," in Gabbay and Guenthner, vol. II.

Gabbay, Dov M., and Mark Reynolds. *Temporal Logic: Mathematical Foundations and Computational Aspects*. Oxford University Press, 1994.

Goldblatt, Robert. *Logics of Time and Computation*. University of Chicago Press, 1982.

McArthur, R.P. *Tense Logic*. D. Reidel, 1976

Prior, Arthur. *Papers on Time and Tense*. Oxford University Press, 1968; contains a good bibliography.

Prior, Arthur. *Past, Present, and Future*. Oxford University Press, 1978 (original 1967). (Sequel to his *Time and Modality*.)

Prior, Arthur. *Time and Modality*. Oxford University Press, 1957.

Prior, Arthur, and Kit Fine. *Worlds, Times, and Selves*. University of Massachusetts Press, 1977.

Rescher, Nicholas, and Alasdair Urquhart. *Temporal Logic*. Springer-Verlag, 1971; contains a good bibliography.

Turner, chapter 6.

Van Fraassen, Bas C., "Report on Tense Logic," in Agazzi, pp. 425-38.

**Other logics**

Barwise, K.J., Kaufman, M. and Makkai, M, "Stationary Logic," *Annals of Mathematical Logic*, 13 (1978) 171-224; a correction appears in 16:231-32.

Goddard, L., and R. Routley. *The Logic of Significance and Context*. Aberdeen, 1973. (More than one vol.)

Halmos, P.R. *Algebraic Logic*. New York, 1962.

Rescher, Nicholas, and Robert Brandom. *The Logic of Inconsistency: A Study in Non-Standard Possible-World Semantics and Ontology*. Rowman and Littlefield, 1979.

**Non-Standard Logics in General**

-   Including works on more than one non-standard logic

Agazzi, Evandro. *Modern Logic: A Survey*. D. Reidel Pub. Co., 1981.

Belnap, N.D., Jr., "Modal and Relevance Logics: 1977," in Agazzi, 131-151.

Benthem, Johan van, "Modal Logic as Second-Order Logic," *Mathematisch Instituut* (Amsterdam), Report 77-04, 1977.

Cleave, John P. *A Study of Logics*. Oxford University Press, 1992.

Cocchiarella, Nino B., "Philosophical Perspectives on Quantification in Tense and Modal Logic," in Gabbay and Guenthner, vol II.

Copi, Irving M. and James A. Gould (eds.). *Contemporary Philosophical Logic*. St. Martin's Press, 1978 (4 essays on modal logic, 4 on deontic logic, 2 on many-valued).

Gabbay, Dov M., and Franz Guenthner (eds.). *Handbook of Philosophical Logic*. 4 vols. Kluwer Academic Publishers, 1983-89.

Gallin, D. *Intensional and Higher-Order Modal Logic*. North- Holland, 1975.

Genesereth, Michael R., and Nils J. Nilsson. *Logical Foundations of Artificial Intelligence*. Morgan Kaufmann Publishers, 1987.

Haack, Susan. *Deviant Logics*. Cambridge University Press, 1974.

Haack, Susan. *The Philosophy of Logics*. Cambridge University Press, 1981.

Hintikka, Jaakko, "Standard vs. Nonstandard Logic: Higher-Order, Modal, and First-Order Logics," in Agazzi, pp. 283-296.

Lambek, J. and P. J. Scott. *Introduction to Higher Order Categorical Logic*. Cambridge University Press, 1986.

Leblanc, Hughes, "Free Intuitionistic Logic: A Formal Sketch," pp. 133-45 in J. Agassi and R. Cohen (eds.), *Scientific Philosophy Today*. D. Reidel, 1982.

McCulloch, Warren S. *Embodiments of Mind*. MIT Press, 1965.

Rasiowa, H. *An Algebraic Approach to Non-Classical Logics*. North-Holland, 1974.

Thomason, Richmond H., "Combinations of Tense and Modality," in Gabbay and Guenthner, vol II.

Turner, Raymond. *Logics for Artificial Intelligence*. Ellis Horwood Ltd., 1984.

[1]: https://web.archive.org/web/20060201230923/http://www.phil.mq.edu.au/isl/
