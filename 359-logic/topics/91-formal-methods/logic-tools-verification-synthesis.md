---
downloaded:       2022-01-18
page-url:         https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#theorem-provers
page-title:       tool_lists/verification_synthesis.md at main · johnyf/tool_lists
article-title:    tool_lists/verification_synthesis.md at main · johnyf/tool_lists
---
# tool_lists/verification_synthesis.md at main · johnyf/tool_lists

Links to tools by subject. Contribute to johnyf/tool_lists development by creating an account on GitHub.
List of verification and synthesis tools. Please clone, contribute and send pull requests. Minimal markdown knowledge needed to add links:

`- [Tool name](link url) (license, coded in language): brief description (Institution/other maintainer)`

Please list only Open Source/research tools, proprietary ones are not widely and unconditionally useful. Conditionally (sufficiently) free tools are welcome, e.g., some closed source tools, provided they remain free for educational/research use.

Would you like to suggest a/your tool for addition, but skip cloning/pull requests, please email [jfilippidis@gmail.com][1].

To the extent possible under law, the authors have waived all copyright and related or neighboring rights to this text. You should have received a copy of the CC0 Public Domain Dedication along with this text. If not, see [https://creativecommons.org/publicdomain/zero/1.0/][2].

**Table of Contents**

-   [Verification][3]
    -   [Closed Systems (Everything controlled)][4]
        -   [Enumerative][5]
        -   [Symbolic][6]
    -   [logic -> automata and automata tools][7]
        -   [LTL -> \*BA][8]
        -   [LTL -> DRA][9]
        -   [other][10]
    -   [Term rewrite systems][11]
    -   [Open Systems][12]
        -   [Synchronous Languages][13]
            -   [Imperative][14]
            -   [Declarative][15]
            -   [Statecharts][16]
-   [Synthesis][17]
    -   [Open Systems (Games: System and Uncontrolled Environment)][18]
        -   [Discrete games][19]
            -   [GR(1) games][20]
            -   [Full LTL games][21]
            -   [Safety specs (controller synthesis)][22]
            -   [Parity Game solvers][23]
            -   [Quantitative games][24]
            -   [Other][25]
        -   [Hybrid games][26]
        -   [Contracts][27]
        -   [Hardware][28]
        -   [Other][29]
-   [Timed Systems][30]
-   [Hybrid Systems][31]
    -   [Linear][32]
    -   [Non-Linear][33]
    -   [Stochastic][34]
-   [Theorem Provers][35]
    -   [Theorem provers for modal logics][36]
    -   [QBF][37]
    -   [SAT][38]
        -   [CDCL][39]
        -   [Stochastic local search][40]
        -   [Parallel][41]
        -   [Unsorted][42]
    -   [SMT][43]
    -   [Other solvers][44]
    -   [Logic programming][45]
-   [Software Synthesis][46]
-   [Runtime Verification][47]
-   [Yet un-categorized][48]
-   [TypeSetting][49]
-   [Other tool lists][50]
-   [databases and benchmarks][51]
-   [(non-common) abbreviations][52]

## Closed Systems (Everything controlled)

### Enumerative

-   [SPIN][53] (BSD-3, [C][54]): LTL model checking for closed systems in Promela ([JPL/Caltech][55], Bell Labs)
    -   [modex][56] (FUSC, [C][57]): C -> Promela: model extractor ([JPL/Caltech][58], Bell Labs)
    -   [`spin`][59]: Debian Linux package, `apt install spin`
    -   [spinja][60] (Apache-2.0, Java): Promela model checker (Univ. of Twente, TNO)
        -   [SpinS][61] (Apache-2.0, [Java][62]): an LTSmin language frontend for Promela (Univ. of Twente)
    -   [HSF-SPIN][63]: SPIN directed model checking extension (IMT Lucca)
    -   [Promela Vim Syntax][64] (?, VimL): highlighting plugin
    -   [Promela Vim Indent][65] (?, VimL)
    -   [Promela Emacs major mode][66] (?, Emacs LISP)
    -   [Promela for Sublime Text 3][67] (MIT, [several][68]): Sublime Text 3 syntax highlighting of Promela
    -   [Promela -> NuSMV][69] (?, C): translator (Peking Univ.)
    -   [Promela -> Timed automata with discrete data][70]: translator, part of Verics
    -   [Promela -> C][71] (OCaml): translator (Uppsala Univ.)
    -   [Promela -> C][72]: translator (Univ. Stuttgart)
    -   [Promela -> Java][73] (?, Java): translator ([TU Delft][74])
    -   [LLVM -> Promela][75] (C++, MIT): LLVM-to-Promela Compiler
    -   [jSpin][76] ([GPLv2][77], Java): GUI for SPIN and Erigone ([The Weizmann Institute of Science][78])
    -   [Erigone][79] ([GPLv2][80], Ada/Java): partial SPIN re-implementation for educational purposes ([The Weizmann Institute of Science][81])
    -   [EpiSpin][82]: Eclipse plug-in for editing and verifying Promela using Spin ([TU Delft][83])
    -   [`promela` parser][84] (BSD-3, Python): parser for Promela using [PLY][85] (Python `lex`\-`yacc`) ([Caltech][86])
    -   [`language-promela`][87] (MIT, CoffeeScript): Promela support in Atom
    -   [Eclipse Pug-In for SPIN][88] (?): (Univ. Maribor, TU Braunschweigin)
    -   [st2msc][89] (?, Java): SPIN trail -> Message Sequence Chart (Univ. Maribor)
    -   [Real-Time SPIN][90]: quantitative dense time SPIN extension using Real-Time Promela ([VERIMAG/CNRS][91])
    -   [nano-Promela][92]: tools for nano-Promela language
    -   [v-Promela][93]: visual Promela (Albert-Ludwigs-Univ. Freiburg)
    -   [promela-metamodel][94]: used to generate Promela from BPEL
    -   [Promela library][95] (BSD-3, OCaml): types for Promela expressions, statements, procs and models as OCaml datastructures, with export to Promela for model checking with SPIN (TU Munchen)
    -   [LWAASpin][96] (SPIN's license): SPIN modified to use linear weak alternating automata instead of Buchi automata (Univ. Munchen)
    -   [Hugo/RT][97] (? src by email): XMI or ArgoUML or UTE -> Promela or UPPAAL or KIV or Java or SystemC or Smile machines or UTE model or dot (state machines or interactions) and SPIN or UPPAAL trail -> UML run: UML model translator for model checking, theorem proving, code generation (Univ. Munchen, LORIA/INRIA Nancy)
    -   [SCTranslator][98] (?, XSL): UML XMI2 -> Promela (Saint-Petersburg State Polytechnic University)
    -   [Pi2Promela][99] (?, C/Java): compiler from pi-calculus models to Promela, includes GUI ([Chinese Acad. Sciences][100])
    -   [pspin][101] (?, Python/C): Parallel PROMELA model checker
    -   [prob-Promela][102]: Promela Compiler / Interpreter for ProB (Dusseldorf Univ.)
    -   [Promela parser/pretty printer][103] (?, Haskell)
    -   [sudoku-Promela][104] (EUPL, Shell): mini-project about generating Sudoku grids in Promela
    -   [VMSSG][105]: Model checker state space visualization (Ludwig-Maximilians Univ. Munchen)
    -   [promela-metamodel][106] (GPL-3)
    -   [3Spin][107] (FUSC, C): modified version of the Spin model checker version 5.1.7 with advances in the efficiency, configurability, and usability of probabilistic state storage (Northeastern Univ.)
    -   [POR][108] (FUSC, C): partial-order reduction package for SPIN ([Univ. de Liege][109])
    -   [ARINC tester][110] (?, Java): GUI for SPIN to verify application that contain API calls compliant to ARINC 653 (UMalaga)
    -   [SpinRCP][111] (?, Java): An Eclipse-based IDE for Spin. (Univ. of Maribor)
    -   [DTSpin][112] (FUSC, C): extension of Spin with discrete time, is intended for verification of concurrent systems that depend on timing parameters, and uses the specification language DTPromela (Eindhoven Univ. of Technology)
        -   [Dtp2dtp][113] (?, ?): translator from discrete-time Promela to discrete-time Promela, for proving an embedding of nondeterministic transitions that automatically closes open systems
    -   [CPOR-Spin][114] (FUSC, C): extension of Spin which exploits the hierarchy of the verified system for more efficient verification, using Clustered Partial Order Reduction (CPOR) (Eindhoven Univ. of Technology)
    -   [MPI-Spin][115] (GPLv3, C): extension of Spin that adds to Promela functions, types, and constants for modeling parallel programs that use the Message Passing Interface (Univ. of Delaware)
-   [TLA+][116]: The Temporal Logic of Actions for specifying systems ([Microsoft Research][117])
    -   [The TLA+ Video Course][118]: Lectures about writing specifications, by Leslie Lamport
    -   [PlusCal][119]: An algorithm language with a translator to TLA+
        -   [Distributed PlusCal][120] (Java): extension of PlusCal with threads within processes and variables that represent communication channels
    -   [TLA+ Tools][121], (MIT, [Java][122]): Tools for working with TLA+ specifications:
        -   [TLC][123] (MIT, Java): Model checker for TLA+ specifications
        -   [SANY][124] (MIT, Java): Parser and semantic analyzer for TLA+ ([ANTLR][125]\-based)
        -   [TLATeX][126] (MIT, Java): Program for typesetting TLA+ specs
        -   [The TLA Toolbox][127] (MIT, Java): An IDE for the TLA+ tools (Eclipse-based), includes TLC, SANY, TLATeX, and the PlusCal translator
        -   [TLAPS][128]: See automated theorem provers section.
        -   Tools for working with TLA+ proofs: See automated theorem provers section.
    -   [`tla_tools`][129] (MIT, Shell): Helper tools for using TLA+ (wrappers etc.) ([GitHub][130])
    -   [`tla-bin`][131] (MIT, Shell): Command line binaries for the TLA+ language
    -   [tla related tools][132] (Dusseldorf Univ.)
    -   [TEM][133] (GPL, Emacs): TLA+ major mode for GNU EMACS 19 (TU Dortmund)
    -   [language-tla-pluscal][134] (MIT, CoffeeScript): TLA+ and PlusCal Language Support in Atom ([Heinrich-Heine-Univ.][135])
    -   [TLAGrammar][136] (MIT): Textmate-compatible grammar for TLA+ (used to highlight TLA+ on github)
    -   [`vim-scripts/TLA`][137] (GPL, VimL): TLA+ plugin for Gvim
    -   [`vim-scripts/tla.vim`][138] (?, VimL): Vim syntax highlighting for TLA+
    -   [`tla.vim`][139] (MIT, VimL): Vim plugin for TLA+ and PlusCal
    -   [eTLA][140] (EPL): TLA+ plugin for Eclipse
    -   [textadept-TLA-][141] (MIT, Lua): TLA+ and PlusCal syntax highlighting for Textadept
    -   [vscode-tlaplus][142] (MIT, TypeScript): adds support for TLA+ to VS Code
    -   [`specifica`][143] (MIT, Haskell): TLA+ parser, evaluator, and pretty-printer
    -   [`tla-parser-s`][144] (MIT, Ruby): TLA+ parser (Helsinki)
    -   TLA+ examples:
        -   [TLA Tools examples][145] (MIT, TLA+): a collection of TLA+ specifications of varying complexities
        -   [CommunityModules][146] (MIT, TLA+/Java): TLA+ snippets, operators, and modules contributed and curated by the TLA+ community
        -   [TLAPS examples][147]: TLA+ modules of example specifications distributed with TLAPS
        -   [TLAPS library][148]: TLA+ modules distributed with TLAPS and intended to be extended
        -   [MultiPaxos][149]
        -   [Egalitarian Paxos][150] (CMU, Intel Labs)
        -   [Leaderless Byzantine Paxos][151] (UNSW)
        -   [Flexible Paxos][152] (MIT, TLA+): specification and TLC model checking configuration for single shot Flexible Paxos
        -   [Raft consensus algorithm][153]
        -   [TLA-Library][154]
        -   [Azure Cosmos DB][155] (MIT, TLA+): specifications (Microsoft)
        -   [MongoDB][156]: simplified part of MongoDB replication system (MongoDB)
        -   [Convergence locking][157]
        -   [TLA+ in TiDB][158] (Apache-2.0, TLA+): specifications for TiDB, an open source distributed HTAP database compatible with the MySQL protocol
        -   [Elasticsearch][159] (Apache-2.0, TLA+/Isabelle): Formal models of core Elasticsearch algorithms
    -   [tTLA+ Browser][160] (FUSC, C): old project about a TLA+ IDE (TU Dortmund)
    -   [Tools for TLA][161]: old TLA+-related project (TU Dortmund)
    -   [TLA within ProB][162]: (Heinrich Heine Univ. Düsseldorf)
        -   [`tla2b`][163] (EPL, Java)
        -   [`tla2bAST`][164] (EPL, Java)
        -   [`tlc4b`][165] (EPL, Java)
    -   [`tla-dafny`][166] (Apache-2.0, Dafny): An embedding of TLA+ in Dafny
-   [LTSmin][167] (BSD-3): model checking, LTS minimization, interface to other tools (Univ. Twente)
-   [MoonWalker][168] (Apache-2, C#): model check CIL bytecode programs ([Mono .NET][169] platform apps), [MoonWalker src][170](Univ. Twente)
-   [DIVINE][171] ([Open Source][172], [C++][173]): Parallel LTL model checker (Masaryk Univ.)
-   [PRISM][174] (GPLv2, [Java/C][175]): Probabilistic Model Checker: discrete/continuous-time Markov chains, timed automata, etc. (Univ. Birmingham, Univ. Oxford)
    -   [PRISM tools][176]
    -   [prism-games][177] (GPLv2, [Java/C][178]): an extension of PRISM which supports stochastic games
-   [STORM][179] (GPL-3, [C++][180]): Probabilistic model checker: Markov chains, MDPs, Markov automata, SMPT, (MI)LP, LP, Bellman, games, parameter synthesis, discrete-time MDPs
    -   [`stormpy`][181]: Python interface
-   [ePMC][182] (GPLv3, [Java/C][183]): an extendible probabilistic model checker, reasons about continuous- anhd discrete-time Markov chains, Markov decision processes, stochastic multi-player games, probabilistic parity games, the logics PCTL, PLTL, PCTL\*, with input in formats PRISM and JANI, is successor of the model checker IscasMC (Institute of Software Chinese Academy of Sciences)
-   [SPOT][184] (GPL, C++/Python): object-oriented model checking library using TGBA
-   [JPF][185] ([NOSA-1.3][186]): Java Pathfinder: Java model checking and extensions (NASA Ames)
    -   [JPL-nhandler][187] (GPL-3, Java): JPF extension to delegate execution of SUT methods to host JVM ([York Univ.][188])
-   [HELENA][189] (GPL-2): high-level Petri nets (Paris 13 Univ.)
-   [StEAM][190] (C++ ?): C++ model checker (deadlocks, segmentation faults, out of range variables and non-terminating loops) (LS5 Univ. Dortmund)
-   [Tulip][191]: LTL model checker of interval Markov chains (recursive also) (Univ. Oxford)
-   [PROD][192] (GPL): efficient reachability analysis (Helsinki Univ. Tech.)
-   [KBDD][193]: BDD-based satisfiability solver for modal logic K
-   [neco][194] (LGPL, Python/Cython): Petri Net compiler and LTL model checker (Univ. d'Evry-Val d'Essonne, Univ. Evry)
-   [PEP][195] (GPL-2): modelling and verification framework for parallel systems, interfaces to SPIN, SMV, INA, FC2Tools (SDL, Petri nets)
-   [cunf][196] (GPL-3): Toolset for unfolding-based verification of Petri nets extended with read arcs ([ENS Cachan][197])
-   [daj][198] ([GPLv2][199], Java): interactive, visual aid for studying execution of distributed algorithms ([The Weizmann Institute of Science][200])
-   [FC2Tools and Autograph][201]: implementation of process algebra theory, verification by compositional reductions and abstraction, explicit/implicit BDD, FC2 file exchange format (INRIA, Ecole des Mines/CMA)
-   [Murphi][202], [original Murphi][203] (BSD-like, C++): enumerative, own input language (Unity style: guard -> action), e.g. used by Microprocessor industry to verify cache coherence protocols (Univ. Utah, Stanford)
    -   [Eddy Murphi][204]: parallel version of Murphi (Univ. Utah)
    -   [CMurphy][205] (Univ. Roma)
    -   [CMurphi][206] (L'Aquila Univ.)
    -   [PReach][207] (BSD, Erlang): Distributed Explicit State Model Checker based on Erlang and Murphi (Univ. British Columbia, Intel)
    -   [MPI Murphi port][208] (Univ. Utah)
-   [APMC][209] (FUSC, C/Java): approximate distributed for fully probabilistic systems, PCTL, PLTL (Univ. de Caen Basse-Normandie)
-   [Vaucanson][210] (GNU, C++): finite state machine manipulation platform, lib of tools on top (EPITA)
-   [Genealogy][211] of Emptiness-Checking Algorithms ([EPITA][212])
-   [NIPS][213] (GNU, C/Perl): A virtual machine for state space generation (RWTH Aachen)
-   [VMSSG Statespace Converter][214] (GPL, Java): process, analyze, display statespace graphs produced by modified VMSSG virtual machine, [state space gallery][215], ([Univ. Munchen][216])
-   [Synet][217] (OCaml): Synthesizer of distributable bounded Petri nets from Finite Automata ([INRIA/IRISA][218])
-   [Motion Grammar Kit][219] (BSD-2, Common Lisp/C): Automata manipulation, supervisory control, C code generation (Georgia Tech.)
-   [PAT][220] (?, C#): Process Analysis Toolkit, a model checker, with GUI, model editor, simulator, POR, symmetry reduction (Nat. Univ. Singapore)
-   [NorMC][221] (BSD-3, Haskell): Norm compliance temporal logic model checker (Univ. Bergen)
-   [Copper][222] (FUSC, ?): MC for concurrent message-passing C programs (CMU)
-   [Magic][223] (?): Check C language conformance between component specifications and their implementations using counterexample guided abstraction refinement, concurrent and compositional (CMU, Univ. Wisconsin, Univ. Oxford, TU Vienna, Univ. Lugano)
-   [Bogor][224]
-   [BLAST][225] (Apache, OCaml/C): MC for C programs using counterexample-driven automatic abstraction refinement (UC Berkeley, EPFL, UCSD, UCLA, Simon Fraser Univ.)
-   [Scoot][226] (?): Static analysis of SystemC, model extraction to pass to SatAbs or CBMC, C++ re-synthesis (ETH)
-   [VCEGAR][227] (?): Check safety (assertions) of Verilog, using word level predicate abstraction and refinement (CMU, Oxford Univ.)
-   [GMC][228] (LGPL, C/C++): MC for C/C++ taking GIMPLE as input (Charles Univ. Prague)
-   [AIR][229] (?): Safety MC of Assembly using predicate abstraction and counterexample guided abstraction refinement ([CMU][230])
-   [FShell][231] (Apache): Interactive and Scripting testing environment for C programs, frontend for software model checkers, dispatches queries to analysis tools (TU Wien)
-   [CPA/Tiger][232] (?): Predicate-abstraction based test input generator for C programs, uses CPAchecker (TU Wien)
-   [CPAchecker][233] (Apache-2.0, [SWIG/Java/C][234]): Configurable software verification (Univ. Passau)
-   [crest][235] (BSD-3): Automatic test generation tool for C, inserts instrumentation code and solves the generated symbolic constraints using Yices (UC Berkeley)
    -   [ConCREST][236] (?): Concolic testing tool for multi-threaded C programs (Univ. Toronto, TU Wien)
-   [ByMC][237] (?, OCaml): Byzantine MC for parameterized model checking of (threshold-guarded) fault-tolerant distributed algorithms in Promela extension using SPIN, Yices (TU Wien)
-   [iLTL][238] (BSD): MC for iLTL, which specifies temporal changes of expected rewards of a Markov process ([UIUC][239])
-   [Copilot][240] (BSD-3, Haskell): A (Haskell DSL) stream language for generating hard real-time C code (NASA, Galois Inc., National Inst. Aerospace, Ecole Normale Superieure, TU Ilmenau, Univ. Copenhagen)
-   [mCRL2][241] (Boost Software License, C++): Formal specification language with an associated toolset for modelling, validation and verification of concurrent systems and protocols: linearisation, simulation, state-space exploration, visualization and tools to optimise and analyse specifications, μ-calculus (TU Eindhoven, LaQuSo, CWI, Univ. Twente)
-   [Mobility Workbench][242] (?, SML): π-calculus MC for mobile concurrent systems (Uppsala Univ.)
-   [MMC][243] (?, ?): π-calculus and alternation-free μ-calculus Local MC, implemented using the XSB tabled logic programming system (Stony Brook Univ.)
-   [XMC][244] (?, ?): Local MC for processes specified in XL, a version of value-passing CCS, and the alternation-free modal μ-calculus, implemented using the XSB tabled logic programming system (Stony Brook Univ.)
-   [MMCsp][245] (?, C/Java): Compiler from simple probabilistic π-calculus to PRISM models, built on XSB (Ecole Polytechnique, Oxford, INRIA)
-   [ASTG][246] (?, OCaml/C): TLCE-based symbolic test generator (Chinese Acad. Sciences)
-   [LMNtal, LaViT][247] (BSD, C/C++/Java): MC and graphical tools LMNTal language based on hierarchical graph rewriting (Waseda Univ.)
-   [Finite Automata Model Checker][248] (CCAS-3, C++)
-   [v-n][249] (GPL-2, Java): NDFA visualization and (random or guided) simulation, find and display accepting computations ([The Weizmann Institute of Science][250])
-   [py-powerset-construction][251] (GPL-3, Python): convert NFA-\\lambda to DFA, using dot as input
-   [Zing][252] (MIT, [C#][253]): State exploration of concurrent software systems (Microsoft Research)
-   [SeaHorn][254] (BSD, C): an LLVM based verification framework
-   [SCRAM][255](GPL-3, C++/Python): Probabilistic risk analysis (static fault trees, common cause failure models, Monte Carlo) with input from and output to Open-PSA model exchange format files
-   [RISCAL][256] (GPL-3, Java): Specification language and software system for describing mathematical algorithms, and validating their correctness by execution/evaluation ([JKU/RISC][257])
-   [Properties of State Spaces][258]
-   [symmetrytools][259] (?, Java): Tools for symmetry reduction in model checking (Univ. of Glasgow)
-   [Mscgen][260] (GPLv2, C): Message Sequence Chart Renderer ([wiki entry][261])
    -   [`mscgen-preview`][262] (GPLv3, [CoffeeScript/JavaScript][263]): Write and preview sequence charts with MscGen and its brethren with `ctrl-shift-G`
    -   [`sphinxcontrib-mscgen`][264] (Public Domain, Python): Allow mscgen-formatted Message Sequence Chart (MSC) graphs to be included in Sphinx-generated documents inline
-   [TTool][265] (CeCILL, [Java/C++][266]): toolkit dedicated to the edition of UML and SysML diagrams, and to the simulation and formal verification (safety, security, performance) of those diagrams
-   [Gadara][267] (?, Java): discrete-control synthesis from Petri nets (Univ. of Michigan):
    -   [Petri net generator][268]
    -   [multi-threaded Petri net verifier][269]: single-bit unique encoding of states that are enumerated to explore the state set
-   [PROD][270] (GPLv2, C): reachability analyzer for Pr/T-nets with: stubborn sets, sleep sets, on-the-fly tester based verification, on-the-fly LTL model checking, CTL model checking (Helsinki Univ. of Technology)

### Symbolic

-   [Apalache][271] (Apache-2, Scala): symbolic model checker for TLA+
-   [SMV][272] (?): CTL symbolic model checker (CMU)
    -   [Cadence SMV][273] (FUSC): CMU SMV extension: backward compatible more expressive mode description language, synthesizable VERILOG, compositional verification, CTL or LTL or FSA or embedded assertions, GUI (Cadence)
-   [NuSMV][274] (LGPL): Symbolic model checking (FBK, CMU, Univ. Genoa, Univ. Trento)
    -   [PyNuSMV][275] (LGPL-2, Python): python interface to NuSMV ([UCLouvain][276])
    -   [SMView][277] (BSD, JavaScript/Python): web interface to NuSMV (TU Eindhoven)
    -   [gNuSMV][278] (LGPL, ?): GUI for NuSMV v2 (FBK)
    -   [nusmv-tools][279]: two metamodels based on Eclipse modeling framework, Eclipse editor, model analyzer, Java API to NuSMV
    -   [nuseen][280]: Eclipse-based environment for NuSMV
-   [nuXmv][281]: extends NuSMV using state-of-the-art SAT-based algorithms and MathSAT5 (Fondazione Bruno Kessler)
-   [abc][282] (FOSS, [C][283]): System for Sequential Logic Synthesis and Formal Verification: A growing software system for synthesis and verification of binary sequential logic circuits appearing in synchronous hardware designs; ABC combines scalable logic optimization based on And-Inverter Graphs (AIGs), optimal-delay DAG-based technology mapping for look-up tables and standard cells, and innovative algorithms for sequential synthesis and verification (UC Berkeley)
-   [Mocha][284], also [here][285] (BSD, two implementations: Java, C/Tcl/Tk): Interactive environment for system specification (reactive modules language), execution (randomized, guided, mixed), requirement specification (Alternating Temporal Logic, superset of CTL), ATL MC, implementation verification (EPFL, UC Berkeley, UPenn, SUNYSB)
-   [CBMC][286] (BSD-4, [SWIG/C++/C][287]): Bounded model checker for ANSI-C, C++, SystemC, Scoot, uses Boolector or MathSAT or Z3 (CMU, Oxford Univ.)
    -   [Eclipse plugin][288] (EPL, [Java][289]): Eclipse plugin for CBMC
    -   [Visual Studio plugin][290]
    -   [JBMC][291] (BSD-4, [C++][292]): bounded model checking tool for verifying Java bytecode
    -   [Symex][293] (BSD-4, C++): symbolic execution tool for C and C++ programs, based on CBMC. It supports C89, C99, most of C11 and most compiler extensions provided by gcc and Visual Studio (CMU, Oxford Univ.)
    -   [EBMC and HW-CBMC][294] (BSD-3, [C++][295]): bounded model checker for the Verilog language (and other HW specification languages), based on CBMC (CMU, Oxford Univ.)
    -   [2LS][296] (BSD-4, C++): Static Analyzer and Verifier for C programs, built upon the CPROVER framework (CMU, Oxford Univ.)
    -   [k-induction][297] (MIT, Python): enables any C bounded model checker to be employed for k-induction over one-loop embedded-style C programs. Tested with CBMC.
    -   [ESBMC][298] (several, [C++][299]): context-bounded model checker based on a satisfiability modulo theories (SMT) solver for the verification of single- and multi-threaded C/C++ programs, with Python and C++ APIs, and based on CBMC (Federal Univ. of Amazonas, Univ. of Bristol, Univ. of Manchester, Univ. of Stellenbosch, and Univ. of Southampton)
-   [EBMC][300] (BSD-5): Bounded Model Checker for hardware designs, inputs: Netlists/ISCAS89 or Verilog or SMV, exports: DIMACS CNF or SMT-LIB (CMU, ETHZ, Oxford Univ.)
-   [jStar][301] (BSD-3, OCaml): (Queen Mary Univ. London, Cambridge Univ., ETH)
-   [coreStar][302] (BSD-3, OCaml): symbolic execution engine for analysis and verification with separation logic (Queen Mary Univ. London, Univ. Cambridge)
-   [JSCert JuS][303]: Certified JavaScript (Imperial College, INRIA)
    -   [jabstr][304] (LGPL, Ocaml): jStar plugin for numerical abstractions
-   [LStar][305] (BSD-3, OCaml): automatic prover for programs written in bitcode using separation logic (UCL)
-   [VIS][306]: logic circuit simulation, circuit verification, fair CTL model checking, logic synthesis via hierarchy restructuring \[UC Berkeley, Univ. Colorado at Boulder, Univ. Texas at Austin\]
-   [VerICS][307] (FUSC, Java): SAT verification of timed and multi-agent systems modeled by networks of communicating automata (Polish Academy of Sciences)
-   [Augur 2][308] (GPL-2, C++): verification of systems described by (attributed) graph transformations using approximated unfoldings ([Univ. Duisburg-Essen][309])
-   [Mercury][310]: Parallel Local Sub-CTL Model Checking \[LAAS-CNRS\]
-   [Boogie][311] ([Ms-PL][312], F#/C#): Intermediate verification language, intended as a layer on which to build program verifiers for other languages (Microsoft Research)
    -   [SymDiff][313]: Language-independent differential program analysis (C, Boogie front-ends available) (Microsoft Research)
-   [VCC][314] (MIT, [C#/F#/C/Perl][315]): static verifier for concurrent C programs (Microsoft Research)
-   [HAVOC][316] (?): for C in the presence of pointer manipulations, unsafe casts and dynamic memory allocation (Microsoft Research)
-   [Dafny][317] (MIT, C#): imperative object-based language with built-in specification constructs and static program verifier for functional correctness, [try it online][318] ([Microsoft Research][319])
    -   [vim plugin][320] (MS-PL, Vim script): Vim plugin for Dafny, with `.dfy` file extension, syntax highlighting, syntax checking
    -   [`vim-dafny`][321] (BSD-3, Vim script): Dafny language plugin for vim, based on the previous tool
    -   [sublime Dafny][322]: Sublime Text 2 plugin for Dafny. Provides verifing and syntax highlighting ([Imperial College London][323])
    -   [Dafny VSCode][324] (MIT, TypeScript): infrastructure necessary to support Dafny for Visual Studio Code
    -   [eclipse-dafny][325] (GPLv3, Java): enables Dafny language support in Eclipse
    -   [spacemacs-boogie-friends][326] (GPLv3, Emacs Lisp): Spacemacs layer for working with Dafny, Boogie, and Z3
    -   [DIVE][327] (GPLv3, Java): graphical proof front end for programs written and specified in Dafny that supports different types of user guidance for proofs
    -   [DafnyR][328] (MIT, C#): experimental tool for sequential program specification and verification. Variant of Dafny inspired by region logic. Built on a fine-grained region logic, allows one to use several styles of specifying the frame properties in sequential programs: dynamic frames, region logic and separation logic.
    -   [`dfydoc`][329] (?, Scala): documentation generator for Dafny
    -   [python-to-dafny-converter][330] (GPLv3, Python): translates Python code to Dafny (UC Berkeley)
    -   [dafny-to-c][331] (?, Shell): basic sed-based translator from Dafny to C
    -   [Dione][332] (NCSA, Python/Dafny): protocol verification system built with Dafny for Input/Output Automata (UIUC)
-   [CakeML][333] (BSD-3, [ML][334]): a verified implementation of ML: functional programming language and an ecosystem of proofs and tools built around the language, including a proven-correct compiler that can bootstrap itself
-   [Idris][335] (BSD-3, [Haskell/C][336]): a dependently typed functional programming language that allows propositional equalities to be declared, so that theorems about programs can be stated and proved (Univ. of St Andrews)
-   [Spec#][337] ([FUSC][338], C#): Object-oriented .NET programming language with design-by-contract features for method pre-/postconditions and object invariants, non-null type system (Microsoft Research)
-   [Whiley][339] (BSD-3, Java/C/): Object-oriented and functional programming language with static checking, including: divide-by-zero, array out-of-bounds and null dereference errors ([Victoria Univ. of Wellington][340])
-   [Why3][341] (GPl-2, OCaml): platform for deductive program verification in WhyML, uses external theorem provers, extracts OCaml from WhyML ([INRIA, Univ. Paris Sud, CNRS, LRI][342])
    -   [EasyCrypt][343] (?, OCaml): toolset for reasoning about relational properties of probabilistic computations with adversarial code (IMDEA Software Institute, Microsoft Research)
    -   [GNATprove][344] (GPL): Ada 2012 prover
    -   [Krakatoa][345]: Java verification
    -   [BWare][346]: discharging proof obligations generated by Atelier B using multiple provers
    -   [MiniMaple][347] (GPL-3, Java): Software for formal specification and verification of Maple programs by translation to Why3ML ([JKU][348])
-   [KeY][349] (GPL, Java): Formal verifier with input HML or OCL specs for JAVA, via dynamic logic thms (Karlsruhe Inst. Tech., TU Darmstadt, Chalmers Univ. Tech.)
    -   [KeY-Hoare][350] (GPL, Java): Hoare calculus with updates, extension of KeY (KIT, TUD, Chalmers)
    -   [KeYmaera][351] (GPL, Java): Theorem prover for hybrid systems: deductive, real algebraic, and computer algebraic prover technologies ([CMU][352])
    -   [KeYmaeraD][353], its [github][354] (BSD-3, Scala): Distributed theorem prover for distributed hybrid systems using Quantified differential dynamic logic (QdL) ([CMU][355])
    -   [SPHINX][356] (?): Eclipse plugin for textual and graphical modeling editors to define cyber-physical system structure, discrete/continuous dynamics ([CMU][357])
-   [j-algo][358] (GPL, Java): Algorithm visualization tool (TU Dresden)
-   [Verus][359] (?): Language for real-time systems, CTL symbolic MC, compilation into state-transition graph (CMU)
-   [UCLID][360] (BSD-like, Moscow ML): Model and verify nfinite-state systems with variables of integer, Boolean, function, and array types, term-level bounded model checking, correspondence checking, deductive verification, and predicate abstraction-based verification, and stand-alone decision procedure for the theories of uninterpreted functions and equality, integer linear arithmetic, and arrays (CMU, UC Berkeley)
-   [CBMC-GC][361] (?): C compiler in the context of Secure Two-party Computation (STC) (TU Wien, TU Darmstadt, CASED, CrypTool Project)
-   [Chic][362] (BSD, Java): Modular verifier for behavioral compatibility checking of hardware and software systems (UC Berkeley)
-   [BLAST][363] (Apache, OCaml): software MC for C using Lazy abstraction (UC Berkeley, EPFL, UCSD, UCLA, Simon Fraser Univ.)
-   [CRefine][364] (?, Java): Verifies `Circus` specs purely by applying various well-proved refinement laws, requires veriT (Univ. York)
-   [UTP and Cirus Theories in ProofPower-Z][365] (?, ?): embedding the theories (relations, designs, reactive processes) of UTP in the theorem prover ProofPower-Z, formal proofs can be mechanically constructed (Univ. York)
-   [Circus Type Checker][366] (? , Java): Syntax type checker for Circus specifications (Univ. York, UFPCI)
-   [JCircus][367] (?, Java): Automatically translate Circus programs into Java, for the purpose of animation and simulation (Univ. York)
-   [ClawCircus][368] (?, Java): Java-based tools primarily for generating Circus models from Simulink (Univ. York)
-   [Circus Parser][369] (GPL-2, Java): Included in Community Z tools (Univ. York)
-   [Rodin][370] (EPL, Eclipse): Eclipse-based platform for refinement and mathematical proof of Event-B (Univ. Southampton)
-   [CheckFence][371] (BSD, OCaml): SAT-based analysis of C code implementing concurrent data types (UPenn)
-   [Daikon][372] (MIT, Java): Dynamic invariant detection for C/C++, Eiffel, IOA, Perl (MIT)
-   [Tip][373] (?, C++/C): (Temporal Induction Prover) SAT based model checker ([Chalmers Univ.][374])
-   [alloy][375]: Language inspired by Z spec language and Tarski's relational calculus for implicitly describing structures and tool for exploring and generating counterexamples (MIT)
-   [Kodkod][376] (MIT, Java): SAT-based constraint solver for first order logic with relations, transitive closure, bit-vector arithmetic, and partial models, with finite model finder and minimal unsatisfiable core extractor (MIT)
-   [Rebeca][377] (GPLv2, [Java][378]): Reactive Objects Language is an actor-based language with a formal foundation, designed in an effort to bridge the gap between formal verification approaches and real applications, with a set of [tools][379]
-   [IVy][380] (MIT, [Python][381]): A tool for specifying, modeling, implementing and verifying protocols (MSR, Tel Aviv Univ., UCB)
-   [`mypyvy`][382] (MIT, Python): language for symbolic transition systems, inspired by Ivy, and tool that takes an input file describing a symbolic transition system and can perform various tasks such as inductive invariant checking and inference (Univ. of Washington)
-   [PyCSP][383] (MIT, Python): communicating sequential processes in Python (Aarhus Univ.)
-   [FDR2][384]: Refinement checker for communicating sequential processes (Oxford Univ.)
-   [KRATOS][385]: MC for sequential and cooperative multi-threaded C programs, verifying safety properties (Bruno Kessler Found.)
-   [Mr. Waffles][386] (GPL-2, Python): bare-bones CTL MC (Nancy Univ., LHS/LORIA, ESEC R&D)
-   [Peirce-Logic][387] (BSD-3, JS): Existential Graph proof system ([RPI][388])
-   [VSE][389]: verification support environment (DFKI, IST, Univ. Ulm, DASA)
    -   [VSE II][390]: Enhancing VSE with concurrency, structural deduction, and an integrated theorem prover
-   [Leon][391] (Scala): automated synthesis and verification of Scala programs (EPFL)
-   [Eldarica][392] (Java): predicate abstraction engine, generates Abstract Reachability Tree (ART) using lazy abstraction (EPFL)
    -   [Eldarica-P][393] (?, Java): reachability checker for unbounded Petri nets (EPFL)
-   [Bug-Assist][394] (?): error localization in ANSI-C solving MAX-SAT (Max Planck Inst.)
-   [CADP][395] (FUSC): compilers, equivalence checking tools, model-checkers for temporal logics and μ-calculus, verifications: enumerative, on-the-fly, symbolic using BDD, etc. (INRIA)
-   [MONA][396] (GPL-2, C/C++): Decision procedure for monadic second-order logic on finite strings and trees ([Aarhus Univ.][397])
-   [Boom][398] (BSD): Model checking of Boolean programs (ETHZ, Oxford Univ.)
-   [MCTK][399] (LGPL, C): model checker for epistemic logic as modification of CUDD and NuSMV ([Griffith Univ.][400])
-   [SMCDEL][401] (GPL-2, Haskell): model checker for Dynamic Epistemic Logic. (ILLC, University of Amsterdam)
-   [SymDIVINE][402] (MIT, C++): a tool for control explicit/data symbolic bit-precise LTL verification of parallel C/C++ programs using LLVM bitcode as intermediate representation [Masaryk Univ.][403]
-   [IC3][404] (MIT, C++): IC3 reference implementation ([Stanford][405])
-   [Overture][406] (GPL-3.0, Java): An IDE for developing and analyzing VDM models.
-   [Smallfoot][407] (QPL, OCaml): Automatic verification tool that checks separation logic specifications of sequential and concurrent programs that manipulate recursive dynamically-allocated (linked) data structures.
-   [Cave][408] (BSD-style, OCaml): automated verification tool for proving memory safety and linearizability (that is, atomicity and functional correctness) of concurrent data structures
-   [sally][409] (GPLv2, [C++][410]): Model checker for infinite-state systems described as transition systems, includes BMC, k-induction, IC3 (SRI/CSL)
-   [Sviss][411] (?, C++): Symbolic CTL model checker with symmetry reduction, using CUDD 2.4.1 (ETHZ, UT Austin, Univ. of Oxford)
-   [Symbolic Java Pathfinder][412] (Apache-2.0, Java): symbolic execution for Java bytecode (NASA, Univ. of Nebraska)
-   [OpenJML][413] (GPLv2, [Java][414]): program verification tool for Java programs that allows checking specifications of programs annotated in the [Java Modeling Language][415], using SMT solvers including Z3, CVC4, and Yices. Includes both static checking and runtime assertion checking facilities. (Univ. of Central Florida)
-   [ProVerif][416] (GPLv2, [OCaml][417]): automatic cryptographic protocol verifier, in the Dolev-Yao model. Based on a representation of the protocol by Horn clauses. It can handle many different cryptographic primitives, including shared- and public-key cryptography (encryption and signatures), hash functions, and Diffie-Hellman key agreements, specified both as rewrite rules or as equations. Can prove secrecy, authentication, strong secrecy, equivalences between processes that differ only by terms (Inria, École Polytechnique)
    -   [StateVerif][418] (GPLv2, OCaml): extends the ProVerif process calculus with constructs for explicit state, in order to be able to reason about protocols that manipulate global state
    -   [ProVerif-ATP][419] (MIT and GPLv2, OCaml): Combining ProVerif and Automated Theorem Provers for Security Protocol Verification
-   [CryptoVerif][420] (CeCILL-B, [OCaml][421]): automatic protocol prover sound in the computational model. It can prove secrecy, correspondences, which include in particular authentication. It can handle in particular symmetric encryption, message authentication codes, public-key encryption, signatures, hash functions. (Inria)
    -   [cryptoverif-completion][422] (?, Configure/Makefile): Using the readline wrapper `rlwrap` it introduces line editing, history and also some very basic completion support to the interactive mode in CryptoVerif without the need to modify CryptoVerif itself.
    -   [CyrptoVerif fork][423] (CeCILL-B, OCaml): Python implementations for CryptoVerif 1.23
    -   [Cyrptoverif fork Python library][424] (MIT and CeCILL-B, Python): contains the supporting library for the CryptoVerif Python implementations fork
-   [FS2PV][425] (FUSC, F#/OCaml): verification tool that compiles cryptographic-protocol implementations in a first-order subset of F# to a formal pi-calculus model. This pi-calculus model then can be analyzed using ProVerif to prove the desired security properties or to find security flaws. (Microsoft Research)
-   [TulaFale][426]: specification language for writing machine-checkable descriptions of SOAP-based security protocols and their properties, based on the pi calculus plus XML syntax, logical predicates, and correspondence assertions. The tool compiles TulaFale into the applied pi calculus, and then runs Blanchet's resolution-based protocol verifier. (Microsoft Research)
-   [sqifc][427] (?, C/C++): symbolic quantitative information flow analysis for C
-   [QILURA][428] (GPLv3, Java): quantifying information leaks using reliability analysis, using [Symbolic PathFinder][429], z3, Omega, Latte
-   [KITTeL/KoAT][430] (Apache-2.0, F\*/OCaml):
    -   KITTeL: automatic termination prover for integer transition systems and imperative programs written in a fragment of Simple
    -   KoAT: automatic complexity analyzer taking the same kinds of inputs as KITTeL
-   [llvm2KITTeL][431] (NCSA, C++): converter from LLVM's intermediate representation into a format that can be handled by the automatic termination prover KITTeL (UIUC)
-   [TVLA][432] (FUSC, Java): language for expressing concrete semantics, automatic generation of abstract interpreters from concrete semantics, tunable abstractions and tunable transformers (Tel Aviv Univ.)
-   [SAFE][433] (EPL, [Java][434]): Scalable And Flexible Error detection and verification of Java programs with respect to a set of specifications, applying static program analysis (Tel Aviv Univ.)
-   [Tools][435]:
    -   [`boundsmodels`][436] (GPLv2, C++): LTL-X model checker for 1-safe Petri nets, which generates logic programs with stable model semantics from the Petri nets. It supports step and interleaving semantics. (Helsinki Univ. of Technology)
    -   [`punroll`][437] (GPLv2, C++): bounded reachability checker which generates constrained Boolean circuits from 1-bounded Petri nets. It supports process, step, and interleaving semantics. (Helsinki Univ. of Technology)
    -   [`unfsmodels`][438] (GPLv2, C++): LTL-X model checker with net unfoldings (Helsinki Univ. of Technology)
    -   [`mcsmodels`][439] (GPLv2, C++): deadlock and reachability checker using finite complete prefixes generated by the PEP tool from 1-bounded Petri nets. It uses the smodels constraint-based logic programming system as its computational engine. (Helsinki Univ. of Technology)
        -   [`dlsmodels`][440] (GPLv2, C++): older version of mcsmodels limited to deadlock checking only (Helsinki Univ. of Technology)
-   [Smodels][441] (GPLv2, C++): implementation of the stable model semantics for logic programs (Helsinki Univ. of Technology)
-   [TASS][442] (GPLv3, C/Java): tools for the formal verification of programs used in computational science, including message-passing-based parallel programs. It uses symbolic execution and model checking techniques to verify a number of standard safety properties (such as absence of deadlocks and out-of-bound references), and can establish that two programs are functionally equivalent. (Univ. of Delaware)
-   [RAPID][443] (?, C++): transforms a program and a correctness property to a FOL encoding in SMTLIB

## logic -> automata and automata tools

### LTL -> \*BA

-   [ltl2ba][444]: LTL -> BA (ENS de Cachan)
    -   [LTL2BA4J][445] (GPL-3, Java): version of ltl2ba for Java
    -   [ltl3ba][446] (GPL-2, C): LTL -> BA ([Masaryk Univ.][447])
-   [LTL -> NBA][448] (Python)
-   [lbtt][449] (GPL): tool for testing programs translating LTL -> BA
-   [Wring][450] (Perl): LTL -> GBA (TU Graz)
-   [Temporal Massage Parlor][451]: Optimized Translator of an Extended Linear Temporal Logic into Büchi automata and Promela (Bell Labs)
-   [LBT][452]: LTL-> BA
-   [ltl2tgba][453]: LTL or PSL-> Transition-based GBA or BA (part of SPOT)
-   [LTL2AUT][454] (C++): LTL-> BA
-   [DBA Minimizer][455] (FUSC, C++): uses external SAT solver for DBA minimization
-   [Wring][456] (Perl): translate LTL formulae to generalized Buechi automata (TU Graz)
-   [GOAL][457]: graphical interactive tool for defining and manipulating Büchi automata and temporal logic formulae (NTU)
-   [LTL -> Buchi Genealogy][458] ([EPITA][459])
-   [LTSA][460] (?, Java): Labelled Transition System Analyzer ([Imperial College London][461])
    -   [OLTSA][462]: ontology-based LTSA extension (INRIA)
-   [WDBA][463] (BSD, OCaml): Reads safety property BA and negation BA as SPIN never claims -> outputs weak deterministic BA ([ETHZ][464])
-   [psl2ba][465] (BSD-3, OCaml/uses CUDD): Translator from Property Specification Language (PSL) or LTL -> BA for SMV or SPIN ([ETHZ][466])
-   [rltl2ba][467] (BSD, OCaml/C++/uses psl2ba, CUDD): Translator from Regular LTL (RLTL) -> BA ([IMDEA][468])
-   [aalta][469]: LTL -> BA using obligation sets (East China Normal Univ.)

### LTL -> DRA

-   [ltl2dstar][470] (GPL): LTL -> DRA (deterministic Rabin) ([Univ. Bonn][471])
    -   [online interface][472] ([Caltech.CDS][473])
-   [Rabinizer][474] (Disclaimer, Java): LTL -> DRA with generalized Rabin pairs ([TUM][475])
-   [LTL3DRA][476] (GPL-2, C): fragment of LTL -> DRA based on LTL3BA (Masaryk Univ.)

### other

-   [dk.brics.automaton][477] (BSD-3, [Java][478]): DFA/NFA implementation with UTF16 alphabet and support for operations on regular expressions
-   [FSA function library][479] (MATLAB): [doc here][480] ([ISR-Lisbon][481])
-   [Hessen][482] (?, C++): Automata Library (TU Wien)
-   [FSME, FSMC, FSMD][483] (GPL-2, Qt): FSM editor, compiler, debugger for drawing, exports: `XML`, C++, Python
-   [Kermeta][484] (EPL): Metamodel programming environment: editor, OCL, compiler to Java or OSGI, kermeta <-> ecore models or XMI ([IRISA][485])
-   [Papyrus][486] (EPL): Graphical UML2 modeling in Eclipse ([CEA LIST][487])
-   [Topcased][488] (EPL): Graphical editors for: Ecore, UML, SAM, AADL, SysML, and doc generator, model transformations (INRIA)
    -   [Topcased verification tools][489]
-   [MARTE][490]: UML extension for model-driven development of real-time and embedded systems (OMG)
-   [timesquare][491] (EPL): Model development kit as Eclipse plugings based on formal Clock Constraint Specification Language (CCSL) to manipulate logical time (INRIA)
-   [libalf][492] (LGPL-3, C++/C/Java): Learning finite-state automata: DFA: Angluin's L\*, L\* (adding counter-examples to columns), Kearns / Vazirani, Rivest / Schapire, Regular positive negative inference (RPNI), Biermann and Feldman's algorithm (using SAT-solving), and NFA: NL\*, DeLeTe2, Biermann and Feldman's (RWTH Aachen Univ., ENS Cachan, TU Munchen)
    -   [AMoRE][493] (GPL-2, C/Java): Automata, Monoids, and Regular Expressions (RWTH Aaachen Univ., Univ. Kiel)
    -   \[libmVCA\]
    -   \[liblangen\]
    -   \[finite automata tool\]
-   [APHMIN][494] (?, ?): Tools to generate, manipulate, and minimize acyclic phase-type representations (Saarland Univ.)
-   [FlowSim][495] (GPL-3, ?): Measure resources needed to find maximal strong simulation relation for a model under different optimizations (Saarland Univ.)
-   [fc2symbmin][496]: Finite State Mealy Machine analyzer (INRIA)
-   [PyFMI][497] (LGPL-3, Python): Load and interact with Functional Mock-Up Units ([FMU][498])
-   [FMU SDK][499] (?, C): FMU SDK (Qtronic)
-   [hoaf][500] (?, text): Text file format for omega-automata (Masaryk Univ., EPITA, IST Austria, TU Dresden)
-   [JFLAP][501]: experiment with NFA, NPA, multi-tape Turing machines
-   [`ltlmp_sat`][502] (?, Python): LTL mean-payoff satisfiability checker
-   [LtlSharp][503] (MIT, C#): Library for parsing and manipulating LTL formulae (U Catholique Louvain)
-   [safety][504] (?, C++): tool to translate co-safety linear temporal logic formulas into finite automata
-   [RABIT and Reduce][505] (?, Java):
    -   RABIT (LGPL, [Java][506]): checks language inclusion between Buchi automata and Nondeterministic Finite Automata (NFA), and thus also language equivalence and language universality, using generalized simulation relations, and the Ramsey method for finding counterexamples.
    -   Reduce: minimizes Buchi automata, and NFA
    -   [BA inclusion testing][507] (?, Java): Ramsey-based Buchi Automata inclusion testing
-   [`automata-lib`][508] (MIT, [Python][509]): library for finite automata, pushdown automata, and Turing machines, available on PyPI
-   [`automata-python`][510] (GPLv3, Python): library implementing finite automata, finite automata with output, pushdown automata and Turing machines
-   [`python-automata`][511] (BSD-3, [Python][512]): library for deterministic finite automata, including simulation, negation, classical minimization, DFCA minimization, generalized cross-product, including union, intersection, and symmetric difference
-   [Sage][513] (GPLv3, Python): finite state machines, automata, transducers
-   [`python-statemachine`][514] (MIT, Python): package for finite state machines
-   [roll-library][515] (GPLv3, [Java][516]): Regular Omega Language Learning, library of learning algorithms for ω-regular languages (Institute of Software Chinese Academy of Sciences)

## Term rewrite systems

-   [Autowrite][517] (?, Lisp): check properties of term rewrite systems and manipulate tree automata
-   [Timbuk][518] (GPL-2, OCaml): Tools for reachability proofs over term rewriting systems and manipulate bottom-up non-deterministic finite tree automata (IRISA)
-   [JITty][519] (C): term rewriter with strategy annotations
-   [K][520]: rewrite-based executable semantic framework (UIUC)
-   [ELAN][521]: Rule based programming using strategic rewriting (LORIA)

## Open Systems

### Synchronous Languages

Synthesis in this context refers to compilation from source, not from temporal logic. This distinguishes it from synthesis from temporal logic by solving games. In some sense the latter is from an "even more declarative" problem description.

#### Imperative

-   [Esterel][522], [old][523], [old][524]: Synchronous reactive programming language and compiler to FSM (C language), Graphical symbolic debugger, explicit/BDD verification for bisimulation reduction or safety checking (Ecole des Mines de Paris, INRIA)
    -   [CEC][525] (BSD-3, [C++/ANTLR][526]): Esterel V5 compiler to C or Verilog or BLIF ([Columbia Univ.][527])
    -   [scdata][528] (?): Boolean datapath generator for Esterel: translates action calls in sc code over boolean variables into standard nets also in sc (INRIA, Ecole des Mines de Paris)
    -   [Ocjava][529] (?): Esterel Java code generator (INRIA)
-   [Quartz][530]: derivative of Esterel that includes: - non-determinism - asynchronous execution - hybrid systems (Kaiserslautern Univ.)
    -   [Averest][531]: Synchronous programming language Quartz and compiler to TS, symbolic model checker, tool for hardware/software synthesis from Quartz ([TU Kaiserslautern][532])
    -   [ECL][533] (RSCPL, Java): system-level specification language for HW/SW designs and is based on Esterel and C. The ECL compiler parses ECL, writes Esterel and C, and uses the Esterel compiler to produce an implementation. (Cadence Berkeley Labs)
-   [Xeve][534]: Esterel verification environment (INRIA)

#### Declarative

-   [Lustre][535]: Declarative, synchronous dataflow programminglanguage for reactive systems
    -   [Lustre][536] (?, OCaml): Lustre interpreter
    -   [Lustre-V6][537] (CeCILL, [OCaml][538]): the Lustre V6 compiler (Verimag)
    -   [Zustre][539] (BSD-3, Python): SMT-based PDR-style verification engine for Lustre programs, also an engine for generating assume/guarantee contracts (NASA/CMU/SEI)
    -   [MATOU][540] (?): Implementation of mode-automata on top of Lustre (VERIMAG)
        -   [KIND][541] (BSD-3, OCaml): K-induction based for safety properties of Lustre programs, Automatic invariant generation, parallel: PKIND (Univ. Iowa, NASA/CMU, ONERA)
    -   [KIND2][542] (Apache-2, [OCaml/C++][543]): Multi-engine SMT-based automatic model checker for safety properties of Lustre programs, successor of KIND (Univ. Iowa)
    -   [JKind][544] (BSD-3, [Java][545]): SMT-based infinite-state model checker for safety properties in Lustre, based on k-induction and property-directed reachability (Rockwell Collins)
        -   [SpeAR][546] (BSD-3, [Java][547]): Specification and Analysis for Requirements tool, a frontend for writing formal specifications, translating them to Lustre, and then using the model checker JKind (Rockwell Collins, AFRL)
        -   [jkind-xtext][548] (BSD-3, Java): Lustre Plug-in for Eclipse with JKind Analysis Support (Rockwell Collins)
        -   [AGREE][549] (BSD-3, [Java][550]): Assume Guarantee REasoning Environment, compositional, assume-guarantee-style model checker for AADL models, using k-induction (Collins Aerospace)
        -   [SIMPAL][551] (?, Java): Static IMPerative AnaLyzer, performs compositional reasoning of imperative programs written in Limp (Lustre imperative), which it translates to Lustre, and analyzes this with JKind
-   [NBAC][552] (OCaml): Co-/Reachability, slicing of synchronous deterministic reactive systems with Boolean, numerical variables (VERIMAG)
    -   [`lus2nbac`][553]: Convert Lustre to NBAC (VERIMAG)
    -   [`nbac2lucky`][554]: Convert counterexamples to Ludic debugger (VERIMAG)
    -   [`autoc2auto`, `auto2nbac`, `nbac2auto`][555]: Analyze AUTOC/AUTO hybrid automata (VERIMAG)
-   [SIGNAL][556]: Synchronized data-flow programming language for systems with multiple clocks ([INRIA][557])
    -   [Polychrony / SME][558] (GPL, Eclipse Public License): SIGNAL IDE (IRISA)
-   [Sigali][559], [old][560] (FUSC): Model check implicit labeled transition systems (INRIA)
-   [TGV][561] (?): Generation of conformance test suites for protocols, based on I/O transition systems (IOLTS) (IRISA)

#### Statecharts

-   [PlayGo][562] (The Weizmann Institute of Science)
-   [Time Rover][563]
-   [SyncCharts][564]: Graphical formalism for reactive modeling ([Univ. Nice Sophia-Antipolis][565])
    -   [SPORTS Project][566] (FUSC): SyncCharts tools
    -   [SCC][567]): SyncCharts Compiler Collection for XML or BLIF or C output (Univ. Nice Sophia-Antipolis, INRIA)

## Open Systems (Games: System and Uncontrolled Environment)

### Discrete games

#### GR(1) games

[GR(1)][568] means Generalized Reactivity 1.

-   [gr1c][569] (BSD-3, C, uses CUDD): checking realizability of and synthesizing strategies for GR(1) specifications and much more ([Caltech.CDS][570])
-   [gr1py][571] (BSD-3, Python): an enumerative reactive synthesis tool for the GR(1) fragment of LTL (Caltech CDS, rerobots)
-   [`omega`][572] (BSD-3, Python): Specify and synthesize systems using symbolic algorithms (Caltech CDS)
-   [slugs][573] (BSD-3, C++, uses CUDD): a stand-alone reactive synthesis tool for GR(1) synthesis (Cornell)
-   [JTLV][574] (LGPLv2, Java/C): unified framework for the development of formal verification algorithms in Java, with GR(1) and GR(k) synthesizers, uses JavaBDD, can interface to BDD libraries in C, has parsers for SMV and FDS written using ANTLR v3 (The Weizmann Institute of Science)
    -   [TLV][575] (?, C): based on the SMV model checker, with a scripting language called TLV-Basic, users can write TLV-Basic procedures for implementing model checking or deductive verification rules, predecessor of JTLV (NYU)
        -   [`synthesis.tlv`][576] (?, TLV): GR(1) synthesis implemented in TLV (The Weizmann Institute of Science)
-   [RATSY][577] (LGPL-2+, Python/PyGTK): PSL or BA specs -> gr1 synthesis, game-based debug approach, circuit synthesis ([TU Graz][578])
    -   [Anzu][579] (Perl, uses CUDD): synthesizes Verilog ([TU Graz][580])
    -   [RAT][581] (?, Python): RATSY's pedecessor (FBK, [TU Graz][582])
    -   marduk (Python, needs NuSMV): game solver used by RATSY
-   [NuGAT][583] (LGPL-2+): Game solver on top NuSMV
    -   [chameleon-debaets][584] (GPL-3, Java): Java interface to NuGAT
-   [AspectLTL][585] (?, Java): Aspect programming paradigm language (The Weizmann Institute of Science)
-   [open Promela][586] (BSD-3, Python): synthesize reactive(1) designs from multi-paradigm specifications written in an extension of Promela for open systems ([Caltech][587])

#### Full LTL games

-   [Acacia+][588] (GPL, Python/C): LTL Realizability check and winning strategy synthesis using AntiChains [repo][589] (Univ. Mons)
    
    -   [Acacia][590] (GPL-2, Perl)
    -   [Alaska][591] (GPL-2, Python): Antichains for Logic, Automata and Symbolic Kripke structure Analysis (predecessor of Acacia) ([ULB][592])
    -   [jorro][593] (?, Java/Perl): visualize transition systems synthesized by Acacia+ and Lily
    -   [ltl2aig][594] (GPL, Python): LTL -> And-inverter graph format
-   [Lily][595] (Perl): synthesizes from PSL or LTL and I/O signal partition, works on top of Wring, outputs VERILOG or dot (TU Graz)
    
-   [GAVS+][596] (GPL-3, Java): visualize algorithmic games used in verification and synthesis (TU Munchen)
    
-   [Unbeast][597] (C++, FUSC) symbolic bounded synthesis, depends on either `ltl2ba` or `spot` (Saarland Univ.)
    
-   [GASt][598] experimental platform:
    
    -   NBA determinization:
        -   Safra
        -   Muller-Schupp
        -   improved Muller-Schupp
        -   Miyano/Hayashi breakpoint construction
    -   game synthesis:
        -   reachability
        -   safety
        -   weak parity
        -   Staiger-Wagner
        -   request-response
        -   Buchi
        -   generalized Buchi
        -   parity
        -   Muller
        -   simple Streett
        -   Streett
        -   mean payoff
    -   live sequence charts
    
    (RRWTH Aaachen)
    
-   [party-elli][599] (MIT, Python): SMT based bounded synthesis (TU Graz)
    
-   [Rabin][600] (?, C++): Rabin game solver ([Masaryk Univ.][601])
    
-   [BoSy][602] (Swift): Constraint-based (SAT,SMT,QBF,DQBF) bounded synthesis (Saarland Univ.)
    

#### Safety specs (controller synthesis)

-   [AbsSynthe][603] (GPL-3, C/Python): controller synthesis from succinct safety specs
-   [demiurge][604] (GLGPL3, C++): SAT based controller synthesizer from SYNTCOMP specs (TU Graz)
-   [SafetySynth][605] (Swift): symbolic BDD-based safety game solver for SYNTCOMP (Saarland Univ.)
-   [Reglisse][606] (GPL-2, OCaml): Generate hardware description from safety conditions given by regular languages

#### Parity Game solvers

-   [PGSolver][607] (OCaml): tools for generating, manipulating and solving parity games (Univ. Muchich, Univ. Kassel)
-   [PDSolver][608] (OCaml): evaluating both mu-calculus formulas over pushdown systems and pushdown parity games (Oxford Univ.)
-   [alpaga][609] and [github][610] (Python, uses PyCUDD): solver parity games with imperfect information using antichains ([ULB][611])
-   [oink][612] (Apache-2.0, C++): High-performance implementations of state-of-the-art algorithms representing different approaches to solving parity games (JKU)

#### Quantitative games

-   [Quasy][613] (Scala, Java, C++): Quantitative synthesis of reactive systems from qualitative and quantitative GOAL specs, in/out: GOAL format (IST Austria)
-   [GIST][614] (?): solving probabilistic games with ω-regular objectives qualitatively (IST Austria)
-   [mpg-solver][615] (GPL-2, C/C++/Python): Mean-payoff game solver ([Univ. Libre de Bruxelles][616])

#### Other

-   [MLSolver][617] (?, OCaml): solving the satisfiability and validity problems for modal fixpoint logics (Univs. Munich, Kassel)
-   [`aisy`][618] (?, Python): safety synthesis from AIGER circuits format, using PyCUDD
-   [BluSTL][619] (BSD-3, MATLAB): BluSTL (pronounced "blue steel") is a MATLAB toolkit for automatically generating hybrid controllers from specifications written in Signal Temporal Logic.
-   [G4LTL-ST][620] (BSD, Java): automatically generates industrial control software (supporting IEC-61131-3 Structure Text) from extended logic specifications.

### Hybrid games

-   [TuLiP][621] (BSD-3, Python): Receding Horizon Temporal Logic Planning Toolbox ([Caltech.CDS][622])
-   [LTLMoP][623] (GPL-3, Python): designing, testing, and implementing hybrid controllers generated automatically from task specifications written in Structured English or Temporal Logic ([Cornell][624])
    -   [SLURP][625] (GPL-3, Python): situation and language understanding robot platform, uses LTLmop (UPenn)
-   [Tools from Boston Univ.][626] (?, MATLAB)
-   [Tools from Saarland University][627] (Saarland Univ.)
-   [Synthia][628] (GPL-3, C/C++): Verification certificates (deductive proofs) and synthesis for partially implemented systems, abstraction refinement ([Saarland Uni.][629])
-   [PESSOA][630] (FUSC, MATLAB): synthesis of correct-by-design embedded control software based on approximate bisimulations (UCLA)
-   [TALIRO][631] (GPL, MATLAB) ([ASU][632])
-   [SCOTS][633] (BSD-3, C++/MATLAB): computation of discrete abstractions and symbolic controllers (TUM)
-   [ARCS][634] (MIT, C/MATLAB): abstraction-refinement-based incremental synthesis for switched systems (Univ. of Michigan)

### Contracts

-   [Mica][635] (CeCILL-C-1, OCaml): Modal Interface algebra for contract based design ([INRIA/IRISA][636])
-   [OCRA][637] (closed, ?): verification of logic-based contract refinement, uses NuSMV3 (Bruno Kessler Found.)
    -   [AF3-OCRA][638]: OCRA plug-in for Autfocus
    -   [FoReVer][639]

### Hardware

-   [Yosys][640] (ISC, C++): a framework for RTL synthesis tools
-   [Clash][641] (?, Haskell) generates VHDL from Haskell
-   [Lava][642] (BSD-3, [Haskell][643]): generates circuits from FSMs, behavioural specifications (VHDL, Verilog), and verification via NuSMV (University of Kansas)
-   [Chisel][644] (?, Scala): supports advanced hardware design using highly parameterized generators and layered domain-specific hardware languages; Chisel can generate a high-speed C++-based cycle-accurate software simulator, or low-level Verilog designed to pass on to standard ASIC or FPGA tools for synthesis and place and route

### Other

-   [Times][645] (?): Tool for Modeling and Implementation of Embedded Systems (GUI editor, simulator, verifier for schedulability analysis) (Uppsala Univ.)
-   [BigMC][646] (GPL, C++/C/PHP/...): Bigraphical reactive systems (IT Univ. Copenhagen)
-   [Ticc][647] (GPL-2, ?): Interface compatibility and composition, components specify own behavior and that expected by others, CTL properties checked and propagated (UCSC)

-   [UPPAAL][648], [UPPAAL-Tiga][649] (FUSC): Timed automata (Uppsala Univ., Aalborg Univ.)
    -   [manipulate UPPAAL XML][650] (GPL-3, Python)
    -   [Yggdrasil][651] (?, ?): UML (subset) -> Uppaal, intended for test generation (Aalborg Univ.)
    -   [METAMOC][652] (GPL-3, Python): WCET Analysis of ARM Processors using Real-Time model-checking (Aalborg Univ.)
    -   [SARTS][653] (?, Java): Model Based Schedulability Analysis of Real-Time Systems, SCJ2, UPPAAL (Aalborg Univ.)
    -   [UPPAAL DBM Library][654] (GPLv2, C++): efficient data structures to represent clock constraints in timed automata (Aalborg Univ.)
        -   [Python bindings][655] (GPLv3, Python/SWIG/C): to UPPAAL (Aalborg Univ.)
        -   [Ruby bindings][656] (GPLv2, Ruby/C++): to UPPAAL (Aalborg Univ.)
        -   [`udbml`][657] (AGPL-3, C++/OCaml): OCaml wrapper for the UPPAAL DBM library
-   [OPAAL][658] (GPL-3, Python): distributed/parallel (discrete time) model checker for networks of timed automata using MPI
-   [ECDAR][659] (FUSC): timed interface theory (Aalborg, INRIA, ITU)
-   [PyECDAR][660] (GPL-2, Python): solve timed games based on timed automata models (ITU)
-   [IOA][661] (MIT, Java): I/O automata formal language (MIT)
-   [TEMPO][662] (closed, Java): Formal language for modeling distributed systems with or without timing constraints as collections of interacting state machines, i.e., timed input/output automata (TIOA) (UIUC)
    -   [Tempo2HSal][663] (?, Python): Tempo (`.tioa`) -> HybridSAL (`.hsal`) translator (SRI)
-   [ATAS][664] (GPL-3, Python): Alternating 1-clock (fully decidable) Timed Automata Solver
-   [PPL binding][665] (GPL-2, Python): for [Parma Polyhedral Lib][666] features some specific methods for Timed Automata analysis
-   [MCPTA][667] (FUSC, ?): Probabilistic Timed Automata model checker for MoDeST, UPPAAL, PRISM - maps on PRISM (Saarland Univ.)
-   [SAAtRE][668] (?): Abstraction refinement model checker for Timed Automata based on extended SAT-solving, UPPAAL-like input format (Univ. Oldenburg, CWI)
-   [Fortuna][669] (GPL-3, C++/Eclipse): MC priced probabilistic timed automata (PPTAs) (Univ. Twente)
-   [COSPAN][670] (?, ?): Automata-theoretic verification of coordinating processes with timing constraints (UPenn)
-   [Romeo][671]: timed Petri nets (IRCCyN)
-   [ExSched][672]: develop operating system schedulers for VxWorks and Linux w/o modifying the underlying kernel (\[Malardalen Univ.\][http://www.es.mdh.se/staff/197-Mikael\_\_sberg][673]))
-   [RTComposer][674] (Java): classes and utilities for predictable real-time scheduling (BenGurion, UPenn)
-   [ASTRAL][675]: MC of real-time systems (UCSB)
-   [PAT][676] (?, C#): simulator, MC, refinement checker for concurrent and RT systems (Nanyang Tech. Univ.)
-   [HCMC][677] (? , C++): Compositional model checking for real-time systems (ENS-Cachan)
-   [IMITATOR][678] (GPLv3, [OCaml/Python][679]): is a tool for parametric verification and robustness analysis of real-time systems. It relies on the formalism of networks of parametric timed automata, augmented with integer variables and stopwatches (LORIA, Univ. de Lorraine, Inria, CNRS, LIPN, LSV, Sorbonne Univ., Univ. Pierre et Marie Curie, ENS Cachan, Aarhus Univ.)
-   [CoVerTS][680] (Scala): compositional verification of state properties for timed systems

-   [Ptolemy][681] (BSD-3, Java): modeling, simulation, and design of concurrent, real-time, embedded systems (UC Berkeley)
-   [HyLink][682] (FUSC, Python): Restricted Simulink/Stateflow models -> HyXML-> HyTech or UPPAAL (UIUC)
-   [CHARON][683] (?, Java): Language and implementation (editor, model browser, visual simulator) for modular specification of interacting hybrid systems based on the notions of agent and mode (UPenn)
-   [CARTS][684] (FUSC, Java): Compositional Analysis of Real-Time Systems (UPenn)
-   [START][685]: time-bounded static analysis of concurrency properties of Real-Time Embedded Software
-   [IF][686] (FUSC): static analysis, model-checking, test generation, [Open-Kronos][687], [Kronos][688]: TCTL verification of Timed Automata (VERIMAG)
-   [CIF][689]: Compositional Interchange Format for Hybrid Systems toolset
-   [Passel][690] (closed, C#/Python): invariant synthesis and inductive invariant proving (UIUC)
-   [Rabbit][691] (Apache): RTS modular spec: timed (and hybrid) automata: CottbusTimed Automata, MC for reachability analysis and refinement check (Bradenburg TU)
-   [Mobius][692] (?, Java/C++): Model-based environment for validation of system reliability, availability, security, and performance ([UIUC][693])
-   \[HYMITATOR\](GLP, OCaml) ([https://lipn.univ-paris13.fr/~andre/software/hymitator/][694]): is a tool dedicated to the synthesis of parameters for hybrid automata

## Linear

-   [HyTech][695] (FUSC, C): computes condition under which a linear hybrid system satisfies a temporal requirement (UC Berkeley)
-   [d/dt][696] (?, ?): Reachability analysis of Continuous and Hybrid Systems with linear differential inclusions ([VERIMAG][697])
-   [HARE][698] (?): Abstraction refinement for safety
-   [PHAVer][699] (GPL-2, C++): verifying safety properies of hybrid systems (exact arithmetic, on-the-fly over-approximation of PWA dynamics, compositional and assume-guarantee reasoning) ([Verimag][700])
    -   [vim highlight][701], its [github][702]
    -   [ProHVer][703] (GPL-3, C++): Unbounded reachability probability for probabilistic hybrid automata (Univ. Saarland)
-   [CheckMate][704] (MATLAB) modeling, simulation and investigation, [demos][705]
-   [HYSDEL][706] (GPL, C++/MATLAB): (Hybrid Systems Description Language) HYSDEL -> MLD compiler, also language to model interconnected linear systems and automata (ETHZ)
-   [Hybrid Toolbox for MATLAB][707] (FUSC, MATLAB/Simulink): Modeling, simulation, verification, constrained MPC, generate linear and hybrid MPC PWA control laws ([IMT Lucca][708])
-   [Ellipsoidal Toolbox for MATLAB][709] (BSD-3, MATLAB): External and internal ellipsoidal approximations of geometric (Minkowski) sums and differences of ellipsoids, intersections of ellipsoids and intersections of ellipsoids with halfspaces and polytopes; distances between ellipsoids, between ellipsoids and hyperplanes, between ellipsoids and polytopes; and projections onto given subspaces. For forward and backward reach sets of continuous- and discrete-time PWA systems (UC Berkeley)
-   [MATISSE][710] (GPL-3, MATLAB): Approximate bisimulations: safety verification and reachable set computation of large dimensional, constrained linear systems. Needs: MPT, YALMIP, SEDUMI (UPenn, IMAG)
-   [BACH][711]: bounded model checker for Linear Hybrid Systems (Nanjing Univ.)
-   [`tltk-mtl`][712] (?, Python): tool for computing Metric Temporal logic robustness

## Non-Linear

-   [HTV][713] (closed, MATLAB): verify systems from their simulation and run-time traces using imprecise samples and possibly incomplete models to compute overapproximations of bounded reach sets (UIUC)
-   [SpaceEx][714] (GPL-3, C++): Reachability and safety verification (Verimag, Lab Jean Kuntzmann, DGA-MI)
-   [Ariadne][715] (GPL-3, C++/Python): Dynamical systems set-based analysis (reachability analysis, robust simulation, safety verification - reset, flow, guard predicates given by nonlinear functions) (Univ. Udine, PARADES, CWI, Univ. Verona)
-   [MPT][716] (GPL, MATLAB): Design, analysis and deployment of optimal controllers for constrained linear, nonlinear and hybrid systems (ETHZ)
-   [HybridSal][717] (GPLv2, [Java/Python][718]): Language extension to SAL for specifying Hybrid Systems and hybrid abstraction tool to discrete SAL specifications for model checking with other SAL tools ([SRI][719])
    -   [Relational Abstraction][720] (GPL-2, LISP): creating relational abstractions of HybridSAL models (SRI)
    -   `hsal2xml` (GPL-2, Java): `HybridSAL` -> `XML`
-   [NLToolbox][721] (u, C/C++): Non-linear dynamical system reachability: polynomial using Bernstein expansion, more general using hybridization ([VERIMAG][722])
-   [Flow\*][723] (GPL-3, C++): Over-approximation Taylor model flowpipes: polynomial ODEs, polynomial invariants, guards, resets (RWTH Aaachen, Univ. Colorado Boulder)
-   [HSolver][724] (LGPL): based on RSOLVER constraint solver, correctness does not depend on floating point rounding errors, handles non-linear ODEs ([Academy of Sciences Czech Republic][725])
-   [AMC][726] (?, Mathematica): model checker for non-linear hybrid systems based on the abstraction refinement framework (CMU, Univ. Oldenburg)
-   [pyHybridAnalysis][727] (LGPL-3, Python): ε-semantics reachability ([VERIMAG][728], Udine Univ., Trieste Univ.)
-   [LtlOpt][729] (BSD-3, MATLAB): optimal control of high-dimensional, nonlinear systems using LTL specs ([Caltech][730])
-   [reasys][731] (BSD-3, MATLAB): Reactive synthesis for nonlinear systems ([Cornell, Toyota][732])
-   [c2e2][733] (?, Assembly): tool for verifying bounded-time invariant properties of Stateflow models (UIUC)
-   [HyST][734] (LGPLv3, Java / Python / Matlab): transformation and semantics-preserving translation (to Flow\*, dReach, HyComp, HyCreate) of hybrid automata networks from SpaceEx format ([AFRL][735], [IST][736], [UTA][737])
-   [VeriSiMPL][738] (GPLv3, C++): constructs finite abstractions of autonomous Max-Plus-Linear (MPL) systems over R^n, as finite-state Labeled Transition Systems (LTS), exported to the NuSMV language for verification using NuSMV
-   [HyCOMP][739] (FUSC, ?): model checker for asynchronous hybrid systems, built on top of the nuXmv model checker, and of the Mathsat5 SMT solver (FBK)

## Stochastic

-   [MoToR][740] (GPL, ?): Macro-preprocessor for MoDeST, a stochastic real-time systems formalism, interfacing to UPPAAL, CADP, Eclipse, Mobius (Univ. Saarlandes)
    -   [Eclipse plugin][741] (Univ. Saarlandes)
-   [MRMC][742] (GPL-3, C): MC for: Discrete/Continuous Markov Chains, Reward models, decision processes (Univ. Twente, RWTH Aachen)
-   [PASS][743] (bin, ?): CEGAR MC for infinite-state probabilistic models, MDPs (Saarland Univ.)
-   [INFAMY][744] (bin, ?): CSL Model Checker for infinite-state Markov chains - CTMCs (Saarland Univ.)
-   [PARAM][745] (GPL-3, C++): Reachability probability computation for parametric Markov chains - DTMCs (Saarland Univ.)

-   [TLAPS][746] (BSD-2, [OCaml/Isabelle][747]): Theorem prover for TLA+ using: Isabelle, ls4, Zenon, Z3 (INRIA/MSR)
    -   [`pf2`][748] (LaTeX): package for writing structured proofs of the form described in ["How to write a 21st century proof"][749]
    -   [`pfnum`][750] (C): Rewrites structured proofs in a LaTeX file to renumber proofs steps as they will appear after typesetting
    -   [`pf2html`][751] [home][752] (GPL-2, Perl): adds functionality to LATEX2HTML such that LATEX documents written with pf.sty can be viewed in a web browser up to the desired level of detail for each branch of a structured proof (TU Wien)
    -   [`hyperpf`][753] (C): HyperTeXt structured proof reader
    -   [Verifying TLA+ invariants using ACL2][754] (UT Austin)
-   [Isabelle][755] (BSD-3, [ML/Scala/Isabelle][756], [mirror][757]): (Univ. Cambridge, TU Munchen, Univ. Paris-Sud)
    -   [Isabelle/TLA][758] [github][759]: encoding of Lamport's TLA in Isabelle, ships with Isabelle's standard distribution ([INRIA][760])
    -   [AFP][761]: Archive of Formal Proofs
    -   [Isabelle/eclipse][762] (EPL-1.0, [Python/Scala][763]): Eclipse integration for the Isabelle proof assistant
    -   [VHDL semantics][764] (BSD-2, Isabelle): formalization of the language VHDL in the Isabelle theorem prover (Nanyang Technological Univ.)
    -   [PSL][765] (CSIRO, Isabelle/ML): implementation of proof strategy language (PSL) and its default strategy, for Isabelle (CSIRO)
    -   [`ismt`][766] (BSD-3, Isabelle/ML): integration of Yices SMT solver in Isabelle/HOL (Galois Inc.)
    -   [IsaFol][767] (?, Isabelle): a repository of formalizations of logical calculi and related topics, such as DPLL, CDCL, and resolution
    -   [IsaFoR][768] (LGPLv3, [Isabelle][769]): Isabelle/HOL formalization of rewriting for certified tool assertions
    -   [CeTA][770] (LGPLv3, [Haskell][771]: tool that certifies (non)termination or (non)confluence or completion or complexity proofs provided by some automated tool
-   [HOL][772] (BSD-3/Open Source, [ML][773]): Interative Theorem proving in higher-order logic ([Univ. Cambridge][774])
    -   [Holfoot][775] (BSD, [ML][776]): Implementation of Smallfoot inside of HOL 4
    -   [HOLBDDlib][777] (BSD-3, [ML][778]): kernel of representation judgement rules as infrastructure for building fully-expansive combinations of HOL theorem proving and BDD-based symbolic calculation algorithms, uses the BuDDy BDD package
-   [HOL Light][779] (BSD-2, [OCaml][780]): Interactive Theorem Proving in higher-order logic (Cambridge Univ., AWS)
-   [HOL Zero][781] (BSD, OCaml): Basic theorem prover for the HOL logic for checking and/or consolidating proofs created on other theorem provers, and a pedagogical example
    -   [HOL Zero][782] (BSD, F#): port to F#
-   [HOL-Omega][783] (BSD-3, [ML][784]: Merging of HOL4, HOL2P by Völker, and major aspects of System Fω from chapter 30 of Types and Programming Languages by Pierce, implements a new logic, which is an extension of the existing higher order logic of the HOL4 system
-   [Coq][785] (LGPL-2.1, [OCaml][786]): formal proof management system. It provides a formal language to write mathematical definitions, executable algorithms and theorems together with an environment for semi-interactive development of machine-checked proofs. (INRIA, Ecole Polytechnique, Paris-Sud 11 Univ., Paris Diderot Univ., CNRS)
    -   Vim:
        -   [Coqtail][787] (MIT, Python/Vim script): interactive Coq Proofs in Vim
        -   [Coquille][788] (ISC, Vim script/Python): interactive theorem proving with Coq in vim
    -   IDE:
        -   [JsCoq][789] (several, [JavaScript][790]): online Integrated Development Environment for the Coq proof assistant that runs in a browser (MINES ParisTech)
        -   [`coq_jupyter`][791] (Apache-2.0, Python/JavaScript): Jupyter kernel for Coq, [try it online][792]
        -   [VsCoq][793] (MIT, TypeScript): Visual Studio Code extension for Coq
    -   Libraries:
        -   [HoTT library][794] (BSD-2, Coq): a formalization of homotopy type theory in the Coq proof assistant
        -   [UniMath][795] (FOSS, Coq): a library that aims to formalize a substantial body of mathematics using the univalent point of view.
        -   [Coq-Polyhedra][796] (CeCILL-B, Coq): Formalizing convex polyhedra in Coq ([INRIA/École Polytechnique][797])
        -   [ControlHTT][798] (?, Coq): an adaptation of Hoare Type Theory for control software (Galois Inc.)
        -   [Categories][799] (?, Coq): a formalization of category theory in the Coq proof assistant (Aarhus Univ.)
        -   [fourcolor][800] (?, Coq): formalization of the four-color theorem
        -   [odd-order][801] (?, Coq): formal proof of the odd-order theorem
        -   [infotheo][802] (LGPL-2.1): formalization of information theory and linear error-correcting codes
        -   [proofs][803] (MIT, Coq): a selection of formal proofs in Coq (Google)
        -   [GeoCoq][804] (LGPL-3.0, Coq): formalization of geometry in Coq, based on [Tarski's][805] [axiom system][806]
    -   Embeddings:
        -   [TLA^{Coq}][807] (?, Coq): Deep embedding of TLA in Coq (Univ. of Oregon, Sandia)
    -   Tools:
        -   [Ynot][808] (BSD-3, [Coq/OCaml][809]): library for the Coq proof assistant which turns it into a full-fledged environment for writing and verifying imperative programs (Harvard Univ.)
        -   [verdi][810] (BSD-2, Coq): framework for formally verifying distributed systems implementations in Coq
        -   [`coq-lit`][811] (?, Python): script that processes special commands inside comments in Coq source files to produce Markdown and raw HTML that generates a blog post (Univ. of Washington)
        -   [CompCert][812] (FUSC, [Coq/OCaml][813]): a formally-verified compiler for a large subset of the C programming language that generates code for the PowerPC, ARM, x86 and RISC-V processors, the compiler has been verified in Coq (Inria)
        -   [SMTCoq][814] (CeCILL-C, Coq/OCaml): a Coq plugin that checks proof witnesses coming from the external SAT and SMT solvers ZChaff, CVC4, veriT, and decision procedures that discharge Coq goals to these solvers
-   [PVS][815] (GPL-3, [Common LISP/C/Emacs LISP/others][816]): Specification language and theorem prover, based on Church's type theory extended with dependent types (SRI CSL)
    -   [NASA PVS Library][817] (Various, Python/Lisp): Collection of formal PVS developments ([NASA Langley][818])
    -   [Invariant-Checker][819]: predicate abstraction and verification of invariance reactive properties using theorem-proving and MC, front to PVS ([IMAG][820])
    -   [PVSPackrat][821] (?, PVS): PVS proofs for PEG grammars and Packrat parsers (SRI CSL)
-   [Lean][822] (Apache-2, C++/Python): Theorem prover ([Microsoft Research][823])
    -   [mathlib][824] (Apache-2.0, Lean): library of mathematics and programming infrastructure for Lean
    -   [lean-ga][825] (MIT, Lean): formalization of geometric algebra in Lean
    -   [Spectral][826] (Apache-2.0, Lean): Formalization of the Serre spectral sequence in Lean 2.
-   [Zenon][827] (BSD-3, [OCaml][828]): FOL with equality based on tableau, reads Coq, Focal, TPTP, Zenon, and generates Coq, Isar (and in other formats) proofs, includes TLA+ theory extension [OPAM][829] (INRIA)
    -   [Zenon arith][830] (BSD-3, OCaml): extension to handle linear arithmetic (INRIA)
    -   [Zenon modulo][831] (BSD-3, [OCaml][832]: extension to deduction modulo (INRIA)
    -   [Super Zenon][833] (?, ?): extension using superdeduction (CEDRIC/CNAM, Siemens IC-MOL)
-   [AIMA `logic.py`][834] (MIT, Python): Artificial Intelligence - A Modern Approach: Representations and Inference for Logic (UC Berkeley, Google)
-   [Nunchaku][835] (BSD-2, OCaml): A counter-example finder for higher-order logic, designed to be used from various proof assistants (INRIA)
-   [Nitpick][836] (BSD-3, Isabelle): Counterexample generator for Isabelle/HOL
-   [Walnut][837] (GPLv3, Java): Automated Theorem Prover for Automatic Words
-   [Phox][838] (LGPL-3.0, [OCaml][839]): Proof assistant based on High Order logic which is eXtensible (Université de Savoie)
-   [Dedukti][840] (CecILL-B, [OCaml][841]): Implementation of the λΠ-calculus modulo rewriting
    -   [Dedukti libraries][842] (?, Dedukti): A collection of hand-written files for Dedukti
    -   [Lamdapi][843] (CeCILL-2.1, OCaml): Proof assistant based on the λΠ-calculus modulo rewriting, mostly compatible with the proof checker Dedukti
-   [Automath][844] (?, ?): One of the first formal proof languages and proof checker ([Eindhoven Univ.][845])
    -   [Modern Automath implementation][846] (?, C): Languages AUT-68, AUT-QE ([Radboud Univ. Nijmegen][847])
-   [TPS][848]: (CMU)
-   [ALF][849] (Univ. Goterborg/Chalmers)
-   [Alfa][850]: successor of ALF
-   [Agda][851] (MIT and BSD-2, [Haskell][852]): An interactive system for writing and checking proofs, based on intuitionistic type theory. A dependently typed functional programming language.
    -   [HoTT-Agda][853] (MIT, Agda): A library of homotopy type theory and univalent foundations
-   [Cedille][854] (MIT, Agda/Haskell): interactive theorem-prover and dependently typed programming language, based on extrinsic (aka Curry-style) type theory
-   [ACL2][855] (BSD-3, [Lisp][856]): logic and programming language in which you can model computer systems, together with a tool to help you prove properties of those models. "ACL2" denotes "A Computational Logic for Applicative Common Lisp", part of Boyer-Moore family of provers (Univ. Texas at Austin)
    -   [Nqthm][857] (GPL-2, ?): Boyer–Moore TP using Pure LISP variant, precursor to ACL2 (Univ. Texas, Austin)
    -   [Milawa][858] (MIT, [Lisp][859]): "Self-verifying" theorem prover for an ACL2-like logic (UT Austin)
    -   [Jitawa][860] (?, Lisp): Verified Lisp runtime that hosts Milawa and ensures its soundness, as formally proved (Cambridge Univ.)
    -   [ivy][861] (BSD-3, [Lisp][862]): Preprocessor and proof checker for resolution/paramodulation theorem provers, coded in ACL2 and proved sound for finite interpretations ([Univ. of New Mexico][863])
-   [INKA5][864], [INKA][865]: Inductive Theorem Prover
-   [Otter and Mace2][866]: first-order and equational logic
-   [Prover9 and Mace4][867]: Successors of Otter and Mace2
-   [EQP][868]: first-order equational logic: associative-commutative unification and matching, a variety of strategies for equational reasoning, and fast search
-   [TWELF][869] (BSD-2, ML): a language used to specify, implement, and prove properties of deductive systems such as programming languages and logics
-   [Maude][870] (GPLv2, ?): high-performance reflective language and system supporting both equational and rewriting logic specification and programming for a wide range of applications, with [tools][871] (UIUC)
    -   [Maude ITP][872]: Inductive Theorem Prover
    -   [C-Reducer][873]: Automatic c-reduction of object based modules for the Maude system (IMT Lucca)
    -   [MESSI][874]: Design, validation and performance evaluation of self-assembly strategies with Maude (IMT Lucca)
    -   [Circ][875]: automated behavioral prover based on the circularity principle for Maude ([UIUC][876])
    -   [LTLR][877]: LTL rewriting model checker within Maude (UIUC)
    -   [IMaude][878] (?, NewLisp/Maude/C/Python): Interactive Maude (SRI CSL)
-   [Vampire][879] (BSD-3, [C++][880]): FOL ([Novosibirsk][881], Univ. of Manchester, Chalmers UT, CTU/CIIRC, Vienna UT)
    -   [saturation-visualization][882] (?, TypeScript): visualizes saturation runs of Vampire
    -   [previous Vampire version][883] (FUSC, C++)
    -   [Drakosha][884] (?, LISP): Vampire's predecessor
-   [LP: Larch Prover][885] (?): Multisorted first-order logic, interactive (MIT)
    -   [Larch Shared Language (LSL) Checker][886]
    -   [Larch/C++][887] (?): Interface Specification Language for C++ (Iowa State Univ.)
    -   [Larch/Smalltalk][888] (?): Behavioral interface specification language for Smalltalk-80 (Iowa State Univ.)
-   [SAL][889] (GPL-2, Scheme): Language for specifying concurrent systems in a compositional way. BDD-based and SAT-based MC, experimental "Witness" MC, "infinite" bounded MC based on SMT solving, simulator, deadlock checker, automated test generator (SRI, Stanford, Berkeley)
    -   [Z2SAL][890] (?, Java): transator that generates a SAL automaton from a single Z specification (Univ. of Sheffield)
-   [Gappa][891] (GPL-3, CeCILL): for numerical programs dealing with floating-point or fixed-point arithmetic (INRIA)
-   [Mizar][892]
-   [NuPRL][893]: Formal Digital Library (Cornell)
-   [MuPRL][894] (BSD-3, Haskell): small, mainly instructional, proof assistant in the style of NuPRL
-   [MetaPRL][895]
-   [Matita][896] (GPLv3, [OCaml][897]): Interactive theorem prover based on calculus of inductive constructions (Univ. of Bologna)
-   [Gandalf][898]
-   [E-SETHEO][899]: strategy-parallel compositional theorem prover for first-order logic with equality
-   [SPASS][900]: First-Order Logic with Equality (Max Planck Inst. Inf.)
-   [Omega][901] (?, Isabelle/Lisp): for higher-order logic based on proof planning
-   [Omega][902] (BSD-3): cross between a purely functional programming language and a theorem prover
-   [Zipperposition][903] (BSD-2, [OCaml][904]): automatic theorem prover for typed higher-order logic with equality, datatypes and arithmetic, based on superposition and rewriting
-   [wikipedia list][905]
-   [this thread][906]
-   [jImp][907] (binary, Java): based on set of support and ordered resolution for first-order logic, supports: clause indexing techniques, subsumption, and tautology elimination, Davis-Putnam-Loveland-Logemann (DPLL) inference procedure (CMU)
-   [QEPCAD][908] and [github][909] (BSD-like, C): Quantifier elimination by partial cylindrical algebraic decomposition (US Naval Academy, Drexel Univ., North Carolina State Univ.)
    -   [Mac OS X 10.6, 10.7 binaries][910] (Cambridge Univ.)
-   [E][911] (GPL-2, C): Full first-order logic with equality ([TU Munchen][912])
-   [Community Z Tools][913] (GPL-2, Java): Tools for editing, typechecking and animating Z specifications and related notations, including Java framework for building formal methods tools (Univ. Oxford, contrib)
-   [ProofPower][914] (GPL, ?): Tool suite supporting specification and proof in HOL and Z notation (Lemma 1 Ltd)
-   [ClawZ][915] (?, ?): Simulink -> Z notation (Lemma 1 Ltd)
-   [Waldmeister][916] (FUSC, ?): TP for unit equational logic (Max Planck Inst. Informatik)
-   [Spear][917] (?, ?): fast bit-vector arithmetic theorem prover (Google)
-   [Metamath][918]: Tiny language based on ZFC, and also database of proved theorems
-   [Theorema][919] (GPLv3, Mathematica): a system for automated reasoning (theorem proving) and automated theory exploration based on Mathematica ([JKU][920])
-   [Princess][921] (GPL-3, Scala): FOL modulo linear integer arithmetic
    -   [Seneschal][922] (GPL-3, Java): synthesising linear ranking functions for programs expressible in Presburger arithmetic
-   [FOL prover][923] (BSD, Python): automated theorem prover for first-order logic, guaranteed to prove any provable formula ([MIT][924])
-   [hemera][925] (?, Python): yet another simple theorem prover (PUC-Rio)
-   [FLiP][926] (GPL, Python): Library for defining logics and writing theorem prover applications, e.g., a proof checker for natural deduction proofs ([Univ. Wasignton][927])
-   [ATS][928] (GPL-3, C): A statically typed multiparadigm programming language that unifies implementation with formal specification, using theorem proving (Boston Univ.)
-   [F\*][929] (Apache 2.0, [OCaml, F#][930]): ML-like functional programming language aimed at program verification. Its type system includes polymorphism, dependent types, monadic effects, refinement types, and a weakest precondition calculus (MSR, INRIA)
-   [`proofcheck`][931] (GPL, Python): Checks mathematical proofs written in La/TeX, attempts to handle mathematical language formalized according to the author's preferences as much as possible ([PyPI][932]) ([Widener Univ.][933])
-   [ProofPeer][934] (MIT, [Scala/Isabelle][935]): Collaborative theorem proving ([Edinburgh Univ.][936])
-   [Nitpick][937] (?): Checker for Z specifications (CMU)
-   [Abella][938] (GPLv3, [OCaml][939]): Interactive theorem prover based on lambda-tree syntax, well-suited for reasoning about the meta-theory of programming languages and other logical systems that manipulate objects with binding ([Univ. of Minnesota][940], [LIX/École polytechnique][941], [INRIA/Saclay][942])
-   [GAPT][943] (GPLv3, Scala): Framework for transforming and processing proofs, and interfaces to automated reasoning tools (provers, SMT solvers, SAT solvers)
-   [homotopy.io][944] (CC BY-NC 3.0, [JavaScript][945]): A proof assistant for n-categories
-   [Andromeda][946] (BSD-2, [OCaml][947]): A proof assistant for general type theories, LCF-style, with statically typed meta-language Andromeda ML
-   [Cyclist][948] (BSD-3, [OCaml/C++][949]: framework for building cyclic theorem provers based on a sequent calculus (Facebook, Middlesex Univ.)
-   [LaTTe][950] (MIT, [Clojure][951]): proof assistant designed as a library for the Clojure programming language and environment, based on a simple dependent-typed lambda-calculus (a variant of λD)
-   [Alg][952] (BSD-2, OCaml): A program that generates all finite models of a first-order theory. It is optimized for equational theories.
-   [RZ][953] (MIT, OCaml): A tool for automatic generation of specifications based on realizability theory
-   [LEGO][954] (?, [ML][955]): an interactive proof development system (proof assistant), implementing various related type systems: the Edinburgh Logical Framework (LF), the Calculus of Constructions (CC), the Generalized Calculus of Constructions (GCC) and the Unified Theory of Dependent Types (UTT) (Univ. of Edinburgh)
-   [IMPS][956] (MITRE, Perl/Lisp): Intended to provide mechanical support for traditional mathematical techniques and styles of practice, with underlying logic simple type theory (MITRE)
-   [Museum of theorem provers][957]: front-end to a collection of source code repositories for theorem provers, hosted on GitHub
-   [Scriptie][958] (?, Python): theorem prover for Lambek-Grishin calculus
-   [set-theory-prover][959] (BSD-3, Haskell): simple LCF-style proof assistant for ZFC
-   [Jape][960] (GPLv2, OCaml/Java): a configurable proof editor, best at natural deduction and sequent calculus
-   [Geo][961] (GPLv3, C++): prover for full-first order logic, based on geometric resolution calculus (Univ. of Wrocław)
-   [UTP2][962] (GPLv2, Haskell): a theorem proving assistant for 2nd-order predicate calculus, designed to support foundational proof work in the Unifying Theories of Programming (UTP) framework
-   [UTP-Calculator][963] (MIT, Haskell): a tool that supports rapid prototyping of new theories in the Unifying Theories of Programming paradigm, by supporting an easy way to very quickly perform test calculations
-   [holpy][964] (BSD-3, Python): implementation of higher-order logic in Python (Institute of Software, Chinese Academy of Sciences)
-   [llprover][965] (?, Prolog): Linear logic prover that searches for cut-free proofs of two-sided sequents of first-order linear logic
-   [seqprover][966] (?, Prolog): Sequent prover that searches for a cut-free proof of the given sequent of first-order logic

## Theorem provers for modal logics

-   [ls4][967] (MIT, C++, C): PLTL prover based on labelled superposition with partial model guidance, with MiniSAT behind, and used as backend by TLAPS ([Univ. Manchester][968])
-   [T2][969] (F#, Mono, MIT): Prover of CTL\* of programs, with `z3` behind (replaces TERMINATOR) ([MSR][970], [UCL][971])
-   [TRP++][972] [files][973] (GPL-2, C++): theorem prover for PLTL based on the temporal resolution calculus ([Univ. Liverpool][974])
    -   [TRP][975] (?, Prolog): earlier implementation of TRP++
-   [LWB][976] (EPL, Clojure): The Logics Workbench, prover for propositional, predicate and linear temporal logic
    -   [`lwb-gui`][977] (EPL, Clojure): simple GUI for the Logic Workbench lwb
-   [TRS][978] (?, ?): Resolution-based theorem prover for PLTL, [online interface][979] only (UBC)
-   [TLPVS][980]: PVS implementation of an LTL verification system (NYU)
-   [STeP][981]: Stanford temporal prover
-   [CTLSAT][982] (?, C++): CTL satisfiability solver
-   [MLSolver][983] (?, Ocaml): Solver for satisfiability and validity of modal fixpoint logics (Univ. Munich, Univ. Kassel)
-   [Leviathan][984] (BSD-3, C++): Tableau prover for LTL satisfiability (Univ. Udine)
-   [PLTLProvers][985]: (?, OCaml): 3 PLTL theorem prover variants
-   [LoTREC][986] (FSLA): Generic tableau prover
-   [MleanTAP][987] (?, Prolog): Sound and complete theorem prover based on free-variable semantic tableaux extended by an additional prefix unification (logics: D, T, S4, S5) (TU Darmstadt)
-   [List of tools for modal logics][988] (Univ. Manchester)
-   [Schuppan-Darmawan][989] benchmark results of LTL satisfiability solvers
-   [TPTP][990]: Problem library for automated theorem proving (Univ. Miami)
-   [QMLTP][991]: Benchmarking results for theorem provers for first-order modal logics
-   [Modal Logic Playground][992] (MIT, [JavaScript, HTML][993]): a graphical semantic calculator for modal propositional logic

## QBF

-   [QBF Solvers][994] (C++)
-   [RAReQS][995] (GPL, C++/uses MiniSAT): Recursive abstraction refinement QBF solver ([INESC-ID Lisboa][996])
-   [Quantor][997] (BSD-4, C): QDIMACS input (ETHZ, JKU)
-   [DepQBF][998] (GPL, C): search-based ([TU Wien][999], JKU)
-   [nenofex][1000] (GPL, C): expansion-based for NNF ([TU Wien][1001], JKU)
-   [CAQE][1002] (Apache-2, C): certifying solver based on CEGAR-based clausal abstraction (Saarland Univ., UC Berkeley)
-   [QBFLIB][1003]: Collection of benchmark problems, solvers, and tools related to Quantified Boolean Formula (QBF) satisfiability (Univ. Michigan)

## SAT

-   [SAT Live][1004]: news outlet

### CDCL

-   [MiniSat][1005] and its [github][1006] (MIT, C++/C): minimalistic high-performance solver to help get started ([Chalmers Univ.][1007])
    -   [`simplesat`][1008] (BSD-3, Python): Python implementation based on MiniSat, for handling package dependencies
    -   [ruby-minisat][1009] (MIT, Ruby): bindings
    -   [qmaxsat][1010] (MIT, C/C++): Q-dai MaxSAT Solver, based on MiniSat
    -   [MiniMarch][1011]
    -   [Glucose][1012]: CDCL with new scoring scheme for clause learning (CRIL)
    -   [MiniSAT+][1013]
-   [Lingeling, Plingeling, Treengeling][1014]
-   [PicoSAT][1015] (MIT, C)
    -   [Python bindings][1016] (MIT, Python)
    -   [`pigosat`][1017] (BSD, Go): bindings
-   [`cadical`][1018] (MIT, C++): satisfiability solver that is intended to be understood and changed
-   [Sat4j][1019] (EPL or LGPL, Java): SAT, MAXSAT, Pseudo-Boolean, MUS (Artois Univ., CNRS, CRIL)

### Stochastic local search

-   [UBCSAT][1020]: (Univ. British Columbia)
-   [`clsat`][1021] (GPLv2, C++): small, incomplete, stochastic local search, OpenCL-based SAT solver

### Parallel

-   [PeneLoPe][1022] (BSD-like C++) (CRIL)
-   [CombiSAT][1023] (?, Python): Portfolio solver running multiple sequential solvers with different strategies ([EPFL][1024])
-   [PWBO][1025]

### Unsorted

-   [zChaff][1026] (Princeton Open Source): Chaff algorithm ([Princeton][1027])
-   [SATABS][1028] (BSD, C): ANSI-C, C++ verification via Boolean program abstraction (Univ. Oxford, Imperial College, Univ. Lugano, CMU)
-   [NanoSAT][1029] (BSD): (JKU)
-   [Boppo][1030] (?): MC for Boolean programs featuring: POR, Fixpoint detection using QBF, support for `constraint` construct (Univ. Oxford, Microsoft Research, Univ. Lugano, CMU)
-   [CSIsat][1031] (Apache): Interpolating decision procedure for the quantifier-free theory of rational linear arithmetic and equality with uninterpreted function symbols (EPFL, SFU)
-   [MSUnCore][1032]: solving (Weighted) (Partial) Maximum Satisfiability (MaxSAT)
-   [antom][1033] (C++): Lib solving: SAT, Unweighted MaxSAT, Partial MaxSAT, #SAT (Uni. Freiburg)
-   [SCIP][1034]: Mixed int programming (MIP), constraint int programming and branch-cut-and-price
    -   [scip-maxsat][1035] (ZIB, C++): Max-SAT frontend for SCIP
-   [GLPK][1036]
    -   [MaxSAT frontend][1037] for GLPK
-   [PrecoSAT][1038] (MIT-like)
-   [RSat][1039]
-   [fss][1040] (GPL-3, C++/GAlib): Genetic algorithms
-   [MiFuMaX][1041] (GPL-3)
-   [Shaowei Cai solvers][1042]
-   [algorithms][1043]
-   [WBO][1044]: Weighted Boolean Optimization Solver that extends Weighted-Partial MaxSAT and Pseudo-Boolean Optimization
    -   [open-WBO][1045] (MIT, C++): open source version of WBO
-   [ToulBar2][1046] (GPL, C++): weighted constraint satisfaction solver (INRA)
-   [march][1047]: DPLL with lookahead heuristics (TU Delft)
-   [march\_eq][1048]: (TU Delft)
-   [march\_dl][1049]: (TU Delft)
-   [CryptoMiniSat][1050], its [github][1051] (LGPL, C++, Python)
-   [WinSAT][1052]
-   [HyperSAT][1053] (FUSC, C): research SAT solver written to experiment with B-cubing search space pruning
-   [iSAT][1054]: DPLL-style solver developed for large Boolean combinations of non-linear arithmetic constraints involving transcendental functions
-   [HySAT][1055]
-   [Scarab][1056] (BSD, Scala): SAT-based constraint programming
-   [Limboole][1057] (Unlicense, ?): satisfiability of arbitrary structural formulas, not just CNF
-   [MiFuMaX][1058]
-   [UBCSAT][1059] (FUSC, C): Stochastic local search solver (Univ. British Columbia)
-   [QNF2z3][1060] (FUSC, Python/Bash): invoking Z3 on QDIMACS instances (INESC Lisboa)
-   [ToughSAT][1061]: generates "difficult" SAT instances
-   [minibones][1062] (FUSC): computing backbone literals
-   [SBSAT][1063]: state-based (U Cincinnati)
-   [satsolver][1064] (?, Python): DPLL implementation for educational purposes
-   [Potassco][1065]: answer set programming collection: Clasp, Gringo, Clingo, Aspcud, Clingcon, claspfolio, coala solvers
-   [miniC2D][1066] (?): knowledge compilation and model counting based on exhaustive DPLL (UCLA)
-   [toulbar2][1067] (GPL, [C++][1068]): Exact solver for cost function networks (INRIA, Barcelona)

## SMT

-   CVC5:
    -   [CVC5][1069] (BSD-3, [C++][1070]): successor of CVC4 (Stanford, NYU, Univ. Iowa, EPFL, Joseph Fourier Univ., Oxford Univ., SRI)
    -   [CVC4][1071] (BSD-3, [C++][1072]): built-in base theories, quantifiers, interactive text-based interface, interfaces to: C/C++, Python, Java, OCaml, PHP, Perl, Ruby, Tcl, model generation, [predecessor][1073] of CVC5 (Stanford, NYU, Univ. Iowa)
    -   [LFSC][1074] (BSD-style, C++): proof checker for LFSC proofs generated by CVC4 (Univ. of Iowa)
    -   [rlfsc][1075] (MIT/Apache and LGPLv3, Rust): a checker for the LFSC proof language
    -   [CVC3][1076] (BSD-3, [C++][1077]): [predecessor][1078] of CVC4 (Stanford, NYU, Univ. Iowa)
    -   [CVC Lite][1079] (?, C++): [predecessor][1080] of CVC3, successor of CVC (Stanford, NYU)
    -   [CVC][1081] (open, C/C++): Cooperating Validity Checker, [predecessor][1082] of CVC Lite (Stanford)
    -   [SVC][1083] (GPLv2, C/C++): [predecessor][1084] of CVC (Stanford)
    -   [CVCHOL][1085] (BSD-3, OCaml): proof translator that translates CVC3 theorems into HOL Light theorems (NYU)
-   [Z3][1086] (MIT, C++/Python): `.smt2`, `.dimacs`, `.cnf`, `.dl`, `.smt` (Microsoft Research)
    -   [Z3\_Haskell][1087] (BSD, Haskell): bindings for Z3 (Cambridge Univ.)
    -   [`hz3`][1088] (BSD, Haskell): bindings to low-level API for Z3
    -   [ScalaZ3][1089] (Apache-2.0, [Scala][1090]): bindings for Z3 (EPFL)
    -   [bapa-z3][1091] (BSD, Scala): Boolean algebra with Presburger arithmetic constraints plug-in for Z3 (EPFL)
    -   [Z3-str][1092] (MIT, C++/Python): string theory plug-in for Z3 (Purdue)
    -   [Z3Fs][1093] (MIT, F#): DSL for SMT problems using Z3 API in F#
    -   [z3-turnkey][1094] (ISC, Kotlin/Java): Build system for Z3 that creates a self-unpacking, standalone JAR file that ships all required native support code and automatically unpacks it at runtime
    -   [z3-floating-point-proofs][1095] (MIT, Python): automated proofs about floating-point numbers using the Z3 theorem prover
-   [iZ3][1096] ([FUSC][1097], C++/Python): Interpolating, supports: arithmetic, arrays, uninterpreted functions, and quantifiers (Microsoft Research)
-   [Yices][1098] (GPLv3, [C][1099]): SMT solver that decides the satisfiability of formulas containing uninterpreted function symbols with equality, real and integer arithmetic, bitvectors, scalar types, and tuples. Supports both linear and nonlinear arithmetic. Reads input from SMT-LIB or Yices' own specification language, includes Python bindings (SRI/CSL)
    -   [`yices`][1100] (MIT, Python): Python bindings for yices2 (SRI CSL)
-   [Boolector][1101] (GPL-3): bit-vectors and arrays (Johannes Kepler Univ. Linz, Upper Austrian Univ. of Applied Sciences)
-   [MathSAT][1102] (FUSC, C++, Python/Java bindings): Theories: equality and uninterpreted functions, linear arithmetic, bit-vectors, and arrays, and Functionalities: computation of Craig interpolants, extraction of unsatisfiable cores, generation of models and proofs, and the ability of working incrementally (FBK, Univ. Trento)
-   [SMT-LIB][1103] (?, C++): format for Finite lists, sets, maps (Oxford Univ.)
-   [Alt-ERGO][1104] (FUSC, [OCaml][1105]): built upon CC(X) algorithm (INRIA, Univ. Paris Sud, CNRS, LRI)
-   [mSAT][1106] (Apache-2.0, [OCaml][1107]): Modular SAT/SMT solver with proof output, derives from ERGO (INRIA)
-   [veriT][1108] (BSD-2, C/C++): proof-producing SMT solver, complete for quantifier-free formulas with uninterpreted functions and difference logic on real numbers and integers ([2017 version][1109]) (INRIA, Nancy Univ., UFRN, CNPq, Loria)
    -   [haRVey][1110] (LGPL/BSD-2, C/C++): Predecessor of veriT: haRVey-FOL (LGPL), haRVey-SAT (BSD-2) (INRIA, Nancy Univ., UFRN, CNPq, Loria)
-   [dReal][1111] (Apache-2.0, [C++][1112]): SMT solver for nonlinear theories of reals, produces proofs for unsat cases, includes a semi-algorithm for proof-checking, has Python bindings ([PyPI][1113])
-   [SMT-RAT][1114] (MIT, [C++][1115]): Toolbox for strategic and parallel satisfiability-modulo-theories solving (RWTH)
-   [Vampire][1116]: proof-producing theorem prover that can read SMT-LIB input, see section on Theorem Provers
-   [archsat][1117] (MIT, OCaml): proof-producing SMT/McSAT solver, handling polymorphic first-order logic, using an SMT/McSat core extended using tableaux, superposition, and rewriting
-   [BEAGLE][1118] (BSD, Scala): theorem prover for first-order logic with equality over linear integer/rational/real arithmetic that takes input in SMT-LIB 2.0, FOF, TFF, TFF-INT formats (NICTA)
-   [Fx7][1119] (?, Nemerle): prover based on C# port of MiniSAT
-   [Simplify][1120], its [github][1121] (?, Modula-III): (SRC)
-   [Beaver][1122] (BSD, OCaml): for the theory of quantifier-free finite-precision bit-vector arithmetic (UC Berkeley)
-   [SBV][1123] (BSD-3, Haskell): SMT based verification in Haskell: Express properties about Haskell programs and automatically prove them using SMT solvers (ABC, Boolector, CVC4, MathSAT, Yices, Z3). ([Intel][1124])
-   [list of SMT solvers][1125] (Univ. Iowa)
-   [Decision Procedures: An Algorithmic Point of View][1126] (BSD-4, C++): software that accompanies the book [Decision Procedures][1127]
-   [`llvm2smt`][1128] (MIT, OCaml): Experimental translation of LLVM (3.5ish) IR to SMT-LIB (SRI CSL)
-   [JavaSMT][1129] (Apache-2.0, Java/C): unified Java API for SMT solvers
-   [`bv2epr`][1130] (GPLv3, C): tool for translating a QF\_BV formula in SMT2 format into an EPR clause set in TPTP format (JKU)
-   [PySMT][1131] (Apache-2.0, Python): a library for SMT formulae manipulation and solving, with interfaces to z3, MathSAT, CVC4, Yices, CUDD, PicoSAT, Boolector, and any solver that reads SMT-LIB (includes SMT-LIB parser written in Python)
-   [ddSMT][1132] (GPLv3, Python): a delta debugger for SMT benchmarks in SMT-LIB v2, it serves as an input minimizer for SMT benchmarks on which a given executable shows unexpected or faulty behavior and supports all SMT-LIB v2 logics (includes SMT-LIB parser written in Python)
-   [`smtpp`][1133] (MIT, OCaml): a preprocessor for SMT-LIB 2.0 scripts with extensions for lambda-terms and polymorphic types in scripts (Inria, Universite de Nancy 2, Universidade Federal do Rio Grande do Norte)
-   [SMTtoTPTP][1134] (GPLv3, Scala): a translator for problems written in the SMT-LIB language, version 2, to the TPTP TFF language, supporting quantified formulas over the combined theories of of free symbols, arrays, integer and real arithmetic. It also supports Z3-style datatype declarations and some other extensions.

## Constraint Solving Problem (CSP) solvers

-   [`constraint`][1135] (BSD-2, Python): Constraint Solving Problem resolver for Python (on [PyPI][1136]) (Canonical)
-   [Cassowary][1137]: incremental constraint solving toolkit that efficiently solves systems of linear equalities and inequalities. Constraints may be either requirements or preferences. Client code specifies the constraints to be maintained, and the solver updates the constrained variables to have values that satisfy the constraints, site source on [GitHub][1138]
    -   [Cassowary][1139] (LGPLv2, C++): (original implementation) incremental constraint solving toolkit that efficiently solves systems of linear equalities and inequalities. Constraints may be either requirements or preferences. Re-solving the system happens rapidly, supporting UI applications. ([Univ. of Washington][1140])
    -   [RHEA][1141] (MIT, C++): modernized C++ version of the original Cassowary implementation
    -   [Kiwi][1142] (BSD-3, [C++/Python][1143]): new implementation of the algorithm based on the Cassowary paper, 10x to 500x faster than the original, with Python bindings (Nucleic Development Team)
    -   [`cassowary`][1144] (BSD-3 and Apache-2.0, Python): pure python implementation of the Cassowary constraint solving algorithm, available [on PyPI][1145] (Auburn Univ.)
    -   [Casuarius][1146] (LGPLv2.1, C++/Python): Cython bindings for the Cassowary Constraint Solving Toolkit version 0.6
    -   [Aqt.Cassowary][1147] (MIT, [QML/C++/JavaScript][1148]): Qt plugin that allows running an incremental linear constraint solver in QML applications, and wraps RHEA
-   Babelsberg:
    -   [Babelsberg/JS][1149] (BSD-3, [JavaScript][1150]): object constraint programming language and implementation, using the solvers Z3, DeltaBlue, and Cassowary
    -   [`pybelsberg`][1151] (BSD-3, Python): implementation of Babelsberg allowing constraint-based programming in Python, using the Z3 theorem prover

## Other solvers

-   [RSolver][1152] (LGPL, OCaml/C/Java): Quantified inequality constraints ([Academy of Sciences Czech Republic][1153])
-   [ROSETTE][1154]: Framework for designing solver-aided languages, realized embedded in [Racket][1155] ([UC Berkeley, MIT][1156])

## Logic programming

-   [miniKanren][1157]
-   [logpy][1158]

-   [Leon][1159], its [github][1160] (BSD-2, Scala): Automated system for synthesizing and verifying functional Scala programs (EPFL)
    -   [COMFUSY][1161] (BSD-2, [Scala][1162]): tool for synthesizing executable code from specifications in linear integer arithmetic and constraints on sets of objects (EPFL)
    -   [Kaplan][1163] (?, Scala): Scala extension that supports constraint-solving (EPFL)
    -   [RegSy][1164] (?, Scala): synthesis tool that can be used to build functions from specification written in WS1S (EPFL)
-   [AutoBayes][1165] (NOSA, Prolog): automatic generation of customized algorithms from compact, declarative specifications in the data analysis domain, requires SWI Prolog, generates OCtave/Matlab code (NASA)
-   [Jeeves][1166] (MIT, [Python][1167]): programming language for automatically enforcing privacy policies and Python implementation (MIT)
-   [MCGP][1168] (?, ?): automatic generation and correction of programs, based on model cheking and genetic programming (Bar-Ilan Univ.)

-   [MOP][1169] (Java): Monitoring-Oriented Programming ([UIUC][1170])
    -   [JavaMOP][1171] (MIT, [Java][1172]): Runtime verification system for Java, using AspectJ for instrumentation (UIUC)
    -   [ROSMOP][1173] (?, [Java][1174]): Monitor Oriented Programming for ROS (UIUC)
-   [CHIMP][1175]: LTL -> monitors: nondeterministic finite-word automata that accept all illegal executions (Rice Univ.)
-   [LTL\_3][1176] (GPL): LTL -> Moore FSM monitor
-   [TOPL][1177] (OCaml): monitor Java programs
-   [Breach Toolbox][1178](BSD-3, MATLAB/C++): Simulation-based design of dynamical, cyber-physical, and hybrid systems (UC Berkeley, [Decyphir][1179])
-   [JTorX][1180] (BSD-3, Java): Model-based testing: Spec: Aldebaran or GraphML or dot or Jararaca or `.sax` or muCRL or `.bcg` or LOTOS, Implementation either these or real program (Univ. Twente)
-   [TorX][1181] (Apache, ?): Conformance testing of reactive software (Univ. Twente, TU Eindhoven, Philips, Lucent)
-   [MonPoly][1182] (?, OCaml): a prototype monitoring tool that checks compliance of log files with respect to policies specified in MFOTL (Metric First-Order Temporal Logic)
-   [Montre][1183] (GPL-3, [Pure][1184]/C++): A timed regular expression matcher ([Verimag][1185])
-   [ROSRV][1186] (NCSA, [C++/Java][1187]): runtime verification framework for the Robot Operating System (ROS) (Univ. of Illinois at Urbana-Champaign)

-   [Matching Logic][1188]: regard a language through both operational and axiomatic lenses at the same time ([UIUC][1189])
-   [Separation logic and local reasoning][1190]: wiki and tools list [Max Planck Inst. for Soft. Sys.][1191]
-   [QMRes][1192]: Multi-resolution with ZDDs implementation
-   [MTSA][1193] (Public): Modal Transition Systems Analyser (Imperial College London, Univ. Buenos Aires)
-   [MoTraS][1194] (?, C++): verification of (disjunctive) modal transition systems, using `ltl2dstar` for LTL to Rabin automaton translation
-   [FoCs][1195]
-   [COMPASS][1196]: correctness, modeling and preformance of aerospace systems
-   [VeriSoft][1197]: systematic software testing (Bell Labs)
-   [FTS][1198]: featured transition systems
-   [PdTrav][1199]
-   [seL4][1200] ([GPLv2, BSD-2][1201], [C][1202]): A microkernel formally proved correct, with [proofs in Isabelle/HOL][1203]
-   [Cogent][1204] (BSD-2, Isabelle/Haskell/C): code and proof co-generation from a purely functional language, on top the seL4 microkernel (CSIRO)
-   [Theory of X-Machines][1205]: X-machines were introduced in 1974 by [Samuel Eilenberg][1206]

-   [LTL][1207] (LPPL, LaTeX/TikZ): Configurable LTL math operators with LaTeX and TikZ or LTLFonts
-   [fsmtex][1208] (?, Perl/TeX): FSM drawing in LaTeX using TikZ ([Univ. Marseille][1209])

-   [Wikipedia][1210]
-   [Yahoda][1211] \[Masaryk Univ.\]
-   [wikia][1212] (by Jonathan Bowen)
-   [formal methods wiki][1213] (older version of the above)
-   [UPenn Hybrid System Tools Repository][1214]
-   [VERIMAG Tools][1215]
-   [verification tools for industrial automation][1216]
-   [Carloni et al.][1217]
-   [Networked Control Systems Repository][1218]
-   [rise4fun][1219]
-   [CMU tools][1220]
-   [SRI tools][1221] and older [page][1222]
-   [SYNALP][1223]: SYNchronous Applications, Languages, and Programs
-   [ARS][1224]: Database of Automated Reasoning Systems ([Stanford][1225])
-   [AVACS][1226]
-   [Quasimodo][1227]: Quantitative system properties in model-driven-design of embedded systems
-   [Tools list at SMT-LIB][1228]
-   [Max-SAT 2013 solvers][1229]
-   [SAT competition][1230]
-   [JKU tools][1231]
-   [Freek Wiedijk][1232]
    -   [Formalizing 100 Theorems][1233]: which theorems have been formalized in which prover
-   [Proof Assistants, Wikipedia][1234]
-   [Univ. Utah tools][1235]
-   [SV-COMP 2014][1236]: competition on software verification at TACAS 2014
-   [Every Proof Assistant Seminar][1237]: series of (online) seminars

-   [Model checking benchmarking scripts][1238] (NASA SA, Perl): details on the experiments described in "LTL satisfiability checking" (NASA)
-   [VLTS][1239]: MC benchmarks (CWI/SEN2, INRIA/VASY)
-   [BEEM][1240]: MC benchmarks ([Masaryk Univ.][1241])
-   [Mutual Exclusion Promela Source Codes][1242]: (Waseda Univ.)
-   [Buchi Store][1243]
-   [Promela Database][1244]: (IMT Lucca)
-   [Spec Patterns][1245]: patterns commonly occuring in specs of concurrent/reactive systems (LTL, CTL, GIL, QRE, ACTL, RAFMC) (Univ. Massachusetts Amherst)
-   [Hybrid system safety verification benchmarks][1246]
-   [TPTP][1247]: Thousands of Problems for Theorem Provers (Univ. Miami)
-   [Benchmark Verification Tasks][1248]: Benchmark verification tasks in software verification, as used in SV-COMP
-   [Larry Wos' Notebooks][1249]: series of notebooks presenting some of Larry Wos’s most recent and hitherto unpublished research in automated reasoning (also in 1st order logic) ([Argon Nat. Lab][1250])
-   [SMT-LIB][1251]: benchmarks for SMT
-   [DPPD][1252]: The Dozens of Problems for Partial Deduction (DPPD) Library of Benchmarks aims at being a standard suite of benchmarks for partial deduction (Univ. Dusseldorf)
-   [QMLTP][1253]: Quantified Modal Logics Theorem Proving (QMLTP) library provides a platform for testing and benchmarking ATP systems for first-order modal logics (Univ. Potsdam)
-   [ILTP][1254]: Intuitionistic Logic Theorem Proving (ILTP) library provides a platform for testing and benchmarking ATP systems for first-order and propositional intuitionistic logic (Univ. Potsdam)
-   [asparagus][1255]: Environment for submitting and archiving benchmarking Answer-Set Programming (ASP) problems and instances (Univ. Potsdam)
-   [TPDB][1256]: Termination Problems Database of test problems for termination provers: term rewrite systems and logic programs (LRI)
-   [CSPLib][1257]: Benchmark library of problems for constraint solvers (Izmir Univ. Economics, Univ. St Andrews, Univ. New South Wales)
-   [OR-library][1258]: Test data sets for a variety of Operations Research (OR) problems (Imperial College London)
-   [SATLIB][1259]: Benchmark problems, solvers, and tools for SAT related research (TU Darmstadt, Univ. British Columbia)
-   [SatEx][1260]: Experiments and execution traces of SAT solvers, on all benchmarks that are provided
-   [FEVS][1261]: set of programs designed to be used as a test suite for tools that verify functional equivalence (Univ. of Delaware)

-   u: unspecified license
    
-   FUSC: Free Under Specific Condition (wikipedia term), usually free for academic/research use
    
-   open: open source license
    
-   closed: no source available, common situation: `jar` files
    
-   LPPL: LaTeX Project Public License
    
-   EPL: Eclipse Public License
    
-   BA: Buchi Automaton
    
-   GBA: Generalized BA
    
-   TP: Theorem Prover
    
-   ATP: Automatic TP
    
-   RTS: Real-time System(s)
    
-   PWA: PieceWise-Affine
    
-   MLD: Mixed Logical Dynamical
    
-   TU: Technical University
    
-   UT: University of Technology
    
-   MSR: Microsoft Research
    
-   FOL: First-order logic
    
-   HOL: Higher-order logic
    
-   bin: binary, no sources available/found
    
-   ?: absent either due to time-constrained browsing (please complete) or not found
    

[1]: mailto:jfilippidis@gmail.com
[2]: https://creativecommons.org/publicdomain/zero/1.0/
[3]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#verification-with-model-checking
[4]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#closed-systems-everything-controlled
[5]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#enumerative
[6]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#symbolic
[7]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#logic-automata-automata-tools
[8]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#ltl-ba
[9]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#ltl-dra
[10]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#other
[11]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#term-rewrite-systems
[12]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#open-systems
[13]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#synchronous-languages
[14]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#imperative
[15]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#declarative
[16]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#statecharts
[17]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#synthesis
[18]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#open-systems-games-system-uncontrolled-environment
[19]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#discrete-games
[20]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#gr1-games
[21]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#full-ltl-games
[22]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#safety-specs-controller-synthesis
[23]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#parity-game-solvers
[24]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#quantitative-games
[25]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#other
[26]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#hybrid-games
[27]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#contracts
[28]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#hardware
[29]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#other
[30]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#timed-systems
[31]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#hybrid-systems
[32]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#linear
[33]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#non-linear
[34]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#stochastic
[35]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#theorem-provers
[36]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#theorem-provers-for-modal-logics
[37]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#qbf
[38]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#sat
[39]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#cdcl
[40]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#stochastic-local-search
[41]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#parallel
[42]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#unsorted
[43]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#smt
[44]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#other-solvers
[45]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#logic-programming
[46]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#software-synthesis
[47]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#runtime-verification
[48]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#yet-un-categorized
[49]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#typesetting
[50]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#other-tool-lists
[51]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#databases-and-benchmarks
[52]: https://github.com/johnyf/tool_lists/blob/main/verification_synthesis.md#non-common-abbreviations
[53]: https://spinroot.com/spin/whatispin.html
[54]: https://github.com/nimble-code/Spin
[55]: https://lars-lab.jpl.nasa.gov/
[56]: https://spinroot.com/modex/
[57]: https://github.com/nimble-code/Modex
[58]: https://lars-lab.jpl.nasa.gov/
[59]: https://packages.debian.org/buster/spin
[60]: https://code.google.com/p/spinja/
[61]: https://fmt.ewi.utwente.nl/redmine/projects/spinja
[62]: https://github.com/utwente-fmt/spins
[63]: http://www.albertolluch.com/research/tools
[64]: https://github.com/vim-scripts/promela.vim
[65]: https://github.com/vim-scripts/promela
[66]: https://github.com/emacsmirror/promela-mode
[67]: https://corb.co/projects/sublime-promela-spin
[68]: https://github.com/corbanmailloux/sublime-promela-spin
[69]: https://code.google.com/p/s2n/
[70]: https://verics.ipipan.waw.pl/promela
[71]: https://www.ida.liu.se/~kejia/c2promela/
[72]: https://www.mathematik.uni-stuttgart.de/~floeff/publications/96-enstparis-s2-report.pdf
[73]: https://members.tele2.nl/edwin.v/compiler.html
[74]: https://members.tele2.nl/edwin.v/index.html
[75]: https://github.com/roselone/pmGen
[76]: https://github.com/motib/jspin
[77]: https://code.google.com/P/Cjspin/
[78]: https://www.weizmann.ac.il/sci-tea/benari/
[79]: https://github.com/motib/erigone
[80]: https://code.google.com/p/erigone/
[81]: https://www.weizmann.ac.il/sci-tea/benari/
[82]: https://epispin.ewi.tudelft.nl/
[83]: https://swerl.tudelft.nl/twiki/pub/Main/PastAndCurrentMScProjects/thesis-bob-de-vos.pdf
[84]: https://github.com/johnyf/promela
[85]: https://www.dabeaz.com/ply/ply.html
[86]: https://www.cds.caltech.edu/~ifilippi/
[87]: https://github.com/ubinix-warun/language-promela
[88]: http://matrix.uni-mb.si/en/science/tools/eclipse-plug-in-for-spin//
[89]: http://matrix.uni-mb.si/en/science/tools/st2msc-tool/
[90]: https://www-verimag.imag.fr/~tripakis/rtspin.html
[91]: https://www-verimag.imag.fr/~tripakis/index.html
[92]: https://bitbucket.org/simonhj/nano-promela
[93]: http://tele.informatik.uni-freiburg.de/leue/visual.html#isorc99
[94]: https://code.google.com/p/promela-metamodel/
[95]: https://forge.ocamlcore.org/projects/promela/
[96]: https://www.pst.ifi.lmu.de/projekte/lwaaspin/
[97]: https://www.pst.informatik.uni-muenchen.de/projekte/hugo/
[98]: https://github.com/Alagert/SCTranslator
[99]: https://lcs.ios.ac.cn/~wp/pi2pro_manual.html
[100]: https://lcs.ios.ac.cn/~wp/
[101]: https://github.com/tw33dl3dee/pspin
[102]: https://github.com/hhu-stups/prob-promela
[103]: https://github.com/hguenther/language-promela
[104]: https://github.com/davidfischer-ch/sudoku-promela
[105]: https://www.pst.ifi.lmu.de/~hammer/statespaces/
[106]: https://code.google.com/p/promela-metamodel/
[107]: http://3spin.peterd.org/
[108]: https://www.montefiore.ulg.ac.be/services/verif/po-pack.html
[109]: https://www.montefiore.ulg.ac.be/services/verif/Welcome-en.html
[110]: https://www.gisum.uma.es/tools/arinctester/
[111]: http://lms.uni-mb.si/spinrcp/index.html
[112]: https://www.win.tue.nl/~dragan/DTSpin/
[113]: https://homepages.cwi.nl/~sbohte/ustin/EH.html
[114]: https://www.win.tue.nl/~dragan/CPOR-Spin/
[115]: https://vsl.cis.udel.edu/mpi-spin/
[116]: https://lamport.azurewebsites.net/tla/tla.html
[117]: http://lamport.org/
[118]: https://lamport.azurewebsites.net/video/videos.html
[119]: https://lamport.azurewebsites.net/tla/pluscal.html
[120]: https://github.com/hebaalkayed/DistributedPlusCal
[121]: https://lamport.azurewebsites.net/tla/tools.html
[122]: https://github.com/tlaplus/tlaplus
[123]: https://lamport.azurewebsites.net/tla/tlc.html
[124]: https://lamport.azurewebsites.net/tla/sany.html
[125]: https://www.antlr.org/
[126]: https://lamport.azurewebsites.net/tla/tlatex.html
[127]: https://lamport.azurewebsites.net/tla/toolbox.html
[128]: https://tla.msr-inria.inria.fr/tlaps/content/Home.html
[129]: https://github.com/joewilliams/tla_tools
[130]: https://github.com/joewilliams
[131]: https://github.com/pmer/tla-bin
[132]: https://github.com/hhu-stups
[133]: https://ls4-www.cs.tu-dortmund.de/RVS/P-TLA/TEM/tem.html
[134]: https://github.com/wysiib/language-tla-pluscal
[135]: https://krin.gs/
[136]: https://github.com/agentultra/TLAGrammar
[137]: https://github.com/vim-scripts/TLA
[138]: https://github.com/vim-scripts/tla.vim
[139]: https://github.com/hwayne/tla.vim
[140]: https://sourceforge.net/projects/etla/
[141]: https://github.com/Hackerpilot/textadept-TLA-
[142]: https://github.com/alygin/vscode-tlaplus
[143]: https://github.com/ret/specifica
[144]: https://github.com/jarjuk/tla-parser-s
[145]: https://github.com/tlaplus/Examples
[146]: https://github.com/tlaplus/CommunityModules
[147]: https://github.com/tlaplus/tlapm/tree/master/examples
[148]: https://github.com/tlaplus/tlapm/tree/master/library
[149]: https://github.com/nano-o/MultiPaxos
[150]: https://github.com/efficient/epaxos
[151]: https://bitbucket.org/ngunatillaka/leaderless-byzantine-paxos
[152]: https://github.com/fpaxos/fpaxos-tlaplus
[153]: https://github.com/ongardie/raft.tla
[154]: https://github.com/nano-o/TLA-Library
[155]: https://github.com/Azure/azure-cosmos-tla
[156]: https://github.com/visualzhou/mongo-repl-tla
[157]: https://github.com/ryansb/heat-tla-model
[158]: https://github.com/pingcap/tla-plus
[159]: https://github.com/elastic/elasticsearch-formal-models
[160]: https://ls4-www.cs.tu-dortmund.de/RVS/P-TLA/TBR/tbr.html
[161]: https://ls4-www.cs.tu-dortmund.de/RVS/P-TLA/welcome.html
[162]: https://www3.hhu.de/stups/prob/index.php/TLA
[163]: https://github.com/hhu-stups/tla2b
[164]: https://github.com/hhu-stups/tla2bAST
[165]: https://github.com/hhu-stups/tlc4b
[166]: https://github.com/jonhnet/tla-dafny
[167]: https://fmt.cs.utwente.nl/tools/ltsmin/
[168]: https://fmt.cs.utwente.nl/tools/moonwalker/
[169]: https://www.mono-project.com/Main_Page
[170]: https://code.google.com/p/moonwalker/
[171]: https://divine.fi.muni.cz/
[172]: https://divine.fi.muni.cz/current/doc/
[173]: https://divine.fi.muni.cz/current/
[174]: https://www.prismmodelchecker.org/
[175]: https://github.com/prismmodelchecker/
[176]: https://www.prismmodelchecker.org/other-tools.php
[177]: https://www.prismmodelchecker.org/games/
[178]: https://github.com/prismmodelchecker/prism-games
[179]: https://www.stormchecker.org/
[180]: https://github.com/moves-rwth/storm
[181]: https://github.com/moves-rwth/stormpy
[182]: https://iscasmc.ios.ac.cn/?p=1241
[183]: https://github.com/ISCAS-PMC/ePMC
[184]: http://spot.lip6.fr/wiki/
[185]: https://babelfish.arc.nasa.gov/trac/jpf
[186]: http://javapathfinder.sourceforge.net/NOSA-1.3-JPF.txt
[187]: https://bitbucket.org/nastaran/jpf-nhandler
[188]: https://www.nastaran.ca/
[189]: https://sourceforge.net/projects/helena-mc/
[190]: https://steam.cs.uni-dortmund.de/
[191]: https://tulip.lenhardt.co.uk/
[192]: http://www.tcs.hut.fi/Software/prod/
[193]: https://www.cs.rice.edu/CS/Verification/Software/software.html
[194]: https://code.google.com/p/neco-net-compiler/
[195]: https://sourceforge.net/projects/peptool/
[196]: https://code.google.com/p/cunf/
[197]: https://www.lsv.ens-cachan.fr/~rodriguez/
[198]: https://github.com/motib/daj
[199]: https://code.google.com/p/daj/
[200]: https://www.weizmann.ac.il/sci-tea/benari/
[201]: https://www-sop.inria.fr/meije/verification/
[202]: https://www.cs.utah.edu/formal_verification/Murphi/
[203]: https://verify.stanford.edu/dill/murphi.html
[204]: https://www.cs.utah.edu/formal_verification/EddyMurphi/
[205]: http://mclab.di.uniroma1.it/site/index.php/software/18-cmurphi
[206]: https://www.di.univaq.it/gdellape/lamoka/page.php?pid=246&lid=en
[207]: https://bitbucket.org/jderick/preach/wiki/Home
[208]: https://www.cs.utah.edu/formal_verification/software/murphi/murphi.hemanth/index.only_hemanth.html
[209]: https://sylvain.berbiqui.org/apmc
[210]: https://www.lrde.epita.fr/cgi-bin/twiki/view/Vaucanson/
[211]: https://spot.lip6.fr/wiki/EmptinessCheckAlgorithms
[212]: https://www.lrde.epita.fr/~adl/
[213]: https://www.foldr.org/~michaelw/projects/gitweb?p=nips-vm.git;a=summary
[214]: http://www.pst.informatik.uni-muenchen.de/~hammer/statespaces/manual.html
[215]: https://www.pst.ifi.lmu.de/~hammer/statespaces/index.html
[216]: http://www.pst.ifi.lmu.de/Personen/ehemalige/hammer/hammer/view
[217]: http://www.irisa.fr/s4/tools/synet/
[218]: http://www.irisa.fr/prive/Benoit.Caillaud/Benoit_Caillauds_Professional_homepage/Welcome.html
[219]: https://github.com/golems/motion-grammar-kit
[220]: https://en.wikipedia.org/wiki/PAT_%28model_checker%29
[221]: https://github.com/pkazmierczak/NorMC
[222]: https://www.sei.cmu.edu/predictability/tools/copper/index.cfm
[223]: https://www.cs.cmu.edu/~chaki/magic/
[224]: https://bogor.projects.cis.ksu.edu/manual/
[225]: http://mtc.epfl.ch/software-tools/blast/index-epfl.php
[226]: https://www.cprover.org/scoot/
[227]: https://www.cs.cmu.edu/~modelcheck/vcegar/
[228]: https://d3s.mff.cuni.cz/~sery/gmc/index.html
[229]: https://www.contrib.andrew.cmu.edu/~schaki/publications/NFM-2009.html
[230]: https://www.contrib.andrew.cmu.edu/~schaki/index.html
[231]: https://forsyte.at/software/fshell/
[232]: https://forsyte.at/software/cpatiger/
[233]: https://cpachecker.sosy-lab.org/
[234]: https://github.com/sosy-lab/cpachecker
[235]: https://code.google.com/p/crest/
[236]: https://forsyte.at/software/concrest/
[237]: https://forsyte.at/software/bymc/
[238]: https://osl.cs.illinois.edu/software/iltl/index.html
[239]: https://sites.google.com/site/youngminkwon/
[240]: https://leepike.github.io/Copilot/
[241]: https://www.mcrl2.org/release/user_manual/index.html
[242]: https://www.it.uu.se/research/group/mobility/mwb
[243]: https://www.cs.sunysb.edu/~lmc/mmc/
[244]: https://www.cs.sunysb.edu/~lmc/
[245]: https://lcs.ios.ac.cn/~wp/mmc_sp_manual.html
[246]: https://lcs.ios.ac.cn/~wp/astg_manual.html
[247]: https://www.ueda.info.waseda.ac.jp/lmntal/
[248]: https://bitbucket.org/jwright/finite-automata-model-checker
[249]: https://code.google.com/p/v-n/
[250]: https://en.wikipedia.org/wiki/Mordechai_Ben-Ari
[251]: https://code.google.com/p/py-powerset-construction/
[252]: https://research.microsoft.com/en-us/projects/zing/
[253]: https://github.com/ZingModelChecker/Zing
[254]: https://github.com/seahorn/seahorn
[255]: https://github.com/rakhimov/scram
[256]: https://www.risc.jku.at/research/formal/software/RISCAL/
[257]: https://www.risc.jku.at/home/schreine
[258]: https://www.fi.muni.cz/~xpelanek/state_spaces/summary.html
[259]: https://github.com/afd/symmetrytools
[260]: https://www.mcternan.me.uk/mscgen/
[261]: https://en.wikipedia.org/wiki/MscGen
[262]: https://atom.io/packages/mscgen-preview
[263]: https://github.com/sverweij/atom-mscgen-preview
[264]: https://pypi.org/project/sphinxcontrib-mscgen
[265]: https://ttool.telecom-paris.fr/
[266]: https://gitlab.telecom-paris.fr/mbe-tools/TTool/
[267]: http://gadara.eecs.umich.edu/software.html
[268]: http://gadara.eecs.umich.edu/tools/gadara_src.zip
[269]: http://gadara.eecs.umich.edu/tools/gadara_src.zip
[270]: http://www.tcs.hut.fi/Software/prod/
[271]: https://github.com/informalsystems/apalache
[272]: https://www.cs.cmu.edu/~modelcheck/smv.html
[273]: http://www.kenmcmil.com/smv.html
[274]: https://nusmv.fbk.eu/
[275]: https://lvl.info.ucl.ac.be/Tools/PyNuSMV
[276]: https://lvl.info.ucl.ac.be/
[277]: https://github.com/ArnoVanLumig/smview
[278]: https://nusmv.fbk.eu/gnusmv/
[279]: https://code.google.com/a/eclipselabs.org/p/nusmv-tools/
[280]: https://code.google.com/a/eclipselabs.org/p/nuseen/
[281]: https://es-static.fbk.eu/tools/nuxmv/index.php
[282]: https://www.eecs.berkeley.edu/~alanmi/abc/abc.htm
[283]: https://github.com/berkeley-abc/abc
[284]: http://mtc.epfl.ch/software-tools/mocha/
[285]: https://www.cis.upenn.edu/~mocha/
[286]: https://www.cs.cmu.edu/~modelcheck/cbmc/
[287]: https://github.com/diffblue/cbmc
[288]: https://www.cprover.org/eclipse-plugin/
[289]: https://github.com/diffblue/eclipse-cbmc
[290]: https://www.cprover.org/visual-studio/
[291]: https://www.cprover.org/jbmc/
[292]: https://github.com/diffblue/cbmc/tree/develop/jbmc
[293]: https://github.com/diffblue/symex
[294]: https://www.cprover.org/ebmc/
[295]: https://github.com/diffblue/hw-cbmc
[296]: https://github.com/diffblue/2ls
[297]: https://github.com/moves-rwth/cbmc-with-kInduction
[298]: http://esbmc.org/
[299]: https://github.com/esbmc/esbmc
[300]: https://www.cprover.org/ebmc/
[301]: http://www.jstarverifier.org/
[302]: https://github.com/seplogic/corestar
[303]: http://jscert.org/index.html
[304]: https://github.com/MatkoBotincan/jabstr
[305]: https://bitbucket.org/jvillard/lstar/wiki/Home
[306]: http://vlsi.colorado.edu/~vis/
[307]: http://verics.ipipan.waw.pl/start
[308]: http://www.ti.inf.uni-due.de/research/tools/augur2/
[309]: http://www.ti.inf.uni-due.de/people/koenig/
[310]: http://rodrigotaclasaad.drupalgardens.com/content/mercury
[311]: http://research.microsoft.com/en-us/projects/boogie/
[312]: http://boogie.codeplex.com/license
[313]: http://research.microsoft.com/en-us/projects/symdiff/default.aspx
[314]: http://research.microsoft.com/en-us/projects/vcc/default.aspx
[315]: https://github.com/microsoft/vcc
[316]: http://research.microsoft.com/en-us/projects/havoc/default.aspx
[317]: https://github.com/dafny-lang/dafny
[318]: https://rise4fun.com/Dafny/
[319]: http://research.microsoft.com/en-us/um/people/leino/
[320]: https://github.com/mlr-msft/vim-loves-dafny
[321]: https://github.com/benknoble/vim-dafny
[322]: https://github.com/erggo/sublime-dafny
[323]: http://tomas.virgl.net/
[324]: https://github.com/DafnyVSCode/Dafny-VSCode
[325]: https://github.com/jkuehnemundt/eclipse-dafny
[326]: https://github.com/dschoepe/spacemacs-boogie-friends
[327]: https://github.com/mattulbrich/dive
[328]: https://github.com/YuyanBao/DafnyR
[329]: https://github.com/nhweston/dfydoc
[330]: https://github.com/eringrant/python-to-dafny-converter
[331]: https://github.com/shawa/dafny-to-c
[332]: https://github.com/cyphyhouse/Dione
[333]: https://cakeml.org/
[334]: https://github.com/CakeML/cakeml
[335]: https://docs.idris-lang.org/en/latest/tutorial/theorems.html
[336]: https://github.com/idris-lang/Idris-dev
[337]: http://specsharp.codeplex.com/
[338]: http://specsharp.codeplex.com/license
[339]: https://github.com/DavePearce/Whiley
[340]: http://homepages.ecs.vuw.ac.nz/~djp/
[341]: http://why3.lri.fr/
[342]: https://toccata.lri.fr/
[343]: https://software.imdea.org/projects/certicrypt/
[344]: https://www.open-do.org/projects/hi-lite/gnatprove/
[345]: http://krakatoa.lri.fr/
[346]: http://bware.lri.fr/index.php/BWare_project
[347]: https://www.risc.jku.at/people/mtkhan/dk10/software.html
[348]: https://www.risc.jku.at/home/mtkhan
[349]: https://en.wikipedia.org/wiki/KeY
[350]: http://www.key-project.org/download/hoare/
[351]: http://symbolaris.com/info/KeYmaera.html
[352]: http://symbolaris.com/andre.html
[353]: http://symbolaris.com/info/KeYmaeraD.html
[354]: https://github.com/keymaerad/KeYmaeraD
[355]: http://symbolaris.com/andre.html
[356]: https://www.cs.cmu.edu/afs/cs/Web/People/smitsch/tools.html
[357]: https://www.cs.cmu.edu/afs/cs/Web/People/smitsch/index.html
[358]: http://j-algo.binaervarianz.de/index.php?language=en
[359]: https://www.cs.cmu.edu/~modelcheck/verus.html
[360]: https://www.cs.cmu.edu/~uclid/
[361]: https://forsyte.at/software/cbmc-gc/
[362]: https://en.wikipedia.org/wiki/CHIC_%28electronics%29
[363]: http://mtc.epfl.ch/software-tools/blast/index-epfl.php
[364]: http://www.cs.york.ac.uk/circus/tools/refinement.php
[365]: http://www.cs.york.ac.uk/circus/tools/utp.php
[366]: http://www.cs.york.ac.uk/circus/tools/type.php
[367]: http://www.cs.york.ac.uk/circus/tools/jcsp.php
[368]: http://www.cs.york.ac.uk/circus/tools/control.php
[369]: https://sourceforge.net/projects/czt/
[370]: http://www.event-b.org/
[371]: http://checkfence.sourceforge.net/
[372]: https://en.wikipedia.org/wiki/Daikon_%28system%29
[373]: https://github.com/niklasso/tip
[374]: http://minisat.se/Authors.html
[375]: http://alloy.mit.edu/alloy/
[376]: http://alloy.mit.edu/kodkod/
[377]: https://rebeca-lang.org/
[378]: https://github.com/rebeca-lang
[379]: https://rebeca-lang.org/tools
[380]: https://microsoft.github.io/ivy/
[381]: https://github.com/Microsoft/ivy
[382]: https://github.com/wilcoxjay/mypyvy
[383]: https://code.google.com/p/pycsp/
[384]: https://en.wikipedia.org/wiki/FDR2
[385]: https://es-static.fbk.eu/tools/kratos/
[386]: http://mrwaffles.gforge.inria.fr/index.html
[387]: https://github.com/CurryBoy/Peirce-Logic
[388]: http://www.dimit.me/
[389]: https://www.dfki.de/vse/projects/vse.html
[390]: https://www.dfki.de/vse/projects/vse-short.html
[391]: https://lara.epfl.ch/w/leon
[392]: https://lara.epfl.ch/w/eldarica
[393]: http://www.philipp.ruemmer.org/eldarica-p.shtml
[394]: https://bugassist.mpi-sws.org/
[395]: http://www.inrialpes.fr/vasy/cadp.html
[396]: https://github.com/cs-au-dk/MONA
[397]: https://www.brics.dk/mona
[398]: https://www.cprover.org/boom/
[399]: http://www.kailesu.net/MCTK/
[400]: http://www.kailesu.net/
[401]: https://github.com/jrclogic/SMCDEL
[402]: https://github.com/yaqwsx/SymDIVINE
[403]: https://anna.fi.muni.cz/~xbauch/symdivine.html
[404]: https://github.com/arbrad/IC3ref
[405]: https://theory.stanford.edu/~arbrad/
[406]: https://github.com/overturetool/overture
[407]: http://www0.cs.ucl.ac.uk/staff/p.ohearn/smallfoot/
[408]: https://people.mpi-sws.org/~viktor/cave/
[409]: https://sri-csl.github.io/sally/
[410]: https://github.com/SRI-CSL/sally
[411]: https://www.cs.ox.ac.uk/people/thomas.wahl/Sviss/
[412]: https://github.com/SymbolicPathFinder/jpf-symbc
[413]: https://www.openjml.org/
[414]: https://github.com/OpenJML/OpenJML
[415]: http://www.jmlspecs.org/
[416]: https://en.wikipedia.org/wiki/ProVerif
[417]: https://prosecco.gforge.inria.fr/personal/bblanche/proverif/
[418]: https://markryan.eu/research/statverif/
[419]: https://github.com/darrenldl/ProVerif-ATP
[420]: https://en.wikipedia.org/wiki/CryptoVerif
[421]: https://prosecco.gforge.inria.fr/personal/bblanche/cryptoverif/
[422]: https://github.com/blipp/cryptoverif-completion
[423]: https://github.com/mgrabovsky/cryptoverif
[424]: https://github.com/mgrabovsky/cryptoverif-py-lib
[425]: http://research.microsoft.com/en-us/downloads/d54de3ef-085e-47f0-b7dc-8d56c858aba2/default.aspx
[426]: http://research.microsoft.com/en-us/downloads/a91c6322-ae04-4b7c-9f8b-908f094d7a15/default.aspx
[427]: https://github.com/qif/sqifc
[428]: https://github.com/qif/jpf-qilura
[429]: https://github.com/SymbolicPathFinder/jpf-symbc
[430]: https://github.com/s-falke/kittel-koat
[431]: https://github.com/s-falke/llvm2kittel
[432]: http://www.math.tau.ac.il/~tvla/
[433]: https://www.cs.technion.ac.il/~yahave/safe/index.html
[434]: https://github.com/tech-srl/safe
[435]: http://users.ics.aalto.fi/kepa/tools/
[436]: http://users.ics.aalto.fi/kepa/tools/boundsmodels/
[437]: http://users.ics.aalto.fi/kepa/tools/punroll/
[438]: http://users.ics.aalto.fi/kepa/tools/unfsmodels/
[439]: http://users.ics.aalto.fi/kepa/tools/mcsmodels/
[440]: http://users.ics.aalto.fi/kepa/tools/dlsmodels/
[441]: http://www.tcs.hut.fi/Software/smodels/
[442]: http://vsl.cis.udel.edu/tass/index.html
[443]: https://github.com/vprover/rapid
[444]: http://www.lsv.ens-cachan.fr/~gastin/ltl2ba/index.php
[445]: https://www-i2.informatik.rwth-aachen.de/Forschung/RV/ltl2ba4j/index.html
[446]: https://sourceforge.net/projects/ltl3ba/
[447]: https://is.muni.cz/th/143254/fi_r/thesis_proposal.pdf
[448]: http://www.ti.informatik.uni-kiel.de/~fritz/
[449]: http://www.tcs.hut.fi/Software/lbtt/
[450]: http://www.ist.tugraz.at/staff/bloem/wring.html
[451]: http://www.bell-labs.com/project/TMP/
[452]: http://www.tcs.hut.fi/Software/maria/tools/lbt/
[453]: http://spot.lip6.fr/userdoc/ltl2tgba.html
[454]: https://www.cs.rice.edu/CS/Verification/Software/software.html
[455]: https://www.react.uni-saarland.de/tools/dbaminimizer/
[456]: http://www.iaik.tugraz.at/content/research/design_verification/wring/
[457]: http://goal.im.ntu.edu.tw/
[458]: https://spot.lip6.fr/wiki/LtlTranslationAlgorithms
[459]: https://www.lrde.epita.fr/~adl/
[460]: https://www.doc.ic.ac.uk/ltsa/
[461]: http://www-dse.doc.ic.ac.uk/cgi-bin/moin.cgi/jnm
[462]: https://www-roc.inria.fr/arles/index.php/software/197-oltsa-ontology-based-labeled-transition-system-analyzer
[463]: http://www.daxc.de/eth/wdba/index.html
[464]: http://www.daxc.de/eth/
[465]: https://code.google.com/p/psl2ba/
[466]: http://www.daxc.de/eth/
[467]: https://github.com/juliansf/rltl2ba
[468]: https://software.imdea.org/~julian/
[469]: http://www.lab205.org/aalta/
[470]: https://www.ltl2dstar.de/
[471]: https://www.ltl2dstar.de/literature/ltl2dstar-diploma-thesis.pdf
[472]: https://www.cds.caltech.edu/~slivings/sandbox/wrapltl.php
[473]: https://scottman.net/
[474]: https://www7.in.tum.de/~kretinsk/rabinizer3.html
[475]: https://www7.in.tum.de/~kretinsk/
[476]: https://sourceforge.net/projects/ltl3dra/
[477]: https://www.brics.dk/automaton/
[478]: https://github.com/cs-au-dk/dk.brics.automaton
[479]: http://users.isr.ist.utl.pt/~pal/cadeiras/deds0708/deds/MatlabFSA.zip
[480]: http://users.isr.ist.utl.pt/~pal/cadeiras/deds0708/deds/Projects06-07/BLacerda.pdf
[481]: http://users.isr.ist.utl.pt/~blacerda/
[482]: https://forsyte.at/software/automata/
[483]: https://sourceforge.net/projects/fsme/
[484]: http://www.kermeta.org/
[485]: http://triskell.irisa.fr/?set_language=en&cl=en
[486]: http://www.papyrusuml.org/scripts/home/publigen/content/templates/show.asp?L=EN&P=55&vTicker=alleza&ITEMID=3
[487]: http://www-list.cea.fr/
[488]: http://www.topcased.org/
[489]: http://www.topcased.org/index.php?idd_projet_pere=55
[490]: http://www.omgmarte.org/
[491]: http://timesquare.inria.fr/
[492]: http://libalf.informatik.rwth-aachen.de/
[493]: http://amore.sourceforge.net/
[494]: https://depend.cs.uni-sb.de/tools/aphmin/
[495]: https://depend.cs.uni-sb.de/tools/flowsim/
[496]: https://www-sop.inria.fr/meije/personnel/Michel.Bourdelles/tutorial.html#Section1
[497]: https://pypi.python.org/pypi/PyFMI/
[498]: https://www.fmi-standard.org/
[499]: https://github.com/mtiller/fmusdk
[500]: https://github.com/adl/hoaf
[501]: http://www.jflap.org/
[502]: https://github.com/nothymr/ltlmp_sat
[503]: https://github.com/ancailliau/LtlSharp
[504]: https://github.com/mattmaly/safety
[505]: http://languageinclusion.org/doku.php?id=tools
[506]: https://github.com/ISCAS-PMC/RABIT
[507]: http://languageinclusion.org/CONCUR2011/
[508]: https://pypi.org/project/automata-lib/
[509]: https://github.com/caleb531/automata
[510]: https://github.com/hemangsk/automata-python
[511]: https://code.google.com/archive/p/python-automata/
[512]: https://github.com/reverie/python-automata
[513]: https://doc.sagemath.org/html/en/reference/combinat/sage/combinat/finite_state_machine.html
[514]: https://github.com/fgmacedo/python-statemachine
[515]: https://iscasmc.ios.ac.cn/roll/doku.php
[516]: https://github.com/ISCAS-PMC/roll-library
[517]: https://dept-info.labri.fr/~idurand/autowrite/
[518]: http://www.irisa.fr/celtique/genet/timbuk/
[519]: http://wwwhome.cs.utwente.nl/~vdpol/jitty/README
[520]: http://www.kframework.org/index.php/Main_Page
[521]: https://elan.loria.fr/
[522]: https://en.wikipedia.org/wiki/Esterel
[523]: https://www-sop.inria.fr/meije/esterel/esterel-eng.html
[524]: https://www-sop.inria.fr/esterel-org/filesv5_92/Html/Downloads/Soft/Ev592Downloads.htm
[525]: http://www1.cs.columbia.edu/~sedwards/cec/
[526]: https://github.com/LudvikGalois/cec-esterel
[527]: http://www.cs.columbia.edu/~sedwards/
[528]: https://www-sop.inria.fr/meije/esterel/scdata.html
[529]: https://www-sop.inria.fr/meije/esterel/ocjava.html
[530]: http://rsg.cs.uni-kl.de/publications/datarsg/Schn09.pdf
[531]: https://en.wikipedia.org/wiki/Averest
[532]: http://es.informatik.uni-kl.de/
[533]: https://sourceforge.net/projects/ecl/
[534]: https://www-sop.inria.fr/meije/verification/Xeve/
[535]: https://en.wikipedia.org/wiki/Lustre_%28programming_language%29
[536]: https://github.com/ladace/Lustre
[537]: https://www-verimag.imag.fr/Lustre-V6.html
[538]: https://gricad-gitlab.univ-grenoble-alpes.fr/verimag/synchrone/lustre-v6
[539]: https://github.com/coco-team/zustre
[540]: http://www.cfdvs.iitb.ac.in/download/Docs/verification/tools/kronos/Verimag_Home_Page/PEOPLE/Florence.Maraninchi/MATOU/index.phtml
[541]: http://clc.cs.uiowa.edu/Kind/
[542]: https://kind2-mc.github.io/kind2/
[543]: https://github.com/kind2-mc/kind2
[544]: https://loonwerks.com/tools/jkind.html
[545]: https://github.com/loonwerks/jkind
[546]: https://loonwerks.com/tools/spear.html
[547]: https://github.com/afifarek/spear
[548]: https://github.com/agacek/jkind-xtext
[549]: https://loonwerks.com/tools/agree.html
[550]: https://github.com/loonwerks/AGREE
[551]: https://github.com/lgwagner/SIMPAL
[552]: https://pop-art.inrialpes.fr/~bjeannet/nbac/index.html
[553]: https://pop-art.inrialpes.fr/~bjeannet/nbac/index_6.html
[554]: https://pop-art.inrialpes.fr/~bjeannet/nbac/index_7.html
[555]: https://pop-art.inrialpes.fr/~bjeannet/nbac/index_8.html
[556]: https://en.wikipedia.org/wiki/SIGNAL_programming_language
[557]: https://www.irisa.fr/espresso/home_html
[558]: https://www.irisa.fr/espresso/Polychrony/
[559]: https://www.irisa.fr/vertecs/Softwares/sigali.html
[560]: https://www.irisa.fr/vertecs/Logiciels/sigali.html
[561]: https://www.irisa.fr/vertecs/Softwares/TGV.html
[562]: https://www.weizmann.ac.il/mediawiki/playgo/index.php/Main_Page
[563]: http://www.time-rover.com/
[564]: https://en.wikipedia.org/wiki/SyncCharts
[565]: https://www-sop.inria.fr/members/Charles.Andre/
[566]: https://www.i3s.unice.fr/~map/WEBSPORTS/SyncCharts/
[567]: http://julien.boucaron.free.fr/i3s/
[568]: https://dl.acm.org/citation.cfm?id=2146252
[569]: https://github.com/tulip-control/gr1c
[570]: https://scottman.net/
[571]: https://github.com/slivingston/gr1py
[572]: https://github.com/tulip-control/omega
[573]: https://github.com/LTLMoP/slugs
[574]: https://sourceforge.net/projects/jtlv/
[575]: https://www.cs.nyu.edu/acsys/tlv/
[576]: https://www.wisdom.weizmann.ac.il/~saar/synthesis/
[577]: https://rat.fbk.eu/ratsy/
[578]: http://www.iaik.tugraz.at/content/research/design_verification/
[579]: http://www.iaik.tugraz.at/content/research/design_verification/anzu/
[580]: http://www.iaik.tugraz.at/content/research/design_verification/
[581]: https://rat.fbk.eu/
[582]: http://www.iaik.tugraz.at/content/research/design_verification/
[583]: https://es.fbk.eu/index.php?n=Tools.NuGaT
[584]: https://code.google.com/p/chameleon-nugat-api/
[585]: http://aspectltl.ysaar.net/wiki/index.php?title=AspectLTL
[586]: https://github.com/johnyf/openpromela
[587]: https://www.cds.caltech.edu/~ifilippi/
[588]: http://lit2.ulb.ac.be/acaciaplus/
[589]: https://code.google.com/p/ltlsynthesis/
[590]: http://lit2.ulb.ac.be/acacia/
[591]: http://lit2.ulb.ac.be/alaska/
[592]: https://www.ulb.ac.be/di/ssd/madewulf/
[593]: https://github.com/cloverrose/jorro
[594]: https://github.com/gaperez64/acacia_ltl2aig/blob/master/ltl2aig.py
[595]: http://www.iaik.tugraz.at/content/research/design_verification/lily/
[596]: http://www6.in.tum.de/~chengch/gavs/
[597]: https://www.react.uni-saarland.de/tools/unbeast/
[598]: https://automata.rwth-aachen.de/research/GASt/
[599]: https://github.com/5nizza/party-elli
[600]: https://github.com/filipbartek/rabin
[601]: https://github.com/filipbartek
[602]: https://www.react.uni-saarland.de/tools/bosy/
[603]: https://github.com/gaperez64/AbsSynthe
[604]: https://www.iaik.tugraz.at/content/research/opensource/demiurge/
[605]: https://www.react.uni-saarland.de/tools/safetysynth/
[606]: https://github.com/romainbrenguier/Reglisse
[607]: http://www2.tcs.ifi.lmu.de/pgsolver/
[608]: https://www.cs.ox.ac.uk/matthew.hague/pdsolver.html
[609]: http://lit2.ulb.ac.be/alpaga/
[610]: https://github.com/madewulf/alpaga
[611]: https://www.ulb.ac.be/di/ssd/madewulf/
[612]: https://github.com/trolando/oink
[613]: https://pub.ist.ac.at/quasy/
[614]: https://pub.ist.ac.at/gist/index.html
[615]: https://github.com/gaperez64/mpg-solver
[616]: https://www.ulb.ac.be/di/verif/gaperez/
[617]: https://github.com/tcsprojects/mlsolver
[618]: https://bitbucket.org/art_haali/aisy-classroom
[619]: https://github.com/BluSTL
[620]: https://sourceforge.net/projects/g4ltl/
[621]: https://github.com/tulip-control/tulip-control
[622]: https://www.cds.caltech.edu/~murray/wiki/Main_Page
[623]: https://ltlmop.github.io/
[624]: https://cornell-asl.org/wiki/index.php?title=Main_Page
[625]: https://github.com/PennNLP/SLURP
[626]: https://hyness.bu.edu/Software.html
[627]: https://react.cs.uni-sb.de/tools/
[628]: https://www.react.uni-saarland.de/tools/synthia/
[629]: https://www.react.uni-saarland.de/people/peter.html
[630]: https://sites.google.com/a/cyphylab.ee.ucla.edu/pessoa/home
[631]: https://sites.google.com/a/asu.edu/s-taliro/
[632]: https://www.public.asu.edu/~gfaineko/
[633]: https://gitlab.lrz.de/matthias/SCOTSv0.2
[634]: https://github.com/pettni/abstr-refinement
[635]: https://www.irisa.fr/s4/tools/mica/Mica__A_Modal_Interface_Compositional_Analysis_Library/Introduction.html
[636]: https://www.irisa.fr/prive/Benoit.Caillaud/Benoit_Caillauds_Professional_homepage/Welcome.html
[637]: https://es-static.fbk.eu/tools/ocra/index.php?n=Main.HomePage
[638]: https://es-static.fbk.eu/tools/autofocra/
[639]: https://es-static.fbk.eu/projects/forever/index.php?n=Main.Links
[640]: https://github.com/cliffordwolf/yosys
[641]: https://www.clash-lang.org/
[642]: https://ku-fpg.github.io/software/kansas-lava
[643]: https://github.com/ku-fpg/kansas-lava
[644]: https://github.com/ucb-bar/chisel/
[645]: http://www.timestool.com/
[646]: https://github.com/bigmc/bigmc
[647]: https://code.google.com/p/ticc/
[648]: https://www.uppaal.org/
[649]: https://people.cs.aau.dk/~adavid/tiga/
[650]: https://launchpad.net/pyuppaal
[651]: http://www.quasimodo.aau.dk/tools.html
[652]: http://metamoc.dk/
[653]: http://www.sarts.dk/old.php
[654]: https://people.cs.aau.dk/~adavid/UDBM/
[655]: https://people.cs.aau.dk/~adavid/UDBM/python.html
[656]: https://people.cs.aau.dk/~adavid/UDBM/ruby.html
[657]: https://github.com/osankur/udbml
[658]: https://launchpad.net/opaal
[659]: https://people.cs.aau.dk/~adavid/ecdar/
[660]: https://project.inria.fr/pyecdar/
[661]: https://groups.csail.mit.edu/tds/ioa/
[662]: http://www.veromodo.com/
[663]: http://www.csl.sri.com/users/tiwari/VVFCS.html
[664]: https://sourceforge.net/projects/atao/
[665]: https://launchpad.net/pyppl
[666]: http://bugseng.com/products/ppl
[667]: https://www.modestchecker.net/
[668]: http://symbolaris.com/info/saatre.html
[669]: https://www.cs.ru.nl/J.Berendsen/fortuna/
[670]: https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.39.8153
[671]: http://romeo.rts-software.org/?page_id=2
[672]: http://www.idt.mdh.se/~exsched/
[673]: http://www.es.mdh.se/staff/197-Mikael__sberg
[674]: http://www.cs.bgu.ac.il/~geraw/rtcomposer.html
[675]: http://dimacs.rutgers.edu/Workshops/Security/program2/kemmerer/index.html
[676]: http://pat.sce.ntu.edu.sg/?page_id=2602
[677]: http://www.lsv.ens-cachan.fr/~fl/cmcweb.html
[678]: https://www.imitator.fr/
[679]: https://github.com/imitator-model-checker/imitator/
[680]: https://github.com/astefano/CoVerTS
[681]: https://ptolemy.eecs.berkeley.edu/index.htm
[682]: https://wiki.cites.illinois.edu/wiki/display/MitraResearch/HyLink
[683]: https://rtg.cis.upenn.edu/mobies/charon/
[684]: https://rtg.cis.upenn.edu/carts/
[685]: http://www.andrew.cmu.edu/user/arieg/Rek/
[686]: https://www-verimag.imag.fr/~async/IF/index.html
[687]: https://www-verimag.imag.fr/~tripakis/openkronos.html
[688]: https://www-verimag.imag.fr/DIST-TOOLS/TEMPO/kronos/
[689]: https://cif.se.wtb.tue.nl/
[690]: https://publish.illinois.edu/passel-tool/
[691]: https://www.sosy-lab.org/~dbeyer/Rabbit/
[692]: https://www.mobius.illinois.edu/
[693]: https://www.perform.csl.illinois.edu/
[694]: https://lipn.univ-paris13.fr/~andre/software/hymitator/
[695]: https://embedded.eecs.berkeley.edu/research/hytech/
[696]: https://www-verimag.imag.fr/~tdang/ddt.html
[697]: https://www-verimag.imag.fr/~tdang/
[698]: https://wiki.cites.illinois.edu/wiki/display/MitraResearch/HARE
[699]: https://www-verimag.imag.fr/~frehse/phaver_web/
[700]: https://sites.google.com/site/frehseg/
[701]: https://www.vim.org/scripts/script.php?script_id=3256
[702]: https://github.com/vim-scripts/phaver
[703]: https://depend.cs.uni-sb.de/tools/prohver/
[704]: https://www.mathworks.com/matlabcentral/fx_files/15441/3/content/doc/main.htm
[705]: https://www.mathworks.com/matlabcentral/fileexchange/17004-checkmate-demos
[706]: http://control.ee.ethz.ch/~hybrid/hysdel/
[707]: http://cse.lab.imtlucca.it/~bemporad/hybrid/toolbox/
[708]: http://cse.lab.imtlucca.it/~bemporad/Alberto_Bemporads_Home_Page/Home_Page.html
[709]: https://code.google.com/p/ellipsoids/
[710]: http://www-ljk.imag.fr/membres/Antoine.Girard/Software/Matisse/
[711]: http://seg.nju.edu.cn/BACH/
[712]: https://pypi.org/project/tltk-mtl
[713]: https://wiki.cites.illinois.edu/wiki/display/MitraResearch/HTV
[714]: http://spaceex.imag.fr/
[715]: http://trac.parades.rm.cnr.it/ariadne/
[716]: http://control.ee.ethz.ch/~mpt/2/about.php
[717]: http://sal.csl.sri.com/hybridsal/
[718]: https://github.com/SRI-CSL/HybridSal
[719]: http://www.csl.sri.com/users/tiwari/
[720]: http://www.csl.sri.com/users/tiwari/relational-abstraction/
[721]: https://www-verimag.imag.fr/~tdang/NLTOOLBOX/
[722]: https://www-verimag.imag.fr/~tdang/
[723]: http://systems.cs.colorado.edu/research/cyberphysical/taylormodels/
[724]: http://hsolver.sourceforge.net/
[725]: http://www2.cs.cas.cz/~ratschan/
[726]: http://symbolaris.com/info/amc.html
[727]: http://www.dmi.units.it/~casagran/pyHybridAnalysis/
[728]: https://www-verimag.imag.fr/~dreossi/publications.html
[729]: https://www.cds.caltech.edu/~ewolff/ltlopt.html
[730]: https://www.cds.caltech.edu/~ewolff
[731]: https://github.com/jadecastro/reasyns
[732]: https://jadecastro.github.io/
[733]: https://publish.illinois.edu/c2e2-tool/
[734]: http://verivital.com/hyst/
[735]: http://stanleybak.com/
[736]: https://www.sergiybogomolov.com/
[737]: http://www.taylortjohnson.com/
[738]: https://sourceforge.net/projects/verisimpl/
[739]: https://es-static.fbk.eu/tools/hycomp/
[740]: https://depend.cs.uni-sb.de/
[741]: https://depend.cs.uni-sb.de/index.php?446
[742]: http://www.mrmc-tool.org/trac/
[743]: https://depend.cs.uni-sb.de/tools/pass/
[744]: https://depend.cs.uni-sb.de/tools/infamy/
[745]: https://depend.cs.uni-sb.de/tools/param/
[746]: https://tla.msr-inria.inria.fr/tlaps
[747]: https://github.com/tlaplus/tlapm
[748]: https://research.microsoft.com/en-us/um/people/lamport/latex/latex.html
[749]: https://research.microsoft.com/en-us/um/people/lamport/pubs/proof.pdf
[750]: https://research.microsoft.com/en-us/um/people/lamport/latex/pfnum.html
[751]: https://sourceforge.net/projects/pf2html/
[752]: https://www.dbai.tuwien.ac.at/proj/pf2html/index.html
[753]: https://research.microsoft.com/en-us/um/people/lamport/proofs/hyperpf.html
[754]: https://people.csail.mit.edu/cpacheco/publications/verifying-tla-abstract.html
[755]: https://www.cl.cam.ac.uk/research/hvg/Isabelle/
[756]: https://github.com/isabelle-prover/mirror-isabelle
[757]: https://github.com/seL4/isabelle
[758]: https://homepages.loria.fr/SMerz/projects/isabelle-tla/
[759]: https://github.com/seL4/isabelle/tree/master/src/HOL/TLA
[760]: https://members.loria.fr/SMerz/index.html
[761]: https://www.isa-afp.org/
[762]: https://andriusvelykis.github.io/isabelle-eclipse/
[763]: https://github.com/andriusvelykis/isabelle-eclipse
[764]: https://github.com/rizaldialbert/vhdl-semantics
[765]: https://github.com/data61/PSL
[766]: http://www.galois.com/files/open_source/ismt/
[767]: https://bitbucket.org/isafol/isafol/wiki/Home
[768]: http://cl-informatik.uibk.ac.at/software/ceta/
[769]: http://cl2-informatik.uibk.ac.at/rewriting/mercurial.cgi/IsaFoR
[770]: http://cl-informatik.uibk.ac.at/software/ceta/
[771]: http://cl2-informatik.uibk.ac.at/rewriting/mercurial.cgi/IsaFoR
[772]: https://hol-theorem-prover.org/
[773]: https://github.com/HOL-Theorem-Prover/HOL
[774]: https://www.cl.cam.ac.uk/research/hvg/HOL/
[775]: http://holfoot.heap-of-problems.org/
[776]: https://github.com/HOL-Theorem-Prover/HOL/tree/develop/examples/separationLogic/src
[777]: https://www.cl.cam.ac.uk/~mjcg/HolBddLib/
[778]: https://github.com/HOL-Theorem-Prover/HOL/tree/develop/examples/HolBdd
[779]: https://www.cl.cam.ac.uk/~jrh13/hol-light/
[780]: https://github.com/jrh13/hol-light
[781]: http://www.proof-technologies.com/holzero/index.html
[782]: https://github.com/domasin/NHolZ/
[783]: http://trustworthytools.com/id17.html
[784]: https://github.com/HOL-Theorem-Prover/HOL/tree/HOL-Omega
[785]: https://coq.inria.fr/
[786]: https://github.com/coq/coq
[787]: https://github.com/whonore/Coqtail
[788]: https://github.com/the-lambda-church/coquille
[789]: https://jscoq.github.io/
[790]: https://github.com/jscoq/jscoq
[791]: https://github.com/EugeneLoy/coq_jupyter
[792]: https://mybinder.org/v2/gh/EugeneLoy/coq_jupyter_demo/master?filepath=demo.ipynb
[793]: https://github.com/coq-community/vscoq
[794]: https://github.com/HoTT/HoTT
[795]: https://github.com/UniMath/UniMath
[796]: https://github.com/Coq-Polyhedra/Coq-Polyhedra
[797]: http://www.cmap.polytechnique.fr/~allamigeon/
[798]: https://github.com/jpaykin/ControlHTT
[799]: https://github.com/amintimany/Categories
[800]: https://github.com/math-comp/fourcolor
[801]: https://github.com/math-comp/odd-order
[802]: https://github.com/affeldt-aist/infotheo
[803]: https://github.com/stepchowfun/proofs
[804]: https://github.com/GeoCoq/GeoCoq
[805]: https://en.wikipedia.org/wiki/Alfred_Tarski
[806]: https://en.wikipedia.org/wiki/Tarski%27s_axioms
[807]: https://github.com/philipjf/AWG-AVOCS-2016
[808]: https://ynot.cs.harvard.edu/
[809]: https://github.com/ynot-harvard/ynot
[810]: https://github.com/uwplse/verdi
[811]: https://github.com/wilcoxjay/coq-lit
[812]: https://compcert.org/
[813]: https://github.com/AbsInt/CompCert
[814]: https://github.com/smtcoq/smtcoq
[815]: https://pvs.csl.sri.com/
[816]: https://github.com/SRI-CSL/PVS
[817]: https://github.com/nasa/pvslib
[818]: https://shemesh.larc.nasa.gov/fm/
[819]: https://www-verimag.imag.fr/~graf/INVARIANT-CHECKER/
[820]: https://www-verimag.imag.fr/~graf/
[821]: https://github.com/SRI-CSL/PVSPackrat
[822]: https://github.com/leanprover/
[823]: https://leodemoura.github.io/
[824]: https://github.com/leanprover-community/mathlib/
[825]: https://github.com/pygae/lean-ga
[826]: https://github.com/cmu-phil/Spectral
[827]: http://zenon-prover.org/
[828]: https://github.com/zenon-prover/zenon
[829]: https://opam.ocaml.org/packages/zenon/
[830]: https://www.rocq.inria.fr/deducteam/ZenonArith/index.html
[831]: https://deducteam.gitlabpages.inria.fr/zenonmodulo/
[832]: https://github.com/Deducteam/zenon_modulo
[833]: http://cedric.cnam.fr/~delahaye/super-zenon/
[834]: https://github.com/aimacode/aima-python/blob/master/logic.py
[835]: https://github.com/nunchaku-inria/nunchaku
[836]: https://github.com/seL4/isabelle/blob/e3f58c3db416e00ee7e4280c8c50522b222d7c5e/src/HOL/Nitpick.thy
[837]: https://github.com/hamoonmousavi/Walnut
[838]: https://raffalli.eu/phox/
[839]: https://github.com/craff/phox
[840]: https://deducteam.github.io/
[841]: https://github.com/Deducteam/Dedukti
[842]: https://github.com/Deducteam/Libraries
[843]: https://github.com/Deducteam/lambdapi
[844]: https://en.wikipedia.org/wiki/Automath
[845]: https://en.wikipedia.org/wiki/Nicolaas_Govert_de_Bruijn
[846]: https://www.cs.ru.nl/~freek/aut/
[847]: https://www.cs.ru.nl/~freek/index.html
[848]: https://gtps.math.cmu.edu/tps.html
[849]: https://www.cse.chalmers.se/research/group/logic/alf/guide.html
[850]: https://www.cse.chalmers.se/~hallgren/Alfa/
[851]: https://wiki.portal.chalmers.se/agda/pmwiki.php
[852]: https://github.com/agda/agda/
[853]: https://github.com/HoTT/HoTT-Agda
[854]: https://cedille.github.io/
[855]: https://www.cs.utexas.edu/users/moore/acl2/
[856]: https://github.com/acl2/acl2
[857]: https://en.wikipedia.org/wiki/Nqthm
[858]: https://www.cs.utexas.edu/users/moore/acl2/manuals/current/manual/index-seo.php/ACL2____MILAWA?path=3524/3584/475
[859]: https://github.com/acl2/acl2/tree/master/books/projects/milawa
[860]: https://www.cl.cam.ac.uk/~mom22/jitawa/
[861]: https://www.cs.unm.edu/~mccune/papers/ivy/
[862]: https://github.com/acl2/acl2/tree/master/books/workshops/1999/ivy
[863]: https://www.cs.unm.edu/~mccune/
[864]: https://www.dfki.de/vse/systems/inka/inka5.html
[865]: https://www.dfki.de/vse/systems/inka/
[866]: https://www.cs.unm.edu/~mccune/otter/
[867]: https://www.cs.unm.edu/~mccune/prover9/
[868]: https://www.cs.unm.edu/~mccune/eqp/
[869]: http://twelf.org/wiki/Main_Page
[870]: https://maude.cs.illinois.edu/
[871]: https://maude.cs.illinois.edu/w/index.php/Maude_Tools
[872]: https://maude.cs.uiuc.edu/tools/itp/
[873]: http://sysma.lab.imtlucca.it/tools/c-reducer/
[874]: http://sysma.lab.imtlucca.it/tools/ensembles/
[875]: https://fsl.cs.illinois.edu/index.php/Circ
[876]: https://fsl.cs.illinois.edu/index.php/Main_Page
[877]: https://maude.cs.uiuc.edu/tools/tlr/
[878]: https://github.com/SRI-CSL/imaude
[879]: https://vprover.github.io/
[880]: https://github.com/vprover/vampire
[881]: http://www.voronkov.com/
[882]: https://github.com/gleiss/saturation-visualization
[883]: http://www.vprover.org/
[884]: http://www.vprover.org/authors.cgi
[885]: http://www.sds.lcs.mit.edu/spd/larch/LP/overview.html
[886]: http://www.sds.lcs.mit.edu/spd/larch/LSL/index.html
[887]: https://www.eecs.ucf.edu/~leavens/larchc++.html
[888]: https://www.eecs.ucf.edu/~leavens/larchSmalltalk.html
[889]: https://sal.csl.sri.com/
[890]: https://staffwww.dcs.shef.ac.uk/people/A.Simons/z2sal/checking.html
[891]: http://gappa.gforge.inria.fr/
[892]: http://mizar.org/
[893]: http://www.nuprl.org/
[894]: https://github.com/TOTBWF/muprl
[895]: https://www.cs.cornell.edu/jyh/metaprl/default.html
[896]: http://matita.cs.unibo.it/index.shtml
[897]: http://matita.cs.unibo.it/gitweb/?p=helm.git;a=summary
[898]: http://deepthought.ttu.ee/it/gandalf/
[899]: https://www4.informatik.tu-muenchen.de/~schulz/WORK/e-setheo.html
[900]: https://www.spass-prover.org/
[901]: https://github.com/theoremprover-museum/OMEGA
[902]: https://code.google.com/p/omega/
[903]: https://sneeuwballen.github.io/zipperposition/
[904]: https://github.com/sneeuwballen/zipperposition/
[905]: https://en.wikipedia.org/wiki/Automated_theorem_proving
[906]: https://cs.stackexchange.com/questions/868/types-of-automated-theorem-provers
[907]: http://symbolaris.com/logic/jImp.html
[908]: http://www.usna.edu/CS/~qepcad/B/QEPCAD.html
[909]: https://github.com/PetterS/qepcad
[910]: https://www.cl.cam.ac.uk/~lp15/papers/Arith/qepcad-for-mac.html
[911]: http://www4.informatik.tu-muenchen.de/~schulz/E/E.html
[912]: http://www4.in.tum.de/~schulz/Stephan_Schulz/Stephan_Schulz.html
[913]: http://czt.sourceforge.net/
[914]: https://www.lemma-one.com/ProofPower/index/
[915]: https://www.lemma-one.com/clawz_docs/clawz_docs.html
[916]: https://www.waldmeister.org/index.htm
[917]: https://www.domagoj-babic.com/index.php/ResearchProjects/Spear
[918]: http://us.metamath.org/
[919]: https://github.com/windsteiger/Theorema
[920]: https://www.risc.jku.at/research/theorema/software/
[921]: http://www.philipp.ruemmer.org/princess.shtml
[922]: http://www.philipp.ruemmer.org/seneschal.shtml
[923]: https://github.com/boyers/theorem_prover
[924]: https://www.stephanboyer.com/
[925]: https://github.com/arademaker/hemera
[926]: https://github.com/jon-jacky/FLiP
[927]: https://staff.washington.edu/jon/
[928]: http://www.ats-lang.org/
[929]: https://www.fstar-lang.org/
[930]: https://github.com/FStarLang/FStar
[931]: http://www.proofcheck.org/
[932]: https://pypi.python.org/pypi/proofcheck/1.0
[933]: http://cs.widener.edu/~neveln/
[934]: http://www.proofpeer.net/
[935]: https://github.com/proofpeer
[936]: http://www.proofpeer.net/contact.html
[937]: https://www.cs.cmu.edu/afs/cs.cmu.edu/project/nitpick/www/home.html
[938]: https://abella-prover.org/
[939]: https://github.com/abella-prover/abella
[940]: https://www-users.cs.umn.edu/~gopalan/
[941]: https://www.lix.polytechnique.fr/
[942]: https://www.inria.fr/en/centre/saclay
[943]: https://github.com/gapt
[944]: https://homotopy.io/
[945]: https://github.com/homotopy-io/homotopy-webclient
[946]: https://www.andromeda-prover.org/
[947]: https://github.com/Andromedans/andromeda
[948]: https://www.cyclist-prover.org/
[949]: https://github.com/ngorogiannis/cyclist
[950]: https://latte-central.github.io/LaTTe/
[951]: https://github.com/latte-central/LaTTe
[952]: https://github.com/andrejbauer/alg
[953]: https://github.com/andrejbauer/rz
[954]: http://www.dcs.ed.ac.uk/home/lego/
[955]: https://github.com/theoremprover-museum/LEGO
[956]: https://github.com/theoremprover-museum/imps
[957]: https://theoremprover-museum.github.io/
[958]: https://github.com/deosjr/Scriptie
[959]: https://github.com/timjb/set-theory-prover
[960]: https://github.com/RBornat/jape
[961]: https://ii.uni.wroc.pl/~nivelle/software/geo/index.html
[962]: https://www.scss.tcd.ie/Andrew.Butterfield/Saoithin/
[963]: https://bitbucket.org/andrewbutterfield/utp-calculator/src/master/
[964]: https://gitee.com/bhzhan/holpy
[965]: https://cspsat.gitlab.io/llprover/
[966]: https://cspsat.gitlab.io/seqprover/
[967]: https://github.com/quickbeam123/ls4
[968]: https://forsyte.at/people/suda/
[969]: https://mmjb.github.io/T2/
[970]: http://research.microsoft.com/en-us/people/mabrocks/
[971]: https://heidyk.com/
[972]: https://cgi.csc.liv.ac.uk/~konev/software/trp++/
[973]: https://cgi.csc.liv.ac.uk/~konev/software/trp++/translator/
[974]: https://cgi.csc.liv.ac.uk/~konev/
[975]: https://cgi.csc.liv.ac.uk/~ullrich/TRP/
[976]: https://github.com/esb-lwb/lwb
[977]: https://github.com/esb-lwb/lwb-gui
[978]: http://www.sc.ehu.es/jiwnagom/paginaMarisa_archivos/TRS.html
[979]: https://trs-tool.appspot.com/
[980]: https://www.cs.nyu.edu/acsys/tlpvs/tlpvs.html
[981]: https://www-step.stanford.edu/
[982]: https://github.com/nicolaprezza/CTLSAT
[983]: https://github.com/tcsprojects/mlsolver
[984]: https://github.com/Corralx/leviathan
[985]: https://users.cecs.anu.edu.au/~rpg/PLTLProvers/
[986]: https://www.irit.fr/Lotrec/
[987]: http://www.leancop.de/mleantap/
[988]: http://www.cs.man.ac.uk/~schmidt/tools/
[989]: https://www.schuppan.de/viktor/atva11/
[990]: http://www.tptp.org/
[991]: http://www.iltp.de/qmltp/systems.html
[992]: https://rkirsling.github.io/modallogic/
[993]: https://github.com/rkirsling/modallogic
[994]: https://www.cs.toronto.edu/~fbacchus/qbf.html#PreQuel
[995]: http://sat.inesc-id.pt/~mikolas/sw/areqs/
[996]: http://sat.inesc-id.pt/~mikolas/
[997]: http://fmv.jku.at/quantor/
[998]: https://lonsing.github.io/depqbf/
[999]: http://www.kr.tuwien.ac.at/staff/lonsing/
[1000]: https://github.com/lonsing/nenofex
[1001]: http://www.kr.tuwien.ac.at/staff/lonsing/
[1002]: https://www.react.uni-saarland.de/tools/caqe/
[1003]: http://vlsicad.eecs.umich.edu/BK/Slots/cache/www.qbflib.org/
[1004]: https://www.satlive.org/
[1005]: http://minisat.se/
[1006]: https://github.com/niklasso/minisat
[1007]: http://minisat.se/Authors.html
[1008]: https://github.com/enthought/sat-solver
[1009]: https://github.com/mame/ruby-minisat
[1010]: https://sites.google.com/site/qmaxsat/
[1011]: http://www.st.ewi.tudelft.nl/sat/minimarch.php
[1012]: https://www.labri.fr/perso/lsimon/glucose/
[1013]: https://github.com/niklasso/minisatp
[1014]: http://fmv.jku.at/lingeling/
[1015]: http://fmv.jku.at/picosat/
[1016]: https://pypi.python.org/pypi/pycosat
[1017]: https://github.com/wkschwartz/pigosat
[1018]: https://github.com/arminbiere/cadical
[1019]: https://www.sat4j.org/
[1020]: http://www.satlib.org/ubcsat/
[1021]: https://github.com/vegard/clsat
[1022]: https://www.cril.univ-artois.fr/~hoessen/penelope.html
[1023]: https://github.com/stefanbucur/CombiSAT
[1024]: https://people.epfl.ch/stefan.bucur
[1025]: http://sat.inesc-id.pt/pwbo/
[1026]: https://www.princeton.edu/~chaff/zchaff.html
[1027]: https://www.princeton.edu/~chaff/
[1028]: https://www.cprover.org/satabs/
[1029]: http://fmv.jku.at/nanosat/
[1030]: https://www.cprover.org/boppo/
[1031]: https://www.sosy-lab.org/~dbeyer/CSIsat/
[1032]: http://logos.ucd.ie/wiki/doku.php?id=msuncore
[1033]: https://projects.informatik.uni-freiburg.de/projects/antom
[1034]: https://scip.zib.de/
[1035]: https://github.com/msakai/scip-maxsat
[1036]: https://www.gnu.org/software/glpk/
[1037]: https://github.com/msakai/glpk-maxsat
[1038]: http://fmv.jku.at/precosat/
[1039]: http://reasoning.cs.ucla.edu/rsat/home.html
[1040]: https://dudka.cz/fss
[1041]: http://sat.inesc-id.pt/~mikolas/sw/mifumax/
[1042]: http://shaoweicai.net/research.html
[1043]: https://github.com/msakai/toysolverw
[1044]: http://sat.inesc-id.pt/wbo/
[1045]: http://sat.inesc-id.pt/open-wbo/
[1046]: https://mulcyber.toulouse.inra.fr/projects/toulbar2/
[1047]: http://www.isa.ewi.tudelft.nl/sat/march.htm
[1048]: http://www.st.ewi.tudelft.nl/sat/march_eq.htm
[1049]: http://www.st.ewi.tudelft.nl/sat/march_dl.php
[1050]: https://www.msoos.org/cryptominisat2/
[1051]: https://github.com/msoos/cryptominisat
[1052]: https://www.mqasem.net/sat/winsat/
[1053]: https://www.domagoj-babic.com/index.php/ResearchProjects/HyperSAT
[1054]: https://projects.avacs.org/projects/isat/
[1055]: https://www.uni-oldenburg.de/hysat/
[1056]: http://kix.istc.kobe-u.ac.jp/~soh/scarab/
[1057]: http://fmv.jku.at/limboole/
[1058]: http://sat.inesc-id.pt/~mikolas/sw/mifumax/
[1059]: https://github.com/dtompkins/ubcsat
[1060]: http://sat.inesc-id.pt/~mikolas/sw/qcnf2smt/
[1061]: https://toughsat.appspot.com/
[1062]: http://sat.inesc-id.pt/~mikolas/sw/minibones/
[1063]: https://www.cs.uc.edu/~weaversa/SBSAT.html
[1064]: https://github.com/stephenroller/satsolver
[1065]: http://potassco.sourceforge.net/
[1066]: http://reasoning.cs.ucla.edu/minic2d/
[1067]: https://miat.inrae.fr/toulbar2/
[1068]: https://github.com/toulbar2/toulbar2
[1069]: https://cvc5.github.io/
[1070]: https://github.com/cvc5/cvc5
[1071]: https://cvc4.github.io/
[1072]: https://github.com/CVC4/CVC4-archived
[1073]: https://cvc4.github.io/2021/04/02/cvc5-announcement.html
[1074]: https://github.com/CVC4/LFSC
[1075]: https://lib.rs/crates/rlfsc
[1076]: https://www.cs.nyu.edu/acsys/cvc3/
[1077]: https://github.com/msakai/cvc3
[1078]: https://cvc4.github.io/history.html
[1079]: https://cs.nyu.edu/acsys/cvcl/doc/index.html
[1080]: https://cvc4.github.io/history.html
[1081]: https://doi.org/10.1007/3-540-45657-0_40
[1082]: https://cvc4.github.io/history.html
[1083]: https://doi.org/10.1007/BFb0031808
[1084]: https://cvc4.github.io/history.html
[1085]: https://cs.nyu.edu/acsys/cvc3/cvchol
[1086]: https://github.com/Z3Prover/z3
[1087]: https://github.com/kayceesrk/Z3_Haskell
[1088]: https://github.com/tizmd/hz3
[1089]: https://lara.epfl.ch/w/scalaz3
[1090]: https://github.com/epfl-lara/ScalaZ3/
[1091]: https://github.com/psuter/bapa-z3
[1092]: https://github.com/z3str/Z3-str
[1093]: https://github.com/dungpa/Z3Fs
[1094]: https://github.com/tudo-aqua/z3-turnkey
[1095]: https://github.com/xennygrimmato/z3-floating-point-proofs
[1096]: https://rise4fun.com/iZ3
[1097]: https://z3.codeplex.com/license
[1098]: https://yices.csl.sri.com/
[1099]: https://github.com/SRI-CSL/yices2
[1100]: https://github.com/SRI-CSL/yices2_python_bindings
[1101]: http://fmv.jku.at/boolector/
[1102]: https://mathsat.fbk.eu/download.html
[1103]: https://www.cprover.org/SMT-LIB-LSM/
[1104]: https://alt-ergo.ocamlpro.com/
[1105]: https://github.com/OCamlPro/alt-ergo
[1106]: https://gbury.github.io/mSAT/
[1107]: https://github.com/Gbury/mSAT
[1108]: https://www.verit-solver.org/
[1109]: https://doi.org/10.5281/zenodo.582482
[1110]: http://harvey.loria.fr/
[1111]: http://dreal.github.io/
[1112]: https://github.com/dreal/dreal4
[1113]: https://pypi.org/project/dreal/
[1114]: https://smtrat.github.io/
[1115]: https://github.com/ths-rwth/smtrat
[1116]: https://vprover.github.io/
[1117]: https://github.com/Gbury/archsat
[1118]: https://bitbucket.org/peba123/beagle/src/master/
[1119]: https://moskal.me/smt/en.html
[1120]: https://kindsoftware.com/products/opensource/Simplify/
[1121]: https://github.com/kiniry/Simplify
[1122]: https://uclid.eecs.berkeley.edu/jha/beaver-dist/beaver.html
[1123]: https://github.com/LeventErkok/sbv
[1124]: https://leventerkok.github.io/
[1125]: https://smtlib.cs.uiowa.edu/solvers.shtml
[1126]: https://www.decision-procedures.org/software/
[1127]: https://www.decision-procedures.org/
[1128]: https://github.com/SRI-CSL/llvm2smt
[1129]: https://github.com/sosy-lab/java-smt
[1130]: http://fmv.jku.at/bv2epr/
[1131]: https://github.com/pysmt/pysmt
[1132]: https://github.com/aniemetz/ddSMT
[1133]: https://github.com/rbonichon/smtpp
[1134]: https://bitbucket.org/peba123/smttotptp/src/master/
[1135]: https://github.com/python-constraint/python-constraint
[1136]: https://pypi.org/project/python-constraint/
[1137]: https://overconstrained.io/
[1138]: https://github.com/Overconstrained/Overconstrained
[1139]: https://constraints.cs.washington.edu/cassowary/
[1140]: https://www.cs.washington.edu/people/faculty/borning/
[1141]: https://github.com/Nocte-/rhea
[1142]: https://kiwisolver.readthedocs.io/en/latest/
[1143]: https://github.com/nucleic/kiwi
[1144]: https://github.com/brodderickrodriguez/cassowary
[1145]: https://pypi.org/project/cassowary
[1146]: https://github.com/enthought/casuarius
[1147]: https://ableton.github.io/aqt-cassowary/
[1148]: https://github.com/Ableton/aqt-cassowary
[1149]: https://babelsberg.github.io/babelsberg-js/
[1150]: https://github.com/babelsberg/babelsberg-js
[1151]: https://github.com/Pybelsberg/pybelsberg
[1152]: http://rsolver.sourceforge.net/
[1153]: https://www.cs.cas.cz/~ratschan/
[1154]: https://people.csail.mit.edu/emina/pubs/rosette.onward13.pdf
[1155]: https://racket-lang.org/
[1156]: https://people.csail.mit.edu/emina/
[1157]: http://minikanren.org/
[1158]: https://github.com/logpy/logpy
[1159]: https://lara.epfl.ch/w/leon
[1160]: https://github.com/epfl-lara/leon
[1161]: https://lara.epfl.ch/w/comfusy
[1162]: https://github.com/epfl-lara/comfusy
[1163]: https://lara.epfl.ch/w/kaplan
[1164]: https://lara.epfl.ch/w/regsy
[1165]: https://ti.arc.nasa.gov/opensource/projects/autobayes/
[1166]: https://projects.csail.mit.edu/jeeves/
[1167]: https://github.com/jeanqasaur/jeeves
[1168]: https://sites.google.com/site/galkatzzz/mcgp-tool
[1169]: https://fsl.cs.illinois.edu/index.php/MOP
[1170]: https://fsl.cs.illinois.edu/index.php/Main_Page
[1171]: https://fsl.cs.illinois.edu/index.php/JavaMOP4
[1172]: https://github.com/runtimeverification/javamop
[1173]: https://fsl.cs.illinois.edu/index.php/ROSMOP
[1174]: https://github.com/Formal-Systems-Laboratory/rosmop
[1175]: https://www.cs.rice.edu/CS/Verification/Software/software.html
[1176]: http://ltl3tools.sourceforge.net/
[1177]: https://rgrig.github.io/topl/
[1178]: https://github.com/decyphir/breach
[1179]: https://www.decyphir.com/
[1180]: https://fmt.ewi.utwente.nl/redmine/projects/jtorx/wiki/
[1181]: https://fmt.cs.utwente.nl/tools/torx/introduction.html
[1182]: https://sourceforge.net/projects/monpoly/
[1183]: https://github.com/doganulus/montre
[1184]: https://agraef.github.io/pure-lang/
[1185]: http://doganulus.com/
[1186]: https://github.com/Formal-Systems-Laboratory/ROSRV
[1187]: https://github.com/Formal-Systems-Laboratory/ROSRV
[1188]: http://www.matching-logic.org/index.php/Matching_Logic
[1189]: http://fsl.cs.illinois.edu/index.php/Main_Page
[1190]: https://wiki.mpi-sws.org/star/ToolSupport
[1191]: https://www.mpi-sws.org/~viktor/
[1192]: https://www.cs.rice.edu/CS/Verification/Software/software.html
[1193]: https://sourceforge.net/projects/mtsa/
[1194]: https://anna.fi.muni.cz/~xbenes3/MoTraS/
[1195]: https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.23.9941
[1196]: http://compass.informatik.rwth-aachen.de/
[1197]: http://cm.bell-labs.com/who/god/verisoft/
[1198]: https://projects.info.unamur.be/fts/
[1199]: http://fmgroup.polito.it/index.php/download/viewcategory/3-pdtrav-package
[1200]: https://sel4.systems/
[1201]: https://github.com/seL4/seL4/blob/master/LICENSE.md
[1202]: https://github.com/seL4/seL4
[1203]: https://github.com/seL4/l4v
[1204]: https://ts.data61.csiro.au/projects/TS/cogent.pml
[1205]: https://x-machines.net/
[1206]: https://en.wikipedia.org/wiki/Samuel_Eilenberg
[1207]: https://github.com/malteschmitz/ltl
[1208]: https://github.com/benob/fsmtex
[1209]: https://pageperso.lif.univ-mrs.fr/~benoit.favre
[1210]: https://en.wikipedia.org/wiki/List_of_model_checking_tools
[1211]: https://anna.fi.muni.cz/yahoda/
[1212]: https://formalmethods.wikia.com/wiki/VL
[1213]: https://web.archive.org/web/20070706205223/http://vl.fmnet.info/
[1214]: http://wiki.grasp.upenn.edu/hst/index.php?n=Main.HomePage
[1215]: https://www-verimag.imag.fr/Tools,12.html?lang=
[1216]: http://www.chihhongcheng.info/tools
[1217]: https://www.nowpublishers.com/articles/foundations-and-trends-in-electronic-design-automation/EDA-001
[1218]: http://filer.case.edu/org/ncs/
[1219]: https://rise4fun.com/
[1220]: https://www.cs.cmu.edu/~modelcheck/code.htm
[1221]: http://fm-wiki.csl.sri.com/index.php/Main_Page
[1222]: https://fm.csl.sri.com/
[1223]: http://www.inrialpes.fr/synalp/
[1224]: http://www-formal.stanford.edu/clt/ARS/
[1225]: http://blackforest.stanford.edu/clt/
[1226]: http://www.avacs.org/tools/
[1227]: http://www.quasimodo.aau.dk/tools.html
[1228]: https://smtlib.cs.uiowa.edu/utilities.html
[1229]: http://maxsat.ia.udl.cat:81/13/solvers/index.html
[1230]: http://www.satcompetition.org/
[1231]: http://fmv.jku.at/software/index.html
[1232]: https://www.cs.ru.nl/~freek/digimath/bycategory.html#tacticprover
[1233]: https://www.cs.ru.nl/~freek/100/
[1234]: https://en.wikipedia.org/wiki/Proof_assistant
[1235]: http://www.cs.utah.edu/formal_verification/hevea-index.html#htoc2
[1236]: https://sv-comp.sosy-lab.org/2014/participants.php
[1237]: http://math.andrej.com/2020/04/28/every-theorem-prover/
[1238]: https://ti.arc.nasa.gov/m/profile/kyrozier/benchmarking_scripts/benchmarking_scripts.html
[1239]: https://cadp.inria.fr/resources/vlts/
[1240]: https://anna.fi.muni.cz/models/
[1241]: https://anna.fi.muni.cz/
[1242]: https://www.ueda.info.waseda.ac.jp/~kobayashi/Promela/benchmark/index.html
[1243]: http://buchi.im.ntu.edu.tw/index.php/home/index/
[1244]: http://www.albertolluch.com/research/promelamodels
[1245]: http://patterns.projects.cis.ksu.edu/
[1246]: http://hsolver.sourceforge.net/benchmarks/
[1247]: http://www.cs.miami.edu/~tptp/
[1248]: https://sv-comp.sosy-lab.org/2013/benchmarks.php
[1249]: https://www.automatedreasoning.net/
[1250]: https://en.wikipedia.org/wiki/Larry_Wos
[1251]: http://www.smtlib.org/
[1252]: http://users.ecs.soton.ac.uk/mal/systems/dppd.html
[1253]: http://www.iltp.de/qmltp/
[1254]: http://www.cs.uni-potsdam.de/ti/iltp/
[1255]: https://asparagus.cs.uni-potsdam.de/
[1256]: https://www.lri.fr/~marche/tpdb/
[1257]: https://www.csplib.org/
[1258]: http://people.brunel.ac.uk/~mastjjb/jeb/info.html
[1259]: http://www.satlib.org/
[1260]: https://www.swmath.org/software/1588
[1261]: http://vsl.cis.udel.edu/fevs/index.html
