---
downloaded:       2021-12-18
page-url:         https://en.wikipedia.org/wiki/Computability_logic
page-title:       Computability logic - Wikipedia
article-title:    Computability logic - Wikipedia
---
# Computability logic - Wikipedia

Computability logic (CoL) is a research program and mathematical framework for redeveloping logic as a systematic formal theory of computability, as opposed to classical logic which is a formal theory of truth. It was introduced and so named by Giorgi Japaridze in 2003.[1]
__Computability logic__ (__CoL__) is a research program and mathematical framework for redeveloping logic as a systematic formal theory of [computability][1], as opposed to [classical logic][2] which is a formal theory of truth. It was introduced and so named by [Giorgi Japaridze][3] in 2003.[\[1\]][4]

In classical logic, formulas represent true/false statements. In CoL, formulas represent [computational problems][5]. In classical logic, the validity of a formula depends only on its form, not on its meaning. In CoL, validity means being always computable. More generally, classical logic tells us when the truth of a given statement always follows from the truth of a given set of other statements. Similarly, CoL tells us when the computability of a given problem *A* always follows from the computability of other given problems *B1,...,Bn*. Moreover, it provides a uniform way to actually construct a solution ([algorithm][6]) for such an *A* from any known solutions of *B1,...,Bn*.

CoL formulates computational problems in their most general – [interactive][7] sense. CoL defines a *computational problem* as a game played by a machine against its environment. Such problem is *computable* if there is a machine that wins the game against every possible behavior of the environment. Such game-playing machine generalizes the [Church-Turing thesis][8] to the interactive level. The classical concept of truth turns out to be a special, zero-interactivity-degree case of computability. This makes classical logic a special fragment of CoL. Thus CoL is a [conservative extension][9] of classical logic. Computability logic is more expressive, constructive and computationally meaningful than classical logic. Besides classical logic, [independence-friendly (IF) logic][10] and certain proper extensions of [linear logic][11] and [intuitionistic logic][12] also turn out to be natural fragments of CoL.[\[2\]][13][\[3\]][14] Hence meaningful concepts of "intuitionistic truth", "linear-logic truth" and "IF-logic truth" can be derived from the semantics of CoL.

CoL systematically answers the fundamental question of what can be computed and how; thus CoL has many applications, such as constructive applied theories, knowledge base systems, systems for planning and action. Out of these, only applications in constructive applied theories have been extensively explored so far: a series of CoL-based number theories, termed "clarithmetics", have been constructed[\[4\]][15][\[5\]][16] as computationally and complexity-theoretically meaningful alternatives to the classical-logic-based [Peano arithmetic][17] and its variations such as systems of [bounded arithmetic][18].

Traditional proof systems such as [natural deduction][19] and [sequent calculus][20] are insufficient for axiomatizing nontrivial fragments of CoL. This has necessitated developing alternative, more general and flexible methods of proof, such as [cirquent calculus][21].[\[6\]][22][\[7\]][23]

## Language\[[edit][24]\]

[![](https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Operators_of_computability_logic.png/250px-Operators_of_computability_logic.png)][25]

Operators of computability logic: names, symbols and readings

The full language of CoL extends the language of classical first-order logic. Its logical vocabulary has several sorts of conjunctions, disjunctions, quantifiers, implications, negations and so called recurrence operators. This collection includes all connectives and quantifiers of classical logic. The language also has two sorts of nonlogical atoms: *elementary* and *general*. Elementary atoms, which are nothing but the atoms of classical logic, represent *elementary problems*, i.e., games with no moves that are automatically won by the machine when true and lost when false. General atoms, on the other hand, can be interpreted as any games, elementary or non-elementary. Both semantically and syntactically, classical logic is nothing but the fragment of CoL obtained by forbidding general atoms in its language, and forbidding all operators other than ¬, ∧, ∨, →, ∀, ∃.

Japaridze has repeatedly pointed out that the language of CoL is open-ended, and may undergo further extensions. Due to the expressiveness of this language, advances in CoL, such as constructing axiomatizations or building CoL-based applied theories, have usually been limited to one or another proper fragment of the language.

## Semantics\[[edit][26]\]

The games underlying the semantics of CoL are called *static games*. Such games have no turn order; a player can always move while the other players are "thinking". However, static games never punishes a player for "thinking" too long (delaying its own moves), so such games never become contests of speed. All elementary games are automatically static, and so are the games allowed to be interpretations of general atoms.

