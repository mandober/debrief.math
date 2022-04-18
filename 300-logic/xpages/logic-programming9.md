---
downloaded:       2021-12-17
page-url:         https://en.wikipedia.org/wiki/Logic_programming
page-title:       Logic programming - Wikipedia
article-title:    Logic programming - Wikipedia
---
# Logic programming - Wikipedia

Logic programming is a programming paradigm which is largely based on formal logic. Any program written in a logic programming language is a set of sentences in logical form, expressing facts and rules about some problem domain.  Major logic programming language families include Prolog, answer set programming (ASP) and Datalog. In all of these languages, rules are written in the form of clauses:
__Logic programming__ is a [programming paradigm][1] which is largely based on [formal logic][2]. Any program written in a logic [programming language][3] is a set of sentences in logical form, expressing facts and rules about some problem domain. Major logic programming language families include [Prolog][4], [answer set programming][5] (ASP) and [Datalog][6]. In all of these languages, rules are written in the form of *[clauses][7]*:

H :- B1, …, Bn.

and are read declaratively as logical implications:

H if B1 and … and Bn.

H is called the *head* of the rule and B1, ..., Bn is called the *body*. Facts are rules that have no body, and are written in the simplified form:

H.

In the simplest case in which H, B1, ..., Bn are all [atomic formulae][8], these clauses are called definite clauses or [Horn clauses][9]. However, there are many extensions of this simple case, the most important one being the case in which conditions in the body of a clause can also be negations of atomic formulas. Logic programming languages that include this extension have the knowledge representation capabilities of a [non-monotonic logic][10].

In ASP and Datalog, logic programs have only a [declarative][11] reading, and their execution is performed by means of a proof procedure or model generator whose behaviour is not meant to be controlled by the programmer. However, in the Prolog family of languages, logic programs also have a [procedural][12] interpretation as goal-reduction procedures:

to solve H, solve B1, and ... and solve Bn.

Consider the following clause as an example:

fallible(X) :- human(X).

based on an example used by [Terry Winograd][13][\[1\]][14] to illustrate the programming language [Planner][15]. As a clause in a logic program, it can be used both as a procedure to test whether X is fallible by testing whether X is human, and as a procedure to find an X which is fallible by finding an X which is human. Even facts have a procedural interpretation. For example, the clause:

human(socrates).

can be used both as a procedure to show that socrates is human, and as a procedure to find an X that is human by "assigning" socrates to X.

The declarative reading of logic programs can be used by a programmer to verify their correctness. Moreover, logic-based [program transformation][16] techniques can also be used to transform logic programs into logically equivalent programs that are more efficient. In the Prolog family of logic programming languages, the programmer can also use the known problem-solving behaviour of the execution mechanism to improve the efficiency of programs.

## History\[[edit][17]\]

The use of mathematical logic to represent and execute computer programs is also a feature of the [lambda calculus][18], developed by [Alonzo Church][19] in the 1930s. However, the first proposal to use the [clausal][20] form of logic for representing computer programs was made by [Cordell Green][21].[\[2\]][22] This used an axiomatization of a subset of [LISP][23], together with a representation of an input-output relation, to compute the relation by simulating the execution of the program in LISP. Foster and Elcock's [Absys][24], on the other hand, employed a combination of equations and lambda calculus in an assertional programming language which places no constraints on the order in which operations are performed.[\[3\]][25]

Logic programming in its present form can be traced back to debates in the late 1960s and early 1970s about declarative versus procedural representations of knowledge in [artificial intelligence][26]. Advocates of declarative representations were notably working at [Stanford][27], associated with [John McCarthy][28], [Bertram Raphael][29] and Cordell Green, and in [Edinburgh][30], with [John Alan Robinson][31] (an academic visitor from [Syracuse University][32]), [Pat Hayes][33], and [Robert Kowalski][34]. Advocates of procedural representations were mainly centered at [MIT][35], under the leadership of [Marvin Minsky][36] and [Seymour Papert][37].\[*[citation needed][38]*\]

Although it was based on the proof methods of logic, [Planner][39], developed at MIT, was the first language to emerge within this proceduralist paradigm.[\[4\]][40] Planner featured pattern-directed invocation of procedural plans from goals (i.e. goal-reduction or [backward chaining][41]) and from assertions (i.e. [forward chaining][42]). The most influential implementation of Planner was the subset of Planner, called Micro-Planner, implemented by [Gerry Sussman][43], [Eugene Charniak][44] and [Terry Winograd][45]. It was used to implement Winograd's natural-language understanding program [SHRDLU][46], which was a landmark at that time.[\[1\]][47] To cope with the very limited memory systems at the time, Planner used a backtracking control structure so that only one possible computation path had to be stored at a time. Planner gave rise to the programming languages QA-4, Popler, Conniver, QLISP, and the concurrent language Ether.\[*[citation needed][48]*\]

Hayes and Kowalski in Edinburgh tried to reconcile the logic-based declarative approach to knowledge representation with Planner's procedural approach. Hayes (1973) developed an equational language, Golux, in which different procedures could be obtained by altering the behavior of the theorem prover.[\[5\]][49] Kowalski, on the other hand, developed [SLD resolution][50],[\[6\]][51] a variant of SL-resolution,[\[7\]][52] and showed how it treats implications as goal-reduction procedures. Kowalski collaborated with [Colmerauer][53] in Marseille, who developed these ideas in the design and implementation of the programming language [Prolog][54].

The [Association for Logic Programming][55] was founded to promote Logic Programming in 1986.

Prolog gave rise to the programming languages [ALF][56], [Fril][57], [Gödel][58], [Mercury][59], [Oz][60], [Ciao][61], [Visual Prolog][62], [XSB][63], and [λProlog][64], as well as a variety of [concurrent logic programming languages][65],[\[8\]][66] [constraint logic programming][67] languages and [Datalog][68].[\[9\]][69]

## Concepts\[[edit][70]\]

## Semantics\[[edit][71]\]

Maarten van Emden and [Robert Kowalski][72] defined three semantics for Horn clause logic programs, [model-theoretic][73], [fixed-point][74], and [proof-theoretic][75], and showed that they are equivalent. [\[10\]][76]

### Logic and control\[[edit][77]\]

Logic programming can be viewed as controlled deduction. An important concept in logic programming is the separation of programs into their logic component and their control component. With pure logic programming languages, the logic component alone determines the solutions produced. The control component can be varied to provide alternative ways of executing a logic program. This notion is captured by the slogan

Algorithm = Logic + Control

where "Logic" represents a logic program and "Control" represents different theorem-proving strategies.[\[11\]][78]

### Problem solving\[[edit][79]\]

