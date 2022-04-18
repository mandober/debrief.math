---
downloaded:       2022-02-26
page-url:         https://plato.stanford.edu/entries/logic-modal/
page-title:       Modal Logic (Stanford Encyclopedia of Philosophy)
article-title:    Modal Logic
---
# Modal Logic (Stanford Encyclopedia of Philosophy)

A modal is an expression (like ‘necessarily’ or
‘possibly’) that is used to qualify the truth of a
judgement. Modal logic is, strictly speaking, the study of the
deductive behavior of the expressions ‘it is necessary
that’ and ‘it is possible that’. However, the term
‘modal logic’ may be used more broadly for a family of
related systems. These include logics for belief, for tense and other
temporal expressions, for the deontic (moral) expressions such as
‘it is obligatory that’ and ‘it is permitted
that’, and many others. An understanding of modal logic is
particularly valuable in the formal analysis of philosophical argument,
where expressions from the modal family are both common and confusing.
Modal logic also has important applications in computer science.
A modal is an expression (like ‘necessarily’ or ‘possibly’) that is used to qualify the truth of a judgement. Modal logic is, strictly speaking, the study of the deductive behavior of the expressions ‘it is necessary that’ and ‘it is possible that’. However, the term ‘modal logic’ may be used more broadly for a family of related systems. These include logics for belief, for tense and other temporal expressions, for the deontic (moral) expressions such as ‘it is obligatory that’ and ‘it is permitted that’, and many others. An understanding of modal logic is particularly valuable in the formal analysis of philosophical argument, where expressions from the modal family are both common and confusing. Modal logic also has important applications in computer science.

## 1\. What is Modal Logic?

Narrowly construed, modal logic studies reasoning that involves the use of the expressions ‘necessarily’ and ‘possibly’. However, the term ‘modal logic’ is used more broadly to cover a family of logics with similar rules and a variety of different symbols.

A list describing the best known of these logics follows.

<table><tbody><tr><td><strong>Logic</strong></td><td><strong>Symbols</strong></td><td><strong>Expressions Symbolized</strong></td></tr><tr><td>Modal Logic</td><td><span><span id="MJXp-Span-1"><span id="MJXp-Span-2">◻</span></span></span><span id="MathJax-Element-1-Frame" tabindex="0"><nobr><span id="MathJax-Span-1"><span><span><span id="MathJax-Span-2"><span id="MathJax-Span-3">□</span></span></span></span></span></nobr></span></td><td>It is necessary that …</td></tr><tr><td></td><td><span><span id="MJXp-Span-3"><span id="MJXp-Span-4">◊</span></span></span><span id="MathJax-Element-2-Frame" tabindex="0"><nobr><span id="MathJax-Span-4"><span><span><span id="MathJax-Span-5"><span id="MathJax-Span-6">◊</span></span></span></span></span></nobr></span></td><td>It is possible that …</td></tr><tr><td>Deontic Logic</td><td><span><span id="MJXp-Span-5"><span id="MJXp-Span-6">O</span></span></span><span id="MathJax-Element-3-Frame" tabindex="0"><nobr><span id="MathJax-Span-7"><span><span><span id="MathJax-Span-8"><span id="MathJax-Span-9">O</span></span></span></span></span></nobr></span></td><td>It is obligatory that …</td></tr><tr><td></td><td><span><span id="MJXp-Span-7"><span id="MJXp-Span-8">P</span></span></span><span id="MathJax-Element-4-Frame" tabindex="0"><nobr><span id="MathJax-Span-10"><span><span><span id="MathJax-Span-11"><span id="MathJax-Span-12">P<span></span></span></span></span></span></span></nobr></span></td><td>It is permitted that …</td></tr><tr><td></td><td><span><span id="MJXp-Span-9"><span id="MJXp-Span-10">F</span></span></span><span id="MathJax-Element-5-Frame" tabindex="0"><nobr><span id="MathJax-Span-13"><span><span><span id="MathJax-Span-14"><span id="MathJax-Span-15">F<span></span></span></span></span></span></span></nobr></span></td><td>It is forbidden that …</td></tr><tr><td>Temporal Logic</td><td><span><span id="MJXp-Span-11"><span id="MJXp-Span-12">G</span></span></span><span id="MathJax-Element-6-Frame" tabindex="0"><nobr><span id="MathJax-Span-16"><span><span><span id="MathJax-Span-17"><span id="MathJax-Span-18">G</span></span></span></span></span></nobr></span></td><td>It will always be the case that …</td></tr><tr><td></td><td><span><span id="MJXp-Span-13"><span id="MJXp-Span-14">F</span></span></span><span id="MathJax-Element-7-Frame" tabindex="0"><nobr><span id="MathJax-Span-19"><span><span><span id="MathJax-Span-20"><span id="MathJax-Span-21">F<span></span></span></span></span></span></span></nobr></span></td><td>It will be the case that …</td></tr><tr><td></td><td><span><span id="MJXp-Span-15"><span id="MJXp-Span-16">H</span></span></span><span id="MathJax-Element-8-Frame" tabindex="0"><nobr><span id="MathJax-Span-22"><span><span><span id="MathJax-Span-23"><span id="MathJax-Span-24">H<span></span></span></span></span></span></span></nobr></span></td><td>It has always been the case that …</td></tr><tr><td></td><td><span><span id="MJXp-Span-17"><span id="MJXp-Span-18">P</span></span></span><span id="MathJax-Element-9-Frame" tabindex="0"><nobr><span id="MathJax-Span-25"><span><span><span id="MathJax-Span-26"><span id="MathJax-Span-27">P<span></span></span></span></span></span></span></nobr></span></td><td>It was the case that …</td></tr><tr><td>Doxastic Logic&nbsp;</td><td><span><span id="MJXp-Span-19"><span id="MJXp-Span-20">B</span><span id="MJXp-Span-21">x</span></span></span><span id="MathJax-Element-10-Frame" tabindex="0"><nobr><span id="MathJax-Span-28"><span><span><span id="MathJax-Span-29"><span id="MathJax-Span-30">B</span><span id="MathJax-Span-31">x</span></span></span></span></span></nobr></span></td><td><span><span id="MJXp-Span-22"><span id="MJXp-Span-23">x</span></span></span><span id="MathJax-Element-11-Frame" tabindex="0"><nobr><span id="MathJax-Span-32"><span><span><span id="MathJax-Span-33"><span id="MathJax-Span-34">x</span></span></span></span></span></nobr></span> believes that …</td></tr></tbody></table>

## 2\. Modal Logics

The most familiar logics in the modal family are constructed from a weak logic called K$\bK$ (after Saul Kripke). Under the narrow reading, modal logic concerns necessity and possibility. A variety of different systems may be developed for such logics using K$\bK$ as a foundation. The symbols of K$\bK$ include ‘∼${\sim}$’ for ‘not’, ‘→$\rightarrow$’ for ‘if…then’, and ‘◻$\Box$’ for the modal operator ‘it is necessary that’. (The connectives ‘&$\amp$’, ‘∨$\vee$’, and ‘↔$\leftrightarrow$’ may be defined from ‘∼${\sim}$’ and ‘→$\rightarrow$’ as is done in propositional logic.) K$\bK$ results from adding the following to the principles of propositional logic.

Necessitation Rule:   If A$A$ is a theorem of K$\bK$, then so is ◻A$\Box A$.

Distribution Axiom: ◻(A→B)→(◻A→◻B)$\Box(A\rightarrow B) \rightarrow 
(\Box A\rightarrow \Box B)$.

(In these principles we use ‘A$A$’ and ‘B$B$’ as metavariables ranging over formulas of the language.) According to the Necessitation Rule, any theorem of logic is necessary. The Distribution Axiom says that if it is necessary that if A$A$ then B$B$, then if necessarily A$A$, then necessarily B$B$.

The operator ◊$\Diamond$ (for ‘possibly’) can be defined from ◻$\Box$ by letting ◊A\=∼◻∼A$\Diamond A = {\sim}\Box{\sim}A$. In K$\bK$, the operators ◻$\Box$ and ◊$\Diamond$ behave very much like the quantifiers ∀$\forall$ (all) and ∃$\exists$ (some). For example, the definition of ◊$\Diamond$ from ◻$\Box$ mirrors the equivalence of ∀xA$\forall xA$ with ∼∃x∼A${\sim}\exists x{\sim}A$ in predicate logic. Furthermore, ◻(A&B)$\Box(A \amp B)$ entails ◻A&◻B$\Box A \amp \Box B$ and vice versa; while ◻A∨◻B$\Box A\vee \Box B$ entails ◻(A∨B)$\Box (A\vee
B)$, but *not* vice versa. This reflects the patterns exhibited by the universal quantifier: ∀x(A&B)$\forall x(A \amp B)$ entails ∀xA&∀xB$\forall xA \amp \forall xB$ and vice versa, while ∀xA∨∀xB$\forall xA \vee
\forall xB$ entails ∀x(A∨B)$\forall x(A \vee B)$ but not vice versa. Similar parallels between ◊$\Diamond$ and ∃$\exists$ can be drawn. The basis for this correspondence between the modal operators and the quantifiers will emerge more clearly in the section on [Possible Worlds Semantics][1].

The system K$\bK$ is too weak to provide an adequate account of necessity. The following axiom is not provable in K$\bK$, but it is clearly desirable.

◻A→A

$$
\tag{\(M\)}
\Box A\rightarrow A
$$

(M)$(M)$ claims that whatever is necessary is the case. Notice that (M)$(M)$ would be incorrect were ◻$\Box$ to be read ‘it ought to be that’, or ‘it was the case that’. So the presence of axiom (M)$(M)$ distinguishes logics for necessity from other logics in the modal family. A basic modal logic M$M$ results from adding (M)$(M)$ to K$\bK$. (Some authors call this system T$\mathbf{T}$.)

Many logicians believe that M$M$ is still too weak to correctly formalize the logic of necessity and possibility. They recommend further axioms to govern the iteration, or repetition of modal operators. Here are two of the most famous iteration axioms:

◻A→◻◻A

$$
\tag{4}
\Box A\rightarrow \Box \Box A
$$

◊A→◻◊A

$$
\tag{5}
\Diamond A\rightarrow \Box \Diamond A
$$

S4$\mathbf{S4}$ is the system that results from adding (4) to M$M$. Similarly S5$\mathbf{S5}$ is M$M$ plus (5). In S4$\mathbf{S4}$, the sentence ◻◻A$\Box \Box A$ is equivalent to ◻A$\Box A$. As a result, any string of boxes may be replaced by a single box, and the same goes for strings of diamonds. This amounts to the idea that iteration of the modal operators is superfluous. Saying that A$A$ is necessarily necessary is considered a uselessly long-winded way of saying that A$A$ is necessary. The system S5$\mathbf{S5}$ has even stronger principles for simplifying strings of modal operators. In S4$\mathbf{S4}$, a string of operators of *the same kind* can be replaced for that operator; in S5$\mathbf{S5}$, strings containing both boxes and diamonds are equivalent to the last operator in the string. So, for example, saying that it is possible that A$A$ is necessary is the same as saying that A$A$ is necessary. A summary of these features of S4$\mathbf{S4}$ and S5$\mathbf{S5}$ follows.

◻◻…◻\=◻ and ◊◊…◊\=◊

$$
\tag{\(\mathbf{S4}\)}
\Box \Box \ldots \Box = \Box \text{ and }
\Diamond \Diamond \ldots \Diamond = \Diamond
$$

00…◻\=◻ and 00…◊\=◊, where each 0 is either ◻ or ◊

$$
\begin{align*}
\tag{\(\mathbf{S5}\)}
00\ldots \Box &= \Box \text{ and } 00\ldots \Diamond = \Diamond, \\
 &\text{ where each } 0 \text{ is either } \Box \text{ or } \Diamond
\end{align*}
$$

One could engage in endless argument over the correctness or incorrectness of these and other iteration principles for ◻$\Box$ and ◊$\Diamond$. The controversy can be partly resolved by recognizing that the words ‘necessarily’ and ‘possibly’, have many different uses. So the acceptability of axioms for modal logic depends on which of these uses we have in mind. For this reason, there is no one modal logic, but rather a whole family of systems built around M$M$. The relationship between these systems is diagrammed in [Section 8][2], and their application to different uses of ‘necessarily’ and ‘possibly’ can be more deeply understood by studying their possible world semantics in [Section 6][3].

The system B$\mathbf{B}$ (for the logician Brouwer) is formed by adding axiom (B)$(B)$ to M$M$.