There are two players in static games: the *machine* and the *environment*. The machine can only follow algorithmic strategies, while there are no restrictions on the behavior of the environment. Each run (play) is won by one of these players and lost by the other.

The logical operators of CoL are understood as operations on games. Here we informally survey some of those operations. For simplicity we assume that the domain of discourse is always the set of all natural numbers: {0,1,2,...}.

The operation ¬ of *negation* ("not") switches the roles of the two players, turning moves and wins by the machine into those by the environment, and vice versa. For instance, if *Chess* is the game of chess (but with ties ruled out) from the white player's perspective, then ¬*Chess* is the same game from the black player's perspective.

The *parallel conjunction* ∧ ("pand") and *parallel disjunction* ∨ ("por") combine games in a parallel fashion. A run of *A*∧*B* or *A*∨*B* is a simultaneous play in the two conjuncts. The machine wins *A*∧*B* if it wins both of them. The machine wins *A*∨*B* if it wins at least one of them. For example, *Chess*∨¬*Chess* is a game on two boards, one played white and one black, and where the task of the machine is to win on at least one board. Such a game can be easily won regardless who the adversary is, by copying his moves from one board to the other.

The *parallel implication* operator → ("pimplication") is defined by *A*→*B* = ¬*A*∨*B*. The intuitive meaning of this operation is *reducing* *B* to *A*, i.e., solving *A* as long as the adversary solves *B*.

The *parallel quantifiers* ∧ ("pall") and ∨ ("pexists") can be defined by ∧*xA*(*x*) = *A*(0)∧*A*(1)∧*A*(2)∧... and ∨*xA*(*x*) = *A*(0)∨*A*(1)∨*A*(2)∨.... These are thus simultaneous plays of *A*(0),*A*(1),*A*(2),..., each on a separate board. The machine wins ∧*xA*(*x*) if it wins all of these games, and ∨*xA*(*x*) if it wins some.

The *blind quantifiers* ∀ ("blall") and ∃ ("blexists"), on the other hand, generate single-board games. A run of ∀*xA*(*x*) or ∃*xA*(*x*) is a single run of *A*. The machine wins ∀*xA*(*x*) (resp. ∃*xA*(*x*)) if such a run is a won run of *A*(*x*) for all (resp. at least one) possible values of *x*, and wins ∃*xA*(*x*) if this is true for at least one.

All of the operators characterized so far behave exactly like their classical counterparts when they are applied to elementary (moveless) games, and validate the same principles. This is why CoL uses the same symbols for those operators as classical logic does. When such operators are applied to non-elementary games, however, their behavior is no longer classical. So, for instance, if *p* is an elementary atom and *P* a general atom, *p*→*p*∧*p* is valid while *P*→*P*∧*P* is not. The principle of the excluded middle *P*∨¬*P*, however, remains valid. The same principle is invalid with all three other sorts (choice, sequential and toggling) of disjunction.

The *choice disjunction* ⊔ ("chor") of games *A* and *B*, written *A*⊔*B*, is a game where, in order to win, the machine has to choose one of the two disjuncts and then win in the chosen component. The *sequential disjunction* ("sor") *A*ᐁ*B* starts as *A*; it also ends as *A* unless the machine makes a "switch" move, in which case *A* is abandoned and the game restarts and continues as *B*. In the *toggling disjunction* ("tor") *A*⩛*B*, the machine may switch between *A* and *B* any finite number of times. Each disjunction operator has its dual conjunction, obtained by interchanging the roles of the two players. The corresponding quantifiers can further be defined as infinite conjunctions or disjunctions in the same way as in the case of the parallel quantifiers. Each sort disjunction also induces a corresponding implication operation the same way as this was the case with the parallel implication →. For instance, the *choice implication* ("chimplication") *A*⊐*B* is defined as ¬*A*⊔*B*.

The *parallel recurrence* ("precurrence") of *A* can be defined as the infinite parallel conjunction *A*∧A∧A∧... The sequential ("srecurrence") and toggling ("trecurrence") sorts of recurrences can be defined similarly.

The *corecurrence* operators can be defined as infinite disjunctions. *Branching recurrence* ("brecurrence") ⫰, which is the strongest sort of recurrence, does not have a corresponding conjunction. ⫰*A* is a game that starts and proceeds as *A*. At any time, however, the environment is allowed to make a "replicative" move, which creates two copies of the then-current position of *A*, thus splitting the play into two parallel threads with a common past but possibly different future developments. In the same fashion, the environment can further replicate any of positions of any thread, thus creating more and more threads of *A*. Those threads are played in parallel, and the machine needs to win *A* in all threads to be the winner in ⫰*A*. *Branching corecurrence* ("cobrecurrence") ⫯ is defined symmetrically by interchanging "machine" and "environment".

