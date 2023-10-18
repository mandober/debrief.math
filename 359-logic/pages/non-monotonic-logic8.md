---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Non-monotonic_logic
page-title:       Non-monotonic logic - Wikipedia
article-title:    Non-monotonic logic - Wikipedia
---
# Non-monotonic logic - Wikipedia

(Redirected from Nonmonotonic logic)
 (Redirected from [Nonmonotonic logic][1])

A __non-monotonic logic__ is a [formal logic][2] whose [conclusion][3] [relation][4] is not [monotonic][5]. In other words, non-monotonic logics are devised to capture and represent defeasible inferences (cf. [defeasible reasoning][6]), i.e., a kind of inference in which reasoners draw tentative conclusions, enabling reasoners to retract their conclusion(s) based on further evidence.[\[1\]][7] Most studied formal logics have a monotonic entailment relation, meaning that adding a formula to a theory never produces a pruning of its set of conclusions. Intuitively, monotonicity indicates that learning a new piece of knowledge cannot reduce the set of what is known. A monotonic logic cannot handle various reasoning tasks such as [reasoning by default][8] (conclusions may be derived only because of lack of evidence of the contrary), [abductive reasoning][9] (conclusions are only deduced as most likely explanations), some important approaches to reasoning about knowledge (the ignorance of a conclusion must be retracted when the conclusion becomes known), and similarly, [belief revision][10] (new knowledge may contradict old beliefs).

## Abductive reasoning\[[edit][11]\]

[Abductive reasoning][12] is the process of deriving a sufficient explanation of the known facts. An abductive logic should not be monotonic because the likely explanations are not necessarily correct. For example, the likely explanation for seeing wet grass is that it rained; however, this explanation has to be retracted when learning that the real cause of the grass being wet was a sprinkler. Since the old explanation (it rained) is retracted because of the addition of a piece of knowledge (a sprinkler was active), any logic that models explanations is non-monotonic.

## Reasoning about knowledge\[[edit][13]\]

If a logic includes formulae that mean that something is not known, this logic should not be monotonic. Indeed, learning something that was previously not known leads to the removal of the formula specifying that this piece of knowledge is not known. This second change (a removal caused by an addition) violates the condition of monotonicity. A logic for reasoning about knowledge is the [autoepistemic logic][14].

## Belief revision\[[edit][15]\]

[Belief revision][16] is the process of changing beliefs to accommodate a new belief that might be inconsistent with the old ones. In the assumption that the new belief is correct, some of the old ones have to be retracted in order to maintain consistency. This retraction in response to an addition of a new belief makes any logic for belief revision to be non-monotonic. The belief revision approach is alternative to [paraconsistent logics][17], which tolerate inconsistency rather than attempting to remove it.

## See also\[[edit][18]\]

-   [Logic programming][19]
-   [Negation as failure][20]
-   [Stable model semantics][21]
-   [Rational consequence relation][22]

## Notes\[[edit][23]\]

1.  __[^][24]__ Strasser, Christian; Antonelli, G. Aldo. ["Non-Monotonic Logic"][25]. *plato.stanford.edu/index.html*. Stanford Encyclopedia of Philosophy. Retrieved 19 March 2015.

## References\[[edit][26]\]

-   N. Bidoit and R. Hull (1989) "[Minimalism, justification and non-monotonicity in deductive databases][27]," *Journal of Computer and System Sciences 38*: 290–325.
-   G. Brewka (1991). *[Nonmonotonic Reasoning: Logical Foundations of Commonsense][28]*. Cambridge University Press.
-   G. Brewka, J. Dix, K. Konolige (1997). *[Nonmonotonic Reasoning - An Overview][29]*. CSLI publications, Stanford.
-   M. Cadoli and M. Schaerf (1993) "[A survey of complexity results for non-monotonic logics][30]" *Journal of Logic Programming 17*: 127–60.
-   F. M. Donini, M. Lenzerini, D. Nardi, F. Pirri, and M. Schaerf (1990) "[Nonmonotonic reasoning][31]," *Artificial Intelligence Review 4*: 163–210.
-   [D.M. Gabbay][32] (1985). *[Theoretical foundations for non-monotonic reasoning in expert systems][33].* In: Apt K.R. (ed) Logics and Models of Concurrent Systems. NATO ASI Series (Series F: Computer and Systems Sciences), vol 13. Springer, Berlin, Heidelberg, pp. 439–457.
-   M. L. Ginsberg, ed. (1987) *Readings in Nonmonotonic Reasoning*. Los Altos CA: Morgan Kaufmann.
-   Horty, J. F., 2001, "Nonmonotonic Logic," in Goble, Lou, ed., *The Blackwell Guide to Philosophical Logic*. Blackwell.
-   W. Lukaszewicz (1990) *Non-Monotonic Reasoning*. Ellis-Horwood, Chichester, West Sussex, England.
-   C.G. Lundberg (2000) "[Made sense and remembered sense: Sensemaking through abduction][34]," *Journal of Economic Psychology*: 21(6), 691–709.
-   D. Makinson (2005) *[Bridges from Classical to Nonmonotonic Logic][35]*, College Publications.
-   W. Marek and M. Truszczynski (1993) *[Nonmonotonic Logics: Context-Dependent Reasoning][36]*. Springer Verlag.
-   A. Nait Abdallah (1995) *[The Logic of Partial Information][37]*. Springer Verlag.

