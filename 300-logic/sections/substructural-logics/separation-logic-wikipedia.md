---
downloaded:       2022-01-15
page-url:         https://en.wikipedia.org/wiki/Separation_logic
page-title:       Separation logic - Wikipedia
article-title:    Separation logic - Wikipedia
---
# Separation logic - Wikipedia

In computer science, separation logic[1] is an extension of Hoare logic, a way of reasoning about programs.
It was developed by John C. Reynolds, Peter O'Hearn, Samin Ishtiaq and Hongseok Yang,[1][2][3][4] drawing upon early work by Rod Burstall.[5] The assertion language of separation logic is a special case of the logic of bunched implications (BI).[6] A CACM review article by O'Hearn charts developments in the subject to early 2019.[7]
In [computer science][1], **separation logic**[\[1\]][2] is an extension of [Hoare logic][3], a way of reasoning about programs. It was developed by [John C. Reynolds][4], [Peter O'Hearn][5], Samin Ishtiaq and Hongseok Yang,[\[1\]][6][\[2\]][7][\[3\]][8][\[4\]][9] drawing upon early work by [Rod Burstall][10].[\[5\]][11] The assertion language of separation logic is a special case of the [logic of bunched implications][12] (BI).[\[6\]][13] A CACM review article by O'Hearn charts developments in the subject to early 2019.[\[7\]][14]

## Overview\[[edit][15]\]

Separation logic facilitates reasoning about:

-   programs that manipulate pointer data structures—including [information hiding][16] in the presence of pointers;
-   *"transfer of ownership"* (avoidance of semantic frame [axioms][17]); and
-   virtual separation (modular reasoning) between concurrent modules.

Separation logic supports the developing field of research described by [Peter O'Hearn][18] and others as *local reasoning*, whereby specifications and proofs of a program component mention only the portion of memory used by the component, and not the entire global state of the system. Applications include automated [program verification][19] (where an [algorithm][20] checks the validity of another algorithm) and automated [parallelization][21] of software.

## Assertions: operators and semantics\[[edit][22]\]

Separation logic assertions describe "states" consisting of a *store* and a *heap*, roughly corresponding to the state of [local (or *stack-allocated*) variables][23] and [*dynamically-allocated* objects][24] in common programming languages such as [C][25] and [Java][26]. A store  is a [function][27] mapping variables to values. A heap  is a [partial function][28] mapping memory addresses to values. Two heaps  and  are *disjoint* (denoted ) if their domains do not overlap (i.e., for every memory address , at least one of  and  is undefined).

The logic allows to prove judgements of the form , where  is a store,  is a heap, and  is an *assertion* over the given store and heap. Separation logic assertions (denoted as , , ) contain the standard boolean connectives and, in addition, , , , and , where  and  are expressions.

The operators  and  share some properties with the classical [conjunction][29] and [implication][30] operators. They can be combined using an inference rule similar to [modus ponens][31]

and they form an [adjunction][32], i.e.,  if and only if  for ; more precisely, the adjoint operators are  and .

## Reasoning about programs: triples and proof rules\[[edit][33]\]

In separation logic, Hoare triples have a slightly different meaning than in [Hoare logic][34]. The triple  asserts that if the program  executes from an initial state satisfying the precondition  then the program will *not go wrong* (e.g., have undefined behaviour), and if it terminates, then the final state will satisfy the postcondition . In essence, during its execution,  may access only memory locations whose existence is asserted in the precondition or that have been allocated by  itself.

In addition to the standard rules from [Hoare logic][35], separation logic supports the following very important rule:

This is known as the **frame rule** (named after the [frame problem][36]) and enables local reasoning. It says that a program that executes safely in a small state (satisfying ), can also execute in any bigger state (satisfying ) and that its execution will not affect the additional part of the state (and so  will remain true in the postcondition). The side condition enforces this by specifying that none of the variables modified by  occur free in , i.e. none of them are in the 'free variable' set  of .

## Sharing\[[edit][37]\]

Separation logic leads to simple proofs of pointer manipulation for data structures that exhibit regular sharing patterns which can be described simply using separating conjunctions; examples include singly and doubly linked lists and varieties of trees. Graphs and DAGs and other data structures with more general sharing are more difficult for both formal and informal proof. Separation logic has, nonetheless, been applied successfully to reasoning about programs with general sharing.

In their POPL'01 paper,[\[3\]][38] O'Hearn and Ishtiaq explained how the magic wand connective  could be used to reason in the presence of sharing, at least in principle. For example, in the triple

we obtain the weakest precondition for a statement that mutates the heap at location , and this works for any postcondition, not only one that is laid out neatly using the separating conjunction. This idea was taken much further by Yang, who used  to provide localized reasoning about mutations in the classic [Schorr-Waite graph marking algorithm][39].[\[8\]][40] Finally, one of the most recent works in this direction is that of Hobor and Villard,[\[9\]][41] who employ not only  but also a connective  which has variously been called overlapping conjunction or sepish,[\[10\]][42] and which can be used to describe overlapping data structures:  holds of a heap  when  and  hold for subheaps  and  whose union is , but which possibly have a nonempty portion  in common. Abstractly,  can be seen to be a version of the fusion connective of [relevance logic][43].

## Concurrent separation logic\[[edit][44]\]

A Concurrent Separation Logic (CSL), a version of separation logic for concurrent programs, was originally proposed by [Peter O'Hearn][45],[\[11\]][46] using a proof rule

which allows independent reasoning about threads that access separate storage. O'Hearn's proof rules adapted an early approach of [Tony Hoare][47] to reasoning about concurrency,[\[12\]][48] replacing the use of scoping constraints to ensure separation by reasoning in separation logic. In addition to extending Hoare's approach to apply in the presence of heap-allocated pointers, O'Hearn showed how reasoning in concurrent separation logic could track dynamic ownership transfer of heap portions between processes; examples in the paper include a pointer-transferring buffer, and a [memory manager][49].

A model for concurrent separation logic was first provided by Stephen Brookes in a companion paper to O'Hearn's.[\[13\]][50] The soundness of the logic had been a difficult problem, and in fact a counterexample of John Reynolds had shown the unsoundness of an earlier, unpublished version of the logic; the issue raised by Reynolds's example is described briefly in O'Hearn's paper, and more thoroughly in Brookes's.

At first it appeared that CSL was well suited to what Dijkstra had called loosely connected processes,[\[14\]][51] but perhaps not to fine-grained concurrent algorithms with significant interference. However, gradually it was realized that the basic approach of CSL was considerably more powerful than first envisaged, if one employed non-standard models of the logical connectives and even the Hoare triples.

An abstract version of separation logic was proposed that works for Hoare triples where the preconditions and postconditions are formulae interpreted over an arbitrary partial commutative monoid instead of a particular heap model.[\[15\]][52] Later, by suitable choice of commutative monoid, it was surprisingly found that the proof rules of abstract versions of concurrent separation logic could be used to reason about interfering concurrent processes, for example by encoding the rely-guarantee technique which had been originally proposed to reason about interference;[\[16\]][53] in this work the elements of the model were considered not resources, but rather "views" of the program state, and a non-standard interpretation of Hoare triples accompanies the non-standard reading of pre and postconditions. Finally, CSL-style principles have been used to compose reasoning about program histories instead of program states, in order to provide modular techniques for reasoning about fine-grained concurrent algorithms.[\[17\]][54]

Versions of CSL have been included in many interactive and semi-automatic (or "in-between") verification tools as described in the next section. A particularly significant verification effort is that of the μC/OS-II kernel mentioned there. But, although steps have been made,[\[18\]][55] as of yet CSL-style reasoning has been included in comparatively few tools in the automatic program analysis category (and none mentioned in the next section).

O'Hearn and Brookes are co-recipients of the 2016 [Gödel Prize][56] for their invention of Concurrent Separation Logic.[\[19\]][57]

## Verification and program analysis tools\[[edit][58]\]

Tools for reasoning about programs fall on a spectrum from fully automatic program analysis tools, which do not require any user input, to interactive tools where the human is intimately involved in the proof process. Many such tools have been developed; the following list includes a few representatives in each category.

-   **Automatic Program Analyses.** These tools typically look for restricted classes of bugs (e.g., memory safety errors) or attempt to prove their absence, but fall short of proving full correctness.
    -   A current example is [Facebook Infer][59], a static analysis tool for Java, C, and [Objective-C][60] based on separation logic and bi-abduction.[\[20\]][61] As of 2015 hundreds of bugs per month were being found by Infer and fixed by developers before being shipped to Facebook's mobile apps[\[21\]][62]
    -   Other examples include [SpaceInvader][63] (one of the first SL analyzers), [Predator][64] (which has won several verification competitions), [MemCAD][65] (which mixes shape and numerical properties) and [SLAyer][66] (from Microsoft Research, focussed on data structures found in device drivers)
-   **Interactive Proof.** Proofs have been done using embeddings of Separation Logic into interactive theorem provers such as the [Coq proof assistant][67] and [HOL (proof assistant)][68]. In comparison to the program analysis work, these tools require more in the way of human effort but prove deeper properties, up to functional correctness.
    -   A proof of the FSCQ file system[\[22\]][69] where the specification includes behaviour under crashes as well as normal operation. This work won the best paper award at the 2015 Symposium on Operating System Principles.
    -   Verification of a large fragment of the [Rust][70] type system and some of its standard libraries in the [RustBelt project][71] using the [Iris][72] framework for separation logic in [The Coq proof assistant][73].
    -   Verification of an OpenSSL implementation of a cryptographic authentication algorithm,[\[23\]][74] utilizing [verifiable C][75]
    -   Verification of key modules of a commercial OS kernel, the μC/OS-II kernel, the first commercial *pre-emptive* kernel to have been verified.[\[24\]][76]
    -   Other examples include the [Ynot][77][\[25\]][78] library for the [Coq proof assistant][79]; the [Holfoot][80] embedding of Smallfoot in HOL; [Fine-grained Concurrent Separation Logic][81], and [Bedrock][82] (a Coq library for low-level programming).
-   **In Between.** Many tools require more user intervention than program analyses, in that they expect the user to input assertions such as pre/post specs for functions or loop invariants, but after this input is given they attempt to be fully or almost fully automatic; this mode of verification goes back to classic works in the 1970s such as J King's verifier, and the Stanford Pascal Verifier. This style of verifier has recently been called [auto active verification][83], a term which intends to evoke the way of interacting with a verifier via an assert-check loop, analogous to the interaction between a programmer and a type-checker.
    -   The very first Separation Logic verifier, [Smallfoot][84], was in this in-between category. It required the user to input pre/post specs, loop invariants, and resource invariants for locks. It introduced a method of symbolic execution, as well as an automatic way to infer frame axioms. Smallfoot included Concurrent Separation Logic.
    -   [SmallfootRG][85] is a verifier for a marriage of separation logic and the classic rely/guarantee method for concurrent programs.
    -   [Heap Hop][86] implements a separation logic for message passing, following the ideas in [Singularity (operating system)][87].
    -   [Verifast][88] is an advanced current tool in the in-between category. It has demonstrated proofs ranging from object-oriented patterns to highly concurrent algorithms and to systems programs.
    -   The [Mezzo Programming Language][89] and [Asynchronous Liquid Separation Types][90] include ideas related to CSL in the type system for a programming language. The idea to include separation in a type system has earlier examples in [Alias Types][91] and [Syntactic Control of Interference][92].

The distinction between interactive and in-between verifiers is not a sharp one. For example, Bedrock strives for a high degree of automation, in what it terms mostly-automatic verification, where Verifast sometimes requires annotations that resemble the tactics (little programs) used in interactive verifiers.

## References\[[edit][93]\]

1.  ^ [Jump up to: ***a***][94] [***b***][95] [Reynolds, John C.][96] (2002). ["Separation Logic: A Logic for Shared Mutable Data Structures"][97] (PDF). *LICS*.
2.  **[^][98]** Reynolds, John C. (1999). "Intuitionistic Reasoning about Shared Mutable Data Structure". In [Davies, Jim][99]; [Roscoe, Bill][100]; [Woodcock, Jim][101] (eds.). *Millennial Perspectives in Computer Science, Proceedings of the 1999 Oxford–Microsoft Symposium in Honour of Sir Tony Hoare*. [Palgrave][102].
3.  ^ [Jump up to: ***a***][103] [***b***][104] Ishtiaq, Samin; [O'Hearn, Peter][105] (2001). "BI as an Assertion Language for Mutable Data Structures". *POPL*. [ACM][106].
4.  **[^][107]** O'Hearn, Peter; Reynolds, John C.; Yang, Hongseok (2001). "Local Reasoning about Programs that Alter Data Structures". *CSL*. [CiteSeerX][108] [10.1.1.29.1331][109].
5.  **[^][110]** [Burstall, R. M.][111] (1972). "Some techniques for proving programs which alter data structures". *[Machine Intelligence][112]*. **7**.
6.  **[^][113]** O'Hearn, P. W.; Pym, D. J. (June 1999). "The Logic of Bunched Implications". *[Bulletin of Symbolic Logic][114]*. **5** (2): 215–244. [CiteSeerX][115] [10.1.1.27.4742][116]. [doi][117]:[10.2307/421090][118]. [JSTOR][119] [421090][120].
7.  **[^][121]** O'Hearn, Peter (February 2019). ["Separation Logic"][122]. *Commun. ACM*. **62** (2): 86–95. [doi][123]:[10.1145/3211968][124]. [ISSN][125] [0001-0782][126].
8.  **[^][127]** Yang, Hongseok (2001). ["An Example of Local Reasoning in BI Pointer Logic: the Schorr−Waite Graph Marking Algorithm"][128]. *Proceedings of the 1st Workshop on Semantics' Program Analysis' and Computing Environments for Memory Management*.
9.  **[^][129]** Hobor, Aquinas; Villard, Jules (2013). ["The ramifications of sharing in data structures"][130] (PDF). *ACM SIGPLAN Notices*. **48**: 523–536. [doi][131]:[10.1145/2480359.2429131][132].
10.  **[^][133]** Gardner, Philippa; Maffeis, Sergio; Smith, Hareth (2012). ["Towards a program logic for Java *Script*"][134] (PDF). *Proceedings of the 39th annual ACM SIGPLAN-SIGACT symposium on Principles of programming languages - POPL '12*. pp. 31–44. [doi][135]:[10.1145/2103656.2103663][136]. [hdl][137]:[10044/1/33265][138]. [ISBN][139] [9781450310833][140]. [S2CID][141] [9571576][142].
11.  **[^][143]** O'Hearn, Peter (2007). ["Resources, Concurrency and Local Reasoning"][144] (PDF). *Theoretical Computer Science*. **375** (1–3): 271–307. [doi][145]:[10.1016/j.tcs.2006.12.035][146].
12.  **[^][147]** Hoare, C.A.R. (1972). "Towards a theory of parallel programming". *Operating System Techniques. Academic Press*.
13.  **[^][148]** Brookes, Stephen (2007). ["A Semantics for Concurrent Separation Logic"][149] (PDF). *Theoretical Computer Science*. **375** (1–3): 227–270. [doi][150]:[10.1016/j.tcs.2006.12.034][151].
14.  **[^][152]** [Dijkstra, Edsger W.][153] [*Cooperating sequential processes (EWD-123)*][154] (PDF). E.W. Dijkstra Archive. Center for American History, [University of Texas at Austin][155]. ([transcription][156]) (September 1965)
15.  **[^][157]** Calcagno, Cristiano; O'Hearn, Peter W.; Yang, Hongseok (2007). ["Local Action and Abstract Separation Logic"][158] (PDF). *22nd Annual IEEE Symposium on Logic in Computer Science (LICS 2007)*. pp. 366–378. [CiteSeerX][159] [10.1.1.66.6337][160]. [doi][161]:[10.1109/LICS.2007.30][162]. [ISBN][163] [978-0-7695-2908-0][164]. [S2CID][165] [1044254][166].
16.  **[^][167]** Dinsdale-Young, Thomas; Birkedal, Lars; Gardner, Philippa; Parkinson, Matthew; Yang, Hongseok (2013). ["Views"][168] (PDF). *ACM SIGPLAN Notices*. **48**: 287–300. [doi][169]:[10.1145/2480359.2429104][170].
17.  **[^][171]** Sergey, Ilya; Nanevski, Aleksandar; Banerjee, Anindya (2015). ["Specifying and Verifying Concurrent Algorithms with Histories and Subjectivity"][172] (PDF). *24th European Symposium on Programming*. [arXiv][173]:[1410.0306][174]. [Bibcode][175]:[2014arXiv1410.0306S][176].
18.  **[^][177]** Gotsman, Alexey; Berdine, Josh; Cook, Byron; Sagiv, Mooly (2007). [*Thread Modular Shape Analysis*][178] (PDF). *PLDI*. Lecture Notes in Computer Science. **5403**. pp. 266–277. [doi][179]:[10.1007/978-3-540-93900-9\_3][180]. [ISBN][181] [978-3-540-93899-6][182].
19.  **[^][183]** [https://www.eatcs.org/index.php/component/content/article/1-news/2280-2016-godel-prize-][184]
20.  **[^][185]** [Separation logic and bi-abduction, page][186], [Infer project site][187].
21.  **[^][188]** [Open-sourcing Facebook Infer: Identify bugs before you ship.][189] C Calcagno, D DIstefano and P O'Hearn. 11 June 2015
22.  **[^][190]** [Using Crash Hoare Logic for Certifying the FSCQ File System][191], H Chen et al, SOSP'15
23.  **[^][192]** [Verified correctness and security of OpenSSL HMAC][193]. Lennart Beringer, Adam Petcher, Katherine Q. Ye, and Andrew W. Appel. In *24th USENIX Security Symposium*, August 2015
24.  **[^][194]** [A Practical Verification Framework for Preemptive OS Kernels][195]. Fengwei Xu, Ming Fu, Xinyu Feng, Xiaoran Zhang, Hui Zhang and Zhaohui Li:. In *CAV 2016: 59-79*
25.  **[^][196]** [The Ynot Project homepage][197], [Harvard University][198], USA.

[1]: https://en.wikipedia.org/wiki/Computer_science
[2]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-lics02-1
[3]: https://en.wikipedia.org/wiki/Hoare_logic
[4]: https://en.wikipedia.org/wiki/John_C._Reynolds
[5]: https://en.wikipedia.org/wiki/Peter_O%27Hearn
[6]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-lics02-1
[7]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-sl1999-2
[8]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-popl01-3
[9]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-csl01-4
[10]: https://en.wikipedia.org/wiki/Rod_Burstall "Rod Burstall"
[11]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-burstall-5
[12]: https://en.wikipedia.org/wiki/Logic_of_bunched_implications
[13]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-bi-6
[14]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-7
[15]: https://en.wikipedia.org/w/index.php?title=Separation_logic&action=edit&section=1 "Edit section: Overview"
[16]: https://en.wikipedia.org/wiki/Information_hiding
[17]: https://en.wikipedia.org/wiki/Axiom "Axiom"
[18]: https://en.wikipedia.org/wiki/Peter_O%27Hearn "Peter O'Hearn"
[19]: https://en.wikipedia.org/wiki/Program_verification "Program verification"
[20]: https://en.wikipedia.org/wiki/Algorithm "Algorithm"
[21]: https://en.wikipedia.org/wiki/Parallelization "Parallelization"
[22]: https://en.wikipedia.org/w/index.php?title=Separation_logic&action=edit&section=2 "Edit section: Assertions: operators and semantics"
[23]: https://en.wikipedia.org/wiki/Stack-based_memory_allocation "Stack-based memory allocation"
[24]: https://en.wikipedia.org/wiki/Dynamic_memory_allocation "Dynamic memory allocation"
[25]: https://en.wikipedia.org/wiki/C_(programming_language) "C (programming language)"
[26]: https://en.wikipedia.org/wiki/Java_(programming_language) "Java (programming language)"
[27]: https://en.wikipedia.org/wiki/Function_(mathematics) "Function (mathematics)"
[28]: https://en.wikipedia.org/wiki/Partial_function "Partial function"
[29]: https://en.wikipedia.org/wiki/Logical_Conjunction "Logical Conjunction"
[30]: https://en.wikipedia.org/wiki/Entailment "Entailment"
[31]: https://en.wikipedia.org/wiki/Modus_ponens "Modus ponens"
[32]: https://en.wikipedia.org/wiki/Adjunction_(category_theory) "Adjunction (category theory)"
[33]: https://en.wikipedia.org/w/index.php?title=Separation_logic&action=edit&section=3 "Edit section: Reasoning about programs: triples and proof rules"
[34]: https://en.wikipedia.org/wiki/Hoare_logic "Hoare logic"
[35]: https://en.wikipedia.org/wiki/Hoare_logic "Hoare logic"
[36]: https://en.wikipedia.org/wiki/Frame_problem "Frame problem"
[37]: https://en.wikipedia.org/w/index.php?title=Separation_logic&action=edit&section=4 "Edit section: Sharing"
[38]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-popl01-3
[39]: https://en.wikipedia.org/w/index.php?title=Schorr-Waite_graph_marking_algorithm&action=edit&redlink=1 "Schorr-Waite graph marking algorithm (page does not exist)"
[40]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-YangSchorrWaite-8
[41]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-Ramifications-9
[42]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-JavascriptLogic-10
[43]: https://en.wikipedia.org/wiki/Relevance_logic "Relevance logic"
[44]: https://en.wikipedia.org/w/index.php?title=Separation_logic&action=edit&section=5 "Edit section: Concurrent separation logic"
[45]: https://en.wikipedia.org/wiki/Peter_O%27Hearn "Peter O'Hearn"
[46]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-11
[47]: https://en.wikipedia.org/wiki/Tony_Hoare "Tony Hoare"
[48]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-Hoare72-12
[49]: https://en.wikipedia.org/wiki/Memory_management "Memory management"
[50]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-13
[51]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-14
[52]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-15
[53]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-16
[54]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-17
[55]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-18
[56]: https://en.wikipedia.org/wiki/G%C3%B6del_Prize "Gödel Prize"
[57]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-19
[58]: https://en.wikipedia.org/w/index.php?title=Separation_logic&action=edit&section=6 "Edit section: Verification and program analysis tools"
[59]: https://en.wikipedia.org/wiki/Infer_Static_Analyzer "Infer Static Analyzer"
[60]: https://en.wikipedia.org/wiki/Objective-C "Objective-C"
[61]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-20
[62]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-21
[63]: http://www0.cs.ucl.ac.uk/staff/p.ohearn/Invader/Invader/Invader_Home.html
[64]: http://www.fit.vutbr.cz/research/groups/verifit/tools/predator/
[65]: https://www.di.ens.fr/~rival/memcad.html
[66]: https://github.com/Microsoft/SLAyer
[67]: https://en.wikipedia.org/wiki/Coq_proof_assistant "Coq proof assistant"
[68]: https://en.wikipedia.org/wiki/HOL_(proof_assistant) "HOL (proof assistant)"
[69]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-22
[70]: https://en.wikipedia.org/wiki/Rust_(programming_language) "Rust (programming language)"
[71]: https://plv.mpi-sws.org/rustbelt/popl18/
[72]: https://iris-project.org/
[73]: https://en.wikipedia.org/wiki/Coq "Coq"
[74]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-23
[75]: http://vst.cs.princeton.edu/veric/
[76]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-24
[77]: https://en.wikipedia.org/w/index.php?title=Ynot&action=edit&redlink=1 "Ynot (page does not exist)"
[78]: https://en.wikipedia.org/wiki/Separation_logic#cite_note-25
[79]: https://en.wikipedia.org/wiki/Coq_proof_assistant "Coq proof assistant"
[80]: http://holfoot.tuerk-brechen.de/
[81]: http://software.imdea.org/~aleks/fcsl/
[82]: http://plv.csail.mit.edu/bedrock/
[83]: http://fm.csl.sri.com/UV10/submissions/uv2010_submission_20.pdf
[84]: http://www0.cs.ucl.ac.uk/staff/p.ohearn/smallfoot/
[85]: https://www.mpi-sws.org/~viktor/smallfootrg/
[86]: http://www.lsv.ens-cachan.fr/Software/heap-hop/
[87]: https://en.wikipedia.org/wiki/Singularity_(operating_system) "Singularity (operating system)"
[88]: https://people.cs.kuleuven.be/~bart.jacobs/verifast/
[89]: https://protz.github.io/mezzo/
[90]: https://www.mpi-sws.org/~viktor/papers/ecoop2015-alstypes.pdf
[91]: https://www.eecs.harvard.edu/~greg/papers/alias.pdf
[92]: http://dl.acm.org/citation.cfm?id=512766
[93]: https://en.wikipedia.org/w/index.php?title=Separation_logic&action=edit&section=7 "Edit section: References"
[94]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-lics02_1-0
[95]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-lics02_1-1
[96]: https://en.wikipedia.org/wiki/John_C._Reynolds "John C. Reynolds"
[97]: https://www.cs.cmu.edu/~jcr/seplogic.pdf
[98]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-sl1999_2-0 "Jump up"
[99]: https://en.wikipedia.org/wiki/Jim_Davies_(computer_scientist) "Jim Davies (computer scientist)"
[100]: https://en.wikipedia.org/wiki/Bill_Roscoe "Bill Roscoe"
[101]: https://en.wikipedia.org/wiki/Jim_Woodcock "Jim Woodcock"
[102]: https://en.wikipedia.org/wiki/Palgrave_Macmillan "Palgrave Macmillan"
[103]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-popl01_3-0
[104]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-popl01_3-1
[105]: https://en.wikipedia.org/wiki/Peter_O%27Hearn "Peter O'Hearn"
[106]: https://en.wikipedia.org/wiki/Association_for_Computing_Machinery "Association for Computing Machinery"
[107]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-csl01_4-0 "Jump up"
[108]: https://en.wikipedia.org/wiki/CiteSeerX_(identifier) "CiteSeerX (identifier)"
[109]: https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.29.1331
[110]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-burstall_5-0 "Jump up"
[111]: https://en.wikipedia.org/wiki/Rod_Burstall "Rod Burstall"
[112]: https://en.wikipedia.org/w/index.php?title=Machine_Intelligence_(journal)&action=edit&redlink=1 "Machine Intelligence (journal) (page does not exist)"
[113]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-bi_6-0 "Jump up"
[114]: https://en.wikipedia.org/wiki/Bulletin_of_Symbolic_Logic "Bulletin of Symbolic Logic"
[115]: https://en.wikipedia.org/wiki/CiteSeerX_(identifier) "CiteSeerX (identifier)"
[116]: https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.27.4742
[117]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[118]: https://doi.org/10.2307%2F421090
[119]: https://en.wikipedia.org/wiki/JSTOR_(identifier) "JSTOR (identifier)"
[120]: https://www.jstor.org/stable/421090
[121]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-7 "Jump up"
[122]: https://doi.org/10.1145%2F3211968
[123]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[124]: https://doi.org/10.1145%2F3211968
[125]: https://en.wikipedia.org/wiki/ISSN_(identifier) "ISSN (identifier)"
[126]: https://www.worldcat.org/issn/0001-0782
[127]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-YangSchorrWaite_8-0 "Jump up"
[128]: http://www.cs.ox.ac.uk/people/hongseok.yang/paper/SchorrWaite.ps
[129]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-Ramifications_9-0 "Jump up"
[130]: http://www.doc.ic.ac.uk/~jvillar1/pub/ramification-HVpopl13.pdf
[131]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[132]: https://doi.org/10.1145%2F2480359.2429131
[133]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-JavascriptLogic_10-0 "Jump up"
[134]: http://www.doc.ic.ac.uk/~gds/papers/TowardsProgramLogicJavaScriptPOPL2012.pdf
[135]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[136]: https://doi.org/10.1145%2F2103656.2103663
[137]: https://en.wikipedia.org/wiki/Hdl_(identifier) "Hdl (identifier)"
[138]: https://hdl.handle.net/10044%2F1%2F33265
[139]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[140]: https://en.wikipedia.org/wiki/Special:BookSources/9781450310833 "Special:BookSources/9781450310833"
[141]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[142]: https://api.semanticscholar.org/CorpusID:9571576
[143]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-11 "Jump up"
[144]: http://www.cs.ucl.ac.uk/staff/p.ohearn/papers/concurrency.pdf
[145]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[146]: https://doi.org/10.1016%2Fj.tcs.2006.12.035
[147]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-Hoare72_12-0 "Jump up"
[148]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-13 "Jump up"
[149]: https://www.cs.cmu.edu/~brookes/papers/seplogicrevisedfinal.pdf
[150]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[151]: https://doi.org/10.1016%2Fj.tcs.2006.12.034
[152]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-14 "Jump up"
[153]: https://en.wikipedia.org/wiki/Edsger_W._Dijkstra "Edsger W. Dijkstra"
[154]: http://www.cs.utexas.edu/users/EWD/ewd01xx/EWD123.PDF
[155]: https://en.wikipedia.org/wiki/University_of_Texas_at_Austin "University of Texas at Austin"
[156]: http://www.cs.utexas.edu/users/EWD/transcriptions/EWD01xx/EWD123.html
[157]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-15 "Jump up"
[158]: http://www.cs.ox.ac.uk/people/hongseok.yang/paper/asl-short.pdf
[159]: https://en.wikipedia.org/wiki/CiteSeerX_(identifier) "CiteSeerX (identifier)"
[160]: https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.66.6337
[161]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[162]: https://doi.org/10.1109%2FLICS.2007.30
[163]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[164]: https://en.wikipedia.org/wiki/Special:BookSources/978-0-7695-2908-0 "Special:BookSources/978-0-7695-2908-0"
[165]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[166]: https://api.semanticscholar.org/CorpusID:1044254
[167]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-16 "Jump up"
[168]: http://research.microsoft.com/pubs/180039/views.pdf
[169]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[170]: https://doi.org/10.1145%2F2480359.2429104
[171]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-17 "Jump up"
[172]: http://ilyasergey.net/papers/histories-esop15.pdf
[173]: https://en.wikipedia.org/wiki/ArXiv_(identifier) "ArXiv (identifier)"
[174]: https://arxiv.org/abs/1410.0306
[175]: https://en.wikipedia.org/wiki/Bibcode_(identifier) "Bibcode (identifier)"
[176]: https://ui.adsabs.harvard.edu/abs/2014arXiv1410.0306S
[177]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-18 "Jump up"
[178]: http://research.microsoft.com/en-us/um/cambridge/projects/terminator/thread-modular.pdf
[179]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[180]: https://doi.org/10.1007%2F978-3-540-93900-9_3
[181]: https://en.wikipedia.org/wiki/ISBN_(identifier) "ISBN (identifier)"
[182]: https://en.wikipedia.org/wiki/Special:BookSources/978-3-540-93899-6 "Special:BookSources/978-3-540-93899-6"
[183]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-19 "Jump up"
[184]: https://www.eatcs.org/index.php/component/content/article/1-news/2280-2016-godel-prize-
[185]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-20 "Jump up"
[186]: https://fbinfer.com/docs/separation-logic-and-bi-abduction
[187]: https://fbinfer.com/
[188]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-21 "Jump up"
[189]: https://code.facebook.com/posts/1648953042007882/open-sourcing-facebook-infer-identify-bugs-before-you-ship/
[190]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-22 "Jump up"
[191]: https://pdos.csail.mit.edu/papers/fscq:sosp15.pdf
[192]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-23 "Jump up"
[193]: http://www.cs.princeton.edu/~appel/papers/verified-hmac.pdf
[194]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-24 "Jump up"
[195]: http://staff.ustc.edu.cn/~fuming/research/certiucos/
[196]: https://en.wikipedia.org/wiki/Separation_logic#cite_ref-25 "Jump up"
[197]: http://ynot.cs.harvard.edu/
[198]: https://en.wikipedia.org/wiki/Harvard_University "Harvard University"