A→◻◊A

$$
\tag{\(B\)}
A\rightarrow \Box \Diamond A
$$

It is interesting to note that S5$\mathbf{S5}$ can be formulated equivalently by adding (B)$(B)$ to S4$\mathbf{S4}$. The axiom (B)$(B)$ raises an important point about the interpretation of modal formulas. (B)$(B)$ says that if A$A$ is the case, then A$A$ is necessarily possible. One might argue that (B)$(B)$ should always be adopted in any modal logic, for surely if A$A$ is the case, then it is necessary that A$A$ is possible. However, there is a problem with this claim that can be exposed by noting that ◊◻A→A$\Diamond \Box
A\rightarrow A$ is provable from (B)$(B)$. So ◊◻A→A$\Diamond \Box
A\rightarrow A$ should be acceptable if (B)$(B)$ is. However, ◊◻A→A$\Diamond \Box A\rightarrow A$ says that if A$A$ is possibly necessary, then A$A$ is the case, and this is far from obvious. Why does (B)$(B)$ seem obvious, while one of the things it entails seems not obvious at all? The answer is that there is a dangerous ambiguity in the English interpretation of A→◻◊A$A\rightarrow \Box \Diamond A$. We often use the expression ‘If A$A$ then necessarily B$B$’ to express that the conditional ‘if A$A$ then B$B$’ is necessary. This interpretation corresponds to ◻(A→B)$\Box(A\rightarrow
B)$. On other occasions, we mean that if A$A$, then B$B$ is necessary: A→◻B$A\rightarrow \Box B$. In English, ‘necessarily’ is an adverb, and since adverbs are usually placed near verbs, we have no natural way to indicate whether the modal operator applies to the whole conditional, or to its consequent. For these reasons, there is a tendency to confuse (B):A→◻◊A$(B):
A\rightarrow \Box \Diamond A$ with ◻(A→◊A)$\Box(A\rightarrow \Diamond
A)$. But ◻(A→◊A)$\Box(A\rightarrow \Diamond A)$ is not the same as (B)$(B)$, for ◻(A→◊A)$\Box(A\rightarrow \Diamond A)$ is already a theorem of M$M$, and (B)$(B)$ is not. One must take special care that our positive reaction to ◻(A→◊A)$\Box(A\rightarrow \Diamond A)$ does not infect our evaluation of (B)$(B)$. One simple way to protect ourselves is to formulate B$B$ in an equivalent way using the axiom: ◊◻A→A$\Diamond \Box
A\rightarrow A$, where these ambiguities of scope do not arise.

## 3\. Deontic Logics

Deontic logics introduce the primitive symbol O$O$ for ‘it is obligatory that’, from which symbols P$P$ for ‘it is permitted that’ and F$F$ for ‘it is forbidden that’ are defined: PA\=∼O∼A$PA = {\sim}O{\sim}A$ and FA\=O∼A$FA = O{\sim}A$. The deontic analog of the modal axiom (M):OA→A$(M): OA\rightarrow A$ is clearly not appropriate for deontic logic. (Unfortunately, what ought to be is not always the case.) However, a basic system D$\mathbf{D}$ of deontic logic can be constructed by adding the weaker axiom (D)$(D)$ to K$\bK$.

OA→PA

$$
\tag{\(D\)}
 OA\rightarrow PA
$$

Axiom (D)$(D)$ guarantees the consistency of the system of obligations by insisting that when A$A$ is obligatory, A$A$ is permissible. A system which obligates us to bring about A$A$, but doesn’t permit us to do so, puts us in an inescapable bind. Although some will argue that such conflicts of obligation are at least possible, most deontic logicians accept (D)$(D)$.

O(OA→A)$O(OA\rightarrow A)$ is another deontic axiom that seems desirable. Although it is wrong to say that if A$A$ is obligatory then A$A$ is the case (OA→A)$(OA\rightarrow A)$, still, this conditional *ought* to be the case. So some deontic logicians believe that D$D$ needs to be supplemented with O(OA→A)$O(OA\rightarrow A)$ as well.

Controversy about iteration (repetition) of operators arises again in deontic logic. In some conceptions of obligation, OOA$OOA$ just amounts to OA$OA$. ‘It ought to be that it ought to be’ is treated as a sort of stuttering; the extra ‘ought’s do not add anything new. So axioms are added to guarantee the equivalence of OOA$OOA$ and OA$OA$. The more general iteration policy embodied in S5$\mathbf{S5}$ may also be adopted. However, there are conceptions of obligation where distinction between OA$OA$ and OOA$OOA$ is preserved. The idea is that there are genuine differences between the obligations we *actually* have and the obligations we *should* adopt. So, for example, ‘it ought to be that it ought to be that A$A$’ commands adoption of some obligation which may not actually be in place, with the result that OOA$OOA$ can be true even when OA$OA$ is false.

## 4\. Temporal Logics

In temporal logic (also known as tense logic), there are two basic operators, G$G$ for the future, and H$H$ for the past. G$G$ is read ‘it always will be that’ and the defined operator F$F$ (read ‘it will be the case that’) can be introduced by FA\=∼G∼A$FA = {\sim}G{\sim}A$. Similarly H$H$ is read: ‘it always was that’ and P$P$ (for ‘it was the case that’) is defined by PA\=∼H∼A$PA={\sim}H{\sim}A$. A basic system of temporal logic called Kt$\mathbf{Kt}$ results from adopting the principles of K$\bK$ for both G$G$ and H$H$, along with two axioms to govern the interaction between the past and future operators:

Necessitation Rules:  
If A$A$ is a theorem then so are GA$GA$ and HA$HA$.

Distribution Axioms:  
G(A→B)→(GA→GB)$G(A\rightarrow B) \rightarrow(GA\rightarrow GB)$ and H(A→B)→(HA→HB)$H(A\rightarrow B) \rightarrow (HA\rightarrow HB)$

Interaction Axioms:  
A→GPA$A\rightarrow GPA$ and A→HFA$A\rightarrow HFA$

The interaction axioms raise questions concerning asymmetries between the past and the future. A standard intuition is that the past is fixed, while the future is still open. The first interaction axiom (A→GPA)$(A\rightarrow GPA)$ conforms to this intuition in reporting that what is the case (A)$(A)$, will at all future times, be in the past (GPA)$(GPA)$. However A→HFA$A\rightarrow HFA$ may appear to have unacceptably deterministic overtones, for it claims, apparently, that what is true now (A)$(A)$ has always been such that it will occur in the future (HFA)$(HFA)$. However, possible world semantics for temporal logic reveals that this worry results from a simple confusion, and that the two interaction axioms are equally acceptable.

Note that the characteristic axiom of modal logic, (M):◻A→A$(M):
\Box A\rightarrow A$, is not acceptable for either H$H$ or G$G$, since A$A$ does not follow from ‘it always was the case that A$A$’, nor from ‘it always will be the case that A$A$’. However, it is acceptable in a closely related temporal logic where G$G$ is read ‘it is and always will be’, and H$H$ is read ‘it is and always was’.

Depending on which assumptions one makes about the structure of time, further axioms must be added to temporal logics. A list of axioms commonly adopted in temporal logics follows. An account of how they depend on the structure of time will be found in the section [Possible Worlds Semantics][4].

GA→GGA and HA→HHAGGA→GA and HHA→HAGA→FA and HA→PA

$$
\begin{align*}
GA\rightarrow GGA &\text{ and } HA\rightarrow HHA \\
GGA\rightarrow GA &\text{ and } HHA\rightarrow HA \\
GA\rightarrow FA &\text{ and } HA\rightarrow PA
\end{align*}
$$

It is interesting to note that certain combinations of past tense and future tense operators may be used to express complex tenses in English. For example, FPA$FPA$, corresponds to sentence A$A$ in the future perfect tense, (as in ‘20 seconds from now the light will have changed’). Similarly, PPA$PPA$ expresses the past perfect tense.

For a more detailed discussion, see the entry on [temporal logic][5].

## 5\. Conditional and Relevance Logics

The founder of modal logic, C. I. Lewis, defined a series of modal logics which did not have ◻$\Box$ as a primitive symbol. Lewis was concerned to develop a logic of conditionals that was free of the so called Paradoxes of Material Implication, namely the classical theorems A→(∼A→B)$A\rightarrow({\sim}A\rightarrow B)$ and B→(A→B)$B\rightarrow(A\rightarrow B)$. He introduced the symbol ⥽$\fishhook$ for “strict implication” and developed logics where neither A⥽(∼A⥽B)$A\fishhook ({\sim}A\fishhook B)$ nor B⥽(A⥽B)$B\fishhook (A\fishhook B)$ is provable. The modern practice has been to define A⥽B$A\fishhook B$ by ◻(A→B)$\Box(A\rightarrow B)$, and use modal logics governing ◻$\Box$ to obtain similar results. However, the provability of such formulas as (A&∼A)⥽B$(A \amp{\sim}A)\fishhook B$ in such logics seems at odds with concern for the paradoxes. Anderson and Belnap (1975) have developed systems R$\mathbf{R}$ (for Relevance Logic) and E$\mathbf{E}$ (for Entailment) which are designed to overcome such difficulties. These systems require revision of the standard systems of propositional logic. (See Mares (2004) and the entry on [relevance logic][6].)

David Lewis (1973) and others have developed [conditional logics][7] to handle counterfactual expressions, that is, expressions of the form ‘if A$A$ *were* to happen then B$B$ *would* happen’. (Kvart (1980) is another good source on the topic.) Counterfactual logics differ from those based on strict implication because the former reject while the latter accept contraposition.

## 6\. Possible Worlds Semantics

The purpose of logic is to characterize the difference between valid and invalid arguments. A logical system for a language is a set of axioms and rules designed to prove *exactly* the valid arguments statable in the language. Creating such a logic may be a difficult task. The logician must make sure that the system is *sound*, i.e. that every argument proven using the rules and axioms is in fact valid. Furthermore, the system should be *complete*, meaning that every valid argument has a proof in the system. Demonstrating soundness and completeness of formal systems is a logician’s central concern.

Such a demonstration cannot get underway until the concept of validity is defined rigorously. Formal semantics for a logic provides a definition of validity by characterizing the truth behavior of the sentences of the system. In propositional logic, validity can be defined using truth tables. A valid argument is simply one where every truth table row that makes its premises true also makes its conclusion true. However truth tables cannot be used to provide an account of validity in modal logics because there are no truth tables for expressions such as ‘it is necessary that’, ‘it is obligatory that’, and the like. (The problem is that the truth value of A$A$ does not determine the truth value for ◻A$\Box A$. For example, when A$A$ is ‘Dogs are dogs’, ◻A$\Box A$ is true, but when A$A$ is ‘Dogs are pets’, ◻A$\Box A$ is false.) Nevertheless, semantics for modal logics can be defined by introducing possible worlds. We will illustrate possible worlds semantics for a logic of necessity containing the symbols ∼,→${\sim},
\rightarrow$, and ◻$\Box$. Then we will explain how the same strategy may be adapted to other logics in the modal family.

In propositional logic, a valuation of the atomic sentences (or row of a truth table) assigns a truth value (T$(T$ or F)$F)$ to each propositional variable p$p$. Then the truth values of the complex sentences are calculated with truth tables. In modal semantics, a set W$W$ of possible worlds is introduced. A valuation then gives a truth value to each propositional variable *for each of the possible worlds* in W$W$. This means that value assigned to p$p$ for world w$w$ may differ from the value assigned to p$p$ for another world w′$w'$.

The truth value of the atomic sentence p$p$ at world w$w$ given by the valuation v$v$ may be written v(p,w)$v(p, w)$. Given this notation, the truth values (T$(T$ for true, F$F$ for false) of complex sentences of modal logic for a given valuation v$v$ (and member w$w$ of the set of worlds W)$W)$ may be defined by the following truth clauses. (‘iff’ abbreviates ‘if and only if’.)

v(∼A,w)\=T iff v(A,w)\=F.

$$
\tag{\({\sim}\)}
v({\sim}A, w)=T \text{ iff } v(A, w)=F.
$$

v(A→B,w)\=T iff v(A,w)\=F or v(B,w)\=T.

$$
\tag{\(\rightarrow\)}
v(A\rightarrow B, w)=T \text{ iff } v(A, w)=F \text{ or } v(B, w)=T.
$$

v(◻A,w)\=T iff for every world w′ in W,v(A,w′)\=T.

$$
\tag{5}
v(\Box A, w)=T \text{ iff for every world } w' \text{ in } W, v(A, w')=T.
$$