## External links\[[edit][38]\]

-   Antonelli, G. Aldo. ["Non-monotonic logic"][39]. In [Zalta, Edward N.][40] (ed.). *[Stanford Encyclopedia of Philosophy][41]*.
-   [Non-monotonic logic][42] at [PhilPapers][43]
-   [Non-monotonic logic][44] at the [Indiana Philosophy Ontology Project][45]

[1]: https://en.wikipedia.org/w/index.php?title=Nonmonotonic_logic&redirect=no "Nonmonotonic logic"
[2]: https://en.wikipedia.org/wiki/Formal_logic "Formal logic"
[3]: https://en.wikipedia.org/wiki/Logical_conclusion "Logical conclusion"
[4]: https://en.wikipedia.org/wiki/Relation_(mathematics) "Relation (mathematics)"
[5]: https://en.wikipedia.org/wiki/Monotonicity_of_entailment "Monotonicity of entailment"
[6]: https://en.wikipedia.org/wiki/Defeasible_reasoning "Defeasible reasoning"
[7]: https://en.wikipedia.org/wiki/Non-monotonic_logic#cite_note-1
[8]: https://en.wikipedia.org/wiki/Default_logic "Default logic"
[9]: https://en.wikipedia.org/wiki/Abductive_reasoning "Abductive reasoning"
[10]: https://en.wikipedia.org/wiki/Belief_revision "Belief revision"
[11]: https://en.wikipedia.org/w/index.php?title=Non-monotonic_logic&action=edit&section=1 "Edit section: Abductive reasoning"
[12]: https://en.wikipedia.org/wiki/Abductive_reasoning "Abductive reasoning"
[13]: https://en.wikipedia.org/w/index.php?title=Non-monotonic_logic&action=edit&section=2 "Edit section: Reasoning about knowledge"
[14]: https://en.wikipedia.org/wiki/Autoepistemic_logic "Autoepistemic logic"
[15]: https://en.wikipedia.org/w/index.php?title=Non-monotonic_logic&action=edit&section=3 "Edit section: Belief revision"
[16]: https://en.wikipedia.org/wiki/Belief_revision "Belief revision"
[17]: https://en.wikipedia.org/wiki/Paraconsistent_logics "Paraconsistent logics"
[18]: https://en.wikipedia.org/w/index.php?title=Non-monotonic_logic&action=edit&section=4 "Edit section: See also"
[19]: https://en.wikipedia.org/wiki/Logic_programming "Logic programming"
[20]: https://en.wikipedia.org/wiki/Negation_as_failure "Negation as failure"
[21]: https://en.wikipedia.org/wiki/Stable_model_semantics "Stable model semantics"
[22]: https://en.wikipedia.org/wiki/Rational_consequence_relation "Rational consequence relation"
[23]: https://en.wikipedia.org/w/index.php?title=Non-monotonic_logic&action=edit&section=5 "Edit section: Notes"
[24]: https://en.wikipedia.org/wiki/Non-monotonic_logic#cite_ref-1 "Jump up"
[25]: http://plato.stanford.edu/entries/logic-nonmonotonic/
[26]: https://en.wikipedia.org/w/index.php?title=Non-monotonic_logic&action=edit&section=6 "Edit section: References"
[27]: http://www.sciencedirect.com/science/article/pii/0022000089900044
[28]: https://books.google.com/books?id=S41BSy8Xk44C&printsec=frontcover#v=onepage&q&f=false
[29]: http://www.informatik.uni-leipzig.de/~brewka/papers/nonmonbook.ps
[30]: http://www.sciencedirect.com/science/article/pii/074310669390029G
[31]: https://link.springer.com/article/10.1007/BF00140676
[32]: https://en.wikipedia.org/wiki/Dov_Gabbay "Dov Gabbay"
[33]: https://link.springer.com/chapter/10.1007/978-3-642-82453-1_15#citeas
[34]: https://web.archive.org/web/20170907080541/https://pdfs.semanticscholar.org/cce4/b4fa69ed4c7cf997f1fbf38542c247bb19ea.pdf
[35]: https://www.researchgate.net/profile/David_Makinson3/publication/262934388_Bridges_from_Classical_to_Nonmonotonic_Logic/links/54bfe86a0cf28a6324a00672.pdf
[36]: https://books.google.com/books?id=W-apCAAAQBAJ&printsec=frontcover#v=onepage&q&f=false
[37]: https://books.google.com/books?id=1QarCAAAQBAJ&printsec=frontcover#v=onepage&q&f=false
[38]: https://en.wikipedia.org/w/index.php?title=Non-monotonic_logic&action=edit&section=7 "Edit section: External links"
[39]: https://plato.stanford.edu/entries/logic-nonmonotonic/
[40]: https://en.wikipedia.org/wiki/Edward_N._Zalta "Edward N. Zalta"
[41]: https://en.wikipedia.org/wiki/Stanford_Encyclopedia_of_Philosophy "Stanford Encyclopedia of Philosophy"
[42]: https://philpapers.org/browse/nonmonotonic-logic
[43]: https://en.wikipedia.org/wiki/PhilPapers "PhilPapers"
[44]: https://www.inphoproject.org/idea/1208
[45]: https://en.wikipedia.org/wiki/Indiana_Philosophy_Ontology_Project "Indiana Philosophy Ontology Project"
