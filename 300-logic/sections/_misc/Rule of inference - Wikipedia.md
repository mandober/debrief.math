---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Rule_of_inference
page-title:       Rule of inference - Wikipedia
article-title:    Rule of inference - Wikipedia
---
# Rule of inference - Wikipedia

In the philosophy of logic, a rule of inference, inference rule or transformation rule is a logical form consisting of a function which takes premises, analyzes their syntax, and returns a conclusion (or conclusions). For example, the rule of inference called modus ponens takes two premises, one in the form "If p then q" and another in the form "p", and returns the conclusion "q". The rule is valid with respect to the semantics of classical logic (as well as the semantics of many other non-classical logics), in the sense that if the premises are true (under an interpretation), then so is the conclusion.
In the [philosophy of logic][1], a __rule of inference__, __inference rule__ or __transformation rule__ is a [logical form][2] consisting of a function which takes premises, analyzes their [syntax][3], and returns a conclusion (or [conclusions][4]). For example, the rule of inference called *[modus ponens][5]* takes two premises, one in the form "If p then q" and another in the form "p", and returns the conclusion "q". The rule is valid with respect to the semantics of [classical logic][6] (as well as the semantics of many other [non-classical logics][7]), in the sense that if the premises are true (under an interpretation), then so is the conclusion.

Typically, a rule of inference preserves truth, a semantic property. In [many-valued logic][8], it preserves a general designation. But a rule of inference's action is purely syntactic, and does not need to preserve any semantic property: any function from sets of formulae to formulae counts as a rule of inference. Usually only rules that are [recursive][9] are important; i.e. rules such that there is an [effective procedure][10] for determining whether any given formula is the conclusion of a given set of formulae according to the rule. An example of a rule that is not effective in this sense is the infinitary [ω-rule][11].[\[1\]][12]

Popular rules of inference in [propositional logic][13] include *[modus ponens][14]*, *[modus tollens][15]*, and [contraposition][16]. First-order [predicate logic][17] uses rules of inference to deal with [logical quantifiers][18].

## Standard form\[[edit][19]\]

In [formal logic][20] (and many related areas), rules of inference are usually given in the following standard form:

  Premise#1  
  Premise#2  
        __...__  
 Premise#n   
  Conclusion

This expression states that whenever in the course of some logical derivation the given premises have been obtained, the specified conclusion can be taken for granted as well. The exact formal language that is used to describe both premises and conclusions depends on the actual context of the derivations. In a simple case, one may use logical formulae, such as in:

![A\to B](https://wikimedia.org/api/rest_v1/media/math/render/svg/d5b8dd84619daff17b52a08b77d15db2b9ad6c2a)

![\underline {A\quad \quad \quad }\,\!](https://wikimedia.org/api/rest_v1/media/math/render/svg/aaae14f3e7411747757d5ca86f6816926fd30500)

![B\!](https://wikimedia.org/api/rest_v1/media/math/render/svg/b0862a1de92638c6dbf56966deeb873becc27ec3)

This is the *[modus ponens][21]* rule of [propositional logic][22]. Rules of inference are often formulated as [schemata][23] employing [metavariables][24].[\[2\]][25] In the rule (schema) above, the metavariables A and B can be instantiated to any element of the universe (or sometimes, by convention, a restricted subset such as [propositions][26]) to form an [infinite set][27] of inference rules.

A proof system is formed from a set of rules chained together to form proofs, also called *derivations*. Any derivation has only one final conclusion, which is the statement proved or derived. If premises are left unsatisfied in the derivation, then the derivation is a proof of a *hypothetical* statement: "*if* the premises hold, *then* the conclusion holds."

## Example: Hilbert systems for two propositional logics\[[edit][28]\]

In a [Hilbert system][29], the premises and conclusion of the inference rules are simply formulae of some language, usually employing metavariables. For graphical compactness of the presentation and to emphasize the distinction between axioms and rules of inference, this section uses the [sequent][30] notation (![\vdash ](https://wikimedia.org/api/rest_v1/media/math/render/svg/a0c0d30cf8cb7dba179e317fcde9583d842e80f6)) instead of a vertical presentation of rules. In this notation,

![{\displaystyle {\begin{array}{c}{\text{Premise }}1\\{\text{Premise }}2\\\hline {\text{Conclusion}}\end{array}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/bc2ca0736b56770850a9c2149ac9bfb27d339d15)

is written as ![{\displaystyle ({\text{Premise }}1),({\text{Premise }}2)\vdash ({\text{Conclusion}})}](https://wikimedia.org/api/rest_v1/media/math/render/svg/edc721df013604df1859e8767f065450d844214c).

The formal language for classical [propositional logic][31] can be expressed using just negation (¬), implication (→) and propositional symbols. A well-known axiomatization, comprising three axiom schemata and one inference rule (*modus ponens*), is:

(CA1) ⊢ *A* → (*B* → *A*)  
(CA2) ⊢ (*A* → (*B* → *C*)) → ((*A* → *B*) → (*A* → *C*))  
(CA3) ⊢ (¬*A* → ¬*B*) → (*B* → *A*)  
(MP)  *A*, *A* → *B* ⊢ *B*

It may seem redundant to have two notions of inference in this case, ⊢ and →. In classical propositional logic, they indeed coincide; the [deduction theorem][32] states that *A* ⊢ *B* if and only if ⊢ *A* → *B*. There is however a distinction worth emphasizing even in this case: the first notation describes a [deduction][33], that is an activity of passing from sentences to sentences, whereas *A* → *B* is simply a formula made with a [logical connective][34], implication in this case. Without an inference rule (like *modus ponens* in this case), there is no deduction or inference. This point is illustrated in [Lewis Carroll][35]'s dialogue called "[What the Tortoise Said to Achilles][36]",[\[3\]][37] as well as later attempts by [Bertrand Russell and Peter Winch][38] to resolve the paradox introduced in the dialogue.

For some non-classical logics, the deduction theorem does not hold. For example, the [three-valued logic][39] of [Łukasiewicz][40] can be axiomatized as:[\[4\]][41]

(CA1) ⊢ *A* → (*B* → *A*)  
(LA2) ⊢ (*A* → *B*) → ((*B* → *C*) → (*A* → *C*))  
(CA3) ⊢ (¬*A* → ¬*B*) → (*B* → *A*)  
(LA4) ⊢ ((*A* → ¬*A*) → *A*) → *A*  
(MP)  *A*, *A* → *B* ⊢ *B*

This sequence differs from classical logic by the change in axiom 2 and the addition of axiom 4. The classical deduction theorem does not hold for this logic, however a modified form does hold, namely *A* ⊢ *B* if and only if ⊢ *A* → (*A* → *B*).[\[5\]][42]

## Admissibility and derivability\[[edit][43]\]

In a set of rules, an inference rule could be redundant in the sense that it is *admissible* or *derivable*. A derivable rule is one whose conclusion can be derived from its premises using the other rules. An admissible rule is one whose conclusion holds whenever the premises hold. All derivable rules are admissible. To appreciate the difference, consider the following set of rules for defining the [natural numbers][44] (the [judgment][45] ![n\,\,\mathsf{nat}](https://wikimedia.org/api/rest_v1/media/math/render/svg/56836978b9bf5e4a172bb62d6a808b7bdb9056de) asserts the fact that ![n](https://wikimedia.org/api/rest_v1/media/math/render/svg/a601995d55609f2d9f5e233e36fbe9ea26011b3b) is a natural number):

![{\displaystyle {\begin{matrix}{\begin{array}{c}\\\hline {\mathbf {0} \,\,{\mathsf {nat}}}\end{array}}&{\begin{array}{c}{n\,\,{\mathsf {nat}}}\\\hline {\mathbf {s(} n\mathbf {)} \,\,{\mathsf {nat}}}\end{array}}\end{matrix}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/cdb37bbe426f552b53a29aff1992099c599c0d62)

The first rule states that __0__ is a natural number, and the second states that __s(__*n*__)__ is a natural number if *n* is. In this proof system, the following rule, demonstrating that the second successor of a natural number is also a natural number, is derivable:

![{\displaystyle {\begin{array}{c}{n\,\,{\mathsf {nat}}}\\\hline {\mathbf {s(s(} n\mathbf {))} \,\,{\mathsf {nat}}}\end{array}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/0b14176857073903c03c73cb41b8f87f10c775f2)

Its derivation is the composition of two uses of the successor rule above. The following rule for asserting the existence of a predecessor for any nonzero number is merely admissible:

![{\displaystyle {\begin{array}{c}{\mathbf {s(} n\mathbf {)} \,\,{\mathsf {nat}}}\\\hline {n\,\,{\mathsf {nat}}}\end{array}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/17e03dacbbf021cffc457fc83e164942f9143fef)

This is a true fact of natural numbers, as can be proven by [induction][46]. (To prove that this rule is admissible, assume a derivation of the premise and induct on it to produce a derivation of ![n \,\,\mathsf{nat}](https://wikimedia.org/api/rest_v1/media/math/render/svg/56836978b9bf5e4a172bb62d6a808b7bdb9056de).) However, it is not derivable, because it depends on the structure of the derivation of the premise. Because of this, derivability is stable under additions to the proof system, whereas admissibility is not. To see the difference, suppose the following nonsense rule were added to the proof system:

![{\displaystyle {\begin{array}{c}\\\hline {\mathbf {s(-3)} \,\,{\mathsf {nat}}}\end{array}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/73d283949be3ec29e8e975ad039ab73599261d0a)

In this new system, the double-successor rule is still derivable. However, the rule for finding the predecessor is no longer admissible, because there is no way to derive ![\mathbf{-3} \,\,\mathsf{nat}](https://wikimedia.org/api/rest_v1/media/math/render/svg/88aceb4e1d50e19e019223220992aa6ad01c8d86). The brittleness of admissibility comes from the way it is proved: since the proof can induct on the structure of the derivations of the premises, extensions to the system add new cases to this proof, which may no longer hold.

Admissible rules can be thought of as [theorems][47] of a proof system. For instance, in a [sequent calculus][48] where [cut elimination][49] holds, the *cut* rule is admissible.

## See also\[[edit][50]\]

-   [Argumentation scheme][51]
-   [Immediate inference][52]
-   [Inference objection][53]
-   [Law of thought][54]
-   [List of rules of inference][55]
-   [Logical truth][56]
-   [Structural rule][57]

## References\[[edit][58]\]

1.  __[^][59]__ Boolos, George; Burgess, John; Jeffrey, Richard C. (2007). [*Computability and logic*][60]. Cambridge: Cambridge University Press. p. [364][61]. [ISBN][62] [0-521-87752-0][63].
2.  __[^][64]__ John C. Reynolds (2009) \[1998\]. [*Theories of Programming Languages*][65]. Cambridge University Press. p. 12. [ISBN][66] [978-0-521-10697-9][67].
3.  __[^][68]__ Kosta Dosen (1996). "Logical consequence: a turn in style". In [Maria Luisa Dalla Chiara][69]; Kees Doets; Daniele Mundici; Johan van Benthem (eds.). [*Logic and Scientific Methods: Volume One of the Tenth International Congress of Logic, Methodology and Philosophy of Science, Florence, August 1995*][70]. Springer. p. 290. [ISBN][71] [978-0-7923-4383-7][72]. [preprint (with different pagination)][73]
4.  __[^][74]__ Bergmann, Merrie (2008). [*An introduction to many-valued and fuzzy logic: semantics, algebras, and derivation systems*][75]. Cambridge University Press. p. [100][76]. [ISBN][77] [978-0-521-88128-9][78].
5.  __[^][79]__ Bergmann, Merrie (2008). [*An introduction to many-valued and fuzzy logic: semantics, algebras, and derivation systems*][80]. Cambridge University Press. p. [114][81]. [ISBN][82] [978-0-521-88128-9][83].

[1]: https://en.wikipedia.org/wiki/Philosophy_of_logic "Philosophy of logic"
[2]: https://en.wikipedia.org/wiki/Logical_form "Logical form"
[3]: https://en.wikipedia.org/wiki/Syntax_(logic) "Syntax (logic)"
[4]: https://en.wikipedia.org/wiki/Multiple-conclusion_logic "Multiple-conclusion logic"
[5]: https://en.wikipedia.org/wiki/Modus_ponens "Modus ponens"
[6]: https://en.wikipedia.org/wiki/Classical_logic "Classical logic"
[7]: https://en.wikipedia.org/wiki/Non-classical_logic "Non-classical logic"
[8]: https://en.wikipedia.org/wiki/Many-valued_logic "Many-valued logic"
[9]: https://en.wikipedia.org/wiki/Recursion "Recursion"
[10]: https://en.wikipedia.org/wiki/Effective_procedure "Effective procedure"
[11]: https://en.wikipedia.org/wiki/%CE%A9-consistent_theory "Ω-consistent theory"
[12]: https://en.wikipedia.org/wiki/Rule_of_inference#cite_note-1
[13]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[14]: https://en.wikipedia.org/wiki/Modus_ponens "Modus ponens"
[15]: https://en.wikipedia.org/wiki/Modus_tollens "Modus tollens"
[16]: https://en.wikipedia.org/wiki/Contraposition "Contraposition"
[17]: https://en.wikipedia.org/wiki/Predicate_logic "Predicate logic"
[18]: https://en.wikipedia.org/wiki/Logical_quantifier "Logical quantifier"
[19]: https://en.wikipedia.org/w/index.php?title=Rule_of_inference&action=edit&section=1 "Edit section: Standard form"
[20]: https://en.wikipedia.org/wiki/Formal_logic "Formal logic"
[21]: https://en.wikipedia.org/wiki/Modus_ponens "Modus ponens"
[22]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[23]: https://en.wikipedia.org/wiki/Schema_(logic) "Schema (logic)"
[24]: https://en.wikipedia.org/wiki/Metavariable "Metavariable"
[25]: https://en.wikipedia.org/wiki/Rule_of_inference#cite_note-Reynolds2009-2
[26]: https://en.wikipedia.org/wiki/Proposition "Proposition"
[27]: https://en.wikipedia.org/wiki/Infinite_set "Infinite set"
[28]: https://en.wikipedia.org/w/index.php?title=Rule_of_inference&action=edit&section=2 "Edit section: Example: Hilbert systems for two propositional logics"
[29]: https://en.wikipedia.org/wiki/Hilbert_system "Hilbert system"
[30]: https://en.wikipedia.org/wiki/Sequent "Sequent"
[31]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[32]: https://en.wikipedia.org/wiki/Deduction_theorem "Deduction theorem"
[33]: https://en.wikipedia.org/wiki/Deductive_reasoning "Deductive reasoning"
[34]: https://en.wikipedia.org/wiki/Logical_connective "Logical connective"
[35]: https://en.wikipedia.org/wiki/Lewis_Carroll "Lewis Carroll"
[36]: https://en.wikipedia.org/wiki/What_the_Tortoise_Said_to_Achilles "What the Tortoise Said to Achilles"
[37]: https://en.wikipedia.org/wiki/Rule_of_inference#cite_note-ChiaraDoets1996-3
[38]: https://en.wikipedia.org/wiki/What_the_Tortoise_Said_to_Achilles#Discussion "What the Tortoise Said to Achilles"
[39]: https://en.wikipedia.org/wiki/Three-valued_logic "Three-valued logic"
[40]: https://en.wikipedia.org/wiki/Jan_%C5%81ukasiewicz "Jan Łukasiewicz"
[41]: https://en.wikipedia.org/wiki/Rule_of_inference#cite_note-4
[42]: https://en.wikipedia.org/wiki/Rule_of_inference#cite_note-5
[43]: https://en.wikipedia.org/w/index.php?title=Rule_of_inference&action=edit&section=3 "Edit section: Admissibility and derivability"
[44]: https://en.wikipedia.org/wiki/Natural_number "Natural number"
[45]: https://en.wikipedia.org/wiki/Natural_deduction "Natural deduction"
[46]: https://en.wikipedia.org/wiki/Mathematical_induction "Mathematical induction"
[47]: https://en.wikipedia.org/wiki/Theorem "Theorem"
[48]: https://en.wikipedia.org/wiki/Sequent_calculus "Sequent calculus"
[49]: https://en.wikipedia.org/wiki/Cut_elimination "Cut elimination"
[50]: https://en.wikipedia.org/w/index.php?title=Rule_of_inference&action=edit&section=4 "Edit section: See also"
[51]: https://en.wikipedia.org/wiki/Argumentation_scheme "Argumentation scheme"
[52]: https://en.wikipedia.org/wiki/Immediate_inference "Immediate inference"
[53]: https://en.wikipedia.org/wiki/Inference_objection "Inference objection"
[54]: https://en.wikipedia.org/wiki/Law_of_thought "Law of thought"
[55]: https://en.wikipedia.org/wiki/List_of_rules_of_inference "List of rules of inference"
[56]: https://en.wikipedia.org/wiki/Logical_truth "Logical truth"
[57]: https://en.wikipedia.org/wiki/Structural_rule "Structural rule"
[58]: https://en.wikipedia.org/w/index.php?title=Rule_of_inference&action=edit&section=5 "Edit section: References"
[59]: https://en.wikipedia.org/wiki/Rule_of_inference#cite_ref-1 "Jump up"
[60]: https://archive.org/details/computabilitylog0000bool/page/364
[61]: https://archive.org/details/computabilitylog0000bool/page/364
[62]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[63]: https://en.wikipedia.org/wiki/Special:BookSources/0-521-87752-0 "Special:BookSources/0-521-87752-0"
[64]: https://en.wikipedia.org/wiki/Rule_of_inference#cite_ref-Reynolds2009_2-0 "Jump up"
[65]: https://books.google.com/books?id=2OwlTC4SOccC&pg=PA12
[66]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[67]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-521-10697-9 "Special:BookSources/978-0-521-10697-9"
[68]: https://en.wikipedia.org/wiki/Rule_of_inference#cite_ref-ChiaraDoets1996_3-0 "Jump up"
[69]: https://en.wikipedia.org/wiki/Maria_Luisa_Dalla_Chiara "Maria Luisa Dalla Chiara"
[70]: https://books.google.com/books?id=TCthvF8xLIAC&pg=PA290
[71]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[72]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-7923-4383-7 "Special:BookSources/978-0-7923-4383-7"
[73]: http://www.mi.sanu.ac.rs/~kosta/LOGCONS.pdf
[74]: https://en.wikipedia.org/wiki/Rule_of_inference#cite_ref-4 "Jump up"
[75]: https://archive.org/details/introductiontoma00mber
[76]: https://archive.org/details/introductiontoma00mber/page/n113
[77]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[78]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-521-88128-9 "Special:BookSources/978-0-521-88128-9"
[79]: https://en.wikipedia.org/wiki/Rule_of_inference#cite_ref-5 "Jump up"
[80]: https://archive.org/details/introductiontoma00mber
[81]: https://archive.org/details/introductiontoma00mber/page/n127
[82]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[83]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-521-88128-9 "Special:BookSources/978-0-521-88128-9"
