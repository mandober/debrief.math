---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Material_conditional
page-title:       Material conditional - Wikipedia
article-title:    Material conditional - Wikipedia
---
# Material conditional - Wikipedia

"Logical conditional" redirects here. For other related meanings, see Conditional statement.
"Logical conditional" redirects here. For other related meanings, see [Conditional statement][1].

Material conditional

IMPLY

[![Venn diagram of Material conditional](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Venn1011.svg/150px-Venn1011.svg.png)][2]

Definition

![x\rightarrow y](https://wikimedia.org/api/rest_v1/media/math/render/svg/fce077cec2b56644f63a641afc4266677f1238e7)

[Truth table][3]

![{\displaystyle (1011)}](https://wikimedia.org/api/rest_v1/media/math/render/svg/fae607ae798279320876b3b82ebb9c728590a14f)

[Logic gate][4]

[![IMPLY ANSI.svg](https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/IMPLY_ANSI.svg/70px-IMPLY_ANSI.svg.png)][5]

Normal forms

[Disjunctive][6]

![{\displaystyle {\overline {x}}+y}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1e48860176df3326bc54f0431ee6b72e8ba6d37f)

[Conjunctive][7]

![{\displaystyle {\overline {x}}+y}](https://wikimedia.org/api/rest_v1/media/math/render/svg/1e48860176df3326bc54f0431ee6b72e8ba6d37f)

[Zhegalkin polynomial][8]

![{\displaystyle 1\oplus x\oplus xy}](https://wikimedia.org/api/rest_v1/media/math/render/svg/e5dcdddf5b82b6dd5d7e74a5fb728d6e371f53c6)

[Post's lattices][9]

0-preserving

no

1-preserving

yes

Monotone

no

Affine

no

-   [v][10]
-   [t][11]
-   [e][12]

The __material conditional__ (also known as __material implication__) is an [operation][13] commonly used in [logic][14]. When the conditional symbol ![\rightarrow ](https://wikimedia.org/api/rest_v1/media/math/render/svg/53e574cc3aa5b4bf5f3f5906caf121a378eef08b) is [interpreted][15] as material implication, a formula ![{\displaystyle P\rightarrow Q}](https://wikimedia.org/api/rest_v1/media/math/render/svg/86439ea857adc8eaec93c4d14270b8ba6bd2a6a9) is true unless ![P](https://wikimedia.org/api/rest_v1/media/math/render/svg/b4dc73bf40314945ff376bd363916a738548d40a) is true and ![Q](https://wikimedia.org/api/rest_v1/media/math/render/svg/8752c7023b4b3286800fe3238271bbca681219ed) is false. Material implication can also be characterized inferentially by [modus ponens][16], [modus tollens][17], [conditional proof][18], and [classical reductio ad absurdum][19].\[*[citation needed][20]*\]

Material implication is used in all the basic systems of [classical logic][21] as well as some [nonclassical logics][22]. It is assumed as a model of correct conditional reasoning within mathematics and serves as the basis for commands in many [programming languages][23]. However, many logics replace material implication with other operators such as the [strict conditional][24] and the [variably strict conditional][25]. Due to the [paradoxes of material implication][26] and related problems, material implication is not generally considered a viable analysis of [conditional sentences][27] in [natural language][28].

## Definitions\[[edit][29]\]

### Background definitions\[[edit][30]\]

The material conditional is also notated using the infixes ⊃ and ⇒. In the prefixed [Polish notation][31], conditionals are notated as C*pq*. In a conditional formula *p* → *q*, the subformula *p* is referred to as the *[antecedent][32]* and *q* is termed the *[consequent][33]* of the conditional. Conditional statements may be nested such that the antecedent or the consequent may themselves be conditional statements, as in the formula (*p* → *q*) → (*r* → *s*).

### Definition of material implication\[[edit][34]\]

From a [semantic perspective][35], material implication is the [binary][36] [truth functional][37] operator which returns "true" unless its first argument is true and its second argument is false. This semantics can be shown graphically in a [truth table][38] such as the one below.

p

q

*p* → *q*

T

T

T

T

F

F

F

T

T

F

F

T

The 3rd and 4th logical cases of this truth table, where the antecedent p is false and *p* → *q* is true, are called [vacuous truths][39].

Material implication can also be characterized [deductively][40] in terms of the following [rules of inference][41].\[*[citation needed][42]*\]

1.  [Modus ponens][43]
2.  [Conditional proof][44]
3.  [Classical contraposition][45]
4.  [Classical reductio ad absurdum][46]

Unlike the semantic definition, this approach to logical connectives permits the examination of structurally identical propositional forms in various [logical systems][47], where somewhat different properties may be demonstrated. For example, in [intuitionistic logic][48], which rejects proofs by contraposition as valid rules of inference, (*p* → *q*) ⇒ ¬*p* ∨ *q* is not a propositional theorem, but [the material conditional is used to define negation][49].\[*[clarification needed][50]*\]

## Formal properties\[[edit][51]\]

[![[icon]](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Wiki_letter_w_cropped.svg/20px-Wiki_letter_w_cropped.svg.png)][52]

This section __needs expansion__. You can help by [adding to it][53]. *(February 2021)*

When [disjunction][54], [conjunction][55] and [negation][56] are classical, material implication validates the following equivalences:

Similarly, on classical interpretations of the other connectives, material implication validates the following [entailments][57]:

[Tautologies][58] involving material implication include:

## Discrepancies with natural language\[[edit][59]\]

Material implication does not closely match the usage of [conditional sentences][60] in [natural language][61]. For example, even though material conditionals with false antecedents are [vacuously true][62], the natural language statement "If 8 is odd, then 3 is prime" is typically judged false. Similarly, any material conditional with a true consequent is itself true, but speakers typically reject sentences such as "If I have a penny in my pocket, then Paris is in France". These classic problems have been called the [paradoxes of material implication][63].[\[1\]][64] In addition to the paradoxes, a variety of other arguments have been given against a material implication analysis. For instance, [counterfactual conditionals][65] would all be vacuously true on such an account.[\[2\]][66]

In the mid-20th century, a number of researchers including [H. P. Grice][67] and [Frank Jackson][68] proposed that [pragmatic][69] principles could explain the discrepancies between natural language conditionals and the material conditional. On their accounts, conditionals [denote][70] material implication but end up conveying additional information when they interact with conversational norms such as [Grice's maxims][71].[\[1\]][72][\[3\]][73] Recent work in [formal semantics][74] and [philosophy of language][75] has generally eschewed material implication as an analysis for natural-language conditionals.[\[3\]][76] In particular, such work has often rejected the assumption that natural-language conditionals are [truth functional][77] in the sense that the truth value of "If *P*, then *Q*" is determined solely by the truth values of *P* and *Q*.[\[1\]][78] Thus semantic analyses of conditionals typically propose alternative interpretations built on foundations such as [modal logic][79], [relevance logic][80], [probability theory][81], and [causal models][82].[\[3\]][83][\[1\]][84][\[4\]][85]

Similar discrepancies have been observed by psychologists studying conditional reasoning. For instance, the notorious [Wason selection task][86] study, less than 10% of participants reasoned according to the material conditional. Some researchers have interpreted this result as a failure of the participants to confirm to normative laws of reasoning, while others interpret the participants as reasoning normatively according to nonclassical laws.[\[5\]][87][\[6\]][88][\[7\]][89]

## See also\[[edit][90]\]

### Conditionals\[[edit][91]\]

-   [Counterfactual conditional][92]
-   [Indicative conditional][93]
-   [Corresponding conditional][94]
-   [Strict conditional][95]

## References\[[edit][96]\]

1.  ^ [Jump up to: *__a__*][97] [*__b__*][98] [*__c__*][99] [*__d__*][100] Edgington, Dorothy (2008). Edward N. Zalta (ed.). ["Conditionals"][101]. *The Stanford Encyclopedia of Philosophy* (Winter 2008 ed.).
2.  __[^][102]__ Starr, Will (2019). ["Counterfactuals"][103]. In Zalta, Edward N. (ed.). *The Stanford Encyclopedia of Philosophy*.
3.  ^ [Jump up to: *__a__*][104] [*__b__*][105] [*__c__*][106] Gillies, Thony (2017). ["Conditionals"][107] (PDF). In Hale, B.; Wright, C.; Miller, A. (eds.). *A Companion to the Philosophy of Language*. Wiley Blackwell. [doi][108]:[10.1002/9781118972090.ch17][109].
4.  __[^][110]__ von Fintel, Kai (2011). ["Conditionals"][111] (PDF). In von Heusinger, Klaus; Maienborn, Claudia; Portner, Paul (eds.). *Semantics: An international handbook of meaning*. de Gruyter Mouton. [doi][112]:[10.1515/9783110255072.1515][113]. [hdl][114]:[1721.1/95781][115].
5.  __[^][116]__ Oaksford, M.; Chater, N. (1994). "A rational analysis of the selection task as optimal data selection". *[Psychological Review][117]*. __101__ (4): 608–631. [CiteSeerX][118] [10.1.1.174.4085][119]. [doi][120]:[10.1037/0033-295X.101.4.608][121].
6.  __[^][122]__ Stenning, K.; van Lambalgen, M. (2004). "A little logic goes a long way: basing experiment on semantic theory in the cognitive science of conditional reasoning". *Cognitive Science*. __28__ (4): 481–530. [CiteSeerX][123] [10.1.1.13.1854][124]. [doi][125]:[10.1016/j.cogsci.2004.02.002][126].
7.  __[^][127]__ von Sydow, M. (2006). [*Towards a Flexible Bayesian and Deontic Logic of Testing Descriptive and Prescriptive Rules*][128]. Göttingen: Göttingen University Press.

## Further reading\[[edit][129]\]

-   Brown, Frank Markham (2003), *Boolean Reasoning: The Logic of Boolean Equations*, 1st edition, [Kluwer][130] Academic Publishers, [Norwell][131], MA. 2nd edition, [Dover Publications][132], [Mineola][133], NY, 2003.
-   [Edgington, Dorothy][134] (2001), "Conditionals", in Lou Goble (ed.), *The Blackwell Guide to Philosophical Logic*, [Blackwell][135].
-   [Quine, W.V.][136] (1982), *Methods of Logic*, (1st ed. 1950), (2nd ed. 1959), (3rd ed. 1972), 4th edition, [Harvard University Press][137], [Cambridge][138], MA.
-   [Stalnaker, Robert][139], "Indicative Conditionals", *[Philosophia][140]*, __5__ (1975): 269–286.

## External links\[[edit][141]\]

-   [![](https://upload.wikimedia.org/wikipedia/en/thumb/4/4a/Commons-logo.svg/12px-Commons-logo.svg.png)][142] Media related to [Material conditional][143] at Wikimedia Commons
-   Edgington, Dorothy. ["Conditionals"][144]. In [Zalta, Edward N.][145] (ed.). *[Stanford Encyclopedia of Philosophy][146]*.

[1]: https://en.wikipedia.org/wiki/Conditional_statement_(disambiguation) "Conditional statement (disambiguation)"
[2]: https://en.wikipedia.org/wiki/File:Venn1011.svg "Venn diagram of Material conditional"
[3]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[4]: https://en.wikipedia.org/wiki/Logic_gate "Logic gate"
[5]: https://en.wikipedia.org/wiki/File:IMPLY_ANSI.svg
[6]: https://en.wikipedia.org/wiki/Disjunctive_normal_form "Disjunctive normal form"
[7]: https://en.wikipedia.org/wiki/Conjunctive_normal_form "Conjunctive normal form"
[8]: https://en.wikipedia.org/wiki/Zhegalkin_polynomial "Zhegalkin polynomial"
[9]: https://en.wikipedia.org/wiki/Post%27s_lattice "Post's lattice"
[10]: https://en.wikipedia.org/wiki/Template:Infobox_logical_connective "Template:Infobox logical connective"
[11]: https://en.wikipedia.org/wiki/Template_talk:Infobox_logical_connective "Template talk:Infobox logical connective"
[12]: https://en.wikipedia.org/w/index.php?title=Template:Infobox_logical_connective&action=edit
[13]: https://en.wikipedia.org/wiki/Binary_operator
[14]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[15]: https://en.wikipedia.org/wiki/Semantics_of_logic
[16]: https://en.wikipedia.org/wiki/Modus_ponens "Modus ponens"
[17]: https://en.wikipedia.org/wiki/Modus_tollens "Modus tollens"
[18]: https://en.wikipedia.org/wiki/Conditional_proof "Conditional proof"
[19]: https://en.wikipedia.org/wiki/Reductio_ad_absurdum "Reductio ad absurdum"
[20]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[21]: https://en.wikipedia.org/wiki/Classical_logic "Classical logic"
[22]: https://en.wikipedia.org/wiki/Nonclassical_logic "Nonclassical logic"
[23]: https://en.wikipedia.org/wiki/Programming_language
[24]: https://en.wikipedia.org/wiki/Strict_conditional
[25]: https://en.wikipedia.org/wiki/Variably_strict_conditional "Variably strict conditional"
[26]: https://en.wikipedia.org/wiki/Paradoxes_of_material_implication "Paradoxes of material implication"
[27]: https://en.wikipedia.org/wiki/Conditional_sentence
[28]: https://en.wikipedia.org/wiki/Natural_language "Natural language"
[29]: https://en.wikipedia.org/w/index.php?title=Material_conditional&action=edit&section=1 "Edit section: Definitions"
[30]: https://en.wikipedia.org/w/index.php?title=Material_conditional&action=edit&section=2 "Edit section: Background definitions"
[31]: https://en.wikipedia.org/wiki/Polish_notation "Polish notation"
[32]: https://en.wikipedia.org/wiki/Antecedent_(logic) "Antecedent (logic)"
[33]: https://en.wikipedia.org/wiki/Consequent "Consequent"
[34]: https://en.wikipedia.org/w/index.php?title=Material_conditional&action=edit&section=3 "Edit section: Definition of material implication"
[35]: https://en.wikipedia.org/wiki/Semantics_of_logic "Semantics of logic"
[36]: https://en.wikipedia.org/wiki/Binary_operator "Binary operator"
[37]: https://en.wikipedia.org/wiki/Truth_function "Truth function"
[38]: https://en.wikipedia.org/wiki/Truth_table "Truth table"
[39]: https://en.wikipedia.org/wiki/Vacuous_truth "Vacuous truth"
[40]: https://en.wikipedia.org/wiki/Proof_theory "Proof theory"
[41]: https://en.wikipedia.org/wiki/Rules_of_inference "Rules of inference"
[42]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[43]: https://en.wikipedia.org/wiki/Modus_ponens "Modus ponens"
[44]: https://en.wikipedia.org/wiki/Conditional_proof "Conditional proof"
[45]: https://en.wikipedia.org/wiki/Contraposition "Contraposition"
[46]: https://en.wikipedia.org/wiki/Reductio_ad_absurdum "Reductio ad absurdum"
[47]: https://en.wikipedia.org/wiki/Formal_system "Formal system"
[48]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[49]: https://en.wikipedia.org/wiki/False_(logic)#False,_negation_and_contradiction "False (logic)"
[50]: https://en.wikipedia.org/wiki/Wikipedia:Please_clarify "Wikipedia:Please clarify"
[51]: https://en.wikipedia.org/w/index.php?title=Material_conditional&action=edit&section=4 "Edit section: Formal properties"
[52]: https://en.wikipedia.org/wiki/File:Wiki_letter_w_cropped.svg
[53]: https://en.wikipedia.org/w/index.php?title=Material_conditional&action=edit&section=
[54]: https://en.wikipedia.org/wiki/Disjunction "Disjunction"
[55]: https://en.wikipedia.org/wiki/Logical_conjunction "Logical conjunction"
[56]: https://en.wikipedia.org/wiki/Negation "Negation"
[57]: https://en.wikipedia.org/wiki/Entailment "Entailment"
[58]: https://en.wikipedia.org/wiki/Tautology_(logic) "Tautology (logic)"
[59]: https://en.wikipedia.org/w/index.php?title=Material_conditional&action=edit&section=5 "Edit section: Discrepancies with natural language"
[60]: https://en.wikipedia.org/wiki/Conditional_sentence "Conditional sentence"
[61]: https://en.wikipedia.org/wiki/Natural_language "Natural language"
[62]: https://en.wikipedia.org/wiki/Vacuous_truth "Vacuous truth"
[63]: https://en.wikipedia.org/wiki/Paradoxes_of_material_implication "Paradoxes of material implication"
[64]: https://en.wikipedia.org/wiki/Material_conditional#cite_note-sep-conditionals-1
[65]: https://en.wikipedia.org/wiki/Counterfactual_conditional "Counterfactual conditional"
[66]: https://en.wikipedia.org/wiki/Material_conditional#cite_note-2
[67]: https://en.wikipedia.org/wiki/H._P._Grice "H. P. Grice"
[68]: https://en.wikipedia.org/wiki/Frank_Cameron_Jackson "Frank Cameron Jackson"
[69]: https://en.wikipedia.org/wiki/Pragmatics "Pragmatics"
[70]: https://en.wikipedia.org/wiki/Denotation "Denotation"
[71]: https://en.wikipedia.org/wiki/Cooperative_principle#Grice's_maxims "Cooperative principle"
[72]: https://en.wikipedia.org/wiki/Material_conditional#cite_note-sep-conditionals-1
[73]: https://en.wikipedia.org/wiki/Material_conditional#cite_note-gillies-3
[74]: https://en.wikipedia.org/wiki/Formal_semantics_(natural_language) "Formal semantics (natural language)"
[75]: https://en.wikipedia.org/wiki/Philosophy_of_language "Philosophy of language"
[76]: https://en.wikipedia.org/wiki/Material_conditional#cite_note-gillies-3
[77]: https://en.wikipedia.org/wiki/Truth_function "Truth function"
[78]: https://en.wikipedia.org/wiki/Material_conditional#cite_note-sep-conditionals-1
[79]: https://en.wikipedia.org/wiki/Modal_logic "Modal logic"
[80]: https://en.wikipedia.org/wiki/Relevance_logic "Relevance logic"
[81]: https://en.wikipedia.org/wiki/Probability_theory "Probability theory"
[82]: https://en.wikipedia.org/wiki/Causal_graph "Causal graph"
[83]: https://en.wikipedia.org/wiki/Material_conditional#cite_note-gillies-3
[84]: https://en.wikipedia.org/wiki/Material_conditional#cite_note-sep-conditionals-1
[85]: https://en.wikipedia.org/wiki/Material_conditional#cite_note-4
[86]: https://en.wikipedia.org/wiki/Wason_selection_task "Wason selection task"
[87]: https://en.wikipedia.org/wiki/Material_conditional#cite_note-5
[88]: https://en.wikipedia.org/wiki/Material_conditional#cite_note-6
[89]: https://en.wikipedia.org/wiki/Material_conditional#cite_note-vonSydow2006-7
[90]: https://en.wikipedia.org/w/index.php?title=Material_conditional&action=edit&section=6 "Edit section: See also"
[91]: https://en.wikipedia.org/w/index.php?title=Material_conditional&action=edit&section=7 "Edit section: Conditionals"
[92]: https://en.wikipedia.org/wiki/Counterfactual_conditional "Counterfactual conditional"
[93]: https://en.wikipedia.org/wiki/Indicative_conditional "Indicative conditional"
[94]: https://en.wikipedia.org/wiki/Corresponding_conditional "Corresponding conditional"
[95]: https://en.wikipedia.org/wiki/Strict_conditional "Strict conditional"
[96]: https://en.wikipedia.org/w/index.php?title=Material_conditional&action=edit&section=8 "Edit section: References"
[97]: https://en.wikipedia.org/wiki/Material_conditional#cite_ref-sep-conditionals_1-0
[98]: https://en.wikipedia.org/wiki/Material_conditional#cite_ref-sep-conditionals_1-1
[99]: https://en.wikipedia.org/wiki/Material_conditional#cite_ref-sep-conditionals_1-2
[100]: https://en.wikipedia.org/wiki/Material_conditional#cite_ref-sep-conditionals_1-3
[101]: http://plato.stanford.edu/archives/win2008/entries/conditionals/
[102]: https://en.wikipedia.org/wiki/Material_conditional#cite_ref-2 "Jump up"
[103]: https://plato.stanford.edu/archives/fall2019/entries/counterfactuals
[104]: https://en.wikipedia.org/wiki/Material_conditional#cite_ref-gillies_3-0
[105]: https://en.wikipedia.org/wiki/Material_conditional#cite_ref-gillies_3-1
[106]: https://en.wikipedia.org/wiki/Material_conditional#cite_ref-gillies_3-2
[107]: http://www.thonygillies.org/wp-content/uploads/2015/11/gillies-conditionals-handbook.pdf
[108]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[109]: https://doi.org/10.1002%2F9781118972090.ch17
[110]: https://en.wikipedia.org/wiki/Material_conditional#cite_ref-4 "Jump up"
[111]: http://mit.edu/fintel/fintel-2011-hsk-conditionals.pdf
[112]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[113]: https://doi.org/10.1515%2F9783110255072.1515
[114]: https://en.wikipedia.org/wiki/Hdl_(identifier) "Hdl (identifier)"
[115]: https://hdl.handle.net/1721.1%2F95781
[116]: https://en.wikipedia.org/wiki/Material_conditional#cite_ref-5 "Jump up"
[117]: https://en.wikipedia.org/wiki/Psychological_Review "Psychological Review"
[118]: https://en.wikipedia.org/wiki/CiteSeerX_(identifier) "CiteSeerX (identifier)"
[119]: https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.174.4085
[120]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[121]: https://doi.org/10.1037%2F0033-295X.101.4.608
[122]: https://en.wikipedia.org/wiki/Material_conditional#cite_ref-6 "Jump up"
[123]: https://en.wikipedia.org/wiki/CiteSeerX_(identifier) "CiteSeerX (identifier)"
[124]: https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.13.1854
[125]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[126]: https://doi.org/10.1016%2Fj.cogsci.2004.02.002
[127]: https://en.wikipedia.org/wiki/Material_conditional#cite_ref-vonSydow2006_7-0 "Jump up"
[128]: https://ediss.uni-goettingen.de/handle/11858/00-1735-0000-0006-AC29-9
[129]: https://en.wikipedia.org/w/index.php?title=Material_conditional&action=edit&section=9 "Edit section: Further reading"
[130]: https://en.wikipedia.org/wiki/Kluwer "Kluwer"
[131]: https://en.wikipedia.org/wiki/Norwell,_Massachusetts "Norwell, Massachusetts"
[132]: https://en.wikipedia.org/wiki/Dover_Publications "Dover Publications"
[133]: https://en.wikipedia.org/wiki/Mineola,_New_York "Mineola, New York"
[134]: https://en.wikipedia.org/wiki/Dorothy_Edgington "Dorothy Edgington"
[135]: https://en.wikipedia.org/wiki/Wiley-Blackwell "Wiley-Blackwell"
[136]: https://en.wikipedia.org/wiki/W._V._Quine "W. V. Quine"
[137]: https://en.wikipedia.org/wiki/Harvard_University_Press "Harvard University Press"
[138]: https://en.wikipedia.org/wiki/Cambridge,_Massachusetts "Cambridge, Massachusetts"
[139]: https://en.wikipedia.org/wiki/Robert_Stalnaker "Robert Stalnaker"
[140]: https://en.wikipedia.org/wiki/Philosophia_(journal) "Philosophia (journal)"
[141]: https://en.wikipedia.org/w/index.php?title=Material_conditional&action=edit&section=10 "Edit section: External links"
[142]: https://en.wikipedia.org/wiki/File:Commons-logo.svg
[143]: https://commons.wikimedia.org/wiki/Category:Material_conditional "commons:Category:Material conditional"
[144]: https://plato.stanford.edu/entries/conditionals/
[145]: https://en.wikipedia.org/wiki/Edward_N._Zalta "Edward N. Zalta"
[146]: https://en.wikipedia.org/wiki/Stanford_Encyclopedia_of_Philosophy "Stanford Encyclopedia of Philosophy"