Each sort of recurrence further induces a corresponding weak version of implication and weak version of negation. The former is said to be a *rimplication*, and the latter a *refutation*. The *branching rimplication* ("brimplication") *A*⟜*B* is nothing but ⫰*A*→*B*, and the *branching refutation* ("brefutation") of *A* is *A*⟜⊥, where ⊥ is the always-lost elementary game. Similarly for all other sorts of rimplication and refutation.

## As a problem specification tool\[[edit][27]\]

The language of CoL offers a systematic way to specify an infinite variety of computational problems, with or without names established in the literature. Below are some examples.

Let *f* be a unary function. The problem of computing *f* will be written as ⊓x⊔y(*y*\=*f*(*x*)). According to the semantics of CoL, this is a game where the first move ("input") is by the environment, which should choose a value *m* for *x*. Intuitively, this amounts to asking the machine to tell the value of *f*(*m*). The game continues as ⊔y(*y*\=*f*(*m*)). Now the machine is expected to make a move ("output"), which should be choosing a value *n* for *y*. This amounts to saying that *n* is the value of *f*(m). The game is now brought down to the elementary *n*\=*f*(*m*), which is won by the machine if and only if *n* is indeed the value of *f*(*m*).

Let *p* be a unary predicate. Then ⊓*x*(*p*(*x*)⊔¬*p*(*x*)) expresses the problem of [deciding][28] *p*, ⊓*x*(*p*(*x*)&ᐁ¬*p*(*x*)) expresses the problem of [semideciding][29] *p*, and ⊓*x*(*p*(*x*)⩛¬*p*(*x*)) the problem of [recursively approximating][30] *p*.

Let *p* and *q* be two unary predicates. Then ⊓*x*(*p*(*x*)⊔¬*p*(*x*))⟜⊓*x*(*q*(*x*)⊔¬*q*(*x*)) expresses the problem of [Turing-reducing][31] *q* to *p* (in the sense that *q* is Turing reducible to *p* if and only if the interactive problem ⊓*x*(*p*(*x*)⊔¬*p*(*x*))⟜⊓*x*(*q*(*x*)⊔¬*q*(*x*)) is computable). ⊓*x*(*p*(*x*)⊔¬*p*(*x*))→⊓*x*(*q*(*x*)⊔¬*q*(*x*)) does the same but for the stronger version of Turing reduction where the oracle for *p* can be queried only once. ⊓x⊔*y*(*q*(*x*)↔*p*(*y*)) does the same for the problem of [many-one reducing][32] *q* to *p*. With more complex expressions one can capture all kinds of nameless yet potentially meaningful relations and operations on computational problems, such as, for instance, "Turing-reducing the problem of semideciding *r* to the problem of many-one reducing *q* to *p*". Imposing time or space restrictions on the work of the machine, one further gets complexity-theoretic counterparts of such relations and operations.

## As a problem solving tool\[[edit][33]\]

The known deductive systems for various fragments of CoL share the property that a solution (algorithm) can be automatically extracted from a proof of a problem in the system. This property is further inherited by all applied theories based on those systems. So, in order to find a solution for a given problem, it is sufficient to express it in the language of CoL and then find a proof of that expression. Another way to look at this phenomenon is to think of a formula *G* of CoL as program specification (goal). Then a proof of *G* is – more precisely, translates into – a program meeting that specification. There is no need to verify that the specification is met, because the proof itself is, in fact, such a verification.