Clauses (∼)$({\sim})$ and (→)$(\rightarrow)$ simply describe the standard truth table behavior for negation and material implication respectively. According to (5), ◻A$\Box A$ is true (at a world w)$w)$ exactly when A$A$ is true in *all* possible worlds. Given the definition of ◊$\Diamond$, (namely, ◊A\=∼◻∼A)$\Diamond A =
{\sim}\Box{\sim}A)$ the truth condition (5) insures that ◊A$\Diamond
A$ is true just in case A$A$ is true in *some* possible world. Since the truth clauses for ◻$\Box$ and ◊$\Diamond$ involve the quantifiers ‘all’ and ‘some’ (respectively), the parallels in logical behavior between ◻$\Box$ and ∀x$\forall x$, and between ◊$\Diamond$ and ∃x$\exists x$ noted in section 2 will be expected.

Clauses (∼),(→)$({\sim}), (\rightarrow)$, and (5) allow us to calculate the truth value of any sentence at any world on a given valuation. A definition of validity is now just around the corner. An argument is *5-valid for a given set W* (of possible worlds) if and only if every valuation of the atomic sentences that assigns the premises T$T$ at a world in W$W$ also assigns the conclusion T$T$ at the same world. An argument is said to be *5-valid* iff it is valid for every non empty set W$W$ of possible worlds.

It has been shown that S5$\mathbf{S5}$ is sound and complete for 5-validity (hence our use of the symbol ‘5’). The 5-valid arguments are exactly the arguments provable in S5$\mathbf{S5}$. This result suggests that S5$\mathbf{S5}$ is the correct way to formulate a logic of necessity.

However, S5$\mathbf{S5}$ is not a reasonable logic for all members of the modal family. In deontic logic, temporal logic, and others, the analog of the truth condition (5) is clearly not appropriate; furthermore there are even conceptions of necessity where (5) should be rejected as well. The point is easiest to see in the case of temporal logic. Here, the members of W$W$ are moments of time, or worlds “frozen”, as it were, at an instant. For simplicity let us consider a *future* temporal logic, a logic where ◻A$\Box A$ reads: ‘it *will* always be the case that’. (We formulate the system using ◻$\Box$ rather than the traditional G$G$ so that the connections with other modal logics will be easier to appreciate.) The correct clause for ◻$\Box$ should say that ◻A$\Box A$ is true at time w$w$ iff A$A$ is true at all times *in the future of* w$w$. To restrict attention to the future, the relation R$R$ (for ‘earlier than’) needs to be introduced. Then the correct clause can be formulated as follows.

v(◻A,w)\=T iff for every w′, if wRw′, then v(A,w′)\=T.

$$
\tag{\(K\)}
 v(\Box A, w)=T \text{ iff for every } w',
 \text{ if } wRw', \text{ then } v(A, w')=T.
$$

This says that ◻A$\Box A$ is true at w$w$ just in case A$A$ is true at all times *after* w$w$.

Validity for this brand of temporal logic can now be defined. A *frame* ⟨W,R⟩$\langle W, R\rangle$ is a pair consisting of a non-empty set W$W$ (of worlds) and a binary relation R$R$ on W$W$. A *model* ⟨F,v⟩$\langle F, v\rangle$ consists of a frame F$F$, and a valuation v$v$ that assigns truth values to each atomic sentence at each world in W$W$. Given a model, the values of all complex sentences can be determined using (∼),(→)$({\sim}), (\rightarrow)$, and (K)$(K)$. An argument is K$\bK$\-valid just in case any model whose valuation assigns the premises T$T$ at a world also assigns the conclusion T$T$ at the same world. As the reader may have guessed from our use of ‘K$\bK$’, it has been shown that the simplest modal logic K$\bK$ is both sound and complete for K$\bK$\-validity.

## 7\. Modal Axioms and Conditions on Frames

One might assume from this discussion that K$\bK$ is the correct logic when ◻$\Box$ is read ‘it will always be the case that’. However, there are reasons for thinking that K$\bK$ is too weak. One obvious logical feature of the relation R$R$ (earlier than) is transitivity. If wRv(w$wRv (w$ is earlier than v)$v)$ and vRu(v$vRu
(v$ is earlier than u)$u)$, then it follows that wRu(w$wRu (w$ is earlier than u)$u)$. So let us define a new kind of validity that corresponds to this condition on R$R$. Let a 4-model be any model whose frame ⟨W,R⟩$\langle W, R\rangle$ is such that R$R$ is a transitive relation on W$W$. Then an argument is 4-valid iff any 4-model whose valuation assigns T$T$ to the premises at a world also assigns T$T$ to the conclusion at the same world. We use ‘4’ to describe such a transitive model because the logic which is adequate (both sound and complete) for 4-validity is K4$\mathbf{K4}$, the logic which results from adding the axiom (4): ◻A→◻◻A$\Box A\rightarrow \Box \Box
A$ to K$\bK$.

Transitivity is not the only property which we might want to require of the frame ⟨W,R⟩$\langle W, R\rangle$ if R$R$ is to be read ‘earlier than’ and W$W$ is a set of moments. One condition (which is only mildly controversial) is that there is no last moment of time, i.e. that for every world w$w$ there is some world v$v$ such that wRv$wRv$. This condition on frames is called *seriality.* Seriality corresponds to the axiom (D):◻A→◊A$(D): \Box
A\rightarrow \Diamond A$, in the same way that transitivity corresponds to (4). A D$\mathbf{D}$\-model is a K$\bK$\-model with a serial frame. From the concept of a D$\mathbf{D}$\-model the corresponding notion of D$\mathbf{D}$\-validity can be defined just as we did in the case of 4-validity. As you probably guessed, the system that is adequate with respect to D$\mathbf{D}$\-validity is KD$\mathbf{KD}$, or K$\bK$ plus (D)$(D)$. Not only that, but the system KD4$\mathbf{KD4}$ (that is K$\bK$ plus (4) and (D))$(D))$ is adequate with respect to D4$\mathbf{D4}$\-validity, where a D4$\mathbf{D4}$\-model is one where ⟨W,R⟩$\langle W, R\rangle$ is *both* serial and transitive.

Another property which we might want for the relation ‘earlier than’ is density, the condition which says that between any two times we can always find another. Density would be false if time were atomic, i.e. if there were intervals of time which could not be broken down into any smaller parts. Density corresponds to the axiom (C4):◻◻A→◻A$(C4): \Box \Box A\rightarrow \Box A$, the converse of (4), so for example, the system KC4$\mathbf{KC4}$, which is K$\bK$ plus (C4)$(C4)$ is adequate with respect to models where the frame ⟨W,R⟩$\langle W, R\rangle$ is dense, and KDC4$\mathbf{KDC4}$, adequate with respect to models whose frames are serial and dense, and so on.

Each of the modal logic axioms we have discussed corresponds to a condition on frames in the same way. The relationship between conditions on frames and corresponding axioms is one of the central topics in the study of modal logics. Once an interpretation of the intensional operator ◻$\Box$ has been decided on, the appropriate conditions on R$R$ can be determined to fix the corresponding notion of validity. This, in turn, allows us to select the right set of axioms for that logic.

For example, consider a deontic logic, where ◻$\Box$ is read ‘it is obligatory that’. Here the truth of ◻A$\Box A$ does not demand the truth of A$A$ in *every* possible world, but only in a subset of those worlds where people do what they ought. So we will want to introduce a relation R$R$ for this kind of logic as well, and use the truth clause (K)$(K)$ to evaluate ◻A$\Box A$ at a world. However, in this case, R$R$ is not earlier than. Instead wRw′$wRw'$ holds just in case world w′$w'$ is a morally acceptable variant of w$w$, i.e. a world that our actions can bring about which satisfies what is morally correct, or right, or just. Under such a reading, it should be clear that the relevant frames should obey seriality, the condition that requires that each possible world have a morally acceptable variant. The analysis of the properties desired for R$R$ makes it clear that a basic deontic logic can be formulated by adding the axiom (D)$(D)$ and to K$\bK$.

Even in modal logic, one may wish to restrict the range of possible worlds which are relevant in determining whether ◻A$\Box A$ is true at a given world. For example, I might say that it is necessary for me to pay my bills, even though I know full well that there is a possible world where I fail to pay them. In ordinary speech, the claim that A$A$ is necessary does not require the truth of A$A$ in *all* possible worlds, but rather only in a certain class of worlds which I have in mind (for example, worlds where I avoid penalties for failure to pay). In order to provide a generic treatment of necessity, we must say that ◻A$\Box A$ is true in w$w$ iff A$A$ is true in all worlds *that are related* to w$w$ in the right way. So for an operator ◻$\Box$ interpreted as necessity, we introduce a corresponding relation R$R$ on the set of possible worlds W$W$, traditionally called the accessibility relation. The accessibility relation R$R$ holds between worlds w$w$ and w′$w'$ iff w′$w'$ is possible given the facts of w$w$. Under this reading for R$R$, it should be clear that frames for modal logic should be reflexive. It follows that modal logics should be founded on M$M$, the system that results from adding (M)$(M)$ to K$\bK$. Depending on exactly how the accessibility relation is understood, symmetry and transitivity may also be desired.

A list of some of the more commonly discussed conditions on frames and their corresponding axioms along with a map showing the relationship between the various modal logics can be found in the next section.

## 8\. Map of the Relationships Between Modal Logics

The following diagram shows the relationships between the best known modal logics, namely logics that can be formed by adding a selection of the axioms (D),(M)$(D), (M)$, (4), (B)$(B)$ and (5) to K$\bK$. A list of these (and other) axioms along with their corresponding frame conditions can be found below the diagram.

Diagram of Modal Logics

In this chart, systems are given by the list of their axioms. So, for example M4B$\mathbf{M4B}$ is the result of adding (M)$(M)$, (4) and (B)$(B)$ to K$\bK$. In boldface, we have indicated traditional names of some systems. When system S$\mathbf{S}$ appears below and/or to the left of S′$\mathbf{S}'$ connected by a line, then S′$\mathbf{S}'$ is an extension of S$\mathbf{S}$. This means that every argument provable in S$\mathbf{S}$ is provable in S′$\mathbf{S}'$, but S$\mathbf{S}$ is weaker than S′$\mathbf{S}'$, i.e. not all arguments provable in S′$\mathbf{S}'$ are provable in S$\mathbf{S}$.

The following list indicates axioms, their names, and the corresponding conditions on the accessibility relation R$R$, for axioms so far discussed in this encyclopedia entry.