In the simplified, propositional case in which a logic program and a top-level atomic goal contain no variables, backward reasoning determines an [and-or tree][80], which constitutes the search space for solving the goal. The top-level goal is the root of the tree. Given any node in the tree and any clause whose head matches the node, there exists a set of child nodes corresponding to the sub-goals in the body of the clause. These child nodes are grouped together by an "and". The alternative sets of children corresponding to alternative ways of solving the node are grouped together by an "or".

Any search strategy can be used to search this space. Prolog uses a sequential, last-in-first-out, backtracking strategy, in which only one alternative and one sub-goal is considered at a time. Other search strategies, such as parallel search, intelligent backtracking, or best-first search to find an optimal solution, are also possible.

In the more general case, where sub-goals share variables, other strategies can be used, such as choosing the subgoal that is most highly instantiated or that is sufficiently instantiated so that only one procedure applies. Such strategies are used, for example, in [concurrent logic programming][81].

### Negation as failure\[[edit][82]\]

For most practical applications, as well as for applications that require non-monotonic reasoning in artificial intelligence, [Horn clause][83] logic programs need to be extended to normal logic programs, with negative conditions. A *clause* in a normal logic program has the form:

H :- A1, …, An, not B1, …, not Bn.

and is read declaratively as a logical implication:

H if A1 and … and An and not B1 and … and not Bn.

where H and all the Ai and Bi are atomic formulas. The negation in the negative literals not Bi is commonly referred to as "[negation as failure][84]", because in most implementations, a negative condition not Bi is shown to hold by showing that the positive condition Bi fails to hold. For example:

canfly(X) :- bird(X), not abnormal(X).
abnormal(X) :- wounded(X).
bird(john).
bird(mary).
wounded(john).

Given the goal of finding something that can fly:

there are two candidate solutions, which solve the first subgoal bird(X), namely X = john and X = mary. The second subgoal not abnormal(john) of the first candidate solution fails, because wounded(john) succeeds and therefore abnormal(john) succeeds. However, the second subgoal not abnormal(mary) of the second candidate solution succeeds, because wounded(mary) fails and therefore abnormal(mary) fails. Therefore, X = mary is the only solution of the goal.

[Micro-Planner][85] had a construct, called "thnot", which when applied to an expression returns the value true if (and only if) the evaluation of the expression fails. An equivalent operator typically exists in modern [Prolog][86]'s implementations. It is typically written as `not(*Goal*)` or `\+ *Goal*`, where `*Goal*` is some goal (proposition) to be proved by the program. This operator differs from negation in first-order logic: a negation such as `\+ X == 1` fails when the variable `X` has been bound to the atom `1`, but it succeeds in all other cases, including when `X` is unbound. This makes Prolog's reasoning [non-monotonic][87]: `X = 1, \+ X == 1` always fails, while `\+ X == 1, X = 1` can succeed, binding `X` to `1`, depending on whether `X` was initially bound (note that standard Prolog executes goals in left-to-right order).

The logical status of negation as failure was unresolved until [Keith Clark][88] \[1978\] showed that, under certain natural conditions, it is a correct (and sometimes complete) implementation of classical negation with respect to the completion of the program. Completion amounts roughly to regarding the set of all the program clauses with the same predicate on the left hand side, say

H :- Body1.

…

H :- Bodyk.

as a definition of the predicate

H iff (Body1 or … or Bodyk)

where "iff" means "if and only if". Writing the completion also requires explicit use of the equality predicate and the inclusion of a set of appropriate axioms for equality. However, the implementation of negation as failure needs only the if-halves of the definitions without the axioms of equality.

For example, the completion of the program above is:

canfly(X) iff bird(X), not abnormal(X).

abnormal(X) iff wounded(X).

bird(X) iff X = john or X = mary.

X = X.

not john = mary.

not mary = john.

The notion of completion is closely related to McCarthy's [circumscription][89] semantics for default reasoning, and to the [closed world assumption][90].

As an alternative to the completion semantics, negation as failure can also be interpreted epistemically, as in the [stable model semantics][91] of [answer set programming][92]. In this interpretation not(Bi) means literally that Bi is not known or not believed. The epistemic interpretation has the advantage that it can be combined very simply with classical negation, as in "extended logic programming", to formalise such phrases as "the contrary can not be shown", where "contrary" is classical negation and "can not be shown" is the epistemic interpretation of negation as failure.

### Knowledge representation\[[edit][93]\]

The fact that Horn clauses can be given a procedural interpretation and, vice versa, that goal-reduction procedures can be understood as Horn clauses + backward reasoning means that logic programs combine declarative and procedural representations of [knowledge][94]. The inclusion of [negation as failure][95] means that logic programming is a kind of [non-monotonic logic][96].

Despite its simplicity compared with classical logic, this combination of Horn clauses and negation as failure has proved to be surprisingly expressive. For example, it provides a natural representation for the common-sense laws of cause and effect, as formalised by both the [situation calculus][97] and [event calculus][98]. It has also been shown to correspond quite naturally to the semi-formal language of legislation. In particular, Prakken and Sartor[\[12\]][99] credit the representation of the British Nationality Act as a logic program[\[13\]][100] with being "hugely influential for the development of computational representations of legislation, showing how logic programming enables intuitively appealing representations that can be directly deployed to generate automatic inferences".

## Variants and extensions\[[edit][101]\]

### Prolog\[[edit][102]\]

The programming language [Prolog][103] was developed in 1972 by [Alain Colmerauer][104]. It emerged from a collaboration between Colmerauer in [Marseille][105] and [Robert Kowalski][106] in Edinburgh. Colmerauer was working on [natural-language understanding][107], using logic to represent semantics and using resolution for question-answering. During the summer of 1971, Colmerauer and Kowalski discovered that the clausal form of logic could be used to represent [formal grammars][108] and that resolution theorem provers could be used for parsing. They observed that some theorem provers, like hyper-resolution, behave as bottom-up parsers and others, like [SL-resolution][109] (1971), behave as top-down parsers.

It was in the following summer of 1972, that Kowalski, again working with Colmerauer, developed the procedural interpretation of implications. This dual declarative/procedural interpretation later became formalised in the Prolog notation

H :- B1, …, Bn.

which can be read (and used) both declaratively and procedurally. It also became clear that such clauses could be restricted to definite clauses or [Horn clauses][110], where H, B1, ..., Bn are all atomic predicate logic formulae, and that SL-resolution could be restricted (and generalised) to LUSH or [SLD-resolution][111]. Kowalski's procedural interpretation and LUSH were described in a 1973 memo, published in 1974.[\[6\]][112]