Examples of CoL-based applied theories are the so-called *clarithmetics*. These are number theories based on CoL in the same sense as Peano arithmetic PA is based on classical logic. Such a system is usually a conservative extension of PA. It typically includes all [Peano axioms][34], and adds to them one or two extra-Peano axioms such as ⊓*x*⊔*y*(*y*\=*x'*) expressing the computability of the successor function. Typically it also has one or two non-logical rules of inference, such as constructive versions of induction or comprehension. Through routine variations in such rules one can obtain sound and complete systems characterizing one or another interactive computational complexity class *C*. This is in the sense that a problem belongs to *C* if and only if it has a proof in the theory. So, such a theory can be used for finding not merely algorithmic solutions, but also efficient ones on demand, such as solutions that run in polynomial time or logarithmic space. It should be pointed out that all clarithmetical theories share the same logical postulates, and only their non-logical postulates vary depending on the target complexity class. Their notable distinguishing feature from other approaches with similar aspirations (such as [bounded arithmetic][35]) is that they extend rather than weaken PA, preserving the full deductive power and convenience of the latter.

## See also\[[edit][36]\]

-   [Game semantics][37]
-   [Interactive computation][38]
-   [Logic][39]
-   [Logics for computability][40]

## References\[[edit][41]\]

1.  __[^][42]__ G. Japaridze, *Introduction to computability logic*. Annals of Pure and Applied Logic 123 (2003), pages 1–99. [doi][43]:[10.1016/S0168-0072(03)00023-X][44]
2.  __[^][45]__ G. Japaridze, *In the beginning was game semantics?*. Games: Unifying Logic, Language and Philosophy. O. Majer, A.-V. Pietarinen and T. Tulenheimo, eds. Springer 2009, pp. 249–350. [doi][46]:[10.1007/978-1-4020-9374-6\_11][47] [Prepublication][48]
3.  __[^][49]__ G. Japaridze, *The intuitionistic fragment of computability logic at the propositional level*. Annals of Pure and Applied Logic 147 (2007), pages 187–227. [doi][50]:[10.1016/j.apal.2007.05.001][51]
4.  __[^][52]__ G. Japaridze, *Introduction to clarithmetic I*. Information and Computation 209 (2011), pp. 1312–1354. [doi][53]:[10.1016/j.ic.2011.07.002][54] [Prepublication][55]
5.  __[^][56]__ G. Japaridze, *[Build your own clarithmetic I: Setup and completeness][57]*. Logical Methods is Computer Science 12 (2016), Issue 3, paper 8, pp. 1–59.
6.  __[^][58]__ G. Japaridze, *Introduction to cirquent calculus and abstract resource semantics*. Journal of Logic and Computation 16 (2006), pages 489–532. [doi][59]:[10.1093/logcom/exl005][60] [Prepublication][61]
7.  __[^][62]__ G. Japaridze, *The taming of recurrences in computability logic through cirquent calculus, Part I*. Archive for Mathematical Logic 52 (2013), pp. 173–212. [doi][63]:[10.1007/s00153-012-0313-8][64] [Prepublication][65]

## External links\[[edit][66]\]

-   [Computability Logic Homepage][67] Comprehensive survey of the subject.
-   [Giorgi Japaridze][68]
-   [Game Semantics or Linear Logic?][69]
-   [Lecture Course on Computability Logic][70]
-   [On abstract resource semantics and computabilty logic][71] Video lecture by N.Vereshchagin.
-   [A Survey of Computability Logic][72] (PDF) Downloadable equivalent of the above homepage.

[1]: https://en.wikipedia.org/wiki/Computability "Computability"
[2]: https://en.wikipedia.org/wiki/Classical_logic "Classical logic"
[3]: https://en.wikipedia.org/wiki/Giorgi_Japaridze "Giorgi Japaridze"
[4]: https://en.wikipedia.org/wiki/Computability_logic#cite_note-1
[5]: https://en.wikipedia.org/wiki/Computational_problem "Computational problem"
[6]: https://en.wikipedia.org/wiki/Algorithm "Algorithm"
[7]: https://en.wikipedia.org/wiki/Interactive_computation "Interactive computation"
[8]: https://en.wikipedia.org/wiki/Church-Turing_thesis "Church-Turing thesis"
[9]: https://en.wikipedia.org/wiki/Conservative_extension "Conservative extension"
[10]: https://en.wikipedia.org/wiki/Independence-friendly_logic "Independence-friendly logic"
[11]: https://en.wikipedia.org/wiki/Linear_logic "Linear logic"
[12]: https://en.wikipedia.org/wiki/Intuitionistic_logic "Intuitionistic logic"
[13]: https://en.wikipedia.org/wiki/Computability_logic#cite_note-2
[14]: https://en.wikipedia.org/wiki/Computability_logic#cite_note-3
[15]: https://en.wikipedia.org/wiki/Computability_logic#cite_note-4
[16]: https://en.wikipedia.org/wiki/Computability_logic#cite_note-5
[17]: https://en.wikipedia.org/wiki/Peano_axioms "Peano axioms"
[18]: https://en.wikipedia.org/wiki/Bounded_arithmetic "Bounded arithmetic"
[19]: https://en.wikipedia.org/wiki/Natural_deduction "Natural deduction"
[20]: https://en.wikipedia.org/wiki/Sequent_calculus "Sequent calculus"
[21]: https://en.wikipedia.org/wiki/Cirquent_calculus "Cirquent calculus"
[22]: https://en.wikipedia.org/wiki/Computability_logic#cite_note-6
[23]: https://en.wikipedia.org/wiki/Computability_logic#cite_note-7
[24]: https://en.wikipedia.org/w/index.php?title=Computability_logic&action=edit&section=1 "Edit section: Language"
[25]: https://en.wikipedia.org/wiki/File:Operators_of_computability_logic.png
[26]: https://en.wikipedia.org/w/index.php?title=Computability_logic&action=edit&section=2 "Edit section: Semantics"
[27]: https://en.wikipedia.org/w/index.php?title=Computability_logic&action=edit&section=3 "Edit section: As a problem specification tool"
[28]: https://en.wikipedia.org/wiki/Decidability_(logic) "Decidability (logic)"
[29]: https://en.wikipedia.org/wiki/Recursively_enumerable_set "Recursively enumerable set"
[30]: https://en.wikipedia.org/wiki/Computation_in_the_limit "Computation in the limit"
[31]: https://en.wikipedia.org/wiki/Turing_reduction "Turing reduction"
[32]: https://en.wikipedia.org/wiki/Many-one_reduction "Many-one reduction"
[33]: https://en.wikipedia.org/w/index.php?title=Computability_logic&action=edit&section=4 "Edit section: As a problem solving tool"
[34]: https://en.wikipedia.org/wiki/Peano_axioms "Peano axioms"
[35]: https://en.wikipedia.org/wiki/Bounded_arithmetic "Bounded arithmetic"
[36]: https://en.wikipedia.org/w/index.php?title=Computability_logic&action=edit&section=5 "Edit section: See also"
[37]: https://en.wikipedia.org/wiki/Game_semantics "Game semantics"
[38]: https://en.wikipedia.org/wiki/Interactive_computation "Interactive computation"
[39]: https://en.wikipedia.org/wiki/Logic "Logic"
[40]: https://en.wikipedia.org/wiki/Logics_for_computability "Logics for computability"
[41]: https://en.wikipedia.org/w/index.php?title=Computability_logic&action=edit&section=6 "Edit section: References"
[42]: https://en.wikipedia.org/wiki/Computability_logic#cite_ref-1
[43]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[44]: https://doi.org/10.1016%2FS0168-0072%2803%2900023-X
[45]: https://en.wikipedia.org/wiki/Computability_logic#cite_ref-2
[46]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[47]: https://doi.org/10.1007%2F978-1-4020-9374-6_11
[48]: https://arxiv.org/abs/cs/0507045
[49]: https://en.wikipedia.org/wiki/Computability_logic#cite_ref-3
[50]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[51]: https://doi.org/10.1016%2Fj.apal.2007.05.001
[52]: https://en.wikipedia.org/wiki/Computability_logic#cite_ref-4
[53]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[54]: https://doi.org/10.1016%2Fj.ic.2011.07.002
[55]: https://arxiv.org/abs/1003.4719
[56]: https://en.wikipedia.org/wiki/Computability_logic#cite_ref-5
[57]: https://lmcs.episciences.org/2020/pdf
[58]: https://en.wikipedia.org/wiki/Computability_logic#cite_ref-6
[59]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[60]: https://doi.org/10.1093%2Flogcom%2Fexl005
[61]: https://arxiv.org/abs/math/0506553
[62]: https://en.wikipedia.org/wiki/Computability_logic#cite_ref-7
[63]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[64]: https://doi.org/10.1007%2Fs00153-012-0313-8
[65]: https://arxiv.org/abs/1105.3853
[66]: https://en.wikipedia.org/w/index.php?title=Computability_logic&action=edit&section=7 "Edit section: External links"
[67]: http://www.csc.villanova.edu/~japaridz/CL/
[68]: https://web.archive.org/web/20190419120954/http://www.csc.villanova.edu/~japaridz/
[69]: https://web.archive.org/web/20160303174250/http://www.csc.villanova.edu/~japaridz/CL/gsoll.html
[70]: http://www.csc.villanova.edu/~japaridz/CL/clx.html
[71]: http://www.mathnet.ru/php/presentation.phtml?option_lang=eng&presentid=4373
[72]: https://arxiv.org/abs/1612.04513