<table><tbody><tr><td><strong>Name</strong></td><td><strong>Axiom</strong></td><td><strong>Condition on Frames</strong></td><td><strong>R is…</strong></td></tr><tr><td><span><span id="MJXp-Span-1657"><span id="MJXp-Span-1658">(</span><span id="MJXp-Span-1659">D</span><span id="MJXp-Span-1660">)</span></span></span><span id="MathJax-Element-397-Frame" tabindex="0"><nobr><span id="MathJax-Span-2237"><span><span><span id="MathJax-Span-2238"><span id="MathJax-Span-2239">(</span><span id="MathJax-Span-2240">D</span><span id="MathJax-Span-2241">)</span></span></span></span></span></nobr></span></td><td><span><span id="MJXp-Span-1661"><span id="MJXp-Span-1662">◻</span><span id="MJXp-Span-1663">A</span><span id="MJXp-Span-1664">→</span><span id="MJXp-Span-1665">◊</span><span id="MJXp-Span-1666">A</span></span></span><span id="MathJax-Element-398-Frame" tabindex="0"><nobr><span id="MathJax-Span-2242"><span><span><span id="MathJax-Span-2243"><span id="MathJax-Span-2244">□</span><span id="MathJax-Span-2245">A</span><span id="MathJax-Span-2246">→</span><span id="MathJax-Span-2247">◊</span><span id="MathJax-Span-2248">A</span></span></span></span></span></nobr></span></td><td><span><span id="MJXp-Span-1667"><span id="MJXp-Span-1668">∃</span><span id="MJXp-Span-1669">u</span><span id="MJXp-Span-1670">w</span><span id="MJXp-Span-1671">R</span><span id="MJXp-Span-1672">u</span></span></span><span id="MathJax-Element-399-Frame" tabindex="0"><nobr><span id="MathJax-Span-2249"><span><span><span id="MathJax-Span-2250"><span id="MathJax-Span-2251">∃</span><span id="MathJax-Span-2252">u</span><span id="MathJax-Span-2253">w</span><span id="MathJax-Span-2254">R</span><span id="MathJax-Span-2255">u</span></span></span></span></span></nobr></span></td><td>Serial</td></tr><tr><td><span><span id="MJXp-Span-1673"><span id="MJXp-Span-1674">(</span><span id="MJXp-Span-1675">M</span><span id="MJXp-Span-1676">)</span></span></span><span id="MathJax-Element-400-Frame" tabindex="0"><nobr><span id="MathJax-Span-2256"><span><span><span id="MathJax-Span-2257"><span id="MathJax-Span-2258">(</span><span id="MathJax-Span-2259">M<span></span></span><span id="MathJax-Span-2260">)</span></span></span></span></span></nobr></span></td><td><span><span id="MJXp-Span-1677"><span id="MJXp-Span-1678">◻</span><span id="MJXp-Span-1679">A</span><span id="MJXp-Span-1680">→</span><span id="MJXp-Span-1681">A</span></span></span><span id="MathJax-Element-401-Frame" tabindex="0"><nobr><span id="MathJax-Span-2261"><span><span><span id="MathJax-Span-2262"><span id="MathJax-Span-2263">□</span><span id="MathJax-Span-2264">A</span><span id="MathJax-Span-2265">→</span><span id="MathJax-Span-2266">A</span></span></span></span></span></nobr></span></td><td><span><span id="MJXp-Span-1682"><span id="MJXp-Span-1683">w</span><span id="MJXp-Span-1684">R</span><span id="MJXp-Span-1685">w</span></span></span><span id="MathJax-Element-402-Frame" tabindex="0"><nobr><span id="MathJax-Span-2267"><span><span><span id="MathJax-Span-2268"><span id="MathJax-Span-2269">w</span><span id="MathJax-Span-2270">R</span><span id="MathJax-Span-2271">w</span></span></span></span></span></nobr></span></td><td>Reflexive</td></tr><tr><td>(4)</td><td><span><span id="MJXp-Span-1686"><span id="MJXp-Span-1687">◻</span><span id="MJXp-Span-1688">A</span><span id="MJXp-Span-1689">→</span><span id="MJXp-Span-1690">◻</span><span id="MJXp-Span-1691">◻</span><span id="MJXp-Span-1692">A</span></span></span><span id="MathJax-Element-403-Frame" tabindex="0"><nobr><span id="MathJax-Span-2272"><span><span><span id="MathJax-Span-2273"><span id="MathJax-Span-2274">□</span><span id="MathJax-Span-2275">A</span><span id="MathJax-Span-2276">→</span><span id="MathJax-Span-2277">□</span><span id="MathJax-Span-2278">□</span><span id="MathJax-Span-2279">A</span></span></span></span></span></nobr></span></td><td><span><span id="MJXp-Span-1693"><span id="MJXp-Span-1694">(</span><span id="MJXp-Span-1695">w</span><span id="MJXp-Span-1696">R</span><span id="MJXp-Span-1697">v</span><span id="MJXp-Span-1698"><span id="MJXp-Span-1699">&amp;</span></span><span id="MJXp-Span-1700">v</span><span id="MJXp-Span-1701">R</span><span id="MJXp-Span-1702">u</span><span id="MJXp-Span-1703">)</span><span id="MJXp-Span-1704">⇒</span><span id="MJXp-Span-1705">w</span><span id="MJXp-Span-1706">R</span><span id="MJXp-Span-1707">u</span></span></span><span id="MathJax-Element-404-Frame" tabindex="0"><nobr><span id="MathJax-Span-2280"><span><span><span id="MathJax-Span-2281"><span id="MathJax-Span-2282">(</span><span id="MathJax-Span-2283">w</span><span id="MathJax-Span-2284">R</span><span id="MathJax-Span-2285">v</span><span id="MathJax-Span-2286"><span id="MathJax-Span-2287"><span id="MathJax-Span-2288">&amp;</span></span></span><span id="MathJax-Span-2289">v</span><span id="MathJax-Span-2290">R</span><span id="MathJax-Span-2291">u</span><span id="MathJax-Span-2292">)</span><span id="MathJax-Span-2293">⇒</span><span id="MathJax-Span-2294">w</span><span id="MathJax-Span-2295">R</span><span id="MathJax-Span-2296">u</span></span></span></span></span></nobr></span></td><td>Transitive</td></tr><tr><td><span><span id="MJXp-Span-1708"><span id="MJXp-Span-1709">(</span><span id="MJXp-Span-1710">B</span><span id="MJXp-Span-1711">)</span></span></span><span id="MathJax-Element-405-Frame" tabindex="0"><nobr><span id="MathJax-Span-2297"><span><span><span id="MathJax-Span-2298"><span id="MathJax-Span-2299">(</span><span id="MathJax-Span-2300">B</span><span id="MathJax-Span-2301">)</span></span></span></span></span></nobr></span></td><td><span><span id="MJXp-Span-1712"><span id="MJXp-Span-1713">A</span><span id="MJXp-Span-1714">→</span><span id="MJXp-Span-1715">◻</span><span id="MJXp-Span-1716">◊</span><span id="MJXp-Span-1717">A</span></span></span><span id="MathJax-Element-406-Frame" tabindex="0"><nobr><span id="MathJax-Span-2302"><span><span><span id="MathJax-Span-2303"><span id="MathJax-Span-2304">A</span><span id="MathJax-Span-2305">→</span><span id="MathJax-Span-2306">□</span><span id="MathJax-Span-2307">◊</span><span id="MathJax-Span-2308">A</span></span></span></span></span></nobr></span></td><td><span><span id="MJXp-Span-1718"><span id="MJXp-Span-1719">w</span><span id="MJXp-Span-1720">R</span><span id="MJXp-Span-1721">v</span><span id="MJXp-Span-1722">⇒</span><span id="MJXp-Span-1723">v</span><span id="MJXp-Span-1724">R</span><span id="MJXp-Span-1725">w</span></span></span><span id="MathJax-Element-407-Frame" tabindex="0"><nobr><span id="MathJax-Span-2309"><span><span><span id="MathJax-Span-2310"><span id="MathJax-Span-2311">w</span><span id="MathJax-Span-2312">R</span><span id="MathJax-Span-2313">v</span><span id="MathJax-Span-2314">⇒</span><span id="MathJax-Span-2315">v</span><span id="MathJax-Span-2316">R</span><span id="MathJax-Span-2317">w</span></span></span></span></span></nobr></span></td><td>Symmetric</td></tr><tr><td>(5)</td><td><span><span id="MJXp-Span-1726"><span id="MJXp-Span-1727">◊</span><span id="MJXp-Span-1728">A</span><span id="MJXp-Span-1729">→</span><span id="MJXp-Span-1730">◻</span><span id="MJXp-Span-1731">◊</span><span id="MJXp-Span-1732">A</span></span></span><span id="MathJax-Element-408-Frame" tabindex="0"><nobr><span id="MathJax-Span-2318"><span><span><span id="MathJax-Span-2319"><span id="MathJax-Span-2320">◊</span><span id="MathJax-Span-2321">A</span><span id="MathJax-Span-2322">→</span><span id="MathJax-Span-2323">□</span><span id="MathJax-Span-2324">◊</span><span id="MathJax-Span-2325">A</span></span></span></span></span></nobr></span></td><td><span><span id="MJXp-Span-1733"><span id="MJXp-Span-1734">(</span><span id="MJXp-Span-1735">w</span><span id="MJXp-Span-1736">R</span><span id="MJXp-Span-1737">v</span><span id="MJXp-Span-1738"><span id="MJXp-Span-1739">&amp;</span></span><span id="MJXp-Span-1740">w</span><span id="MJXp-Span-1741">R</span><span id="MJXp-Span-1742">u</span><span id="MJXp-Span-1743">)</span><span id="MJXp-Span-1744">⇒</span><span id="MJXp-Span-1745">v</span><span id="MJXp-Span-1746">R</span><span id="MJXp-Span-1747">u</span></span></span><span id="MathJax-Element-409-Frame" tabindex="0"><nobr><span id="MathJax-Span-2326"><span><span><span id="MathJax-Span-2327"><span id="MathJax-Span-2328">(</span><span id="MathJax-Span-2329">w</span><span id="MathJax-Span-2330">R</span><span id="MathJax-Span-2331">v</span><span id="MathJax-Span-2332"><span id="MathJax-Span-2333"><span id="MathJax-Span-2334">&amp;</span></span></span><span id="MathJax-Span-2335">w</span><span id="MathJax-Span-2336">R</span><span id="MathJax-Span-2337">u</span><span id="MathJax-Span-2338">)</span><span id="MathJax-Span-2339">⇒</span><span id="MathJax-Span-2340">v</span><span id="MathJax-Span-2341">R</span><span id="MathJax-Span-2342">u</span></span></span></span></span></nobr></span></td><td>Euclidean<br></td></tr><tr><td><span><span id="MJXp-Span-1748"><span id="MJXp-Span-1749">(</span><span id="MJXp-Span-1750">C</span><span id="MJXp-Span-1751">D</span><span id="MJXp-Span-1752">)</span></span></span><span id="MathJax-Element-410-Frame" tabindex="0"><nobr><span id="MathJax-Span-2343"><span><span><span id="MathJax-Span-2344"><span id="MathJax-Span-2345">(</span><span id="MathJax-Span-2346">C<span></span></span><span id="MathJax-Span-2347">D</span><span id="MathJax-Span-2348">)</span></span></span></span></span></nobr></span></td><td><span><span id="MJXp-Span-1753"><span id="MJXp-Span-1754">◊</span><span id="MJXp-Span-1755">A</span><span id="MJXp-Span-1756">→</span><span id="MJXp-Span-1757">◻</span><span id="MJXp-Span-1758">A</span></span></span><span id="MathJax-Element-411-Frame" tabindex="0"><nobr><span id="MathJax-Span-2349"><span><span><span id="MathJax-Span-2350"><span id="MathJax-Span-2351">◊</span><span id="MathJax-Span-2352">A</span><span id="MathJax-Span-2353">→</span><span id="MathJax-Span-2354">□</span><span id="MathJax-Span-2355">A</span></span></span></span></span></nobr></span></td><td><span><span id="MJXp-Span-1759"><span id="MJXp-Span-1760">(</span><span id="MJXp-Span-1761">w</span><span id="MJXp-Span-1762">R</span><span id="MJXp-Span-1763">v</span><span id="MJXp-Span-1764"><span id="MJXp-Span-1765">&amp;</span></span><span id="MJXp-Span-1766">w</span><span id="MJXp-Span-1767">R</span><span id="MJXp-Span-1768">u</span><span id="MJXp-Span-1769">)</span><span id="MJXp-Span-1770">⇒</span><span id="MJXp-Span-1771">v</span><span id="MJXp-Span-1772">=</span><span id="MJXp-Span-1773">u</span></span></span><span id="MathJax-Element-412-Frame" tabindex="0"><nobr><span id="MathJax-Span-2356"><span><span><span id="MathJax-Span-2357"><span id="MathJax-Span-2358">(</span><span id="MathJax-Span-2359">w</span><span id="MathJax-Span-2360">R</span><span id="MathJax-Span-2361">v</span><span id="MathJax-Span-2362"><span id="MathJax-Span-2363"><span id="MathJax-Span-2364">&amp;</span></span></span><span id="MathJax-Span-2365">w</span><span id="MathJax-Span-2366">R</span><span id="MathJax-Span-2367">u</span><span id="MathJax-Span-2368">)</span><span id="MathJax-Span-2369">⇒</span><span id="MathJax-Span-2370">v</span><span id="MathJax-Span-2371">=</span><span id="MathJax-Span-2372">u</span></span></span></span></span></nobr></span></td><td>Functional</td></tr><tr><td><span><span id="MJXp-Span-1774"><span id="MJXp-Span-1775">(</span><span id="MJXp-Span-1776">◻</span><span id="MJXp-Span-1777">M</span><span id="MJXp-Span-1778">)</span></span></span><span id="MathJax-Element-413-Frame" tabindex="0"><nobr><span id="MathJax-Span-2373"><span><span><span id="MathJax-Span-2374"><span id="MathJax-Span-2375">(</span><span id="MathJax-Span-2376">□</span><span id="MathJax-Span-2377">M<span></span></span><span id="MathJax-Span-2378">)</span></span></span></span></span></nobr></span></td><td><span><span id="MJXp-Span-1779"><span id="MJXp-Span-1780">◻</span><span id="MJXp-Span-1781">(</span><span id="MJXp-Span-1782">◻</span><span id="MJXp-Span-1783">A</span><span id="MJXp-Span-1784">→</span><span id="MJXp-Span-1785">A</span><span id="MJXp-Span-1786">)</span></span></span><span id="MathJax-Element-414-Frame" tabindex="0"><nobr><span id="MathJax-Span-2379"><span><span><span id="MathJax-Span-2380"><span id="MathJax-Span-2381">□</span><span id="MathJax-Span-2382">(</span><span id="MathJax-Span-2383">□</span><span id="MathJax-Span-2384">A</span><span id="MathJax-Span-2385">→</span><span id="MathJax-Span-2386">A</span><span id="MathJax-Span-2387">)</span></span></span></span></span></nobr></span></td><td><span><span id="MJXp-Span-1787"><span id="MJXp-Span-1788">w</span><span id="MJXp-Span-1789">R</span><span id="MJXp-Span-1790">v</span><span id="MJXp-Span-1791">⇒</span><span id="MJXp-Span-1792">v</span><span id="MJXp-Span-1793">R</span><span id="MJXp-Span-1794">v</span></span></span><span id="MathJax-Element-415-Frame" tabindex="0"><nobr><span id="MathJax-Span-2388"><span><span><span id="MathJax-Span-2389"><span id="MathJax-Span-2390">w</span><span id="MathJax-Span-2391">R</span><span id="MathJax-Span-2392">v</span><span id="MathJax-Span-2393">⇒</span><span id="MathJax-Span-2394">v</span><span id="MathJax-Span-2395">R</span><span id="MathJax-Span-2396">v</span></span></span></span></span></nobr></span></td><td>Shift<br>Reflexive</td></tr><tr><td><span><span id="MJXp-Span-1795"><span id="MJXp-Span-1796">(</span><span id="MJXp-Span-1797">C</span><span id="MJXp-Span-1798">4</span><span id="MJXp-Span-1799">)</span></span></span><span id="MathJax-Element-416-Frame" tabindex="0"><nobr><span id="MathJax-Span-2397"><span><span><span id="MathJax-Span-2398"><span id="MathJax-Span-2399">(</span><span id="MathJax-Span-2400">C<span></span></span><span id="MathJax-Span-2401">4</span><span id="MathJax-Span-2402">)</span></span></span></span></span></nobr></span></td><td><span><span id="MJXp-Span-1800"><span id="MJXp-Span-1801">◻</span><span id="MJXp-Span-1802">◻</span><span id="MJXp-Span-1803">A</span><span id="MJXp-Span-1804">→</span><span id="MJXp-Span-1805">◻</span><span id="MJXp-Span-1806">A</span></span></span><span id="MathJax-Element-417-Frame" tabindex="0"><nobr><span id="MathJax-Span-2403"><span><span><span id="MathJax-Span-2404"><span id="MathJax-Span-2405">□</span><span id="MathJax-Span-2406">□</span><span id="MathJax-Span-2407">A</span><span id="MathJax-Span-2408">→</span><span id="MathJax-Span-2409">□</span><span id="MathJax-Span-2410">A</span></span></span></span></span></nobr></span></td><td><span><span id="MJXp-Span-1807"><span id="MJXp-Span-1808">w</span><span id="MJXp-Span-1809">R</span><span id="MJXp-Span-1810">v</span><span id="MJXp-Span-1811">⇒</span><span id="MJXp-Span-1812">∃</span><span id="MJXp-Span-1813">u</span><span id="MJXp-Span-1814">(</span><span id="MJXp-Span-1815">w</span><span id="MJXp-Span-1816">R</span><span id="MJXp-Span-1817">u</span><span id="MJXp-Span-1818"><span id="MJXp-Span-1819">&amp;</span></span><span id="MJXp-Span-1820">u</span><span id="MJXp-Span-1821">R</span><span id="MJXp-Span-1822">v</span><span id="MJXp-Span-1823">)</span></span></span><span id="MathJax-Element-418-Frame" tabindex="0"><nobr><span id="MathJax-Span-2411"><span><span><span id="MathJax-Span-2412"><span id="MathJax-Span-2413">w</span><span id="MathJax-Span-2414">R</span><span id="MathJax-Span-2415">v</span><span id="MathJax-Span-2416">⇒</span><span id="MathJax-Span-2417">∃</span><span id="MathJax-Span-2418">u</span><span id="MathJax-Span-2419">(</span><span id="MathJax-Span-2420">w</span><span id="MathJax-Span-2421">R</span><span id="MathJax-Span-2422">u</span><span id="MathJax-Span-2423"><span id="MathJax-Span-2424"><span id="MathJax-Span-2425">&amp;</span></span></span><span id="MathJax-Span-2426">u</span><span id="MathJax-Span-2427">R</span><span id="MathJax-Span-2428">v</span><span id="MathJax-Span-2429">)</span></span></span></span></span></nobr></span></td><td>Dense</td></tr><tr><td><span><span id="MJXp-Span-1824"><span id="MJXp-Span-1825">(</span><span id="MJXp-Span-1826">C</span><span id="MJXp-Span-1827">)</span></span></span><span id="MathJax-Element-419-Frame" tabindex="0"><nobr><span id="MathJax-Span-2430"><span><span><span id="MathJax-Span-2431"><span id="MathJax-Span-2432">(</span><span id="MathJax-Span-2433">C<span></span></span><span id="MathJax-Span-2434">)</span></span></span></span></span></nobr></span></td><td><span><span id="MJXp-Span-1828"><span id="MJXp-Span-1829">◊</span><span id="MJXp-Span-1830">◻</span><span id="MJXp-Span-1831">A</span><span id="MJXp-Span-1832">→</span><span id="MJXp-Span-1833">◻</span><span id="MJXp-Span-1834">◊</span><span id="MJXp-Span-1835">A</span></span></span><span id="MathJax-Element-420-Frame" tabindex="0"><nobr><span id="MathJax-Span-2435"><span><span><span id="MathJax-Span-2436"><span id="MathJax-Span-2437">◊</span><span id="MathJax-Span-2438">□</span><span id="MathJax-Span-2439">A</span><span id="MathJax-Span-2440">→</span><span id="MathJax-Span-2441">□</span><span id="MathJax-Span-2442">◊</span><span id="MathJax-Span-2443">A</span></span></span></span></span></nobr></span></td><td><span><span id="MJXp-Span-1836"><span id="MJXp-Span-1837">w</span><span id="MJXp-Span-1838">R</span><span id="MJXp-Span-1839">v</span><span id="MJXp-Span-1840"><span id="MJXp-Span-1841">&amp;</span></span><span id="MJXp-Span-1842">w</span><span id="MJXp-Span-1843">R</span><span id="MJXp-Span-1844">x</span><span id="MJXp-Span-1845">⇒</span><span id="MJXp-Span-1846">∃</span><span id="MJXp-Span-1847">u</span><span id="MJXp-Span-1848">(</span><span id="MJXp-Span-1849">v</span><span id="MJXp-Span-1850">R</span><span id="MJXp-Span-1851">u</span><span id="MJXp-Span-1852"><span id="MJXp-Span-1853">&amp;</span></span><span id="MJXp-Span-1854">x</span><span id="MJXp-Span-1855">R</span><span id="MJXp-Span-1856">u</span><span id="MJXp-Span-1857">)</span></span></span><span id="MathJax-Element-421-Frame" tabindex="0"><nobr><span id="MathJax-Span-2444"><span><span><span id="MathJax-Span-2445"><span id="MathJax-Span-2446">w</span><span id="MathJax-Span-2447">R</span><span id="MathJax-Span-2448">v</span><span id="MathJax-Span-2449"><span id="MathJax-Span-2450"><span id="MathJax-Span-2451">&amp;</span></span></span><span id="MathJax-Span-2452">w</span><span id="MathJax-Span-2453">R</span><span id="MathJax-Span-2454">x</span><span id="MathJax-Span-2455">⇒</span><span id="MathJax-Span-2456">∃</span><span id="MathJax-Span-2457">u</span><span id="MathJax-Span-2458">(</span><span id="MathJax-Span-2459">v</span><span id="MathJax-Span-2460">R</span><span id="MathJax-Span-2461">u</span><span id="MathJax-Span-2462"><span id="MathJax-Span-2463"><span id="MathJax-Span-2464">&amp;</span></span></span><span id="MathJax-Span-2465">x</span><span id="MathJax-Span-2466">R</span><span id="MathJax-Span-2467">u</span><span id="MathJax-Span-2468">)</span></span></span></span></span></nobr></span></td><td>Convergent</td></tr></tbody></table>

