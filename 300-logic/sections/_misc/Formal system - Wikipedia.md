---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Formal_system
page-title:       Formal system - Wikipedia
article-title:    Formal system - Wikipedia
---
# Formal system - Wikipedia

A formal system is an abstract structure used for inferring theorems from axioms according to a set of rules. These rules, which are used for carrying out the inference of theorems from axioms, are the logical calculus of the formal system. 
A formal system is essentially an "axiomatic system".[1]
A __formal system__ is an [abstract structure][1] used for inferring theorems from axioms according to a set of rules. These rules, which are used for carrying out the inference of theorems from axioms, are the __logical calculus__ of the formal system. A formal system is essentially an "[axiomatic system][2]".[\[1\]][3]

In 1921, [David Hilbert][4] proposed to use such a system as the foundation for the knowledge in [mathematics][5].[\[2\]][6] A formal system may represent a well-defined [system of abstract thought][7].

The term *formalism* is sometimes a rough synonym for *formal system*, but it also refers to a given style of [notation][8], for example, [Paul Dirac][9]'s [bra–ket notation][10].

## Background\[[edit][11]\]

Each formal system uses primitive [symbols][12] (which collectively form an [alphabet][13]) to finitely construct a [formal language][14] from a set of [axioms][15] through inferential [rules of formation][16].

The system thus consists of valid formulas built up through finite combinations of the primitive symbols—combinations that are formed from the axioms in accordance with the stated rules.[\[3\]][17]

More formally, this can be expressed as the following:

1.  A finite set of symbols, known as the alphabet, which concatenate formulas, so that a formula is just a finite string of symbols taken from the alphabet.
2.  A [grammar][18] consisting of rules to form formulas from simpler formulas. A formula is said to be [well-formed][19] if it can be formed using the rules of the formal grammar. It is often required that there be a decision procedure for deciding whether a formula is well-formed.
3.  A set of axioms, or [axiom schemata][20], consisting of well-formed formulas.
4.  A set of [inference rules][21]. A well-formed formula that can be inferred from the axioms is known as a theorem of the formal system.

### Recursive\[[edit][22]\]

A formal system is said to be [recursive][23] (i.e. effective) or recursively enumerable if the set of axioms and the set of inference rules are [decidable sets][24] or [semidecidable sets][25], respectively.

### Inference and entailment\[[edit][26]\]

The [entailment][27] of the system by its logical foundation is what distinguishes a formal system from others which may have some basis in an abstract model. Often the formal system will be the basis for or even identified with a larger [theory][28] or field (e.g. [Euclidean geometry][29]) consistent with the usage in modern mathematics such as [model theory][30].\[*[clarification needed][31]*\]

#### Formal language\[[edit][32]\]

A [formal language][33] is a language that is defined by a formal system. Like languages in [linguistics][34], formal languages generally have two aspects:

-   the [syntax][35] of a language is what the language looks like (more formally: the set of possible expressions that are valid utterances in the language) studied in [formal language theory][36]
-   the [semantics][37] of a language are what the utterances of the language mean (which is formalized in various ways, depending on the type of language in question)

In [computer science][38] and [linguistics][39] usually only the syntax of a formal language is considered via the notion of a [formal grammar][40]. A formal grammar is a precise description of the syntax of a formal language: a [set][41] of [strings][42]. The two main categories of formal grammar are that of [generative grammars][43], which are sets of rules for how strings in a language can be generated, and that of [analytic grammars][44] (or reductive grammar,[\[4\]][45][\[5\]][46]) which are sets of rules for how a string can be analyzed to determine whether it is a member of the language. In short, an analytic grammar describes how to *recognize* when strings are members in the set, whereas a generative grammar describes how to *write* only those strings in the set.

In [mathematics][47], a formal language is usually not described by a formal grammar but by (a) natural language, such as English. Logical systems are defined by both a deductive system and natural language. Deductive systems in turn are only defined by natural language (see below).

#### Deductive system\[[edit][48]\]

A *deductive system*, also called a *deductive apparatus* or a *logic*, consists of the [axioms][49] (or [axiom schemata][50]) and [rules of inference][51] that can be used to [derive][52] [theorems][53] of the system.[\[6\]][54]