Colmerauer, with Philippe Roussel, used this dual interpretation of clauses as the basis of Prolog, which was implemented in the summer and autumn of 1972. The first Prolog program, also written in 1972 and implemented in Marseille, was a French question-answering system. The use of Prolog as a practical programming language was given great momentum by the development of a compiler by David Warren in Edinburgh in 1977. Experiments demonstrated that Edinburgh Prolog could compete with the processing speed of other [symbolic programming][113] languages such as [Lisp][114]. Edinburgh Prolog became the *de facto* standard and strongly influenced the definition of [ISO][115] standard Prolog.

### Abductive logic programming\[[edit][116]\]

[Abductive logic programming][117] is an extension of normal Logic Programming that allows some predicates, declared as abducible predicates, to be "open" or undefined. A clause in an abductive logic program has the form:

H :- B1, …, Bn, A1, …, An.

where H is an atomic formula that is not abducible, all the Bi are literals whose predicates are not abducible, and the Ai are atomic formulas whose predicates are abducible. The abducible predicates can be constrained by integrity constraints, which can have the form:

false :- L1, …, Ln.

where the Li are arbitrary literals (defined or abducible, and atomic or negated). For example:

canfly(X) :- bird(X), normal(X).
false :- normal(X), wounded(X).
bird(john).
bird(mary).
wounded(john).

where the predicate normal is abducible.

Problem solving is achieved by deriving hypotheses expressed in terms of the abducible predicates as solutions of problems to be solved. These problems can be either observations that need to be explained (as in classical [abductive reasoning][118]) or goals to be solved (as in normal logic programming). For example, the hypothesis normal(mary) explains the observation canfly(mary). Moreover, the same hypothesis entails the only solution X = mary of the goal of finding something which can fly:

Abductive logic programming has been used for fault diagnosis, planning, natural language processing and machine learning. It has also been used to interpret Negation as Failure as a form of abductive reasoning.

### Metalogic programming\[[edit][119]\]

Because mathematical logic has a long tradition of distinguishing between [object language][120] and metalanguage, logic programming also allows [metalevel][121] programming. The simplest metalogic program is the so-called "[vanilla][122]" meta-interpreter:

    solve(true).
    solve((A,B)):- solve(A),solve(B).
    solve(A):- clause(A,B),solve(B).

where true represents an empty conjunction, and clause(A,B) means that there is an object-level clause of the form A :- B.

Metalogic programming allows object-level and metalevel representations to be combined, as in natural language. It can also be used to implement any logic which is specified as [inference rules][123]. Metalogic is used in logic programming to implement metaprograms, which manipulate other programs, databases, knowledge bases or axiomatic theories as data.

### Constraint logic programming\[[edit][124]\]

[Constraint logic programming][125] combines Horn clause logic programming with [constraint solving][126]. It extends Horn clauses by allowing some predicates, declared as constraint predicates, to occur as literals in the body of clauses. A constraint logic program is a set of clauses of the form:

H :- C1, …, Cn ◊ B1, …, Bn.

where H and all the Bi are atomic formulas, and the Ci are constraints. Declaratively, such clauses are read as ordinary logical implications:

H if C1 and … and Cn and B1 and … and Bn.

However, whereas the predicates in the heads of clauses are defined by the constraint logic program, the predicates in the constraints are predefined by some domain-specific model-theoretic structure or theory.

Procedurally, subgoals whose predicates are defined by the program are solved by goal-reduction, as in ordinary logic programming, but constraints are checked for satisfiability by a domain-specific constraint-solver, which implements the semantics of the constraint predicates. An initial problem is solved by reducing it to a satisfiable conjunction of constraints.

The following constraint logic program represents a toy temporal database of john's history as a teacher:

teaches(john, hardware, T) :- 1990 ≤ T, T < 1999.
teaches(john, software, T) :- 1999 ≤ T, T < 2005.
teaches(john, logic, T) :- 2005 ≤ T, T ≤ 2012.
rank(john, instructor, T) :- 1990 ≤ T, T < 2010.
rank(john, professor, T) :- 2010 ≤ T, T < 2014.

Here ≤ and < are constraint predicates, with their usual intended semantics. The following goal clause queries the database to find out when john both taught logic and was a professor:

:- teaches(john, logic, T), rank(john, professor, T).

The solution is 2010 ≤ T, T ≤ 2012.

Constraint logic programming has been used to solve problems in such fields as [civil engineering][127], [mechanical engineering][128], [digital circuit][129] verification, [automated timetabling][130], [air traffic control][131], and finance. It is closely related to [abductive logic programming][132].

### Concurrent logic programming\[[edit][133]\]

Concurrent logic programming integrates concepts of logic programming with [concurrent programming][134]. Its development was given a big impetus in the 1980s by its choice for the systems programming language of the [Japanese Fifth Generation Project (FGCS)][135].[\[14\]][136]

A concurrent logic program is a set of guarded [Horn clauses][137] of the form:

H :- G1, …, Gn | B1, …, Bn.

The conjunction G1, ... , Gn is called the [guard][138] of the clause, and | is the commitment operator. Declaratively, guarded Horn clauses are read as ordinary logical implications:

H if G1 and … and Gn and B1 and … and Bn.

However, procedurally, when there are several clauses whose heads H match a given goal, then all of the clauses are executed in parallel, checking whether their guards G1, ... , Gn hold. If the guards of more than one clause hold, then a committed choice is made to one of the clauses, and execution proceeds with the subgoals B1, ..., Bn of the chosen clause. These subgoals can also be executed in parallel. Thus concurrent logic programming implements a form of "don't care nondeterminism", rather than "don't know nondeterminism".

For example, the following concurrent logic program defines a predicate shuffle(Left, Right, Merge) , which can be used to shuffle two lists Left and Right, combining them into a single list Merge that preserves the ordering of the two lists Left and Right:

shuffle(\[\], \[\], \[\]).
shuffle(Left, Right, Merge) :-
    Left \= \[First | Rest\] |
    Merge \= \[First | ShortMerge\],
    shuffle(Rest, Right, ShortMerge).
shuffle(Left, Right, Merge) :-
    Right \= \[First | Rest\] |
    Merge \= \[First | ShortMerge\],
    shuffle(Left, Rest, ShortMerge).

Here, \[\] represents the empty list, and \[Head | Tail\] represents a list with first element Head followed by list Tail, as in Prolog. (Notice that the first occurrence of | in the second and third clauses is the list constructor, whereas the second occurrence of | is the commitment operator.) The program can be used, for example, to shuffle the lists \[ace, queen, king\] and \[1, 4, 2\] by invoking the goal clause:

shuffle(\[ace, queen, king\], \[1, 4, 2\], Merge).

The program will non-deterministically generate a single solution, for example Merge = \[ace, queen, 1, king, 4, 2\].

Arguably, concurrent logic programming is based on message passing, so it is subject to the same indeterminacy as other concurrent message-passing systems, such as [Actors][139] (see [Indeterminacy in concurrent computation][140]). Carl Hewitt has argued that concurrent logic programming is not based on logic in his sense that computational steps cannot be logically deduced.[\[15\]][141] However, in concurrent logic programming, any result of a terminating computation is a logical consequence of the program, and any partial result of a partial computation is a logical consequence of the program and the residual goal (process network). Thus the indeterminacy of computations implies that not all logical consequences of the program can be deduced.\[*[neutrality][142] is [disputed][143]*\]

### Concurrent constraint logic programming\[[edit][144]\]

[Concurrent constraint logic programming][145] combines concurrent logic programming and [constraint logic programming][146], using constraints to control concurrency. A clause can contain a guard, which is a set of constraints that may block the applicability of the clause. When the guards of several clauses are satisfied, concurrent constraint logic programming makes a committed choice to use only one.

### Inductive logic programming\[[edit][147]\]

Inductive logic programming is concerned with generalizing positive and negative examples in the context of background knowledge: [machine learning][148] of logic programs. Recent work in this area, combining logic programming, learning and probability, has given rise to the new field of [statistical relational learning][149] and [probabilistic inductive logic programming][150].

### Higher-order logic programming\[[edit][151]\]

Several researchers have extended logic programming with [higher-order programming][152] features derived from [higher-order logic][153], such as predicate variables. Such languages include the Prolog extensions [HiLog][154] and [λProlog][155].

### Linear logic programming\[[edit][156]\]

Basing logic programming within [linear logic][157] has resulted in the design of logic programming languages which are considerably more expressive than those based on classical logic. Horn clause programs can only represent state change by the change in arguments to predicates. In linear logic programming, one can use the ambient linear logic to support state change. Some early designs of logic programming languages based on linear logic include LO \[Andreoli & Pareschi, 1991\], Lolli,[\[16\]][158] ACL,[\[17\]][159] and Forum \[Miller, 1996\]. Forum provides a goal-directed interpretation of all of linear logic.

### Object-oriented logic programming\[[edit][160]\]

[F-logic][161] extends logic programming with objects and the frame syntax.

[Logtalk][162] extends the Prolog programming language with support for objects, protocols, and other OOP concepts. It supports most standard-compliant Prolog systems as backend compilers.

### Transaction logic programming\[[edit][163]\]

[Transaction logic][164] is an extension of logic programming with a logical theory of state-modifying updates. It has both a model-theoretic semantics and a procedural one. An implementation of a subset of Transaction logic is available in the [Flora-2][165] system. Other prototypes are also [available][166].

## See also\[[edit][167]\]

-   [Automated theorem proving][168]
-   [Constraint logic programming][169]
-   [Control theory][170]
-   [Datalog][171]
-   [Fril][172]
-   [Functional programming][173]
-   [Fuzzy logic][174]
-   [Inductive logic programming][175]
-   [Logic in computer science][176] (includes [Formal methods][177])
-   [Logic programming languages][178]
-   [Programmable logic controller][179]
-   [R++][180]
-   [Reasoning system][181]
-   [Rule-based machine learning][182]
-   [Satisfiability][183]
    -   [Boolean satisfiability problem][184]
-   [Linear logic][185]

## Citations\[[edit][186]\]

1.  ^ [Jump up to: *__a__*][187] [*__b__*][188] T. Winograd (1972). "Understanding natural language". *Cognitive Psychology*. __3__ (1): 1–191. [doi][189]:[10.1016/0010-0285(72)90002-3][190].
2.  __[^][191]__ Cordell Green. "[Application of Theorem Proving to Problem Solving][192]". IJCAI 1969.
3.  __[^][193]__ J.M. Foster and E.W. Elcock. ABSYS 1: An Incremental Compiler for Assertions: an Introduction, Machine Intelligence 4, Edinburgh U Press, 1969, pp. 423–429
4.  __[^][194]__ Carl Hewitt. "Planner: A Language for Proving Theorems in Robots". IJCAI 1969.
5.  __[^][195]__ Pat Hayes. Computation and Deduction. In Proceedings of the 2nd MFCS Symposium. Czechoslovak Academy of Sciences, 1973, pp. 105–118.
6.  ^ [Jump up to: *__a__*][196] [*__b__*][197] Robert Kowalski, ["Predicate Logic as a Programming Language"][198], Memo 70, Department of Artificial Intelligence, Edinburgh University, 1973. Also in Proceedings IFIP Congress, Stockholm, North Holland Publishing Co., 1974, pp. 569–574.
7.  __[^][199]__ Robert Kowalski and Donald and Kuehner, ["Linear Resolution with Selection Function"][200], *Artificial Intelligence*, Vol. 2, 1971, pp. 227–60.
8.  __[^][201]__ Shapiro, Ehud (1989). [*The family of concurrent logic programming languages*][202] (PDF). International Summer School on Logic, Algebra and Computation. Also appeared in Shapiro, E. (1989). ["The family of concurrent logic programming languages"][203]. *ACM Computing Surveys*. __21__ (3): 413–510. [doi][204]:[10.1145/72551.72555][205]. [S2CID][206] [2497630][207].
9.  __[^][208]__ Sáenz-Perez, Fernando; Caballero, Rafael; García-Ruiz, Yolanda (December 2011). [*A Deductive Database with Datalog and SQL Query Language*][209] (PDF). Asian Symposium on Programming Languages and Systems. Springer. pp. 66–73.
10.  __[^][210]__ Van Emden, M.H. and Kowalski, R.A., 1976. The semantics of predicate logic as a programming language. Journal of the ACM (JACM), 23(4), pp.733-742.
11.  __[^][211]__ R.A.Kowalski (July 1979). "Algorithm=Logic + Control". *Communications of the ACM*. __22__ (7): 424–436. [doi][212]:[10.1145/359131.359136][213]. [S2CID][214] [2509896][215].
12.  __[^][216]__ Prakken, H. and Sartor, G., 2015. [Law and logic: a review from an argumentation perspective][217]. Artificial Intelligence, 227, 214–245.
13.  __[^][218]__ Sergot, M.J., Sadri, F., Kowalski, R.A., Kriwaczek, F., Hammond, P. and Cory, H.T., 1986. [The British Nationality Act as a logic program][219]. Communications of the ACM, 29(5), 370–386.
14.  __[^][220]__ Shunichi Uchida and Kazuhiro Fuchi. *Proceedings of the FGCS Project Evaluation Workshop*. Institute for New Generation Computer Technology (ICOT). 1992.
15.  __[^][221]__ Hewitt, Carl (27 April 2016). ["Inconsistency Robustness for Logic Programs"][222]. Hal Archives. pp. 21–26. Retrieved 7 November 2016.
16.  __[^][223]__ Joshua Hodas and Dale Miller, "[Logic Programming in a Fragment of Intuitionistic Linear Logic][224]", *Information and Computation*, 1994, 110(2), 327–365.
17.  __[^][225]__ Naoki Kobayashi and [Akinori Yonezawa][226], ["Asynchronous communication model based on linear logic"][227], *US/Japan Workshop on Parallel Symbolic Computing*, 1994, 279–294.