In the list of conditions on frames, and in the rest of this article, the variables ‘w$w$’, ‘v$v$’, ‘u$u$’, ‘x$x$’ and the quantifier ‘∃u$\exists u$’ are understood to range over W$W$. ‘&’ abbreviates ‘and’ and ‘⇒$\Rightarrow$’ abbreviates ‘if…then’.

The notion of correspondence between axioms and frame conditions that is at issue here was explained in the previous section. When S is a list of axioms and F(S) is the corresponding set of frame conditions, then S corresponds to F(S) exactly when the system K+S is adequate (sound and complete) for F(S)-validity, that is, an argument is provable in K+S iff it is F(S)-valid. Several stronger notions of correspondence between axioms and frame conditions have emerged in research on modal logic.

## 9\. The General Axiom

The correspondence between axioms and conditions on frames may seem something of a mystery. A beautiful result of Lemmon and Scott (1977) goes a long way towards explaining those relationships. Their theorem concerned axioms which have the following form:

◊h◻iA→◻j◊kA

$$
\tag{\(G\)}
\Diamond^h \Box^i A \rightarrow \Box^j\Diamond^k A
$$

We use the notation ‘◊n$\Diamond^n$’ to represent n$n$ diamonds in a row, so, for example, ‘◊3$\Diamond^3$’ abbreviates a string of three diamonds: ‘◊◊◊$\Diamond \Diamond
\Diamond$’. Similarly ‘◻n$\Box^n$’ represents a string of n$n$ boxes. When the values of h,i,j$h, i, j$, and k$k$ are all 1, we have axiom (C)$(C)$:

◊◻A→◻◊A\=◊1◻1A→◻1◊1A

$$
\tag{\(C\)}
\Diamond \Box A \rightarrow \Box \Diamond A = \Diamond^1\Box^1 A \rightarrow \Box^1\Diamond^1 A
$$

The axiom (B)$(B)$ results from setting h$h$ and i$i$ to 0, and letting j$j$ and k$k$ be 1:

A→◻◊A\=◊0◻0A→◻1◊1A

$$
\tag{\(B\)}
A \rightarrow \Box \Diamond A = \Diamond^0\Box^0 A \rightarrow \Box^1\Diamond^1 A
$$

To obtain (4), we may set h$h$ and k$k$ to 0, set i$i$ to 1 and j$j$ to 2:

◻A→◻◻A\=◊0◻1A→◻2◊0A

$$
\tag{4}
\Box A \rightarrow \Box \Box A = \Diamond^0\Box^1 A \rightarrow \Box^2\Diamond^0 A
$$

Many (but not all) axioms of modal logic can be obtained by setting the right values for the parameters in (G)$(G)$

Our next task will be to give the condition on frames which corresponds to (G)$(G)$ for a given selection of values for h,i,j$h, i,
j$, and k$k$. In order to do so, we will need a definition. The composition of two relations R$R$ and R′$R'$ is a new relation R∘R′$R
\circ R'$ which is defined as follows:

wR∘R′v iff for some u,wRu and uR′v.

$$
wR \circ R'v \text{ iff for some } u, wRu \text{ and } uR'v.
$$

For example, if R$R$ is the relation of being a brother, and R′$R'$ is the relation of being a parent then R∘R′$R \circ R'$ is the relation of being an uncle, (because w$w$ is the uncle of v$v$ iff for some person u$u$, both w$w$ is the brother of u$u$ and u$u$ is the parent of v)$v)$. A relation may be composed with itself. For example, when R$R$ is the relation of being a parent, then R∘R$R \circ R$ is the relation of being a grandparent, and R∘R∘R$R \circ R \circ R$ is the relation of being a great-grandparent. It will be useful to write ‘Rn$R^n$’, for the result of composing R$R$ with itself n$n$ times. So R2$R^2$ is R∘R$R \circ R$, and R4$R^4$ is R∘R∘R∘R$R \circ R
\circ R \circ R$. We will let R1$R^1$ be R$R$, and R0$R^0$ will be the identity relation, i.e. wR0v$wR^0 v$ iff w\=v$w=v$.

