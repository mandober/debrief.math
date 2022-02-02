---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Proof_theory
page-title:       Proof theory - Wikipedia
article-title:    Proof theory - Wikipedia
---
# Proof theory - Wikipedia

Proof theory is a major branch[1] of mathematical logic that represents proofs as formal mathematical objects, facilitating their analysis by mathematical techniques.  Proofs are typically presented as inductively-defined data structures such as plain lists, boxed lists, or trees, which are constructed according to the axioms and rules of inference of the logical system.  Consequently, proof theory is syntactic in nature, in contrast to model theory, which is semantic in nature.
__Proof theory__ is a major branch[\[1\]][1] of [mathematical logic][2] that represents [proofs][3] as formal [mathematical objects][4], facilitating their analysis by mathematical techniques. Proofs are typically presented as [inductively-defined][5] [data structures][6] such as [plain lists][7], boxed lists, or [trees][8], which are constructed according to the [axioms][9] and [rules of inference][10] of the logical system. Consequently, proof theory is [syntactic][11] in nature, in contrast to [model theory][12], which is [semantic][13] in nature.

Some of the major areas of proof theory include [structural proof theory][14], [ordinal analysis][15], [provability logic][16], [reverse mathematics][17], [proof mining][18], [automated theorem proving][19], and [proof complexity][20]. Much research also focuses on applications in computer science, linguistics, and philosophy.

## History\[[edit][21]\]