Such deductive systems preserve [deductive][55] qualities in the [formulas][56] that are expressed in the system. Usually the quality we are concerned with is [truth][57] as opposed to falsehood. However, other [modalities][58], such as [justification][59] or [belief][60] may be preserved instead.

In order to sustain its deductive integrity, a *deductive apparatus* must be definable without reference to any [intended interpretation][61] of the language. The aim is to ensure that each line of a [derivation][62] is merely a [syntactic consequence][63] of the lines that precede it. There should be no element of any [interpretation][64] of the language that gets involved with the deductive nature of the system.

An example of deductive system is [first order predicate logic][65].

#### Logical system\[[edit][66]\]

A *logical system* or *language* (not be confused with the kind of "formal language" discussed above which is described by a formal grammar), is a deductive system (see section above; most commonly [first order predicate logic][67]) together with additional (non-logical) axioms and a [semantics][68]\[*[disputed][69] – [discuss][70]*\]. According to [model-theoretic][71] [interpretation][72], the semantics of a logical system describe whether a well-formed formula is satisfied by a given structure. A structure that satisfies all the axioms of the formal system is known as a model of the logical system. A logical system is [sound][73] if each well-formed formula that can be inferred from the axioms is satisfied by every model of the logical system. Conversely, a logic system is [complete][74] if each well-formed formula that is satisfied by every model of the logical system can be inferred from the axioms.

An example of a logical system is [Peano arithmetic][75].

## History\[[edit][76]\]

Early logic systems includes Indian logic of [Pāṇini][77], syllogistic logic of Aristotle, propositional logic of Stoicism, and Chinese logic of [Gongsun Long][78] (c. 325–250 BCE) . In more recent times, contributors include [George Boole][79], [Augustus De Morgan][80], and [Gottlob Frege][81]. [Mathematical logic][82] was developed in 19th century [Europe][83].

### Formalism\[[edit][84]\]

#### Hilbert's program\[[edit][85]\]