We may now state the Scott-Lemmon result. It is that the condition on frames which corresponds exactly to any axiom of the shape (G)$(G)$ is the following.

wRhv&wRju⇒∃x(vRix&uRkx)

$$
\tag{\(hijk\)-Convergence}
wR^h v \amp wR^j u \Rightarrow \exists x (vR^i x \amp uR^k x)
$$

It is interesting to see how the familiar conditions on R$R$ result from setting the values for h$h$, i$i$, j$j$, and k$k$ according to the values in the corresponding axiom. For example, consider (5). In this case i\=0$i=0$, and h\=j\=k\=1$h=j=k=1$. So the corresponding condition is

wRv&wRu⇒∃x(vR0x&uRx).

$$
wRv \amp wRu \Rightarrow \exists x (vR^0 x \amp uRx).
$$

We have explained that R0$R^0$ is the identity relation. So if vR0x$vR^0
x$ then v\=x$v=x$. But ∃x(v\=x&uRx)$\exists x (v=x \amp uRx)$, is equivalent to uRv$uRv$, and so the Euclidean condition is obtained:

(wRv&wRu)⇒uRv.

$$
(wRv \amp wRu) \Rightarrow uRv.
$$

In the case of axiom (4), h\=0,i\=1,j\=2$h=0, i=1, j=2$ and k\=0$k=0$. So the corresponding condition on frames is

(w\=v&wR2u)⇒∃x(vRx&u\=x).

$$
(w=v \amp wR^2 u) \Rightarrow \exists x (vRx \amp u=x).
$$

Resolving the identities this amounts to:

vR2u⇒vRu.

$$
vR^2 u \Rightarrow vRu.
$$

By the definition of R2,vR2u$R^2, vR^2 u$ iff ∃x(vRx&xRu)$\exists x(vRx \amp xRu)$, so this comes to:

∃x(vRx&xRu)⇒vRu,

$$
\exists x(vRx \amp xRu) \Rightarrow vRu,
$$

which by predicate logic, is equivalent to transitivity.

vRx&xRu⇒vRu.

$$
vRx \amp xRu \Rightarrow vRu.
$$

The reader may find it a pleasant exercise to see how the corresponding conditions fall out of hijk-Convergence when the values of the parameters h$h$, i$i$, j$j$, and k$k$ are set by other axioms.

The Scott-Lemmon results provides a quick method for establishing results about the relationship between axioms and their corresponding frame conditions. Since they showed the adequacy of any logic that extends K$\bK$ with a selection of axioms of the form (G)$(G)$ with respect to models that satisfy the corresponding set of frame conditions, they provided “wholesale” adequacy proofs for the majority of systems in the modal family. Sahlqvist (1975) has discovered important generalizations of the Scott-Lemmon result covering a much wider range of axiom types.

The reader should be warned, however, that the neat correspondence between axioms and conditions on frames is atypical. There are condtions on frames that correspond to no axioms, and there are even conditions on frames for which no system is adequate. (For an example see Boolos, 1993, pp. 148ff.)

## 10\. Two Dimensional Semantics

[Two dimensional semantics][8] is a variant of possible world semantics that uses two (or more) kinds of parameters in truth evaluation, rather than possible worlds alone. For example, a logic of indexical expressions, such as ‘I’, ‘here’, ‘now’, and the like, needs to bring in the linguistic context (or context for short). Given a context c\=⟨s,p,t⟩$c = \langle s, p, t\rangle$ where s$s$ is the speaker, p$p$ the place, and t$t$ the time of utterance, then ‘I’ refers to s$s$, ‘here’ to p$p$, and ‘now’ to t$t$. So in the context c\=⟨$c = \langle$Jim Garson, Houston, 3:00 P.M. CST on 4/3/2014⟩$2014\rangle$ ‘I am here now’ is T iff Jim Garson is in Houston, at 3:00 P.M. CST on 4/3/2014.

In possible worlds semantics, a sentence’s truth-value depended on the world at which it is evaluated. However, indexicals bring in a second dimension – so we need to generalize again. Kaplan (1989) defines the character of a sentence B to be a function from the set of (linguistic) contexts to the content (or intension) of B, where the content, in turn, is simply the intension of B, that is a function from possible worlds to truth-values. Here, truth evaluation is doubly dependent – on both linguistic contexts and possible worlds.

One of Kaplan’s most interesting observations is that some indexical sentences are contingent, but at the same time analytically true. An example is (1).

-   (1) I am here now.

Just from the meaning of the words, you can see that (1) must be true in any context c\=⟨s,p,t⟩$c = \langle s, p, t\rangle$. After all, c$c$ counts as a linguistic context just in case s$s$ is a speaker who is at place p$p$ at time t$t$. Therefore (1) is true at c$c$, and that means that the pattern of truth-values (1) has along the context dimension must be all Ts (given the possible world is held fixed). This suggests that the context dimension is apt for tracking analytic knowledge obtained from the mastery of our language. On the other hand, the possible-worlds dimension keeps track of what is necessary. Holding the context fixed, there there are possible worlds where (1) is false. For example, when c\=⟨$c = \langle$Jim Garson, Houston, 3:00 P.M. CST on 4/3/2014⟩$2014\rangle$, (1) fails at c$c$ in a possible world where Jim Garson is in Boston at 3:00 P.M. CST on 4/3/2014. It follows that ‘I am here now’ is a contingent analytic truth. Therefore, two-dimensional semantics can handle situations where necessity and analyticity come apart.

Another example where bringing in two dimension is useful is in the logic for an open future (Thomason, 1984; Belnap, et al., 2001). Here one employs a temporal structure where many possible future histories extend from a given time. Consider (2).

-   (2) Joe will order a sea battle tomorrow.

If (2) is contingent, then there is a possible history where the battle occurs the day after the time of evaluation, and another one where it does not occur then. So to evaluate (2) you need to know two things: what is the time t of evaluation, and which of the histories h that run through t is the one to be considered. So a sentence in such a logic is evaluated at a pair ⟨t,h⟩$\langle t, h\rangle$.

Another problem resolved by two-dimensional semantics is the interaction between ‘now’ and other temporal expressions like the future tense ‘it will be the case that’. Then it is plausible to think that ‘now’ refers to the time of evaluation. So we would have the following truth condition:

v(NowB,t)\=T iff v(B,t)\=T.

$$
\tag{Now}
v(\text{Now} B, t)=\mathrm{T} \text{ iff } v(B, t)=\mathrm{T}.
$$

However this will not work for sentences like (3).

-   (3) At some point in the future, everyone now living will be unknown.

With F$\mathrm{F}$ as the future tense operator, (3) might be translated:

F∀x(NowLx→Ux).

