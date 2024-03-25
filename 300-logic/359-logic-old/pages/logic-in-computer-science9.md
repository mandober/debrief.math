---
downloaded:       2021-12-18
page-url:         https://en.wikipedia.org/wiki/Logic_in_computer_science
page-title:       Logic in computer science - Wikipedia
article-title:    Logic in computer science - Wikipedia
---
# Logic in computer science - Wikipedia


[![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Logic_Gates.svg/250px-Logic_Gates.svg.png)][1]

__Logic in computer science__ covers the overlap between the field of [logic][2] and that of [computer science][3]. The topic can essentially be divided into three main areas:

-   Theoretical foundations and analysis
-   Use of computer technology to aid logicians
-   Use of concepts from logic for computer applications

## Theoretical foundations and analysis\[[edit][4]\]

Logic plays a fundamental role in computer science. Some of the key areas of logic that are particularly significant are [computability theory][5] (formerly called recursion theory), [modal logic][6] and [category theory][7]. The [theory of computation][8] is based on concepts defined by logicians and mathematicians such as [Alonzo Church][9] and [Alan Turing][10].[\[1\]][11][\[2\]][12] Church first showed the existence of algorithmically unsolvable problems using his notion of lambda-definability. Turing gave the first compelling analysis of what can be called a mechanical procedure and [Kurt Gödel][13] asserted that he found Turing's analysis "perfect."[\[3\]][14] In addition some other major areas of theoretical overlap between logic and computer science are:

-   [Gödel's incompleteness theorem][15] proves that any logical system powerful enough to characterize arithmetic will contain statements that can neither be proved nor disproved within that system. This has direct application to theoretical issues relating to the feasibility of proving the completeness and correctness of software.[\[4\]][16]
-   The [frame problem][17] is a basic problem that must be overcome when using [first-order logic][18] to represent the goals and state of an artificial intelligence agent.[\[5\]][19]
-   The [Curry–Howard correspondence][20] is a relation between logical systems and software. This theory established a precise correspondence between proofs and programs. In particular it showed that terms in the simply-typed lambda-calculus correspond to proofs of intuitionistic propositional logic.
-   [Category theory][21] represents a view of mathematics that emphasizes the relations between structures. It is intimately tied to many aspects of computer science: type systems for programming languages, the theory of transition systems, models of programming languages and the theory of programming language semantics.[\[6\]][22]

## Computers to assist logicians\[[edit][23]\]

One of the first applications to use the term [artificial intelligence][24] was the Logic Theorist system developed by [Allen Newell][25], J. C. Shaw, and [Herbert Simon][26] in 1956. One of the things that a logician does is to take a set of statements in logic and deduce the conclusions (additional statements) that must be true by the laws of logic. For example, If given a logical system that states "All humans are mortal" and "Socrates is human" a valid conclusion is "Socrates is mortal". Of course this is a trivial example. In actual logical systems the statements can be numerous and complex. It was realized early on that this kind of analysis could be significantly aided by the use of computers. The Logic Theorist validated the theoretical work of [Bertrand Russell][27] and [Alfred North Whitehead][28] in their influential work on mathematical logic called *[Principia Mathematica][29]*. In addition, subsequent systems have been utilized by logicians to validate and discover new logical theorems and proofs.[\[7\]][30]

## Logic applications for computers\[[edit][31]\]

There has always been a strong influence from mathematical logic on the field of [artificial intelligence][32] (AI). From the beginning of the field it was realized that technology to automate logical inferences could have great potential to solve problems and draw conclusions from facts. Ron Brachman has described [first-order logic][33] (FOL) as the metric by which all AI [knowledge representation][34] formalisms should be evaluated. There is no more general or powerful known method for describing and analyzing information than FOL. The reason FOL itself is simply not used as a computer language is that it is actually too expressive, in the sense that FOL can easily express statements that no computer, no matter how powerful, could ever solve. For this reason every form of knowledge representation is in some sense a trade off between expressivity and computability. The more expressive the language is, the closer it is to FOL, the more likely it is to be slower and prone to an infinite loop.[\[8\]][35]

For example, IF THEN rules used in [expert systems][36] approximate to a very limited subset of FOL. Rather than arbitrary formulas with the full range of logical operators the starting point is simply what logicians refer to as [modus ponens][37]. As a result, [rule-based systems][38] can support high-performance computation, especially if they take advantage of optimization algorithms and compilation.[\[9\]][39]

Another major area of research for logical theory was software engineering. Research projects such as the [Knowledge Based Software Assistant][40] and Programmer's Apprentice programs applied logical theory to validate the correctness of software specifications. They also used them to transform the specifications into efficient code on diverse platforms and to prove the equivalence between the implementation and the specification.[\[10\]][41] This formal transformation driven approach is often far more effortful than traditional software development. However, in specific domains with appropriate formalisms and reusable templates the approach has proven viable for commercial products. The appropriate domains are usually those such as weapons systems, security systems, and real time financial systems where failure of the system has excessively high human or financial cost. An example of such a domain is [Very Large Scale Integrated (VLSI)][42] design—the process for designing the chips used for the CPUs and other critical components of digital devices. An error in a chip is catastrophic. Unlike software, chips can't be patched or updated. As a result, there is commercial justification for using formal methods to prove that the implementation corresponds to the specification.[\[11\]][43]

Another important application of logic to computer technology has been in the area of [frame languages][44] and automatic classifiers. [Frame languages][45] such as [KL-ONE][46] have a rigid semantics. Definitions in KL-ONE can be directly mapped to set theory and the predicate calculus. This allows specialized theorem provers called classifiers to analyze the various declarations between sets, subsets, and relations in a given model. In this way the model can be validated and any inconsistent definitions flagged. The classifier can also infer new information, for example define new sets based on existing information and change the definition of existing sets based on new data. The level of flexibility is ideal for handling the ever changing world of the Internet. Classifier technology is built on top of languages such as the [Web Ontology Language][47] to allow a logical semantic level on to the existing Internet. This layer of is called the [Semantic web][48].[\[12\]][49][\[13\]][50]

[Temporal logic][51] is used for reasoning in [concurrent systems][52].[\[14\]][53]

## See also\[[edit][54]\]

-   [Automated reasoning][55]
-   [Computational logic][56]
-   [Logic programming][57]

## References\[[edit][58]\]

1.  __[^][59]__ [Lewis, Harry R.][60] (1981). [*Elements of the Theory of Computation*][61]. [Prentice Hall][62].
2.  __[^][63]__ [Davis, Martin][64] (11 May 1995). ["Influences of Mathematical Logic on Computer Science"][65]. In Rolf Herken (ed.). *The Universal Turing Machine*. Springer Verlag. [ISBN][66] [9783211826379][67]. Retrieved 26 December 2013.
3.  __[^][68]__ Kennedy, Juliette (2014-08-21). [*Interpreting Godel*][69]. Cambridge University Press. [ISBN][70] [9781107002661][71]. Retrieved 17 August 2015.
4.  __[^][72]__ [Hofstadter, Douglas R.][73] (1999-02-05). [*Gödel, Escher, Bach: An Eternal Golden Braid*][74]. Basic Books. [ISBN][75] [978-0465026562][76].
5.  __[^][77]__ [McCarthy, John][78]; P.J. Hayes (1969). ["Some philosophical problems from the standpoint of artificial intelligence"][79] (PDF). *Machine Intelligence*. __4__: 463–502.
6.  __[^][80]__ Barr, Michael; Charles Wells (1998). [*Category Theory for Computing Science*][81] (PDF). [Centre de Recherches Mathématiques][82].
7.  __[^][83]__ Newell, Allen; J.C. Shaw; H.C. Simon (1963). ["Empirical explorations with the logic theory machine"][84]. In Ed Feigenbaum (ed.). *Computers and Thought*. McGraw Hill. pp. [109–133][85]. [ISBN][86] [978-0262560924][87].
8.  __[^][88]__ Levesque, Hector; Ronald Brachman (1985). ["A Fundamental Tradeoff in Knowledge Representation and Reasoning"][89]. In Ronald Brachman and Hector J. Levesque (ed.). [*Reading in Knowledge Representation*][90]. Morgan Kaufmann. p. [49][91]. [ISBN][92] [0-934613-01-X][93]. The good news in reducing KR service to theorem proving is that we now have a very clear, very specific notion of what the KR system should do; the bad new is that it is also clear that the services can not be provided... deciding whether or not a sentence in FOL is a theorem... is unsolvable.
9.  __[^][94]__ Forgy, Charles (1982). ["Rete: A Fast Algorithm for the Many Pattern/Many Object Pattern Match Problem\*"][95] (PDF). *Artificial Intelligence*. __19__: 17–37. [doi][96]:[10.1016/0004-3702(82)90020-0][97]. Archived from [the original][98] (PDF) on 2013-12-27. Retrieved 25 December 2013.
10.  __[^][99]__ Rich, Charles; Richard C. Waters (November 1987). ["The Programmer's Apprentice Project: A Research Overview"][100] (PDF). *IEEE Expert*. Archived from [the original][101] (PDF) on 2017-07-06. Retrieved 26 December 2013.
11.  __[^][102]__ Stavridou, Victoria (1993). [*Formal Methods in Circuit Design*][103]. Press Syndicate of the University of Cambridge. [ISBN][104] [0-521-443369][105]. Retrieved 26 December 2013.
12.  __[^][106]__ MacGregor, Robert (June 1991). "Using a description classifier to enhance knowledge representation". *IEEE Expert*. __6__ (3): 41–46. [doi][107]:[10.1109/64.87683][108]. [S2CID][109] [29575443][110].
13.  __[^][111]__ [Berners-Lee, Tim][112]; James Hendler; Ora Lassila (May 17, 2001). ["The Semantic Web A new form of Web content that is meaningful to computers will unleash a revolution of new possibilities"][113]. *Scientific American*. __284__: 34–43. [doi][114]:[10.1038/scientificamerican0501-34][115]. Archived from [the original][116] on April 24, 2013.
14.  __[^][117]__ Colin Stirling (1992). "Modal and Temporal Logics". In S. Abramsky; D. M. Gabbay; T. S. E. Maibaum (eds.). *Handbook of Logic in Computer Science*. __II__. Oxford University Press. pp. 477–563. [ISBN][118] [0-19-853761-1][119].

## Further reading\[[edit][120]\]

-   Ben-Ari, Mordechai (2012). [*Mathematical Logic for Computer Science*][121] (3rd ed.). Springer-Verlag. [ISBN][122] [978-1447141280][123].
-   Harrison, John (2009). [*Handbook of Practical Logic and Automated Reasoning*][124] (1st ed.). Cambridge University Press. [ISBN][125] [978-0521899574][126].
-   Huth, Michael; Ryan, Mark (2004). [*Logic in Computer Science: Modelling and Reasoning about Systems*][127] (2nd ed.). Cambridge University Press. [ISBN][128] [978-0521543101][129].
-   Burris, Stanley N. (1997). [*Logic for Mathematics and Computer Science*][130] (1st ed.). Prentice Hall. [ISBN][131] [978-0132859745][132].

## External links\[[edit][133]\]

-   [Article on *Logic and Artificial Intelligence*][134] at the [Stanford Encyclopedia of Philosophy][135].
-   [IEEE Symposium on Logic in Computer Science][136] (LICS)
-   Alwen Tiu, [Introduction to logic][137] video recording of a lecture at ANU Logic Summer School '09 (aimed mostly at computer scientists)

[1]: https://en.wikipedia.org/wiki/File:Logic_Gates.svg
[2]: https://en.wikipedia.org/wiki/Logic "Logic"
[3]: https://en.wikipedia.org/wiki/Computer_science "Computer science"
[4]: https://en.wikipedia.org/w/index.php?title=Logic_in_computer_science&action=edit&section=1 "Edit section: Theoretical foundations and analysis"
[5]: https://en.wikipedia.org/wiki/Computability_theory "Computability theory"
[6]: https://en.wikipedia.org/wiki/Modal_logic "Modal logic"
[7]: https://en.wikipedia.org/wiki/Category_theory "Category theory"
[8]: https://en.wikipedia.org/wiki/Theory_of_computation "Theory of computation"
[9]: https://en.wikipedia.org/wiki/Alonzo_Church "Alonzo Church"
[10]: https://en.wikipedia.org/wiki/Alan_Turing "Alan Turing"
[11]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_note-1
[12]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_note-2
[13]: https://en.wikipedia.org/wiki/Kurt_G%C3%B6del "Kurt Gödel"
[14]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_note-3
[15]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_incompleteness_theorem "Gödel's incompleteness theorem"
[16]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_note-4
[17]: https://en.wikipedia.org/wiki/Frame_problem "Frame problem"
[18]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[19]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_note-5
[20]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence "Curry–Howard correspondence"
[21]: https://en.wikipedia.org/wiki/Category_theory "Category theory"
[22]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_note-6
[23]: https://en.wikipedia.org/w/index.php?title=Logic_in_computer_science&action=edit&section=2 "Edit section: Computers to assist logicians"
[24]: https://en.wikipedia.org/wiki/Artificial_intelligence "Artificial intelligence"
[25]: https://en.wikipedia.org/wiki/Allen_Newell "Allen Newell"
[26]: https://en.wikipedia.org/wiki/Herbert_A._Simon "Herbert A. Simon"
[27]: https://en.wikipedia.org/wiki/Bertrand_Russell "Bertrand Russell"
[28]: https://en.wikipedia.org/wiki/Alfred_North_Whitehead "Alfred North Whitehead"
[29]: https://en.wikipedia.org/wiki/Principia_Mathematica "Principia Mathematica"
[30]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_note-7
[31]: https://en.wikipedia.org/w/index.php?title=Logic_in_computer_science&action=edit&section=3 "Edit section: Logic applications for computers"
[32]: https://en.wikipedia.org/wiki/Artificial_intelligence "Artificial intelligence"
[33]: https://en.wikipedia.org/wiki/First-order_logic "First-order logic"
[34]: https://en.wikipedia.org/wiki/Knowledge_representation "Knowledge representation"
[35]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_note-8
[36]: https://en.wikipedia.org/wiki/Expert_system "Expert system"
[37]: https://en.wikipedia.org/wiki/Modus_ponens "Modus ponens"
[38]: https://en.wikipedia.org/wiki/Rule-based_system "Rule-based system"
[39]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_note-9
[40]: https://en.wikipedia.org/wiki/Knowledge_Based_Software_Assistant "Knowledge Based Software Assistant"
[41]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_note-10
[42]: https://en.wikipedia.org/wiki/Very_Large_Scale_Integration "Very Large Scale Integration"
[43]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_note-11
[44]: https://en.wikipedia.org/wiki/Frame_language "Frame language"
[45]: https://en.wikipedia.org/wiki/Frame_language "Frame language"
[46]: https://en.wikipedia.org/wiki/KL-ONE "KL-ONE"
[47]: https://en.wikipedia.org/wiki/Web_Ontology_Language "Web Ontology Language"
[48]: https://en.wikipedia.org/wiki/Semantic_web "Semantic web"
[49]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_note-12
[50]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_note-13
[51]: https://en.wikipedia.org/wiki/Temporal_logic "Temporal logic"
[52]: https://en.wikipedia.org/wiki/Concurrency_(computing) "Concurrency (computing)"
[53]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_note-14
[54]: https://en.wikipedia.org/w/index.php?title=Logic_in_computer_science&action=edit&section=4 "Edit section: See also"
[55]: https://en.wikipedia.org/wiki/Automated_reasoning "Automated reasoning"
[56]: https://en.wikipedia.org/wiki/Computational_logic "Computational logic"
[57]: https://en.wikipedia.org/wiki/Logic_programming "Logic programming"
[58]: https://en.wikipedia.org/w/index.php?title=Logic_in_computer_science&action=edit&section=5 "Edit section: References"
[59]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_ref-1
[60]: https://en.wikipedia.org/wiki/Harry_R._Lewis "Harry R. Lewis"
[61]: https://archive.org/details/elementsoftheory00lewi
[62]: https://en.wikipedia.org/wiki/Prentice_Hall "Prentice Hall"
[63]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_ref-2
[64]: https://en.wikipedia.org/wiki/Martin_Davis_(mathematician) "Martin Davis (mathematician)"
[65]: https://books.google.com/books?id=YafIDVd1Z68C&pg=PA290
[66]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[67]: https://en.wikipedia.org/wiki/Special:BookSources/9783211826379 "Special:BookSources/9783211826379"
[68]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_ref-3
[69]: https://books.google.com/books?id=ulw3BAAAQBAJ&q=Godel+convinced+by+Turing%27s+analysis&pg=PA118
[70]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[71]: https://en.wikipedia.org/wiki/Special:BookSources/9781107002661 "Special:BookSources/9781107002661"
[72]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_ref-4
[73]: https://en.wikipedia.org/wiki/Douglas_Hofstadter "Douglas Hofstadter"
[74]: https://archive.org/details/gdelescherbachet00hofs
[75]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[76]: https://en.wikipedia.org/wiki/Special:BookSources/978-0465026562 "Special:BookSources/978-0465026562"
[77]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_ref-5
[78]: https://en.wikipedia.org/wiki/John_McCarthy_(computer_scientist) "John McCarthy (computer scientist)"
[79]: http://www-formal.stanford.edu/jmc/mcchay69.pdf
[80]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_ref-6
[81]: https://www.math.mcgill.ca/barr/papers/ctcs.pdf
[82]: https://en.wikipedia.org/wiki/Centre_de_Recherches_Math%C3%A9matiques "Centre de Recherches Mathématiques"
[83]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_ref-7
[84]: https://archive.org/details/computersthought00feig
[85]: https://archive.org/details/computersthought00feig/page/109
[86]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[87]: https://en.wikipedia.org/wiki/Special:BookSources/978-0262560924 "Special:BookSources/978-0262560924"
[88]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_ref-8
[89]: https://archive.org/details/readingsinknowle00brac
[90]: https://archive.org/details/readingsinknowle00brac/page/49
[91]: https://archive.org/details/readingsinknowle00brac/page/49
[92]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[93]: https://en.wikipedia.org/wiki/Special:BookSources/0-934613-01-X "Special:BookSources/0-934613-01-X"
[94]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_ref-9
[95]: https://web.archive.org/web/20131227044049/http://web.yonsei.ac.kr/yusong/lecture/data/BI/Materials/1.1.Rete%20-%20A%20Fast%20Algorithm%20for%20the%20Many%20Pattern,%20Many%20Object%20Pattern%20Match%20Problem.pdf
[96]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[97]: https://doi.org/10.1016%2F0004-3702%2882%2990020-0
[98]: http://web.yonsei.ac.kr/yusong/lecture/data/BI/Materials/1.1.Rete%20-%20A%20Fast%20Algorithm%20for%20the%20Many%20Pattern,%20Many%20Object%20Pattern%20Match%20Problem.pdf
[99]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_ref-10
[100]: https://web.archive.org/web/20170706115702/ftp://publications.ai.mit.edu/ai-publications/pdf/AIM-1004.pdf
[101]: ftp://publications.ai.mit.edu/ai-publications/pdf/AIM-1004.pdf
[102]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_ref-11
[103]: https://books.google.com/books?id=Hf_AZfW2YWsC&q=VLSI+chip+design+formal+methods&pg=PA14
[104]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[105]: https://en.wikipedia.org/wiki/Special:BookSources/0-521-443369 "Special:BookSources/0-521-443369"
[106]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_ref-12
[107]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[108]: https://doi.org/10.1109%2F64.87683
[109]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[110]: https://api.semanticscholar.org/CorpusID:29575443
[111]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_ref-13
[112]: https://en.wikipedia.org/wiki/Tim_Berners-Lee "Tim Berners-Lee"
[113]: https://web.archive.org/web/20130424071228/http://www.cs.umd.edu/~golbeck/LBSC690/SemanticWeb.html
[114]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[115]: https://doi.org/10.1038%2Fscientificamerican0501-34
[116]: http://www.cs.umd.edu/~golbeck/LBSC690/SemanticWeb.html
[117]: https://en.wikipedia.org/wiki/Logic_in_computer_science#cite_ref-14
[118]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[119]: https://en.wikipedia.org/wiki/Special:BookSources/0-19-853761-1 "Special:BookSources/0-19-853761-1"
[120]: https://en.wikipedia.org/w/index.php?title=Logic_in_computer_science&action=edit&section=6 "Edit section: Further reading"
[121]: https://www.weizmann.ac.il/sci-tea/benari/research-activities/mathematical-logic-computer-science-third-edition
[122]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[123]: https://en.wikipedia.org/wiki/Special:BookSources/978-1447141280 "Special:BookSources/978-1447141280"
[124]: https://www.cl.cam.ac.uk/~jrh13/atp/
[125]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[126]: https://en.wikipedia.org/wiki/Special:BookSources/978-0521899574 "Special:BookSources/978-0521899574"
[127]: http://www.cs.bham.ac.uk/research/lics/
[128]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[129]: https://en.wikipedia.org/wiki/Special:BookSources/978-0521543101 "Special:BookSources/978-0521543101"
[130]: https://www.math.uwaterloo.ca/~snburris/htdocs/lmcs.html
[131]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[132]: https://en.wikipedia.org/wiki/Special:BookSources/978-0132859745 "Special:BookSources/978-0132859745"
[133]: https://en.wikipedia.org/w/index.php?title=Logic_in_computer_science&action=edit&section=7 "Edit section: External links"
[134]: http://plato.stanford.edu/entries/logic-ai/
[135]: https://en.wikipedia.org/wiki/Stanford_Encyclopedia_of_Philosophy "Stanford Encyclopedia of Philosophy"
[136]: https://web.archive.org/web/20051025052601/http://www.informatik.hu-berlin.de/lics/
[137]: http://videolectures.net/ssll09_tiu_intlo/