Although the formalisation of logic was much advanced by the work of such figures as [Gottlob Frege][22], [Giuseppe Peano][23], [Bertrand Russell][24], and [Richard Dedekind][25], the story of modern proof theory is often seen as being established by [David Hilbert][26], who initiated what is called [Hilbert's program][27] in the [*Foundations of Mathematics*][28]. The central idea of this program was that if we could give [finitary][29] proofs of consistency for all the sophisticated formal theories needed by mathematicians, then we could ground these theories by means of a metamathematical argument, which shows that all of their purely universal assertions (more technically their provable [![\Pi _{1}^{0}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b0b3c0e79d8a5db977a9838be477eb3e30348937) sentences][30]) are finitarily true; once so grounded we do not care about the non-finitary meaning of their existential theorems, regarding these as pseudo-meaningful stipulations of the existence of ideal entities.

The failure of the program was induced by [Kurt Gödel][31]'s [incompleteness theorems][32], which showed that any [ω-consistent theory][33] that is sufficiently strong to express certain simple arithmetic truths, cannot prove its own consistency, which on Gödel's formulation is a ![\Pi _{1}^{0}](https://wikimedia.org/api/rest_v1/media/math/render/svg/b0b3c0e79d8a5db977a9838be477eb3e30348937) sentence. However, modified versions of Hilbert's program emerged and research has been carried out on related topics. This has led, in particular, to:

-   Refinement of Gödel's result, particularly [J. Barkley Rosser][34]'s refinement, weakening the above requirement of ω-consistency to simple consistency;
-   Axiomatisation of the core of Gödel's result in terms of a modal language, [provability logic][35];
-   Transfinite iteration of theories, due to [Alan Turing][36] and [Solomon Feferman][37];
-   The discovery of [self-verifying theories][38], systems strong enough to talk about themselves, but too weak to carry out the [diagonal argument][39] that is the key to Gödel's unprovability argument.

In parallel to the rise and fall of Hilbert's program, the foundations of [structural proof theory][40] were being founded. [Jan Łukasiewicz][41] suggested in 1926 that one could improve on [Hilbert systems][42] as a basis for the axiomatic presentation of logic if one allowed the drawing of conclusions from assumptions in the inference rules of the logic. In response to this, [Stanisław Jaśkowski][43] (1929) and [Gerhard Gentzen][44] (1934) independently provided such systems, called calculi of [natural deduction][45], with Gentzen's approach introducing the idea of symmetry between the grounds for asserting propositions, expressed in [introduction rules][46], and the consequences of accepting propositions in the [elimination rules][47], an idea that has proved very important in proof theory.[\[2\]][48] Gentzen (1934) further introduced the idea of the [sequent calculus][49], a calculus advanced in a similar spirit that better expressed the duality of the logical connectives,[\[3\]][50] and went on to make fundamental advances in the formalisation of intuitionistic logic, and provide the first [combinatorial proof][51] of the consistency of [Peano arithmetic][52]. Together, the presentation of natural deduction and the sequent calculus introduced the fundamental idea of [analytic proof][53] to proof theory.

## Structural proof theory\[[edit][54]\]

Structural proof theory is the subdiscipline of proof theory that studies the specifics of [proof calculi][55]. The three most well-known styles of proof calculi are:

-   The [Hilbert calculi][56]
-   The [natural deduction calculi][57]
-   The [sequent calculi][58]

Each of these can give a complete and axiomatic formalization of [propositional][59] or [predicate logic][60] of either the [classical][61] or [intuitionistic][62] flavour, almost any [modal logic][63], and many [substructural logics][64], such as [relevance logic][65] or [linear logic][66]. Indeed, it is unusual to find a logic that resists being represented in one of these calculi.

Proof theorists are typically interested in proof calculi that support a notion of [analytic proof][67]. The notion of analytic proof was introduced by Gentzen for the sequent calculus; there the analytic proofs are those that are [cut-free][68]. Much of the interest in cut-free proofs comes from the subformula property: every formula in the end sequent of a cut-free proof is a subformula of one of the premises. This allows one to show consistency of the sequent calculus easily; if the empty sequent were derivable it would have to be a subformula of some premise, which it is not. Gentzen's midsequent theorem, the Craig interpolation theorem, and Herbrand's theorem also follow as corollaries of the cut-elimination theorem.

Gentzen's natural deduction calculus also supports a notion of analytic proof, as shown by [Dag Prawitz][69]. The definition is slightly more complex: we say the analytic proofs are the [normal forms][70], which are related to the notion of normal form in term rewriting. More exotic proof calculi such as [Jean-Yves Girard][71]'s [proof nets][72] also support a notion of analytic proof.

A particular family of analytic proofs arising in [reductive logic][73] are [focused proofs][74] which characterise a large family of goal-directed proof-search procedures. The ability to transform a proof system into a focused form is a good indication of its syntactic quality, in a manner similar to how admissibility of cut shows that a proof system is syntactically consistent.[\[4\]][75]

Structural proof theory is connected to [type theory][76] by means of the [Curry–Howard correspondence][77], which observes a structural analogy between the process of normalisation in the natural deduction calculus and beta reduction in the [typed lambda calculus][78]. This provides the foundation for the [intuitionistic type theory][79] developed by [Per Martin-Löf][80], and is often extended to a three way correspondence, the third leg of which are the [cartesian closed categories][81].

Other research topics in structural theory include analytic tableau, which apply the central idea of analytic proof from structural proof theory to provide decision procedures and semi-decision procedures for a wide range of logics, and the proof theory of substructural logics.

## Ordinal analysis\[[edit][82]\]

Ordinal analysis is a powerful technique for providing combinatorial consistency proofs for subsystems of arithmetic, analysis, and set theory. [Gödel's second incompleteness theorem][83] is often interpreted as demonstrating that finitistic consistency proofs are impossible for theories of sufficient strength. Ordinal analysis allows one to measure precisely the infinitary content of the consistency of theories. For a consistent recursively axiomatized theory T, one can prove in finitistic arithmetic that the well-foundedness of a certain transfinite ordinal implies the consistency of T. Gödel's second incompleteness theorem implies that the well-foundedness of such an ordinal cannot be proved in the theory T.

Consequences of ordinal analysis include (1) consistency of subsystems of classical second order arithmetic and set theory relative to constructive theories, (2) combinatorial independence results, and (3) classifications of provably total recursive functions and provably well-founded ordinals.

Ordinal analysis was originated by Gentzen, who proved the consistency of Peano Arithmetic using [transfinite induction][84] up to ordinal ε0. Ordinal analysis has been extended to many fragments of first and second order arithmetic and set theory. One major challenge has been the ordinal analysis of impredicative theories. The first breakthrough in this direction was Takeuti's proof of the consistency of Π1  
1\-CA0 using the method of ordinal diagrams.

## Provability logic\[[edit][85]\]

*Provability logic* is a [modal logic][86], in which the box operator is interpreted as 'it is provable that'. The point is to capture the notion of a proof predicate of a reasonably rich [formal theory][87]. As basic axioms of the provability logic GL ([Gödel][88]\-[Löb][89]), which captures provable in [Peano Arithmetic][90], one takes modal analogues of the Hilbert-Bernays derivability conditions and [Löb's theorem][91] (if it is provable that the provability of A implies A, then A is provable).

Some of the basic results concerning the incompleteness of Peano Arithmetic and related theories have analogues in provability logic. For example, it is a theorem in GL that if a contradiction is not provable then it is not provable that a contradiction is not provable (Gödel's second incompleteness theorem). There are also modal analogues of the fixed-point theorem. [Robert Solovay][92] proved that the modal logic GL is complete with respect to Peano Arithmetic. That is, the propositional theory of provability in Peano Arithmetic is completely represented by the modal logic GL. This straightforwardly implies that propositional reasoning about provability in Peano Arithmetic is complete and decidable.

Other research in provability logic has focused on first-order provability logic, [polymodal provability logic][93] (with one modality representing provability in the object theory and another representing provability in the meta-theory), and [interpretability logics][94] intended to capture the interaction between provability and interpretability. Some very recent research has involved applications of graded provability algebras to the ordinal analysis of arithmetical theories.

## Reverse mathematics\[[edit][95]\]

__Reverse mathematics__ is a program in [mathematical logic][96] that seeks to determine which axioms are required to prove theorems of mathematics.[\[5\]][97] The field was founded by [Harvey Friedman][98]. Its defining method can be described as "going backwards from the [theorems][99] to the [axioms][100]", in contrast to the ordinary mathematical practice of deriving theorems from axioms. The reverse mathematics program was foreshadowed by results in set theory such as the classical theorem that the [axiom of choice][101] and [Zorn's lemma][102] are equivalent over [ZF set theory][103]. The goal of reverse mathematics, however, is to study possible axioms of ordinary theorems of mathematics rather than possible axioms for set theory.

In reverse mathematics, one starts with a framework language and a base theory—a core axiom system—that is too weak to prove most of the theorems one might be interested in, but still powerful enough to develop the definitions necessary to state these theorems. For example, to study the theorem "Every bounded sequence of [real numbers][104] has a [supremum][105]" it is necessary to use a base system that can speak of real numbers and sequences of real numbers.

For each theorem that can be stated in the base system but is not provable in the base system, the goal is to determine the particular axiom system (stronger than the base system) that is necessary to prove that theorem. To show that a system *S* is required to prove a theorem *T*, two proofs are required. The first proof shows *T* is provable from *S*; this is an ordinary mathematical proof along with a justification that it can be carried out in the system *S*. The second proof, known as a __reversal__, shows that *T* itself implies *S*; this proof is carried out in the base system. The reversal establishes that no axiom system *S′* that extends the base system can be weaker than *S* while still proving *T*.

One striking phenomenon in reverse mathematics is the robustness of the *Big Five* axiom systems. In order of increasing strength, these systems are named by the initialisms RCA0, WKL0, ACA0, ATR0, and Π1  
1\-CA0. Nearly every theorem of ordinary mathematics that has been reverse mathematically analyzed has been proven equivalent to one of these five systems. Much recent research has focused on combinatorial principles that do not fit neatly into this framework, like RT2  
2 (Ramsey's theorem for pairs).

Research in reverse mathematics often incorporates methods and techniques from [recursion theory][106] as well as proof theory.

## Functional interpretations\[[edit][107]\]

Functional interpretations are interpretations of non-constructive theories in functional ones. Functional interpretations usually proceed in two stages. First, one "reduces" a classical theory C to an intuitionistic one I. That is, one provides a constructive mapping that translates the theorems of C to the theorems of I. Second, one reduces the intuitionistic theory I to a quantifier free theory of functionals F. These interpretations contribute to a form of Hilbert's program, since they prove the consistency of classical theories relative to constructive ones. Successful functional interpretations have yielded reductions of infinitary theories to finitary theories and impredicative theories to predicative ones.

Functional interpretations also provide a way to extract constructive information from proofs in the reduced theory. As a direct consequence of the interpretation one usually obtains the result that any recursive function whose totality can be proven either in I or in C is represented by a term of F. If one can provide an additional interpretation of F in I, which is sometimes possible, this characterization is in fact usually shown to be exact. It often turns out that the terms of F coincide with a natural class of functions, such as the primitive recursive or polynomial-time computable functions. Functional interpretations have also been used to provide ordinal analyses of theories and classify their provably recursive functions.

The study of functional interpretations began with Kurt Gödel's interpretation of intuitionistic arithmetic in a quantifier-free theory of functionals of finite type. This interpretation is commonly known as the [Dialectica interpretation][108]. Together with the double-negation interpretation of classical logic in intuitionistic logic, it provides a reduction of classical arithmetic to intuitionistic arithmetic.

## Formal and informal proof\[[edit][109]\]

The *informal* proofs of everyday mathematical practice are unlike the *formal* proofs of proof theory. They are rather like high-level sketches that would allow an expert to reconstruct a formal proof at least in principle, given enough time and patience. For most mathematicians, writing a fully formal proof is too pedantic and long-winded to be in common use.

Formal proofs are constructed with the help of computers in [interactive theorem proving][110]. Significantly, these proofs can be checked automatically, also by computer. Checking formal proofs is usually simple, whereas *finding* proofs ([automated theorem proving][111]) is generally hard. An informal proof in the mathematics literature, by contrast, requires weeks of [peer review][112] to be checked, and may still contain errors.

## Proof-theoretic semantics\[[edit][113]\]

In [linguistics][114], [type-logical grammar][115], [categorial grammar][116] and [Montague grammar][117] apply formalisms based on structural proof theory to give a formal [natural language semantics][118].

## See also\[[edit][119]\]

-   [Intermediate logic][120]
-   [Model theory][121]
-   [Proof (truth)][122]
-   [Proof techniques][123]
-   [Sequent calculus][124]

## Notes\[[edit][125]\]

1.  __[^][126]__ According to Wang (1981), pp. 3–4, proof theory is one of four domains mathematical logic, together with [model theory][127], [axiomatic set theory][128], and [recursion theory][129]. [Barwise][130] (1978) consists of four corresponding parts, with part D being about "Proof Theory and Constructive Mathematics".
2.  __[^][131]__ [Prawitz (2006][132], p. 98).
3.  __[^][133]__ Girard, Lafont, and Taylor (1988).
4.  __[^][134]__ Chaudhuri, Kaustuv; Marin, Sonia; Straßburger, Lutz (2016), "Focused and Synthetic Nested Sequents", *Lecture Notes in Computer Science*, Berlin, Heidelberg: Springer Berlin Heidelberg, pp. 390–407, [doi][135]:[10.1007/978-3-662-49630-5\_23][136], [ISBN][137] [978-3-662-49629-9][138]
5.  __[^][139]__ Simpson 2010

## References\[[edit][140]\]

-   J. Avigad and E.H. Reck (2001). ["'Clarifying the nature of the infinite': the development of metamathematics and proof theory][141]". Carnegie-Mellon Technical Report CMU-PHIL-120.
-   [J. Barwise][142], ed. (1978). *Handbook of Mathematical Logic*. North-Holland.
-   S. Buss, ed. (1998) *[Handbook of Proof Theory][143].* Elsevier.
-   [A. S. Troelstra][144] and H. Schwichtenberg (1996). *Basic Proof Theory*, Cambridge Tracts in Theoretical Computer Science, Cambridge University Press, [ISBN][145] [0-521-77911-1][146].
-   G. Gentzen (1935/1969). "[Investigations into logical deduction][147]". In M. E. Szabo, ed. *Collected Papers of Gerhard Gentzen*. North-Holland. Translated by Szabo from "Untersuchungen über das logische Schliessen", *Mathematisches Zeitschrift* v. 39, pp. 176–210, 405 431.
-   [D. Prawitz][148] (1965). *Natural deduction: A proof-theoretical study*, Dover Publications, [ISBN][149] [978-0-486-44655-4][150]
-   S.G. Simpson (2010). *Subsystems of Second-order Arithmetic*, second edition. Cambridge University Press, [ISBN][151] [978-0521150149][152].
-   [H. Wang][153] (1981). *Popular Lectures on Mathematical Logic*, [Van Nostrand Reinhold Company][154], [ISBN][155] [0-442-23109-1][156].

## External links\[[edit][157]\]

-   ["Proof theory"][158], *[Encyclopedia of Mathematics][159]*, [EMS Press][160], 2001 \[1994\]
-   J. von Plato (2008). [The Development of Proof Theory][161]. [Stanford Encyclopedia of Philosophy][162].

[1]: https://en.wikipedia.org/wiki/Proof_theory#cite_note-wang-1
[2]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[3]: https://en.wikipedia.org/wiki/Mathematical_proof "Mathematical proof"
[4]: https://en.wikipedia.org/wiki/Mathematical_object "Mathematical object"
[5]: https://en.wikipedia.org/wiki/Recursive_data_type "Recursive data type"
[6]: https://en.wikipedia.org/wiki/Data_structures "Data structures"
[7]: https://en.wikipedia.org/wiki/List_(computer_science) "List (computer science)"
[8]: https://en.wikipedia.org/wiki/Tree_(data_structure) "Tree (data structure)"
[9]: https://en.wikipedia.org/wiki/Axiom "Axiom"
[10]: https://en.wikipedia.org/wiki/Rule_of_inference "Rule of inference"
[11]: https://en.wikipedia.org/wiki/Syntax_(logic) "Syntax (logic)"
[12]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[13]: https://en.wikipedia.org/wiki/Formal_semantics_(logic) "Formal semantics (logic)"
[14]: https://en.wikipedia.org/wiki/Structural_proof_theory "Structural proof theory"
[15]: https://en.wikipedia.org/wiki/Ordinal_analysis "Ordinal analysis"
[16]: https://en.wikipedia.org/wiki/Provability_logic "Provability logic"
[17]: https://en.wikipedia.org/wiki/Reverse_mathematics "Reverse mathematics"
[18]: https://en.wikipedia.org/wiki/Proof_mining "Proof mining"
[19]: https://en.wikipedia.org/wiki/Automated_theorem_proving "Automated theorem proving"
[20]: https://en.wikipedia.org/wiki/Proof_complexity "Proof complexity"
[21]: https://en.wikipedia.org/w/index.php?title=Proof_theory&action=edit&section=1 "Edit section: History"
[22]: https://en.wikipedia.org/wiki/Gottlob_Frege "Gottlob Frege"
[23]: https://en.wikipedia.org/wiki/Giuseppe_Peano "Giuseppe Peano"
[24]: https://en.wikipedia.org/wiki/Bertrand_Russell "Bertrand Russell"
[25]: https://en.wikipedia.org/wiki/Richard_Dedekind "Richard Dedekind"
[26]: https://en.wikipedia.org/wiki/David_Hilbert "David Hilbert"
[27]: https://en.wikipedia.org/wiki/Hilbert%27s_program "Hilbert's program"
[28]: https://en.wikipedia.org/wiki/Grundlagen_der_Mathematik "Grundlagen der Mathematik"
[29]: https://en.wikipedia.org/wiki/Finitary "Finitary"
[30]: https://en.wikipedia.org/wiki/Arithmetical_hierarchy "Arithmetical hierarchy"
[31]: https://en.wikipedia.org/wiki/Kurt_G%C3%B6del "Kurt Gödel"
[32]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_incompleteness_theorems "Gödel's incompleteness theorems"
[33]: https://en.wikipedia.org/wiki/%CE%A9-consistent_theory "Ω-consistent theory"
[34]: https://en.wikipedia.org/wiki/J._Barkley_Rosser "J. Barkley Rosser"
[35]: https://en.wikipedia.org/wiki/Provability_logic "Provability logic"
[36]: https://en.wikipedia.org/wiki/Alan_Turing "Alan Turing"
[37]: https://en.wikipedia.org/wiki/Solomon_Feferman "Solomon Feferman"
[38]: https://en.wikipedia.org/wiki/Self-verifying_theories "Self-verifying theories"
[39]: https://en.wikipedia.org/wiki/Diagonal_lemma "Diagonal lemma"
[40]: https://en.wikipedia.org/wiki/Structural_proof_theory "Structural proof theory"
[41]: https://en.wikipedia.org/wiki/Jan_%C5%81ukasiewicz "Jan Łukasiewicz"
[42]: https://en.wikipedia.org/wiki/Hilbert_system "Hilbert system"
[43]: https://en.wikipedia.org/wiki/Stanis%C5%82aw_Ja%C5%9Bkowski "Stanisław Jaśkowski"
[44]: https://en.wikipedia.org/wiki/Gerhard_Gentzen "Gerhard Gentzen"
[45]: https://en.wikipedia.org/wiki/Natural_deduction "Natural deduction"
[46]: https://en.wikipedia.org/wiki/Introduction_rule "Introduction rule"
[47]: https://en.wikipedia.org/wiki/Elimination_rule "Elimination rule"
[48]: https://en.wikipedia.org/wiki/Proof_theory#cite_note-2
[49]: https://en.wikipedia.org/wiki/Sequent_calculus "Sequent calculus"
[50]: https://en.wikipedia.org/wiki/Proof_theory#cite_note-3
[51]: https://en.wikipedia.org/wiki/Combinatorial_proof "Combinatorial proof"
[52]: https://en.wikipedia.org/wiki/Peano_arithmetic "Peano arithmetic"
[53]: https://en.wikipedia.org/wiki/Analytic_proof "Analytic proof"
[54]: https://en.wikipedia.org/w/index.php?title=Proof_theory&action=edit&section=2 "Edit section: Structural proof theory"
[55]: https://en.wikipedia.org/wiki/Proof_calculi "Proof calculi"
[56]: https://en.wikipedia.org/wiki/Hilbert_system "Hilbert system"
[57]: https://en.wikipedia.org/wiki/Natural_deduction_calculus "Natural deduction calculus"
[58]: https://en.wikipedia.org/wiki/Sequent_calculus "Sequent calculus"
[59]: https://en.wikipedia.org/wiki/Propositional_logic "Propositional logic"
[60]: https://en.wikipedia.org/wiki/Predicate_logic "Predicate logic"
[61]: https://en.wikipedia.org/wiki/Classical_logic "Classical logic"
[62]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[63]: https://en.wikipedia.org/wiki/Modal_logic "Modal logic"
[64]: https://en.wikipedia.org/wiki/Substructural_logic "Substructural logic"
[65]: https://en.wikipedia.org/wiki/Relevance_logic "Relevance logic"
[66]: https://en.wikipedia.org/wiki/Linear_logic "Linear logic"
[67]: https://en.wikipedia.org/wiki/Analytic_proof "Analytic proof"
[68]: https://en.wikipedia.org/wiki/Cut-elimination_theorem "Cut-elimination theorem"
[69]: https://en.wikipedia.org/wiki/Dag_Prawitz "Dag Prawitz"
[70]: https://en.wikipedia.org/wiki/Natural_deduction#Consistency.2C_completeness.2C_and_normal_forms "Natural deduction"
[71]: https://en.wikipedia.org/wiki/Jean-Yves_Girard "Jean-Yves Girard"
[72]: https://en.wikipedia.org/wiki/Proof_net "Proof net"
[73]: https://en.wikipedia.org/w/index.php?title=Reductive_logic&action=edit&redlink=1 "Reductive logic (page does not exist)"
[74]: https://en.wikipedia.org/wiki/Focused_proof "Focused proof"
[75]: https://en.wikipedia.org/wiki/Proof_theory#cite_note-4
[76]: https://en.wikipedia.org/wiki/Type_theory "Type theory"
[77]: https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence "Curry–Howard correspondence"
[78]: https://en.wikipedia.org/wiki/Typed_lambda_calculus "Typed lambda calculus"
[79]: https://en.wikipedia.org/wiki/Intuitionistic_type_theory "Intuitionistic type theory"
[80]: https://en.wikipedia.org/wiki/Per_Martin-L%C3%B6f "Per Martin-Löf"
[81]: https://en.wikipedia.org/wiki/Cartesian_closed_category "Cartesian closed category"
[82]: https://en.wikipedia.org/w/index.php?title=Proof_theory&action=edit&section=3 "Edit section: Ordinal analysis"
[83]: https://en.wikipedia.org/wiki/G%C3%B6del%27s_second_incompleteness_theorem "Gödel's second incompleteness theorem"
[84]: https://en.wikipedia.org/wiki/Transfinite_induction "Transfinite induction"
[85]: https://en.wikipedia.org/w/index.php?title=Proof_theory&action=edit&section=4 "Edit section: Provability logic"
[86]: https://en.wikipedia.org/wiki/Modal_logic "Modal logic"
[87]: https://en.wikipedia.org/wiki/Theory_(mathematical_logic) "Theory (mathematical logic)"
[88]: https://en.wikipedia.org/wiki/Kurt_G%C3%B6del "Kurt Gödel"
[89]: https://en.wikipedia.org/wiki/Martin_Hugo_L%C3%B6b "Martin Hugo Löb"
[90]: https://en.wikipedia.org/wiki/Peano_Arithmetic "Peano Arithmetic"
[91]: https://en.wikipedia.org/wiki/L%C3%B6b%27s_theorem "Löb's theorem"
[92]: https://en.wikipedia.org/wiki/Robert_Solovay "Robert Solovay"
[93]: https://en.wikipedia.org/wiki/Japaridze%27s_polymodal_logic "Japaridze's polymodal logic"
[94]: https://en.wikipedia.org/wiki/Interpretability_logic "Interpretability logic"
[95]: https://en.wikipedia.org/w/index.php?title=Proof_theory&action=edit&section=5 "Edit section: Reverse mathematics"
[96]: https://en.wikipedia.org/wiki/Mathematical_logic "Mathematical logic"
[97]: https://en.wikipedia.org/wiki/Proof_theory#cite_note-5
[98]: https://en.wikipedia.org/wiki/Harvey_Friedman "Harvey Friedman"
[99]: https://en.wikipedia.org/wiki/Theorem "Theorem"
[100]: https://en.wikipedia.org/wiki/Axiom "Axiom"
[101]: https://en.wikipedia.org/wiki/Axiom_of_choice "Axiom of choice"
[102]: https://en.wikipedia.org/wiki/Zorn%27s_lemma "Zorn's lemma"
[103]: https://en.wikipedia.org/wiki/ZF_set_theory "ZF set theory"
[104]: https://en.wikipedia.org/wiki/Real_number "Real number"
[105]: https://en.wikipedia.org/wiki/Supremum "Supremum"
[106]: https://en.wikipedia.org/wiki/Recursion_theory "Recursion theory"
[107]: https://en.wikipedia.org/w/index.php?title=Proof_theory&action=edit&section=6 "Edit section: Functional interpretations"
[108]: https://en.wikipedia.org/wiki/Dialectica_interpretation "Dialectica interpretation"
[109]: https://en.wikipedia.org/w/index.php?title=Proof_theory&action=edit&section=7 "Edit section: Formal and informal proof"
[110]: https://en.wikipedia.org/wiki/Interactive_theorem_proving "Interactive theorem proving"
[111]: https://en.wikipedia.org/wiki/Automated_theorem_proving "Automated theorem proving"
[112]: https://en.wikipedia.org/wiki/Peer_review "Peer review"
[113]: https://en.wikipedia.org/w/index.php?title=Proof_theory&action=edit&section=8 "Edit section: Proof-theoretic semantics"
[114]: https://en.wikipedia.org/wiki/Linguistics "Linguistics"
[115]: https://en.wikipedia.org/w/index.php?title=Type-logical_grammar&action=edit&redlink=1 "Type-logical grammar (page does not exist)"
[116]: https://en.wikipedia.org/wiki/Categorial_grammar "Categorial grammar"
[117]: https://en.wikipedia.org/wiki/Montague_grammar "Montague grammar"
[118]: https://en.wikipedia.org/wiki/Natural_language_semantics "Natural language semantics"
[119]: https://en.wikipedia.org/w/index.php?title=Proof_theory&action=edit&section=9 "Edit section: See also"
[120]: https://en.wikipedia.org/wiki/Intermediate_logic "Intermediate logic"
[121]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[122]: https://en.wikipedia.org/wiki/Proof_(truth) "Proof (truth)"
[123]: https://en.wikipedia.org/wiki/Proof_techniques "Proof techniques"
[124]: https://en.wikipedia.org/wiki/Sequent_calculus "Sequent calculus"
[125]: https://en.wikipedia.org/w/index.php?title=Proof_theory&action=edit&section=10 "Edit section: Notes"
[126]: https://en.wikipedia.org/wiki/Proof_theory#cite_ref-wang_1-0 "Jump up"
[127]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[128]: https://en.wikipedia.org/wiki/Axiomatic_set_theory "Axiomatic set theory"
[129]: https://en.wikipedia.org/wiki/Recursion_theory "Recursion theory"
[130]: https://en.wikipedia.org/wiki/Jon_Barwise "Jon Barwise"
[131]: https://en.wikipedia.org/wiki/Proof_theory#cite_ref-2 "Jump up"
[132]: https://en.wikipedia.org/wiki/Proof_theory#CITEREFPrawitz2006
[133]: https://en.wikipedia.org/wiki/Proof_theory#cite_ref-3 "Jump up"
[134]: https://en.wikipedia.org/wiki/Proof_theory#cite_ref-4 "Jump up"
[135]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[136]: https://doi.org/10.1007%2F978-3-662-49630-5_23
[137]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[138]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-662-49629-9 "Special:BookSources/978-3-662-49629-9"
[139]: https://en.wikipedia.org/wiki/Proof_theory#cite_ref-5 "Jump up"
[140]: https://en.wikipedia.org/w/index.php?title=Proof_theory&action=edit&section=11 "Edit section: References"
[141]: http://www.andrew.cmu.edu/user/avigad/Papers/infinite.pdf
[142]: https://en.wikipedia.org/wiki/Jon_Barwise "Jon Barwise"
[143]: https://books.google.com/books?hl=en&lr=&id=MfTMDeCq7ukC&oi=fnd&pg=PP1&dq=%22Handbook+of+Proof+Theory%22&ots=LfJuyY2Fel&sig=jbYv39Cl_viSaVkHIjDF7q4e6K4#v=onepage&q=%22Handbook%20of%20Proof%20Theory%22&f=false
[144]: https://en.wikipedia.org/wiki/A._S._Troelstra "A. S. Troelstra"
[145]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[146]: https://en.wikipedia.org/wiki/Special:BookSources/0-521-77911-1 "Special:BookSources/0-521-77911-1"
[147]: https://www.jstor.org/stable/20009142
[148]: https://en.wikipedia.org/wiki/Dag_Prawitz "Dag Prawitz"
[149]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[150]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-486-44655-4 "Special:BookSources/978-0-486-44655-4"
[151]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[152]: https://en.wikipedia.org/wiki/Special:BookSources/978-0521150149 "Special:BookSources/978-0521150149"
[153]: https://en.wikipedia.org/wiki/Hao_Wang_(academic) "Hao Wang (academic)"
[154]: https://en.wikipedia.org/wiki/Van_Nostrand_(publisher) "Van Nostrand (publisher)"
[155]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[156]: https://en.wikipedia.org/wiki/Special:BookSources/0-442-23109-1 "Special:BookSources/0-442-23109-1"
[157]: https://en.wikipedia.org/w/index.php?title=Proof_theory&action=edit&section=12 "Edit section: External links"
[158]: https://www.encyclopediaofmath.org/index.php?title=Proof_theory
[159]: https://en.wikipedia.org/wiki/Encyclopedia_of_Mathematics "Encyclopedia of Mathematics"
[160]: https://en.wikipedia.org/wiki/European_Mathematical_Society "European Mathematical Society"
[161]: http://plato.stanford.edu/entries/proof-theory-development/
[162]: https://en.wikipedia.org/wiki/Stanford_Encyclopedia_of_Philosophy "Stanford Encyclopedia of Philosophy"