$$
\tag{\(3'\)}
\mathrm{F}\forall x(\text{Now} Lx \rightarrow Ux).
$$

(The correct translation cannot be ∀x(NowLx→FUx)$\forall x(\text{Now} Lx
\rightarrow \mathrm{F}Ux)$, with F$\mathrm{F}$ taking narrow scope, because (3) says there is a future time when all things now living are unknown together, not that each living thing will be unknown in some future time of its own). When the truth conditions for (3)′$'$ calculated, using (Now) and the truth condition (F$\mathrm{F}$) for F$\mathrm{F}$, it turns out that (3)′$'$ is true at time u$u$ iff there is a time t$t$ after u$u$ such that everything that is living at t$t$ (not u$u$!) is unknown at t$t$.

v(FB,t)\=T iff for some time u later than t,v(B,u)\=T.

$$
\tag{F}
v(\mathrm{F}B, t)=\mathrm{T} \text{ iff for some time } u
 \text{ later than } t, v(B, u)=\mathrm{T}.
$$

To evaluate (3)′$'$ correctly so that it matches what we mean by (3), we must make sure that ‘now’ always refers back to the original time of utterance when ‘now’ lies in the scope of other temporal operators such as F. Therefore we need to keep track of which time is the time of utterance (u)$(u)$ as well as which time is the time of evaluation (t)$(t)$. So our indices take the form of a pair ⟨u,e⟩$\langle u,
e\rangle$, where u$u$ is the time of utterance, and e$e$ is the time of evaluation. Then the truth condition (Now) is revised to (2DNow).

v(NowB,⟨u,e⟩)\=T iff v(B,⟨u,u⟩)\=T.

$$
\tag{2DNow}
v(\text{Now} B, \langle u, e\rangle)=\mathrm{T}
 \text{ iff } v(B, \langle u, u\rangle)=\mathrm{T}.
$$

This has it that the NowB$B$ is true at a time u of utterance and time e of evaluation provided that B is true when u is taken to be the time of evaluation. When the truth conditions for F, ∀$\forall$, and →$\rightarrow$ are revised in the obvious way (just ignore the u in the pair), (3)′$'$ is true at ⟨u,e⟩$\langle u, e\rangle$ provided that there is a time e′$e'$ later than e such that everything that is living at u$u$ is unknown at e′$e'$. By carrying along a record of what u$u$ is during the truth calculation, we can always fix the value for ‘now’ to the original time of utterance, even when ‘now’ is deeply embedded in other temporal operators.

A similar phenomenon arises in modal logics with an actuality operator A (read ‘it is actually the case that’). To properly evaluate (4) we need to keep track of which world is taken to be the actual (or real) world as well as which one is taken to the world of evaluation.

-   (4) It is possible that everyone actually living be unknown.

The idea of distinguishing different possible world dimensions in semantics has had useful applications in philosophy. For example, Chalmers (1996) has presented arguments from the conceivability of (say) zombies to dualist conclusions in the philosophy of mind. Chalmers (2006) has deployed two-dimensional semantics to help identify an a priori aspect of meaning that would support such conclusions.

The idea has also been deployed in the philosophy of language. Kripke (1980) famously argued that ‘Water is H2O’ is a posteriori but nevertheless a necessary truth, for given that water just is H20, the there is no possible world where THAT stuff is (say) a basic element as the Greeks thought. On the other hand, there is a strong intuition that had the real world been somewhat different from what it is, the odorless liquid that falls from the sky as rain, fills our lakes and rivers, etc. might perfectly well have been an element. So in some sense it is conceivable that water is not H20. Two dimensional semantics makes room for these intuitions by providing a separate dimension that tracks a conception of water that lays aside the chemical nature of what water actually is. Such a ‘narrow content’ account of the meaning of ‘water’ can explain how one may display semantical competence in the use of that term and still be ignorant about the chemistry of water (Chalmers, 2002).

## 11\. Provability Logics

Modal logic has been useful in clarifying our understanding of central results concerning provability in the foundations of mathematics (Boolos, 1993). Provability logics are systems where the propositional variables p,q,r$p, q, r$, etc. range over formulas of some mathematical system, for example Peano’s system PA$\mathbf{PA}$ for arithmetic. (The system chosen for mathematics might vary, but assume it is PA$\mathbf{PA}$ for this discussion.) Gödel showed that arithmetic has strong expressive powers. Using code numbers for arithmetic sentences, he was able to demonstrate a correspondence between sentences of mathematics and facts about which sentences are and are not provable in PA$\mathbf{PA}$. For example, he showed there there is a sentence C$C$ that is true just in case no contradiction is provable in PA$\mathbf{PA}$ and there is a sentence G$G$ (the famous Gödel sentence) that is true just in case it is not provable in PA$\mathbf{PA}$.

In provability logics, ◻p$\Box p$ is interpreted as a formula (of arithmetic) that expresses that what p$p$ denotes is provable in PA$\mathbf{PA}$. Using this notation, sentences of provability logic express facts about provability. Suppose that ⊥$\bot$ is a constant of provability logic denoting a contradiction. Then ∼◻⊥${\sim}\Box
\bot$ says that PA$\mathbf{PA}$ is consistent and ◻A→A$\Box A\rightarrow
A$ says that PA$\mathbf{PA}$ is sound in the sense that when it proves A,A$A, A$ is indeed true. Furthermore, the box may be iterated. So, for example, ◻∼◻⊥$\Box{\sim}\Box \bot$ makes the dubious claim that PA$\mathbf{PA}$ is able to prove its own consistency, and ∼◻⊥→∼◻∼◻⊥${\sim}\Box \bot \rightarrow{\sim}\Box{\sim}\Box \bot$ asserts (correctly as Gödel proved) that if PA$\mathbf{PA}$ is consistent then PA$\mathbf{PA}$ is unable to prove its own consistency.

Although provability logics form a family of related systems, the system GL$\mathbf{GL}$ is by far the best known. It results from adding the following axiom to K$\bK$:

◻(◻A→A)→◻A

$$
\tag{\(GL\)} 
 \Box(\Box A\rightarrow A)\rightarrow \Box A
$$

The axiom (4): ◻A→◻◻A$\Box A\rightarrow \Box \Box A$ is provable in GL$\mathbf{GL}$, so GL$\mathbf{GL}$ is actually a strengthening of K4$\mathbf{K4}$. However, axioms such as (M):◻A→A$(M): \Box A\rightarrow A$, and even the weaker (D):◻A→◊A$(D): \Box A\rightarrow \Diamond A$ are not available (nor desirable) in GL$\mathbf{GL}$. In provability logic, provability is not to be treated as a brand of necessity. The reason is that when p$p$ is provable in an arbitrary system S$\mathbf{S}$ for mathematics, it does not follow that p$p$ is true, since S$\mathbf{S}$ may be unsound. Furthermore, if p$p$ is provable in S(◻p)$\mathbf{S} (\Box p)$ it need not even follow that ∼p${\sim}p$ lacks a proof (∼◻∼p\=◊p).S$({\sim}\Box{\sim}p = \Diamond p). \mathbf{S}$ might be inconsistent and so prove both p$p$ and ∼p${\sim}p$.

Axiom (GL)$(GL)$ captures the content of Loeb’s Theorem, an important result in the foundations of arithmetic. ◻A→A$\Box A\rightarrow
A$ says that PA$\mathbf{PA}$ is sound for A$A$, i.e. that if A$A$ were proven, A would be true. (Such a claim might not be secure for an arbitrarily selected system S$\mathbf{S}$, since A might be provable in S$\mathbf{S}$ and false.) (GL)$(GL)$ claims that if PA$\mathbf{PA}$ manages to prove the sentence that claims soundness for a given sentence A$A$, then A$A$ is already provable in PA$\mathbf{PA}$. Loeb’s Theorem reports a kind of modesty on PA$\mathbf{PA}$’s part (Boolos, 1993, p. 55). PA$\mathbf{PA}$ never insists (proves) that a proof of A$A$ entails A$A$’s truth, unless it already has a proof of A$A$ to back up that claim.

It has been shown that GL$\mathbf{GL}$ is adequate for provability in the following sense. Let a sentence of GL$\mathbf{GL}$ be *always provable* exactly when the sentence of arithmetic it denotes is provable no matter how its variables are assigned values to sentences of PA$\mathbf{PA}$. Then the provable sentences of GL$\mathbf{GL}$ are exactly the sentences that are always provable. This adequacy result has been extremely useful, since general questions concerning provability in PA$\mathbf{PA}$ can be transformed into easier questions about what can be demonstrated in GL$\mathbf{GL}$.

GL$\mathbf{GL}$ can also be outfitted with a possible world semantics for which it is sound and complete. A corresponding condition on frames for GL$\mathbf{GL}$\-validity is that the frame be transitive, finite and irreflexive.

## 12\. Advanced Modal Logic

The applications of modal logic to mathematics and computer science have become increasingly important. Provability logic is only one example of this trend. The term “advanced modal logic” refers to a tradition in modal logic research that is particularly well represented in departments of mathematics and computer science. This tradition has been woven into the history of modal logic right from its beginnings (Goldblatt, 2006). Research into relationships with topology and algebras represents some of the very first technical work on modal logic. However the term ‘advanced modal logic’ generally refers to a second wave of work done since the mid 1970s. Some examples of the many interesting topics dealt with include results on decidability (whether it is possible to compute whether a formula of a given modal logic is a theorem) and complexity (the costs in time and memory needed to compute such facts about modal logics).

## 13\. Bisimulation

Bisimulation provides a good example of the fruitful interactions that have been developed between modal logic and computer science. In computer science, labeled transition systems (LTSs) are commonly used to represent possible computation pathways during execution of a program. LTSs are generalizations of Kripke frames, consisting of a set W$W$ of states, and a collection of i$i$\-accessibility relations Ri$R_i$, one for each computer process i$i$. Intuitively, wRiw′$wR_i w'$ holds exactly when w′$w'$ is a state that results from applying the process i$i$ to state w$w$.

The language of poly-modal or dynamic logic introduces a collection of modal operators ◻i$\Box_i$, one for each program i$i$ (Harel, 1984). Then ◻i$\Box_i$A states that sentence A$A$ holds in every result of applying i$i$. So ideas like the correctness and successful termination of programs can be expressed in this language. Models for such a language are like Kripke models save that LTSs are used in place of frames. A *bisimulation* is a counterpart relation between states of two such models such that exactly the same propositional variables are true in counterpart states, and whenever world v$v$ is i$i$\-accessible from one of two counterpart states, then the other counterpart bears the i$i$\-accessibility relation to some counterpart of v$v$. In short, the i$i$\-accessibility structure one can “see” from a given state mimics what one sees from a counterpart. Bisimulation is a weaker notion than isomorphism (a bisimulation relation need not be 1-1), but it is sufficient to guarantee equivalence in processing.

In the 1970s, a version of bisimulation had already been developed by modal logicians to help better understand the relationship between modal logic axioms and their corresponding conditions on Kripke frames. Kripke’s semantics provides a basis for translating modal axioms into sentences of a second-order language where quantification is allowed over one-place predicate letters P$P$. Replace metavariables A$A$ with open sentences Px$Px$, translate ◻Px$\Box Px$ to ∀y(Rxy→Py)$\forall y(Rxy \rightarrow Py)$, and close free variables x$x$ and predicate letters P$P$ with universal quantifiers. For example, the predicate logic translation of the axiom schema ◻A→A$\Box A\rightarrow A$ comes to ∀P∀x\[∀y(Rxy→Py)→Px$\forall P \forall x[\forall
y(Rxy\rightarrow Py) \rightarrow Px$\]. Given this translation, one may instantiate the variable P$P$ to an arbitrary one-place predicate, for example to the predicate Rx$Rx$ whose extension is the set of all worlds w such that Rxw$Rxw$ for a given value of x$x$. Then one obtains ∀x\[∀y(Rxy→Rxy)→Rxx$\forall x[\forall y(Rxy\rightarrow Rxy)
\rightarrow Rxx$\], which reduces to ∀xRxx$\forall xRxx$, since ∀y(Rxy→Rxy)$\forall
y(Rxy\rightarrow Rxy)$ is a tautology. This illuminates the correspondence between ◻A→A$\Box A\rightarrow A$ and reflexivity of frames (∀xRxx)$(\forall xRxx)$. Similar results hold for many other axioms and frame conditions. The “collapse” of second-order axiom conditions to first order frame conditions is very helpful in obtaining completeness results for modal logics. For example, this is the core idea behind the elegant results of Sahlqvist (1975).

But when does the second-order translation of an axiom reduce to a first-order condition on R$R$ in this way? In the 1970s, van Benthem showed that this happens iff the translation’s holding in a model entails its holding in any bisimular model, where two models are bisimular iff there is a bisimulation between them in the special case where there is a single accessibility relation. That result generalizes easily to the poly-modal case (Blackburn et. al., 2001, p. 103). This suggests that poly-modal logic lies at exactly the right level of abstraction to describe, and reason about, computation and other processes. (After all, what really matters there is the preservation of truth values of formulas in models rather than the finer details of the frame structures.) Furthermore the implicit translation of those logics into well-understood fragments of predicate logic provides a wealth of information of interest to computer scientists. As a result, a fruitful area of research in computer science has developed with bisimulation as its core idea (Ponse *et al.* 1995).

## 14\. Modal Logic and Games

The interaction between the theory of games and modal logic is a flourishing new area of research (van der Hoek and Pauly, 2007; van Benthem, 2011, Ch. 10, and 2014). This work has interesting applications to understanding cooperation and competition among agents as information available to them evolves.

The Prisoner’s Dilemma illustrates some of the concepts in game theory that can be analyzed using modal logics. Imagine two players that choose to either cooperate or cheat. If both cooperate, they both achieve a reward of 3 points, if they both cheat, they both get nothing, and if one cooperates and the other cheats, the cheater makes off with 5 points and the cooperator gets nothing. If both players are altruistic and motivated to maximize the sum of their rewards, they will both cooperate, as this is the best they can do together. However, they are both tempted to cheat to increase their own reward from 3 to 5. On the other hand, if they are rational, they may recognize that if they cheat their opponent threatens to cheat and leave them with nothing. So cooperation is the best one can do given this threat. And if each thinks the other realizes this, they may be motivated to cooperate. An extended (or iterated) version of this game gives the players multiple moves, that is, repeated opportunities to play and collect rewards. If players have information about the history of the moves and their outcomes, new concerns come into play, as success in the game depends on knowing their opponent’s strategy, and determining (for example) when he/she can be trusted not to cheat. In multi-player versions of the game, where players are drawn in pairs from a larger pool at each move, one’s own best strategy may well depend on whether one can recognize one’s opponents and the strategies they have adopted. (See Grim et. al., 1998 for fascinating research on Interated Prisoner’s Dilemmas.)

In games like Chess, players take turns making their moves and their opponents can see the moves made. If we adopt the convention that the players in a game take turns making their moves, then the Iterated Prisoner’s Dilemma is a game with missing information about the state of play – the player with the second turn lacks information about what the other player’s last move was. This illustrates the interest of games with imperfect information.

The application of games to logic has a long history. One influential application with important implications for linguistics is Game Theoretic Semantics (GTS) (Hintikka et. al. 1983), where validity is defined by the outcome of a game between two players one trying to verify and the other trying to falsify a given formula. GTS has significantly stronger resources that standard Tarski-style semantics, as it can be used (for example) to explain how meaning evolves in a discourse (a sequence of sentences).

However, the work on games and modal logic to be described here is somewhat different. Instead of using games to analyze the semantics of a logic, the modal logics at issue are used to analyze games. The structure of games and their play is very rich, as it involves the nature of the game itself (the allowed moves, and the rewards for the outcomes), the strategies (which are sequences of moves through time), and the flow of information available to the players as the game progresses. Therefore, the development of modal logic for games draws on features found in logics involving concepts like time, agency, preference, goals, knowledge, belief, and cooperation.

To provide some hint at this variety, here is a limited description of some of the modal operators that turn up in the analysis of games and some of the things that can be expressed with them. The basic idea in the semantics is that a game consists of a set of players 1, 2, 3, …, and a set of W of game states. For each player i, there is an accessibility relation Ri$R_i$ understood so that sRit$sR_i t$ holds for states s$s$ and t$t$ iff when the game has come to state s$s$ player i$i$ has the option of making a move that results in t$t$. This collection of relations defines a tree whose branches define every possible sequence of moves in the game. The semantics also assigns truth-values to atoms that keep track of the payoffs. So, for example in a game like Chess, there could be an atom wini$\win_i$ such that v(wini,s)\=T$v(\win_i, s)=T$ iff state s is a win for player i$i$. Model operators ◻i$\Box_i$ and ◊i$\Diamond_i$ for each player i may then be defined as follows.

v(◻iA,s)\=T iff for all t in W, if sRit, then v(A,t)\=T.v(◊iA,s)\=T iff for some t in W,sRit and v(A,t)\=T.

$$
\begin{align*}
v(\Box_i A, s) &=T \text{ iff for all } t \text{ in } W, \text{ if } sR_i t, \text{ then } v(A, t)=T. \\
v(\Diamond_i A, s) &=T \text{ iff for some } t \text{ in } W, sR_i t \text{ and }v(A, t)=T.
\end{align*}
$$

So ◻iA$\Box_i A$ (◊iA)$(\Diamond_i A)$ is true in s provided that sentence A$A$ holds true in every (some) state that i$i$ can chose from state s$s$. Given that ⊥$\bot$ is a contradiction (so ∼⊥${\sim}\bot$ is a tautology), ◊i∼⊥$\Diamond_i {\sim}\bot$ is true at a state when it is i$i$’s turn to move. For a two-player game ◻1⊥$\Box_1\bot$ & ◻2⊥$\Box_2\bot$ is true of a state that ends the game, because neither 1 nor 2 can move. ◻1◊2$\Box_1\Diamond_2$win2$_2$ asserts that player 1 has a loss because whatever 1 does from the present state, 2 can win in the following move.

For a more general account of the player’s payoffs, ordering relations ≤i$\leq_i$ can be defined over the states so that s≤it$s\leq_i
t$ means that i$i$’s payoff for t$t$ is at least as good as that for s$s$. Another generalization is to express facts about sequences q$q$ of moves, by introducing operators interpreted by relations sRqt$sR_q t$ indicating that the sequence q$q$ starting from s eventually arrives at t$t$. With these and related resources, it is possible express (for example) that q is i$i$’s best strategy given the present state.

It is crucial to the analysis of games to have a way to express the information available to the players. One way to accomplish this is to borrow ideas from epistemic logic. Here we may introduce an accessibility relation ∼i${\sim}_i$ for each player such that s∼it$s{\sim}_i t$ holds iff i$i$ cannot distinguish between states s$s$ and t$t$. Then knowledge operators Ki$\rK_i$ for the players can be defined so that KiA$\rK_i A$ says at s that A holds in all worlds that i can distinguish from s; that is, despite i’s ignorance about the state of play, he/she can still be confident that A. K operators may be used to say that player 1 is in a position to resign, for he knows that 2 sees she has a win: K1K2◻1◊2win2.

Since player’s information varies as the game progresses, it is useful to think of moves of the game as indexed by times, and to introduce operators O and U from tense logic for ‘next’ and ‘until’. Then KiOA→OKiA expresses that player i has “perfect recall”, that is, that when i knows that A happens next, then at the next moment i has not forgotten that A has happened. This illustrates how modal logics for games can reflect cognitive idealizations, and a player’s success (or failure) at living up to them.

The technical side of the modal logics for games is challenging. The project of identifying systems of rules that are sound and complete for a language containing a large collection of operators may be guided by past research, but the interactions between the variety of accessibility relations leads to new concerns. Furthermore, the computational complexity of various systems and their fragments is a large landscape largely unexplored.

Game theoretic concepts can be applied in a surprising variety of ways – from checking an argument for validity to succeeding in the political arena. So there are strong motivations for formulating logics that can handle games. What is striking about this research is the power one obtains by weaving together logics of time, agency, knowledge, belief, and preference in a unified setting. The lessons learned from that integration have value well beyond what they contribute to understanding games.

## 15\. Quantifiers in Modal Logic

It would seem to be a simple matter to outfit a modal logic with the quantifiers ∀ (all) and ∃ (some). One would simply add the standard (or classical) rules for quantifiers to the principles of whichever propositional modal logic one chooses. However, adding quantifiers to modal logic involves a number of difficulties. Some of these are philosophical. For example, Quine (1953) has famously argued that quantifying into modal contexts is simply incoherent, a view that has spawned a gigantic literature. Quine’s complaints do not carry the weight they once did. See Barcan (1990) for a good summary, and note Kripke’s (2017) (written in the 60’s for a class with Quine) which provides a strong formal argument that there can be nothing wrong with “quantifying in”.

A second kind of complication is technical. There is a wide variety in the choices one can make in the semantics for quantified modal logic, and the proof that a system of rules is correct for a given choice can be difficult. The work of Corsi (2002) and Garson (2005) goes some way towards bringing unity to this terrain, and Johannesson (2018) introduces constraints that help reduce the number of options; nevertheless the situation still remains challenging.

Another complication is that some logicians believe that modality requires abandoning classical quantifier rules in favor of the weaker rules of free logic (Garson 2001). The main points of disagreement concerning the quantifier rules can be traced back to decisions about how to handle the domain of quantification. The simplest alternative, the fixed-domain (sometimes called the possibilist) approach, assumes a single domain of quantification that contains all the possible objects. On the other hand, the world-relative (or actualist) interpretation, assumes that the domain of quantification changes from world to world, and contains only the objects that actually exist in a given world.

The fixed-domain approach requires no major adjustments to the classical machinery for the quantifiers. Modal logics that are adequate for fixed domain semantics can usually be axiomatized by adding principles of a propositional modal logic to classical quantifier rules together with the Barcan Formula (BF) (Barcan 1946). (For an account of some interesting exceptions see Cresswell (1995)).

∀x◻A→◻∀xA.

The fixed-domain interpretation has advantages of simplicity and familiarity, but it does not provide a direct account of the semantics of certain quantifier expressions of natural language. We do not think that ‘Some man exists who signed the Declaration of Independence’ is true, at least not if we read ‘exists’ in the present tense. Nevertheless, this sentence was true in 1777, which shows that the domain for the natural language expression ‘some man exists who’ changes to reflect which men exist at different times. A related problem is that on the fixed-domain interpretation, the sentence ∀y◻∃x(x\=y) is valid. Assuming that ∃x(x\=y) is read: y exists, ∀y◻∃x(x\=y) says that everything exists necessarily. However, it seems a fundamental feature of common ideas about modality that the existence of many things is contingent, and that different objects exist in different possible worlds.

The defender of the fixed-domain interpretation may respond to these objections by insisting that on his (her) reading of the quantifiers, the domain of quantification contains *all* possible objects, not just the objects that happen to exist at a given world. So the theorem ∀y◻∃x(x\=y) makes the innocuous claim that every *possible* object is necessarily found in the domain of all possible objects. Furthermore, those quantifier expressions of natural language whose domain is world (or time) dependent can be expressed using the fixed-domain quantifier ∃x and a predicate letter E with the reading ‘actually exists’. For example, instead of translating ‘Some Man exists who Signed the Declaration of Independence’ by

∃x(Mx&Sx),

the defender of fixed domains may write:

∃x(Ex&Mx&Sx),

thus ensuring the translation is counted false at the present time. Cresswell (1991) makes the interesting observation that world-relative quantification has limited expressive power relative to fixed-domain quantification. World-relative quantification can be defined with fixed domain quantifiers and E, but there is no way to fully express fixed-domain quantifiers with world-relative ones. Although this argues in favor of the classical approach to quantified modal logic, the translation tactic also amounts to something of a concession in favor of free logic, for the world-relative quantifiers so defined obey exactly the free logic rules.

A problem with the translation strategy used by defenders of fixed domain quantification is that rendering the English into logic is less direct, since E must be added to all translations of all sentences whose quantifier expressions have domains that are context dependent. A more serious objection to fixed-domain quantification is that it strips the quantifier of a role which Quine recommended for it, namely to record robust ontological commitment. On this view, the domain of ∃x must contain only entities that are ontologically respectable, and possible objects are too abstract to qualify. Actualists of this stripe will want to develop the logic of a quantifier ∃x which reflects commitment to what is actual in a given world rather than to what is merely possible.

However, some work on [actualism][9] (Menzel, 1990) tends to undermine this objection. For example, Linsky and Zalta (1994) and Williamson, (2013) argue that the fixed-domain quantifier can be given an interpretation that is perfectly acceptable to actualists. Pavone (2018) even contends that on the haecceitist interpretation, which quantifies over individual essences, fixed domains are required. Actualists who employ possible worlds semantics routinely quantify over possible worlds in their semantical theory of language. So it would seem that possible worlds are actual by these actualist’s lights. By populating the domain with abstract entities no more objectionable than possible worlds, actualists may vindicate the Barcan Formula and classical principles.

Note however, that some actualists may respond that they need not be committed to the actuality of possible worlds so long as it is understood that quantifiers used in their theory of language lack strong ontological import. Furthermore, Hayaki (2006) argues that quantifying over abstract entities is actually incompatible with any serious form of actualism. In any case, it is open to actualists (and non actualists as well) to investigate the logic of quantifiers with more robust domains, for example domains excluding possible worlds and other such abstract entities, and containing only the spatio-temporal particulars found in a given world. For quantifiers of this kind, a world-relative domains are appropriate.

Such considerations motivate interest in systems that acknowledge the context dependence of quantification by introducing world-relative domains. Here each possible world has its own domain of quantification (the set of objects that actually exist in that world), and the domains vary from one world to the next. When this decision is made, a difficulty arises for classical quantification theory. Notice that the sentence ∃x(x\=t) is a theorem of classical logic, and so ◻∃x(x\=t) is a theorem of K by the Necessitation Rule. Let the term t stand for Saul Kripke. Then this theorem says that it is necessary that Saul Kripke exists, so that he is in the domain of every possible world. The whole motivation for the world-relative approach was to reflect the idea that objects in one world may fail to exist in another. If standard quantifier rulers are used, however, every term t must refer to something that exists in all the possible worlds. This seems incompatible with our ordinary practice of using terms to refer to things that only exist contingently.

One response to this difficulty is simply to eliminate terms. Kripke (1963) gives an example of a system that uses the world-relative interpretation and preserves the classical rules. However, the costs are severe. First, his language is artificially impoverished, and second, the rules for the propositional modal logic must be weakened.

Presuming that we would like a language that includes terms, and that classical rules are to be added to standard systems of propositional modal logic, a new problem arises. In such a system, it is possible to prove (CBF), the converse of the Barcan Formula.

◻∀xA→∀x◻A.

This fact has serious consequences for the system’s semantics. It is not difficult to show that every world-relative model of (CBF) must meet condition (ND) (for ‘nested domains’).

-   (ND) If wRv then the domain of w is a subset of the domain of v.

However (ND) conflicts with the point of introducing world-relative domains. The whole idea was that existence of objects is contingent so that there are accessible possible worlds where one of the things in our world fails to exist.

A straightforward solution to these problems is to abandon classical rules for the quantifiers and to adopt rules for free logic (FL) instead. The rules of FL are the same as the classical rules, except that inferences from ∀xRx (everything is real) to Rp (Pegasus is real) are blocked. This is done by introducing a predicate ‘E’ (for ‘actually exists’) and modifying the rule of universal instantiation. From ∀xRx one is allowed to obtain Rp only if one also has obtained Ep. Assuming that the universal quantifier ∀x is primitive, and the existential quantifier ∃x is defined by ∃xA\=df∼∀x∼A, then FL may be constructed by adding the following two principles to the rules of propositional logic

Universal Generalization.  
If B→(Ey→A(y)) is a theorem, so is B→∀xA(x).

Universal Instantiation.  
∀xA(x)→(En→A(n))

(Here it is assumed that A(x) is any well-formed formula of predicate logic, and that A(y) and A(n) result from replacing y and n properly for each occurrence of x in A(x).) Note that the instantiation axiom is restricted by mention of En in the antecedent. The rule of Universial Generalization is modified in the same way. In FL, proofs of formulas like ∃x◻(x\=t), ∀y◻∃x(x\=y), (CBF), and (BF), which seem incompatible with the world-relative interpretation, are blocked.

One philosophical objection to FL is that E appears to be an existence predicate, and many would argue that existence is not a legitimate property like being green or weighing more than four pounds. So philosophers who reject the idea that existence is a predicate may object to FL. However in most (but not all) quantified modal logics that include identity (\=) these worries may be skirted by defining E as follows.

Et\=df∃x(x\=t).

The most general way to formulate quantified modal logic is to create FS by adding the rules of FL to a given propositional modal logic S. In situations where classical quantification is desired, one may simply add Et as an axiom to FS, so that the classical principles become derivable rules. Adequacy results for such systems can be obtained for most choices of the modal logic S, but there are exceptions.

A final complication in the semantics for quantified modal logic is worth mentioning. It arises when non-rigid expressions such as ‘the inventor of bifocals’ are introduced to the language. A term is non-rigid when it picks out different objects in different possible worlds. The semantical value of such a term can be given by what Carnap (1947) called an individual concept, a function that picks out the denotation of the term for each possible world. One approach to dealing with non-rigid terms is to employ Russell’s theory of descriptions. However, in a language that treats non rigid expressions as genuine terms, it turns out that neither the classical nor the free logic rules for the quantifiers are acceptable. (The problem can not be resolved by weakening the rule of substitution for identity.) A solution to this problem is to employ a more general treatment of the quantifiers, where the domain of quantification contains individual concepts rather than objects. This more general interpretation provides a better match between the treatment of terms and the treatment of quantifiers and results in systems that are adequate for classical or free logic rules (depending on whether the fixed domains or world-relative domains are chosen). It also provides a language with strong and much needed expressive powers (Bressan, 1973, Belnap and Müller, 2013a, 2013b).

[1]: https://plato.stanford.edu/entries/logic-modal/#PosWorSem
[2]: https://plato.stanford.edu/entries/logic-modal/#MapRelBetModLog
[3]: https://plato.stanford.edu/entries/logic-modal/#PosWorSem
[4]: https://plato.stanford.edu/entries/logic-modal/#PosWorSem
[5]: https://plato.stanford.edu/entries/logic-temporal/
[6]: https://plato.stanford.edu/entries/logic-relevance/
[7]: https://plato.stanford.edu/entries/logic-conditionals/
[8]: https://plato.stanford.edu/entries/two-dimensional-semantics/
[9]: https://plato.stanford.edu/entries/actualism/