## Sources\[[edit][228]\]

### General introductions\[[edit][229]\]

-   Baral, C.; Gelfond, M. (1994). ["Logic programming and knowledge representation"][230] (PDF). *The Journal of Logic Programming*. 19–20: 73–148. [doi][231]:[10.1016/0743-1066(94)90025-6][232].
-   Kowalski, R. A. (1988). ["The early years of logic programming"][233] (PDF). *Communications of the ACM*. __31__: 38–43. [doi][234]:[10.1145/35043.35046][235]. [S2CID][236] [12259230][237]. [\[1\]][238]
-   Lloyd, J. W. (1987). *Foundations of Logic Programming*. *(2nd edition)*. Springer-Verlag.

### Other sources\[[edit][239]\]

-   John McCarthy. "Programs with common sense". *Symposium on Mechanization of Thought Processes*. National Physical Laboratory. Teddington, England. 1958.
-   Miller, Dale; Nadathur, Gopalan; Pfenning, Frank; Scedrov, Andre (1991). ["Uniform proofs as a foundation for logic programming"][240]. *Annals of Pure and Applied Logic*. __51__ (1–2): 125–157. [doi][241]:[10.1016/0168-0072(91)90068-W][242].
-   Ehud Shapiro (Editor). *Concurrent Prolog*. MIT Press. 1987.
-   James Slagle. ["Experiments with a Deductive Question-Answering Program"][243]. CACM. December 1965.
-   [Gabbay, Dov M.][244]; Hogger, Christopher John; Robinson, J.A., eds. (1993-1998). [Handbook of Logic in Artificial Intelligence and Logic Programming][245].Vols. 1–5, Oxford University Press.

## Further reading\[[edit][246]\]

-   Carl Hewitt. "[Procedural Embedding of Knowledge in Planner][247]". IJCAI 1971.
-   Carl Hewitt. "[The Repeated Demise of Logic Programming and Why It Will Be Reincarnated][248]". *AAAI Spring Symposium: What Went Wrong and Why: Lessons from AI Research and Applications* 2006: 2–9.
-   Evgeny Dantsin, Thomas Eiter, Georg Gottlob, Andrei Voronkov: [Complexity and expressive power of logic programming][249]. ACM Comput. Surv. 33(3): 374–425 (2001)
-   Ulf Nilsson and Jan Maluszynski, [Logic, Programming and Prolog][250]

## External links\[[edit][251]\]

-   [*Logic Programming* Virtual Library entry][252]
-   [Bibliographies on Logic Programming][253]
-   [Association for Logic Programming (ALP)][254]
-   *[Theory and Practice of Logic Programming][255]* (journal)
-   [Logic programming in C++ with Castor][256]
-   [Logic programming][257] in [Oz][258]
-   [Prolog Development Center][259]
-   [Racklog: Logic Programming in Racket][260]