[David Hilbert][86] instigated a formalist movement that was eventually tempered by [Gödel's incompleteness theorems][87].

[![[icon]](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Wiki_letter_w_cropped.svg/20px-Wiki_letter_w_cropped.svg.png)][88]

This section __needs expansion__. You can help by [adding to it][89]. *(January 2017)*

### QED manifesto\[[edit][90]\]

The QED manifesto represented a subsequent, as yet unsuccessful, effort at formalization of known mathematics.

[![[icon]](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Wiki_letter_w_cropped.svg/20px-Wiki_letter_w_cropped.svg.png)][91]

This section __needs expansion__. You can help by [adding to it][92]. *(January 2017)*

## Examples\[[edit][93]\]

Examples of formal systems include:

-   [Lambda calculus][94]
-   [Predicate calculus][95]
-   [Propositional calculus][96]

[![[icon]](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Wiki_letter_w_cropped.svg/20px-Wiki_letter_w_cropped.svg.png)][97]

This section __needs expansion__. You can help by [adding to it][98]. *(January 2017)*

## Variants\[[edit][99]\]

The following systems are variations of formal systems\[*[clarification needed][100]*\].

### Proof system\[[edit][101]\]

Formal proofs are sequences of [well-formed formulas][102] (or wff for short). For a wff to qualify as part of a proof, it might either be an [axiom][103] or be the product of applying an inference rule on previous wffs in the proof sequence. The last wff in the sequence is recognized as a [theorem][104].

The point of view that generating formal proofs is all there is to mathematics is often called *[formalism][105]*. [David Hilbert][106] founded [metamathematics][107] as a discipline for discussing formal systems. Any language that one uses to talk about a formal system is called a *[metalanguage][108]*. The metalanguage may be a natural language, or it may be partially formalized itself, but it is generally less completely formalized than the formal language component of the formal system under examination, which is then called the *[object language][109]*, that is, the object of the discussion in question.

Once a formal system is given, one can define the set of theorems which can be proved inside the formal system. This set consists of all wffs for which there is a proof. Thus all axioms are considered theorems. Unlike the grammar for wffs, there is no guarantee that there will be a [decision procedure][110] for deciding whether a given wff is a theorem or not. The notion of *theorem* just defined should not be confused with *theorems about the formal system*, which, in order to avoid confusion, are usually called [metatheorems][111].

## See also\[[edit][112]\]

## References\[[edit][113]\]

1.  __[^][114]__ ["Formal system, ENCYCLOPÆDIA BRITANNICA"][115].
2.  __[^][116]__ Zach, Richard (31 July 2003). ["Hilbert's Program, Stanford Encyclopedia of Philosophy"][117].
3.  __[^][118]__ Encyclopædia Britannica, [Formal system][119] definition, 2007.
4.  __[^][120]__ Reductive grammar: (*computer science*) A set of syntactic rules for the analysis of strings to determine whether the strings exist in a language. ["Sci-Tech Dictionary McGraw-Hill Dictionary of Scientific and Technical Terms"][121] (6th ed.). McGraw-Hill.\[*[unreliable source?][122]*\] About the Author Compiled by The Editors of the McGraw-Hill Encyclopedia of Science & Technology (New York, NY) an in-house staff who represents the cutting-edge of skill, knowledge, and innovation in science publishing. [\[1\]][123]
5.  __[^][124]__ "There are two classes of formal-language definition compiler-writing schemes. The productive [grammar][125] approach is the most common. A productive grammar consists primarrly of a set of rules that describe a method of generating all possible strings of the language. The reductive or [analytical grammar][126] technique states a set of rules that describe a method of analyzing any string of characters and deciding whether that string is in the language." ["__The TREE-META Compiler-Compiler System: A Meta Compiler System for the Univac 1108 and General Electric 645__, University of Utah Technical Report RADC-TR-69-83. C. Stephen Carr, David A. Luther, Sherian Erdmann"][127] (PDF). Retrieved 5 January 2015.
6.  __[^][128]__ Hunter, Geoffrey, Metalogic: An Introduction to the Metatheory of Standard First-Order Logic, University of California Pres, 1971

## Further reading\[[edit][129]\]

-   [Raymond M. Smullyan][130], 1961. *Theory of Formal Systems: Annals of Mathematics Studies*, Princeton University Press (April 1, 1961) 156 pages [ISBN][131] [0-691-08047-X][132]
-   [Stephen Cole Kleene][133], 1967. *Mathematical Logic* Reprinted by Dover, 2002. [ISBN][134] [0-486-42533-9][135]
-   [Douglas Hofstadter][136], 1979. *[Gödel, Escher, Bach: An Eternal Golden Braid][137]* [ISBN][138] [978-0-465-02656-2][139]. 777 pages.

## External links\[[edit][140]\]

-   [![](https://upload.wikimedia.org/wikipedia/en/thumb/4/4a/Commons-logo.svg/12px-Commons-logo.svg.png)][141] Media related to [Formal systems][142] at Wikimedia Commons
-   Encyclopædia Britannica, [Formal system][143] definition, 2007.
-   [What is a Formal System?][144]: Some quotes from John Haugeland's \`Artificial Intelligence: The Very Idea' (1985), pp. 48–64.
-   Peter Suber, [Formal Systems and Machines: An Isomorphism][145], 1997.

[1]: https://en.wikipedia.org/wiki/Abstract_structure "Abstract structure"
[2]: https://en.wikipedia.org/wiki/Axiomatic_system "Axiomatic system"
[3]: https://en.wikipedia.org/wiki/Formal_system#cite_note-1
[4]: https://en.wikipedia.org/wiki/David_Hilbert "David Hilbert"
[5]: https://en.wikipedia.org/wiki/Mathematics "Mathematics"
[6]: https://en.wikipedia.org/wiki/Formal_system#cite_note-2
[7]: https://en.wikipedia.org/wiki/Abstraction "Abstraction"
[8]: https://en.wikipedia.org/wiki/Notation "Notation"
[9]: https://en.wikipedia.org/wiki/Paul_Dirac "Paul Dirac"
[10]: https://en.wikipedia.org/wiki/Bra%E2%80%93ket_notation "Bra–ket notation"
[11]: https://en.wikipedia.org/w/index.php?title=Formal_system&action=edit&section=1 "Edit section: Background"
[12]: https://en.wikipedia.org/wiki/Symbol_(formal) "Symbol (formal)"
[13]: https://en.wikipedia.org/wiki/Alphabet_(computer_science) "Alphabet (computer science)"
[14]: https://en.wikipedia.org/wiki/Formal_language "Formal language"
[15]: https://en.wikipedia.org/wiki/Axiom "Axiom"
[16]: https://en.wikipedia.org/wiki/Rules_of_formation "Rules of formation"
[17]: https://en.wikipedia.org/wiki/Formal_system#cite_note-3
[18]: https://en.wikipedia.org/wiki/Formal_grammar "Formal grammar"
[19]: https://en.wikipedia.org/wiki/Well-formed_formula "Well-formed formula"
[20]: https://en.wikipedia.org/wiki/Axiom_schema "Axiom schema"
[21]: https://en.wikipedia.org/wiki/Rule_of_inference "Rule of inference"
[22]: https://en.wikipedia.org/w/index.php?title=Formal_system&action=edit&section=2 "Edit section: Recursive"
[23]: https://en.wikipedia.org/wiki/Recursive_set "Recursive set"
[24]: https://en.wikipedia.org/wiki/Decidable_set "Decidable set"
[25]: https://en.wikipedia.org/wiki/Recursively_enumerable_set "Recursively enumerable set"
[26]: https://en.wikipedia.org/w/index.php?title=Formal_system&action=edit&section=3 "Edit section: Inference and entailment"
[27]: https://en.wikipedia.org/wiki/Entailment "Entailment"
[28]: https://en.wikipedia.org/wiki/Theory "Theory"
[29]: https://en.wikipedia.org/wiki/Euclidean_geometry "Euclidean geometry"
[30]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[31]: https://en.wikipedia.org/wiki/Wikipedia:Please_clarify "Wikipedia:Please clarify"
[32]: https://en.wikipedia.org/w/index.php?title=Formal_system&action=edit&section=4 "Edit section: Formal language"
[33]: https://en.wikipedia.org/wiki/Formal_language "Formal language"
[34]: https://en.wikipedia.org/wiki/Linguistics "Linguistics"
[35]: https://en.wikipedia.org/wiki/Syntax "Syntax"
[36]: https://en.wikipedia.org/wiki/Formal_language_theory "Formal language theory"
[37]: https://en.wikipedia.org/wiki/Semantics "Semantics"
[38]: https://en.wikipedia.org/wiki/Computer_science "Computer science"
[39]: https://en.wikipedia.org/wiki/Linguistics "Linguistics"
[40]: https://en.wikipedia.org/wiki/Formal_grammar "Formal grammar"
[41]: https://en.wikipedia.org/wiki/Set_(mathematics) "Set (mathematics)"
[42]: https://en.wikipedia.org/wiki/String_(computer_science) "String (computer science)"
[43]: https://en.wikipedia.org/wiki/Generative_grammar "Generative grammar"
[44]: https://en.wikipedia.org/wiki/Analytic_grammar "Analytic grammar"
[45]: https://en.wikipedia.org/wiki/Formal_system#cite_note-4
[46]: https://en.wikipedia.org/wiki/Formal_system#cite_note-5
[47]: https://en.wikipedia.org/wiki/Mathematics "Mathematics"
[48]: https://en.wikipedia.org/w/index.php?title=Formal_system&action=edit&section=5 "Edit section: Deductive system"
[49]: https://en.wikipedia.org/wiki/Axiom "Axiom"
[50]: https://en.wikipedia.org/wiki/Axiom_schema "Axiom schema"
[51]: https://en.wikipedia.org/wiki/Rules_of_inference "Rules of inference"
[52]: https://en.wikipedia.org/wiki/Formal_proof "Formal proof"
[53]: https://en.wikipedia.org/wiki/Theorem "Theorem"
[54]: https://en.wikipedia.org/wiki/Formal_system#cite_note-6
[55]: https://en.wikipedia.org/wiki/Deductive_reasoning "Deductive reasoning"
[56]: https://en.wikipedia.org/wiki/Formula_(mathematical_logic) "Formula (mathematical logic)"
[57]: https://en.wikipedia.org/wiki/Truth "Truth"
[58]: https://en.wikipedia.org/wiki/Modal_logic "Modal logic"
[59]: https://en.wikipedia.org/wiki/Theory_of_justification "Theory of justification"
[60]: https://en.wikipedia.org/wiki/Belief "Belief"
[61]: https://en.wikipedia.org/wiki/Intended_interpretation "Intended interpretation"
[62]: https://en.wikipedia.org/wiki/Mathematical_proof "Mathematical proof"
[63]: https://en.wikipedia.org/wiki/Syntactic_consequence "Syntactic consequence"
[64]: https://en.wikipedia.org/wiki/Interpretation_(logic) "Interpretation (logic)"
[65]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[66]: https://en.wikipedia.org/w/index.php?title=Formal_system&action=edit&section=6 "Edit section: Logical system"
[67]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[68]: https://en.wikipedia.org/wiki/Semantics_of_logic "Semantics of logic"
[69]: https://en.wikipedia.org/wiki/Wikipedia:Disputed_statement "Wikipedia:Disputed statement"
[70]: https://en.wikipedia.org/wiki/Talk:Formal_system#No_semantics_needed "Talk:Formal system"
[71]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[72]: https://en.wikipedia.org/wiki/Interpretation_(logic) "Interpretation (logic)"
[73]: https://en.wikipedia.org/wiki/Soundness "Soundness"
[74]: https://en.wikipedia.org/wiki/Completeness_(logic) "Completeness (logic)"
[75]: https://en.wikipedia.org/wiki/Peano_axioms#First-order_theory_of_arithmetic "Peano axioms"
[76]: https://en.wikipedia.org/w/index.php?title=Formal_system&action=edit&section=7 "Edit section: History"
[77]: https://en.wikipedia.org/wiki/P%C4%81%E1%B9%87ini "Pāṇini"
[78]: https://en.wikipedia.org/wiki/Gongsun_Long "Gongsun Long"
[79]: https://en.wikipedia.org/wiki/George_Boole "George Boole"
[80]: https://en.wikipedia.org/wiki/Augustus_De_Morgan "Augustus De Morgan"
[81]: https://en.wikipedia.org/wiki/Gottlob_Frege "Gottlob Frege"
[82]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[83]: https://en.wikipedia.org/wiki/Europe "Europe"
[84]: https://en.wikipedia.org/w/index.php?title=Formal_system&action=edit&section=8 "Edit section: Formalism"
[85]: https://en.wikipedia.org/w/index.php?title=Formal_system&action=edit&section=9 "Edit section: Hilbert's program"
[86]: https://en.wikipedia.org/wiki/David_Hilbert "David Hilbert"
[87]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_incompleteness_theorems "Gödel's incompleteness theorems"
[88]: https://en.wikipedia.org/wiki/File:Wiki_letter_w_cropped.svg
[89]: https://en.wikipedia.org/w/index.php?title=Formal_system&action=edit&section=
[90]: https://en.wikipedia.org/w/index.php?title=Formal_system&action=edit&section=10 "Edit section: QED manifesto"
[91]: https://en.wikipedia.org/wiki/File:Wiki_letter_w_cropped.svg
[92]: https://en.wikipedia.org/w/index.php?title=Formal_system&action=edit&section=
[93]: https://en.wikipedia.org/w/index.php?title=Formal_system&action=edit&section=11 "Edit section: Examples"
[94]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[95]: https://en.wikipedia.org/wiki/Predicate_calculus "Predicate calculus"
[96]: https://en.wikipedia.org/wiki/Propositional_calculus "Propositional calculus"
[97]: https://en.wikipedia.org/wiki/File:Wiki_letter_w_cropped.svg
[98]: https://en.wikipedia.org/w/index.php?title=Formal_system&action=edit&section=
[99]: https://en.wikipedia.org/w/index.php?title=Formal_system&action=edit&section=12 "Edit section: Variants"
[100]: https://en.wikipedia.org/wiki/Wikipedia:Please_clarify "Wikipedia:Please clarify"
[101]: https://en.wikipedia.org/w/index.php?title=Formal_system&action=edit&section=13 "Edit section: Proof system"
[102]: https://en.wikipedia.org/wiki/Well-formed_formula "Well-formed formula"
[103]: https://en.wikipedia.org/wiki/Axiom "Axiom"
[104]: https://en.wikipedia.org/wiki/Theorem#Theorems_in_logic "Theorem"
[105]: https://en.wikipedia.org/wiki/Philosophy_of_mathematics#Formalism "Philosophy of mathematics"
[106]: https://en.wikipedia.org/wiki/David_Hilbert "David Hilbert"
[107]: https://en.wikipedia.org/wiki/Metamathematics "Metamathematics"
[108]: https://en.wikipedia.org/wiki/Metalanguage "Metalanguage"
[109]: https://en.wikipedia.org/wiki/Object_language "Object language"
[110]: https://en.wikipedia.org/wiki/Decidability_(logic) "Decidability (logic)"
[111]: https://en.wikipedia.org/wiki/Metatheorem "Metatheorem"
[112]: https://en.wikipedia.org/w/index.php?title=Formal_system&action=edit&section=14 "Edit section: See also"
[113]: https://en.wikipedia.org/w/index.php?title=Formal_system&action=edit&section=15 "Edit section: References"
[114]: https://en.wikipedia.org/wiki/Formal_system#cite_ref-1 "Jump up"
[115]: https://www.britannica.com/topic/formal-system
[116]: https://en.wikipedia.org/wiki/Formal_system#cite_ref-2 "Jump up"
[117]: https://plato.stanford.edu/archives/spr2016/entries/hilbert-program
[118]: https://en.wikipedia.org/wiki/Formal_system#cite_ref-3 "Jump up"
[119]: http://www.britannica.com/eb/article-9034889/formal-system
[120]: https://en.wikipedia.org/wiki/Formal_system#cite_ref-4 "Jump up"
[121]: http://encyclopedia2.thefreedictionary.com/reductive+grammar
[122]: https://en.wikipedia.org/wiki/Wikipedia:Reliable_sources "Wikipedia:Reliable sources"
[123]: https://www.amazon.com/McGraw-Hill-Dictionary-Scientific-Technical-Terms/dp/007042313X#productDescription_secondary_view_pageState_1423332836958
[124]: https://en.wikipedia.org/wiki/Formal_system#cite_ref-5 "Jump up"
[125]: https://en.wikipedia.org/wiki/Formal_grammar "Formal grammar"
[126]: https://en.wikipedia.org/wiki/Formal_grammar#Analytic_grammars "Formal grammar"
[127]: http://bitsavers.informatik.uni-stuttgart.de/pdf/sri/arc/rulifson/A_Tree_Meta_For_The_XDS_940_Appendix_D_Apr68.pdf
[128]: https://en.wikipedia.org/wiki/Formal_system#cite_ref-6 "Jump up"
[129]: https://en.wikipedia.org/w/index.php?title=Formal_system&action=edit&section=16 "Edit section: Further reading"
[130]: https://en.wikipedia.org/wiki/Raymond_M._Smullyan "Raymond M. Smullyan"
[131]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[132]: https://en.wikipedia.org/wiki/Special:BookSources/0-691-08047-X "Special:BookSources/0-691-08047-X"
[133]: https://en.wikipedia.org/wiki/Stephen_Cole_Kleene "Stephen Cole Kleene"
[134]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[135]: https://en.wikipedia.org/wiki/Special:BookSources/0-486-42533-9 "Special:BookSources/0-486-42533-9"
[136]: https://en.wikipedia.org/wiki/Douglas_Hofstadter "Douglas Hofstadter"
[137]: https://en.wikipedia.org/wiki/G%C3%B6del,_Escher,_Bach:_An_Eternal_Golden_Braid "Gödel, Escher, Bach: An Eternal Golden Braid"
[138]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[139]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-465-02656-2 "Special:BookSources/978-0-465-02656-2"
[140]: https://en.wikipedia.org/w/index.php?title=Formal_system&action=edit&section=17 "Edit section: External links"
[141]: https://en.wikipedia.org/wiki/File:Commons-logo.svg
[142]: https://commons.wikimedia.org/wiki/Category:Formal_systems "commons:Category:Formal systems"
[143]: http://www.britannica.com/eb/article-9034889/formal-system
[144]: http://www.cs.indiana.edu/~port/teach/641/formal.sys.haug.html
[145]: http://www.earlham.edu/~peters/courses/logsys/machines.htm