[1]: https://en.wikipedia.org/wiki/Programming_paradigm "Programming paradigm"
[2]: https://en.wikipedia.org/wiki/Formal_logic "Formal logic"
[3]: https://en.wikipedia.org/wiki/Programming_language "Programming language"
[4]: https://en.wikipedia.org/wiki/Prolog "Prolog"
[5]: https://en.wikipedia.org/wiki/Answer_set_programming "Answer set programming"
[6]: https://en.wikipedia.org/wiki/Datalog "Datalog"
[7]: https://en.wikipedia.org/wiki/Clause_(logic) "Clause (logic)"
[8]: https://en.wikipedia.org/wiki/Atomic_formula "Atomic formula"
[9]: https://en.wikipedia.org/wiki/Horn_clause "Horn clause"
[10]: https://en.wikipedia.org/wiki/Non-monotonic_logic "Non-monotonic logic"
[11]: https://en.wikipedia.org/wiki/Declarative_programming "Declarative programming"
[12]: https://en.wikipedia.org/wiki/Procedural_programming "Procedural programming"
[13]: https://en.wikipedia.org/wiki/Terry_Winograd "Terry Winograd"
[14]: https://en.wikipedia.org/wiki/Logic_programming#cite_note-Winograd-1
[15]: https://en.wikipedia.org/wiki/Planner_(programming_language) "Planner (programming language)"
[16]: https://en.wikipedia.org/wiki/Program_transformation "Program transformation"
[17]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=1 "Edit section: History"
[18]: https://en.wikipedia.org/wiki/Lambda_calculus "Lambda calculus"
[19]: https://en.wikipedia.org/wiki/Alonzo_Church "Alonzo Church"
[20]: https://en.wikipedia.org/wiki/Clausal_normal_form "Clausal normal form"
[21]: https://en.wikipedia.org/wiki/Cordell_Green "Cordell Green"
[22]: https://en.wikipedia.org/wiki/Logic_programming#cite_note-2
[23]: https://en.wikipedia.org/wiki/LISP "LISP"
[24]: https://en.wikipedia.org/wiki/Absys "Absys"
[25]: https://en.wikipedia.org/wiki/Logic_programming#cite_note-3
[26]: https://en.wikipedia.org/wiki/Artificial_intelligence "Artificial intelligence"
[27]: https://en.wikipedia.org/wiki/Stanford_University "Stanford University"
[28]: https://en.wikipedia.org/wiki/John_McCarthy_(computer_scientist) "John McCarthy (computer scientist)"
[29]: https://en.wikipedia.org/wiki/Bertram_Raphael "Bertram Raphael"
[30]: https://en.wikipedia.org/wiki/University_of_Edinburgh "University of Edinburgh"
[31]: https://en.wikipedia.org/wiki/John_Alan_Robinson "John Alan Robinson"
[32]: https://en.wikipedia.org/wiki/Syracuse_University "Syracuse University"
[33]: https://en.wikipedia.org/wiki/Patrick_J._Hayes "Patrick J. Hayes"
[34]: https://en.wikipedia.org/wiki/Robert_Kowalski "Robert Kowalski"
[35]: https://en.wikipedia.org/wiki/MIT "MIT"
[36]: https://en.wikipedia.org/wiki/Marvin_Minsky "Marvin Minsky"
[37]: https://en.wikipedia.org/wiki/Seymour_Papert "Seymour Papert"
[38]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[39]: https://en.wikipedia.org/wiki/Planner_(programming_language) "Planner (programming language)"
[40]: https://en.wikipedia.org/wiki/Logic_programming#cite_note-4
[41]: https://en.wikipedia.org/wiki/Backward_chaining "Backward chaining"
[42]: https://en.wikipedia.org/wiki/Forward_chaining "Forward chaining"
[43]: https://en.wikipedia.org/wiki/Gerald_Jay_Sussman "Gerald Jay Sussman"
[44]: https://en.wikipedia.org/wiki/Eugene_Charniak "Eugene Charniak"
[45]: https://en.wikipedia.org/wiki/Terry_Winograd "Terry Winograd"
[46]: https://en.wikipedia.org/wiki/SHRDLU "SHRDLU"
[47]: https://en.wikipedia.org/wiki/Logic_programming#cite_note-Winograd-1
[48]: https://en.wikipedia.org/wiki/Wikipedia:Citation_needed "Wikipedia:Citation needed"
[49]: https://en.wikipedia.org/wiki/Logic_programming#cite_note-5
[50]: https://en.wikipedia.org/wiki/SLD_resolution "SLD resolution"
[51]: https://en.wikipedia.org/wiki/Logic_programming#cite_note-Kowalski-6
[52]: https://en.wikipedia.org/wiki/Logic_programming#cite_note-7
[53]: https://en.wikipedia.org/wiki/Alain_Colmerauer "Alain Colmerauer"
[54]: https://en.wikipedia.org/wiki/Prolog "Prolog"
[55]: https://en.wikipedia.org/wiki/Association_for_Logic_Programming "Association for Logic Programming"
[56]: https://en.wikipedia.org/wiki/Algebraic_Logic_Functional_programming_language "Algebraic Logic Functional programming language"
[57]: https://en.wikipedia.org/wiki/Fril "Fril"
[58]: https://en.wikipedia.org/wiki/G%C3%B6del_(programming_language) "Gödel (programming language)"
[59]: https://en.wikipedia.org/wiki/Mercury_programming_language "Mercury programming language"
[60]: https://en.wikipedia.org/wiki/Oz_(programming_language) "Oz (programming language)"
[61]: https://en.wikipedia.org/wiki/Ciao_(programming_language) "Ciao (programming language)"
[62]: https://en.wikipedia.org/wiki/Visual_Prolog "Visual Prolog"
[63]: https://en.wikipedia.org/wiki/XSB "XSB"
[64]: https://en.wikipedia.org/wiki/%CE%9BProlog "ΛProlog"
[65]: https://en.wikipedia.org/wiki/Concurrent_logic_programming "Concurrent logic programming"
[66]: https://en.wikipedia.org/wiki/Logic_programming#cite_note-8
[67]: https://en.wikipedia.org/wiki/Constraint_logic_programming "Constraint logic programming"
[68]: https://en.wikipedia.org/wiki/Datalog "Datalog"
[69]: https://en.wikipedia.org/wiki/Logic_programming#cite_note-9
[70]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=2 "Edit section: Concepts"
[71]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=3 "Edit section: Semantics"
[72]: https://en.wikipedia.org/wiki/Robert_Kowalski "Robert Kowalski"
[73]: https://en.wikipedia.org/wiki/Model_theory "Model theory"
[74]: https://en.wikipedia.org/wiki/Fixed_point_(mathematics) "Fixed point (mathematics)"
[75]: https://en.wikipedia.org/wiki/Proof-theoretic_semantics "Proof-theoretic semantics"
[76]: https://en.wikipedia.org/wiki/Logic_programming#cite_note-10
[77]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=4 "Edit section: Logic and control"
[78]: https://en.wikipedia.org/wiki/Logic_programming#cite_note-11
[79]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=5 "Edit section: Problem solving"
[80]: https://en.wikipedia.org/wiki/And-or_tree "And-or tree"
[81]: https://en.wikipedia.org/wiki/Concurrent_logic_programming "Concurrent logic programming"
[82]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=6 "Edit section: Negation as failure"
[83]: https://en.wikipedia.org/wiki/Horn_clause "Horn clause"
[84]: https://en.wikipedia.org/wiki/Negation_as_failure "Negation as failure"
[85]: https://en.wikipedia.org/wiki/Micro-Planner_(programming_language) "Micro-Planner (programming language)"
[86]: https://en.wikipedia.org/wiki/Prolog "Prolog"
[87]: https://en.wikipedia.org/wiki/Non-monotonic_logic "Non-monotonic logic"
[88]: https://en.wikipedia.org/wiki/Keith_Clark_(computer_scientist) "Keith Clark (computer scientist)"
[89]: https://en.wikipedia.org/wiki/Circumscription_(logic) "Circumscription (logic)"
[90]: https://en.wikipedia.org/wiki/Closed_world_assumption "Closed world assumption"
[91]: https://en.wikipedia.org/wiki/Stable_model_semantics "Stable model semantics"
[92]: https://en.wikipedia.org/wiki/Answer_set_programming "Answer set programming"
[93]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=7 "Edit section: Knowledge representation"
[94]: https://en.wikipedia.org/wiki/Knowledge_representation "Knowledge representation"
[95]: https://en.wikipedia.org/wiki/Negation_as_failure "Negation as failure"
[96]: https://en.wikipedia.org/wiki/Non-monotonic_logic "Non-monotonic logic"
[97]: https://en.wikipedia.org/wiki/Situation_calculus "Situation calculus"
[98]: https://en.wikipedia.org/wiki/Event_calculus "Event calculus"
[99]: https://en.wikipedia.org/wiki/Logic_programming#cite_note-12
[100]: https://en.wikipedia.org/wiki/Logic_programming#cite_note-13
[101]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=8 "Edit section: Variants and extensions"
[102]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=9 "Edit section: Prolog"
[103]: https://en.wikipedia.org/wiki/Prolog "Prolog"
[104]: https://en.wikipedia.org/wiki/Alain_Colmerauer "Alain Colmerauer"
[105]: https://en.wikipedia.org/wiki/Marseille "Marseille"
[106]: https://en.wikipedia.org/wiki/Robert_Kowalski "Robert Kowalski"
[107]: https://en.wikipedia.org/wiki/Natural-language_understanding "Natural-language understanding"
[108]: https://en.wikipedia.org/wiki/Formal_grammars "Formal grammars"
[109]: https://en.wikipedia.org/wiki/SLD_resolution "SLD resolution"
[110]: https://en.wikipedia.org/wiki/Horn_clause "Horn clause"
[111]: https://en.wikipedia.org/wiki/SLD_resolution "SLD resolution"
[112]: https://en.wikipedia.org/wiki/Logic_programming#cite_note-Kowalski-6
[113]: https://en.wikipedia.org/wiki/Symbolic_programming "Symbolic programming"
[114]: https://en.wikipedia.org/wiki/Lisp_(programming_language) "Lisp (programming language)"
[115]: https://en.wikipedia.org/wiki/International_Organization_for_Standardization "International Organization for Standardization"
[116]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=10 "Edit section: Abductive logic programming"
[117]: https://en.wikipedia.org/wiki/Abductive_logic_programming "Abductive logic programming"
[118]: https://en.wikipedia.org/wiki/Abductive_reasoning "Abductive reasoning"
[119]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=11 "Edit section: Metalogic programming"
[120]: https://en.wikipedia.org/wiki/Object_language "Object language"
[121]: https://en.wiktionary.org/wiki/metalevel "wiktionary:metalevel"
[122]: https://en.wikipedia.org/wiki/Vanilla_(computing) "Vanilla (computing)"
[123]: https://en.wikipedia.org/wiki/Inference_rule "Inference rule"
[124]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=12 "Edit section: Constraint logic programming"
[125]: https://en.wikipedia.org/wiki/Constraint_logic_programming "Constraint logic programming"
[126]: https://en.wikipedia.org/wiki/Constraint_solving "Constraint solving"
[127]: https://en.wikipedia.org/wiki/Civil_engineering "Civil engineering"
[128]: https://en.wikipedia.org/wiki/Mechanical_engineering "Mechanical engineering"
[129]: https://en.wikipedia.org/wiki/Digital_circuit "Digital circuit"
[130]: https://en.wikipedia.org/wiki/Automated_timetabling "Automated timetabling"
[131]: https://en.wikipedia.org/wiki/Air_traffic_control "Air traffic control"
[132]: https://en.wikipedia.org/wiki/Abductive_logic_programming "Abductive logic programming"
[133]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=13 "Edit section: Concurrent logic programming"
[134]: https://en.wikipedia.org/wiki/Concurrent_programming "Concurrent programming"
[135]: https://en.wikipedia.org/wiki/Fifth_generation_computer "Fifth generation computer"
[136]: https://en.wikipedia.org/wiki/Logic_programming#cite_note-14
[137]: https://en.wikipedia.org/wiki/Horn_clauses "Horn clauses"
[138]: https://en.wikipedia.org/wiki/Guard_(computing) "Guard (computing)"
[139]: https://en.wikipedia.org/wiki/Actor_model "Actor model"
[140]: https://en.wikipedia.org/wiki/Indeterminacy_in_concurrent_computation "Indeterminacy in concurrent computation"
[141]: https://en.wikipedia.org/wiki/Logic_programming#cite_note-Hewitt-15
[142]: https://en.wikipedia.org/wiki/Wikipedia:Neutral_point_of_view "Wikipedia:Neutral point of view"
[143]: https://en.wikipedia.org/wiki/Talk:Logic_programming#Hewitt "Talk:Logic programming"
[144]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=14 "Edit section: Concurrent constraint logic programming"
[145]: https://en.wikipedia.org/wiki/Concurrent_constraint_logic_programming "Concurrent constraint logic programming"
[146]: https://en.wikipedia.org/wiki/Constraint_logic_programming "Constraint logic programming"
[147]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=15 "Edit section: Inductive logic programming"
[148]: https://en.wikipedia.org/wiki/Machine_learning "Machine learning"
[149]: https://en.wikipedia.org/wiki/Statistical_relational_learning "Statistical relational learning"
[150]: https://en.wikipedia.org/wiki/Probabilistic_inductive_logic_programming "Probabilistic inductive logic programming"
[151]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=16 "Edit section: Higher-order logic programming"
[152]: https://en.wikipedia.org/wiki/Higher-order_programming "Higher-order programming"
[153]: https://en.wikipedia.org/wiki/Higher-order_logic "Higher-order logic"
[154]: https://en.wikipedia.org/wiki/HiLog "HiLog"
[155]: https://en.wikipedia.org/wiki/%CE%9BProlog "ΛProlog"
[156]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=17 "Edit section: Linear logic programming"
[157]: https://en.wikipedia.org/wiki/Linear_logic "Linear logic"
[158]: https://en.wikipedia.org/wiki/Logic_programming#cite_note-16
[159]: https://en.wikipedia.org/wiki/Logic_programming#cite_note-17
[160]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=18 "Edit section: Object-oriented logic programming"
[161]: https://en.wikipedia.org/wiki/F-logic "F-logic"
[162]: https://en.wikipedia.org/wiki/Logtalk "Logtalk"
[163]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=19 "Edit section: Transaction logic programming"
[164]: https://en.wikipedia.org/wiki/Transaction_logic "Transaction logic"
[165]: https://en.wikipedia.org/wiki/Flora-2 "Flora-2"
[166]: https://en.wikipedia.org/wiki/Transaction_logic "Transaction logic"
[167]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=20 "Edit section: See also"
[168]: https://en.wikipedia.org/wiki/Automated_theorem_proving "Automated theorem proving"
[169]: https://en.wikipedia.org/wiki/Constraint_logic_programming "Constraint logic programming"
[170]: https://en.wikipedia.org/wiki/Control_theory "Control theory"
[171]: https://en.wikipedia.org/wiki/Datalog "Datalog"
[172]: https://en.wikipedia.org/wiki/Fril "Fril"
[173]: https://en.wikipedia.org/wiki/Functional_programming "Functional programming"
[174]: https://en.wikipedia.org/wiki/Fuzzy_logic "Fuzzy logic"
[175]: https://en.wikipedia.org/wiki/Inductive_logic_programming "Inductive logic programming"
[176]: https://en.wikipedia.org/wiki/Logic_in_computer_science "Logic in computer science"
[177]: https://en.wikipedia.org/wiki/Formal_methods "Formal methods"
[178]: https://en.wikipedia.org/wiki/Category:Logic_programming_languages "Category:Logic programming languages"
[179]: https://en.wikipedia.org/wiki/Programmable_logic_controller "Programmable logic controller"
[180]: https://en.wikipedia.org/wiki/R%2B%2B "R++"
[181]: https://en.wikipedia.org/wiki/Reasoning_system "Reasoning system"
[182]: https://en.wikipedia.org/wiki/Rule-based_machine_learning "Rule-based machine learning"
[183]: https://en.wikipedia.org/wiki/Satisfiability "Satisfiability"
[184]: https://en.wikipedia.org/wiki/Boolean_satisfiability_problem "Boolean satisfiability problem"
[185]: https://en.wikipedia.org/wiki/Linear_logic "Linear logic"
[186]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=21 "Edit section: Citations"
[187]: https://en.wikipedia.org/wiki/Logic_programming#cite_ref-Winograd_1-0
[188]: https://en.wikipedia.org/wiki/Logic_programming#cite_ref-Winograd_1-1
[189]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[190]: https://doi.org/10.1016%2F0010-0285%2872%2990002-3
[191]: https://en.wikipedia.org/wiki/Logic_programming#cite_ref-2 "Jump up"
[192]: http://www.dtic.mil/get-tr-doc/pdf?AD=ADA459656
[193]: https://en.wikipedia.org/wiki/Logic_programming#cite_ref-3 "Jump up"
[194]: https://en.wikipedia.org/wiki/Logic_programming#cite_ref-4 "Jump up"
[195]: https://en.wikipedia.org/wiki/Logic_programming#cite_ref-5 "Jump up"
[196]: https://en.wikipedia.org/wiki/Logic_programming#cite_ref-Kowalski_6-0
[197]: https://en.wikipedia.org/wiki/Logic_programming#cite_ref-Kowalski_6-1
[198]: http://www.doc.ic.ac.uk/~rak/papers/IFIP%2074.pdf
[199]: https://en.wikipedia.org/wiki/Logic_programming#cite_ref-7 "Jump up"
[200]: http://www.doc.ic.ac.uk/~rak/papers/sl.pdf
[201]: https://en.wikipedia.org/wiki/Logic_programming#cite_ref-8 "Jump up"
[202]: http://www.dtic.mil/dtic/tr/fulltext/u2/a213958.pdf
[203]: http://www.dtic.mil/get-tr-doc/pdf?AD=ADA213958
[204]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[205]: https://doi.org/10.1145%2F72551.72555
[206]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[207]: https://api.semanticscholar.org/CorpusID:2497630
[208]: https://en.wikipedia.org/wiki/Logic_programming#cite_ref-9 "Jump up"
[209]: http://www.fdi.ucm.es/profesor/fernan/fsp/SCG11a.pdf
[210]: https://en.wikipedia.org/wiki/Logic_programming#cite_ref-10 "Jump up"
[211]: https://en.wikipedia.org/wiki/Logic_programming#cite_ref-11 "Jump up"
[212]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[213]: https://doi.org/10.1145%2F359131.359136
[214]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[215]: https://api.semanticscholar.org/CorpusID:2509896
[216]: https://en.wikipedia.org/wiki/Logic_programming#cite_ref-12 "Jump up"
[217]: http://www.cs.uu.nl/groups/IS/archive/henry/ReviewLogicAndLawRevised.pdf
[218]: https://en.wikipedia.org/wiki/Logic_programming#cite_ref-13 "Jump up"
[219]: http://www.doc.ic.ac.uk/~rak/papers/British%20Nationality%20Act.pdf
[220]: https://en.wikipedia.org/wiki/Logic_programming#cite_ref-14 "Jump up"
[221]: https://en.wikipedia.org/wiki/Logic_programming#cite_ref-Hewitt_15-0 "Jump up"
[222]: https://hal.archives-ouvertes.fr/hal-01148496v6/document
[223]: https://en.wikipedia.org/wiki/Logic_programming#cite_ref-16 "Jump up"
[224]: http://repository.upenn.edu/cgi/viewcontent.cgi?article=1540&context=cis_reports
[225]: https://en.wikipedia.org/wiki/Logic_programming#cite_ref-17 "Jump up"
[226]: https://en.wikipedia.org/wiki/Akinori_Yonezawa "Akinori Yonezawa"
[227]: http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.42.8749&rep=rep1&type=pdf
[228]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=22 "Edit section: Sources"
[229]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=23 "Edit section: General introductions"
[230]: http://redwood.cs.ttu.edu/~mgelfond/PAPERS/survey.pdf
[231]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[232]: https://doi.org/10.1016%2F0743-1066%2894%2990025-6
[233]: http://www.doc.ic.ac.uk/~rak/papers/the%20early%20years.pdf
[234]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[235]: https://doi.org/10.1145%2F35043.35046
[236]: https://en.wikipedia.org/wiki/S2CID_(identifier) "S2CID (identifier)"
[237]: https://api.semanticscholar.org/CorpusID:12259230
[238]: http://www.doc.ic.ac.uk/~rak/papers/the%20early%20years.pdf
[239]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=24 "Edit section: Other sources"
[240]: https://repository.upenn.edu/cis_reports/711
[241]: https://en.wikipedia.org/wiki/Doi_(identifier) "Doi (identifier)"
[242]: https://doi.org/10.1016%2F0168-0072%2891%2990068-W
[243]: https://dl.acm.org/doi/abs/10.1145/365691.365960
[244]: https://en.wikipedia.org/wiki/Dov_Gabbay "Dov Gabbay"
[245]: https://www.worldcat.org/title/handbook-of-logic-in-artificial-intelligence-and-logic-programming/oclc/26300491
[246]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=25 "Edit section: Further reading"
[247]: https://www.ijcai.org/Proceedings/71/Papers/014%20A.pdf
[248]: https://web.archive.org/web/20170102172145/https://pdfs.semanticscholar.org/9993/ec68770faaab132da6945492b0e4ad07eb7b.pdf
[249]: http://cmpe.emu.edu.tr/bayram/courses/531/forpresentation/p374-dantsin.pdf
[250]: http://www.ida.liu.se/~ulfni/lpp/
[251]: https://en.wikipedia.org/w/index.php?title=Logic_programming&action=edit&section=26 "Edit section: External links"
[252]: https://web.archive.org/web/20050828194751/http://vl.fmnet.info/logic-prog/
[253]: http://liinwww.ira.uka.de/bibliography/LogicProgramming/
[254]: http://www.logicprogramming.org/
[255]: http://www.cs.kuleuven.be/~dtai/projects/ALP/TPLP/
[256]: https://web.archive.org/web/20090108012954/http://www.mpprogramming.com/Cpp/
[257]: http://www.mozart-oz.org/documentation/tutorial/node12.html
[258]: https://en.wikipedia.org/wiki/Oz_programming_language "Oz programming language"
[259]: http://www.pdc.dk/
[260]: http://docs.racket-lang.org/racklog/
