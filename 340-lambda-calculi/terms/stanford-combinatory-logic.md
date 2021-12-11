---
downloaded:       2021-11-03
author:           Bimbó, Katalin
page-url:         https://plato.stanford.edu/entries/logic-combinatory/
page-title:       Combinatory Logic (Stanford Encyclopedia of Philosophy)
article-title:    Combinatory Logic
article-length:   96193
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# Combinatory Logic (Stanford Encyclopedia of Philosophy)

Classical first-order logic includes quantifiers that are
denoted by ∀∀ (“for all”) and ∃∃ (“there
is a”). A simple sentence such as “All birds are
animals” may be formalized as ∀x(Bx⊃Ax)∀x(Bx⊃Ax), where xx
is a variable, BB and AA are one-place predicates, and ⊃⊃ is a
symbol for (material) implication. The occurrences of the variables in the
closed formula ∀x(Bx⊃Ax)∀x(Bx⊃Ax) are bound, whereas those in
the open formula Bx⊃AxBx⊃Ax are free. If we assume that
tt (for “Tweety”) is a name constant, then an instance of the
above sentence is Bt⊃AtBt⊃At, that may be read as “Tweety is an
animal, provided Tweety is a bird.” This illustrates that the
instantiation of a (universal) quantifier involves substitution.
## 1\. Schönfinkel’s elimination of bound variables

### 1.1 The problem of substitution

Classical first-order logic includes *quantifiers* that are denoted by ∀∀ (“for all”) and ∃∃ (“there is a”). A simple sentence such as “All birds are animals” may be formalized as ∀x(Bx⊃Ax)∀x(Bx⊃Ax), where xx is a variable, BB and AA are one-place predicates, and ⊃⊃ is a symbol for (material) implication. The occurrences of the variables in the closed formula ∀x(Bx⊃Ax)∀x(Bx⊃Ax) are *bound*, whereas those in the open formula Bx⊃AxBx⊃Ax are *free*. If we assume that tt (for “Tweety”) is a name constant, then an instance of the above sentence is Bt⊃AtBt⊃At, that may be read as “Tweety is an animal, provided Tweety is a bird.” This illustrates that the instantiation of a (universal) quantifier involves substitution.

Due to the simplicity of the example, the *substitution* of tt for xx in BxBx and in AxAx seems to be easy to understand and to perform. However, a definition of substitution for FOL (and in general, for an abstract syntax, that is, for a language with a variable binding operator) has to guarantee that *no free* occurrence of a variable in the substituted expression *becomes bound* in the resulting expression.

To see what can go wrong, let us consider the (open) formula ∀x(Rxy∧Rxr)∀x(Rxy∧Rxr), where RR is a two-place predicate, rr is a name constant abbreviating “Russell” and ∧∧ is conjunction. ∀x(Rxy∧Rxr)∀x(Rxy∧Rxr) contains a free occurrence of yy (that is, yy is a free variable of the formula), however, yy is not free for a substitution of a term that contains a free occurrence of xx, for instance, xx itself. More formally, the occurrence of yy in the second argument place of RR in ∀x(Rxy∧Rxr)∀x(Rxy∧Rxr) is not bound by a quantifier (the only quantifier) of the formula, whereas ∀x(Rxx∧Rxr)∀x(Rxx∧Rxr) is a closed formula, that is, it contains no free occurrences of variables. Informally, the following natural language sentences could be thought of as interpretations of the previous formulas. “Everybody reads him and Russell,” (where ‘him’ is deictic, or perhaps, anaphoric) and “Everybody reads himself and Russell.” Obviously, the meanings of the two sentences are vastly different, even if we assume that everybody pens something. As a contrast, ∀x(Rxw∧Rxr)∀x(Rxw∧Rxr) exhibits an unproblematic substitution of the name constant ww for the free occurrence of yy. (The latter formula, perhaps, formalizes the sentence “Everybody reads Ludwig Wittgenstein and Russell.”) These examples are meant to demonstrate the more complex part of the problem Moses Schönfinkel set out to solve, and for what he invented CL.\[[1][1]\]

### 1.2 The operators “nextand” and “UU”

A well-known result about *classical sentential logic* (SL) is that all truth-functions can be expressed in terms of ¬¬ and ∧∧ (or of ¬¬ and ∨∨, etc.). A minimal sufficient set of connectives, however, can contain just one connective such as ∣∣ (“nand,” which is often called, Sheffer’s stroke), or ↓↓ (“nor,” which is Peirce’s joint denial). “Nand” is “not-and,” in other words, A∣BA∣B is defined as ¬(A∧B)¬(A∧B), where AA, BB range over formulas and ¬¬ is *negation*. Going into the other direction, if ∣∣ is a primitive, then ¬A¬A is definable as A∣AA∣A, and A∧BA∧B is (A∣B)∣(A∣B)(A∣B)∣(A∣B). Although formulas with numerous vertical lines may quickly become visually confusing and hard to parse, it is straightforward to prove that ∣∣ alone is sufficiently expressive to define all the truth-functions.

Schönfinkel’s aim was to minimize the number of logical constants that are required for a formalization of FOL, just as Henry M. Sheffer (indeed, already Charles S. Peirce) did for classical propositional logic. One of the two quantifiers mentioned above suffices and the other may be assumed to be defined. Let us say, ∃xA∃xA is an abbreviation for ¬∀x¬A¬∀x¬A. Even if ¬¬ and the rest of the connectives are traded in for ∣∣, two logical constants remain: ∀∀ and ∣∣. A further pressing issue is that quantifiers may be nested (i.e., the scope of a quantifier may fully contain the scope of another quantifier), and the variable bindings (that could be visualized by drawing lines between quantifiers and the variables they bind) may get quite intertwined. Keeping for a moment the familiar logical constants, we may look at the following formula that hints at the emerging difficulties—when the question to be tackled is considered in its full generality.\[[2][2]\]

∀x(∃y(Py∧Bxy)⊃∃y(Py∧Bxy∧∀z((Rz∧Ozy)⊃¬Cz)))∀x(∃y(Py∧Bxy)⊃∃y(Py∧Bxy∧∀z((Rz∧Ozy)⊃¬Cz)))

∀x∀x binds all occurrences of xx; the variables in the second argument place of the two BBs are bound by one of the two ∃y∃ys, the latter of which interacts with ∀z∀z via OzyOzy.

Predicates have a fixed finite arity in FOL, and nothing precludes binding at once a variable in the first argument of one predicate and in the second argument of another predicate. (Indeed, FOL would lose some of its expressiveness, if bindings of this sort would be excluded without some means to compensate for them.) These difficulties persist when a formula is transformed into a(n equivalent) formula in *prenex normal form*. As long as the variable bindings can interweave and braid into arbitrarily complex patterns, there seems to be no way to eliminate bound variables. (Note that free variables in open formulas—in a sense—behave like local name constants, and their elimination is neither intended, nor achieved in the procedures described here.)

Schönfinkel’s ingenuity was that he introduced combinators to untangle variable bindings. The *combinators* SS, KK, II, BB and CC (in contemporary notation) are his, and he established that SS and KK suffice to define all the other combinators. In effect, he also defined an algorithm to carry out the elimination of bound variables, which is essentially one of the algorithms used nowadays to define *bracket abstraction* in CL.\[[3][3]\]

Schönfinkel introduced a new logical constant UU, that expresses the *disjointness* of two classes. For instance, UPQUPQ may be written in usual FOL notation as ¬∃x(Px∧Qx)¬∃x(Px∧Qx), when PP and QQ are one-place predicates. (The formula may be thought to formalize, for instance, the natural language sentence “No parrots are quiet.”) In the process of the elimination of the bound variables, UXYUXY is obtained from an expression that contains ‘XxXx’ and ‘YxYx’, where xx does not occur in XX or YY. For example, if XX and YY happen to be nn\-ary predicates with n≥2n≥2, then xx occurs only in their last argument places. “Nobody reads Aristotle and Plato” can be formalized as ¬∃x(Rxa∧Rxp)¬∃x(Rxa∧Rxp), where aa and pp are name constants that stand for “Aristotle” and “Plato,” respectively. This formula *cannot* be written as U(Ra)(Rp)U(Ra)(Rp). On the other hand, “There is nobody whom both Russell and Wittgenstein read,” that is, ¬∃x(Rrx∧Rwx)¬∃x(Rrx∧Rwx) turns into U(Rr)(Rw)U(Rr)(Rw), where the parentheses delineate the arguments of UU. Often, the expressions XX and YY (in UXYUXY) consist of predicates (and name constants) *together with combinators* and other UUs.

It is useful to have a notation for “nextand” (i.e., “not-exists-and”) without assuming either that xx has a free occurrence in the expressions joined, or that if it has one, then it is the last component of the expressions. Following Schönfinkel, we use ∣x∣x for the “nextand” *operator* that binds xx. (The notation ∣−∣−, where −− is the place for a variable, closely resembles the Sheffer stroke.) Schönfinkel achieved his goal of the reduction of the set of logical constants for FOL to a *singleton set* {∣−}{∣−}, because every formula of FOL is equivalent to a formula that contains only “nextand.”

A formula ∀xA∀xA is usually defined to be well-formed in FOL even if AA has no free occurrences of xx. Then, of course, ∀xA∀xA is equivalent to AA as well as to ∃xA∃xA, and such quantifiers are called *vacuous*. In order to show that any formula can be rewritten into an equivalent formula that contains only “nextand,” it is sufficient to inspect the following definitions for ¬¬, ∨∨ and ∀∀ (with suitable variables)—that are due to Schönfinkel.

¬A⇔dfA∣xAA∨B⇔df(A∣yA)∣x(B∣yB)∀xAx⇔df(Ax∣yAx)∣x(Ax∣yAx)¬A⇔dfA∣xAA∨B⇔df(A∣yA)∣x(B∣yB)∀xAx⇔df(Ax∣yAx)∣x(Ax∣yAx)

The definition for ¬¬, for instance, may be justified by the following equivalences. A⇔A∧AA⇔A∧A, A∧A⇔∃x(A∧A)A∧A⇔∃x(A∧A) (assuming that xx is not free in AA), hence by replacement, ¬A⇔¬∃x(A∧A)¬A⇔¬∃x(A∧A).

Now we give a concrete example to illustrate how to turn a formula of FOL into one that contains only ∣−∣−, and then how to eliminate the bound variables using UU and combinators. To put some excitement into the process, we start with the sentence in (#1).

-   (#1) For every natural number there is a greater prime.

A straightforward formalization of this sentence—on the foreground of the domain of numbers—is the formula in (#2), (where ‘NxNx’ stands for “xx is a natural number,” ‘PxPx’ stands for “xx is a prime” and ‘GxyGxy’ is to be read as “xx is greater that yy”).

-   (#2) ∀y∃x(Ny⊃(Px∧Gxy))∀y∃x(Ny⊃(Px∧Gxy))

This formula is equivalent to ∀y(Ny⊃∃x(Px∧Gxy))∀y(Ny⊃∃x(Px∧Gxy)) and further to ¬∃y¬(Ny⊃∃x(Px∧Gxy))¬∃y¬(Ny⊃∃x(Px∧Gxy)). In one or two more steps, we get Ny∣y(Px∣xGxy)Ny∣y(Px∣xGxy). (Expressions are considered to be *grouped* to the left unless parentheses indicate otherwise. E.g., GxyGxy is ((Gx)y)((Gx)y) not G(xy)G(xy) as could have been, perhaps, expected based on the most common way of arranging parentheses in FOL formulas.) Unfortunately, neither ∣x∣x nor ∣y∣y can be replaced by UU in the last expression. However, if the arguments of GG were permuted then the former reduction could be carried out. One of the combinators, CC does exactly what is needed: GxyGxy can be changed to CGyxCGyx (see the definition of combinators in section 2.1). That is, we have Ny∣y(Px∣xCGyx)Ny∣y(Px∣xCGyx), and then Ny∣yUP(CGy)Ny∣yUP(CGy).\[[4][4]\] The expression may give the impression that yy is the last component of UP(CGy)UP(CGy), which is the second argument of ∣y∣y, but it is not so. The grouping within expressions cannot be disregarded, and another combinator, BB is needed to turn UP(CGy)UP(CGy) into the desired form B(UP)(CG)yB(UP)(CG)y. From Ny∣yB(UP)(CG)yNy∣yB(UP)(CG)y, we get UN(B(UP)(CG))UN(B(UP)(CG)) in one more step. This expression is completely free of variables, and it also makes the *renaming of bound variables* in FOL easily comprehensible: given two sequences of (distinct) variables that are different in their first two elements, the reversal of the above process yields formulas that are (logically equivalent) alphabetic variants of the formula in (#2).

The expression UN(B(UP)(CG))UN(B(UP)(CG)) may look “unfamiliar” when compared to formulas of FOL, but notation—to a large extent—is a matter of convention. It may be interesting to note that the first UU is simply followed by its two arguments, however, the second UU is not. B(UP)B(UP) is a subexpression, but UP(CG)UP(CG) is not a subexpressions of UN(B(UP)(CG))UN(B(UP)(CG)). Furthermore, the whole expression can be transformed into XNPGXNPG using combinators, where XX is composed of UUs and combinators only. Such an XX concisely encodes the *logical form* or *logical content* of the formula with the predicates being arguments.\[[5][5]\]

The expressions obtained via the transformations outlined above quickly become lengthy—as trying to rewrite a simple FOL sentence such as ∃x(Px∧Qx)∃x(Px∧Qx) can show.\[[6][6]\] However, this does not diminish the importance of Schönfinkel’s theoretical results. A slight increase (if any) in the length of the expressions is not even an inconvenience, let alone an impediment in the era of computers with petabytes (or even exa- and zettabytes) of memory.

It seems unfortunate that Schönfinkel’s reduction procedure for FOL is not widely known. As a measure of how widely Sheffer’s and Schönfinkel’s reductions are known, we appeal to the fact that the first is part of standard intro courses in logic, whereas the second is not. Undoubtedly, one of the reasons for this is that Schönfinkel’s process to eliminate bound variables is conceptually more opulent than defining a few truth functions from ∣∣ (or ↓↓). Another reason may be that Schönfinkel, perhaps, did not place a sufficiently strong emphasis on the intermediate step that allows the elimination of all other logical connectives and quantifiers via “nextand.” The importance of this step was also overlooked in the introduction to the English translation of Schönfinkel’s paper, which was written more than 30 years after the original publication. We may also note that although “nextand” is an operator in the standard logical sense, it is binary—unlike ∀∀ and ∃∃, which are unary.

If A∣B⇔df¬(A∧B)A∣B⇔df¬(A∧B) is added as a definition to SL, then the result is a *conservative extension*, and it becomes provable that for any formula A(p0,…,pn)A(p0,…,pn) (i.e., for a formula containing the displayed propositional variables and some connectives) there is a formula B(p0,…,pn)B(p0,…,pn) containing only the connective ∣∣, and B(p0,…,pn)⇔A(p0,…,pn) itself is provable. ∣ is, of course, interpreted as the “nand” truth function. “Nand” as a binary connective or as a binary truth function is of the same sort of object as conjunction, disjunction, etc.

The first stage in Schönfinkel’s extension of FOL is analogous. The addition of ∣− is (also) a conservative extension of FOL, and every occurrence of ∣− can be eliminated. (We noted that ∣− is a binary operator, and so it may be thought to combine a quantifier (∃) with connectives (¬, ∧), but ∣− of course, does not introduce any objects that are not definable in FOL.)

The second stage in Schönfinkel’s extension of FOL is slightly different. UXY is definable in FOL only for one-place predicates P and Q (or for predicates of higher arity when the variable in their last argument is bound). Thus, in general, neither U nor the combinators are definable in FOL.

The elimination of bound variables goes beyond the resources of FOL. The combinators are not only undefinable, but they are new kinds of objects—which are absent from FOL itself. Also, the intermediate steps of the bound variable elimination procedure presuppose that functions of several arguments can be viewed as functions in one variable, and the other way around.\[[7][7]\] Enriching a presentation of FOL with predicate letters that have sufficiently many arguments in the right order would be more or less unproblematic, and it would add objects to the language that would have the same sort of interpretation as other predicates. A potential problem though is that for each predicate, infinitely many (ℵ0 many) new predicates would be needed—together with axioms stipulating the intended equivalences between the meanings of the variants of the predicates. Notationally, these steps amount to padding predicate symbols with extra arguments, omitting some arguments, as well as permuting and regrouping the arguments. Although some of these additions may look superfluous or too fussy, for the understanding of Schönfinkel’s procedure to eliminate bound variables, it is crucial to note that formulas are viewed as structured strings of symbols.\[[8][8]\]

In conclusion to this section, it is important to emphasize that there are *no questions of consistency* with respect to the above reduction process, because it can be viewed—or described in contemporary terms—as a *well-defined algorithm*. It is a completely different issue that if we consider the language of FOL expanded with combinators, then the resulting system is inconsistent, because CL is powerful enough to define the fixed point of any function. The effect of having fixed points for all functions—including truth functions—may be thought to amount to adding certain biconditionals (which may or may not be valid) as axioms. (For instance, Russell’s paradox emerges from the fixed point of the negation connective.) Notably, both FOL and (pure) CL are *consistent*.

### 1.3 Alternative approaches: basic logic and predicate functors

In this section we briefly outline two ideas that are related to Schönfinkel’s work or are motivated by his use of combinators in the elimination of bound variables.

*Fitch’s metalogic*  
From the late 1930s, Frederic Fitch worked on a logic that he called *basic logic*. The label is motivated by his aim to provide a framework in which any logic could be formalized. Fitch’s approach is utterly *syntactic* (much like Schönfinkel’s), and “formalization” is to be understood as *encoding* a formally described system in another—not unlike the arithmetization of the syntax in Gödel’s incompleteness theorem.

In 1942, Fitch introduced a logic that he labeled K. The expressions in K are formed like combinatory terms by a binary application operation, which is not assumed to be associative. (See the definition of combinatory terms in the next section.) However, the constants of K do not coincide with the constants of pure CL. Fitch uses *10 constants:* ε, o, ˊε, ˊo, W, \=, ∧, ∨, E and ∗. The first five constants are combinators, though the notation may suggest a different (informal) meaning. ‘\=’ is the syntactical identity of expressions. ‘∧’ and ‘∨’ are intended to stand for “and” and “or.” ‘E’ is the analogue of Schönfinkel’s U, but it corresponds to a non-vacuous existential quantifier. Finally, ‘∗’ is similar to the transitive closure operator for binary relations or the Kleene star. Notably, there is no negation or universal quantifier in the system. The uses of the constants are characterized as follows—somewhat like axioms characterize combinators.

1.  \=ab   if and only if   a and b are (syntactically) the same expression
2.  εab   if and only if   ba
3.  oabc  if and only if   a(bc)
4.  ˊεabc   if and only if   bac
5.  ˊoabcd   if and only if   a(bc)d
6.  Wab   if and only if   abb
7.  ∧ab   if and only if   a and b
8.  ∨ab   if and only if   a or b
9.  Eb   if and only if   ∃a.ba
10.  ∗abc   if and only if   abc and ∃d.abd&adc

In CL, the axioms are followed up with notions such as one-step and weak reduction, the latter of which can be viewed as a computation or inference step. (See the next section for some of these notions.) Similarly, an axiomatic calculus for FOL, for instance, would contain rules of inference in addition to the axioms. One of the obstacles to penetrate the various presentations of basic logic is the lack of a similar formulation.

During the next two decades or so after his first paper on basic logic, Fitch published a series of papers on basic logic devoted to (1) the *representation of recursive functions* (i.e., a demonstration of the possibility of the arithmetization of syntax), (2) K′, an extension of K with *negation*, *universal quantifier* and # (the dual of the ∗ operator), (3) the *consistency* of K and K′, (4) L, an extension of K′ with *implication* and *necessity* operators, (5) the *definability* of some of the constants such as ∗ and #, as well as E.

The combinators that are included in K (hence, in all its extensions) are T, B and W. ˊε and ˊo are the ternary version of T and the quaternary version of B, respectively. Russell’s paradox involves negation, but (either variant of) Curry’s paradox is positive, in the sense that it relies on one or two theorems of the positive implicational logic of David Hilbert. This means that if the various systems of basic logic, especially K′ and L are consistent, then they either cannot contain full abstraction, or the notions of implication, entailment and identity should differ from their usual counterparts. Indeed, K, K′ and L are *not extensional* systems. That is, even if two expressions applied to the same expression are always equal, the equality of the applied expressions does not follow. Turning basic logic into an extensional system proved less than straightforward. Fitch’s system JE′ was shown to be inconsistent by Myhill, which led to a more complicated formulation of the conditions for extensional identity.

Basic logic has not (yet) become a widely used general framework for the description of formal systems; however, renewed interest in this approach is signaled by Updike (2010), which attempts to situate basic logic in the broader context of foundational work at the middle of the 20th century.

*Quine’s elimination strategy*  
From the late 1930s, W. V. O. Quine worked on an alternative way to eliminate bound variables from first-order logic. It is plausible to assume that Schönfinkel’s goal was to find a single operator in classical logic and then to eliminate the bound variables—as he claims in Schönfinkel (1924)—rather than defining an overarching symbolic system to describe all mathematics. Nonetheless, CL was soon fused with classical logic in a more free-wheeling fashion, which resulted in an inconsistent system.

Quine saw the way out of a situation where inconsistency may arise via *implicit typing* of constants that are to some extent similar to combinators. He called such constants *predicate functors*, and introduced several groups of them, the last one in Quine (1981).

The most common presentations of FOL stipulate that an n\-place predicate followed by a *sequence* of n terms (possibly, punctuated by commas and surrounded by parentheses) is a formula. (This is in contrast with Schönfinkel’s view of formulas and in accordance with the informal and formal interpretations of predicates as n\-ary relations. In other words, FOL does not permit “currying” of predicates or of their interpretations.) Quine subscribes to the view that sequences of terms follow predicates.

Predicate functors are not applicable to each other—unlike the combinators are. This is a point that Quine repeatedly emphasizes. *Atomic predicates* are the predicates of a first-order language, whereas *complex predicates* are obtained by applying a predicate functor (of appropriate arity) to predicates (which may be atomic or complex).

The prohibition of self-application together with the use of “flat” sequences of arguments means that *infinitely many* predicate functors are needed to ensure the elimination of bound variables from all formulas of FOL. To explain the problem quickly: a permutation of a pair of elements that are arbitrarily far apart cannot be ensured otherwise. Just as combinators may be divided into groups based on their effect, Quine was able to select predicate functors that can be grouped together naturally based on their effects. Indeed, the groups of predicate functors are similar to classes of combinators, though Quine’s labels are often sublime. In order to give a concrete example of this alternative approach, we outline a slightly modified version of a set of predicate functors from Quine (1981).

A first-order language with ∣− as the only operator is assumed. (F and G are metavariables for predicates in the predicate functor language.) ≀n Invn, invn, Padn+1 and Refn are predicate functors, for every n∈ω. A formula of FOL is rewritten into a formula in a predicate functor language by applications of the following clauses.

1.  A variable x and a predicate P of FOL is x and P, respectively, in the predicate functor language.
2.  Fx1x2…xn∣x1Gx1x2…xn:\=:(F≀G)x2…xn, where x2,…,xn are distinct from x1, and F and G are followed by the same sequence of variables.
3.  Fx1x2…xn:\=:(Inv F)x2…xnx1
4.  Fx1x2…xn:\=:(inv F)x2x1…xn
5.  Fx2…xn:\=:(Pad F)x1x2…xn
6.  Fx1x1x2…xn:\=:(Ref F)x1x2…xn

There is an obvious similarity between Ref and W, Pad and K, as well as Inv and inv and various combinators with permutative effects (e.g., C and T). If ∣− is the only operator in the first-order language, then all formulas, which are not atomic, are almost of the form of the left-hand side expression in 2. What has to be assured is that the side condition is satisfied, and that is where clauses 3–6 enter. Although the various n\-ary versions of ≀, inv, Pad and Ref could be conflated (by ignoring unaffected arguments), Inv clearly stands for infinitely many predicate functors, because x1,…,xn cannot be ignored or omitted.

It may be interesting to note that there is a difference between ≀ and Schönfinkel’s U. Not only the place of the bound variable is different, but ≀ builds in contraction for n−1 variables (which are separated by ∣− and other symbols in the left-hand expression).

Quine intended the predicate functor language to lead to a novel algebraization of first-order logic. While bound variables can be eliminated using predicate functors, Quine never defined an algebra in the usual sense—something similar, for instance, to cylindric algebras. Predicate functors, by design, have a very limited applicability, which has the unfortunate side effect that they seem to be of little interest and not much of use outside their intended context.

## 2\. Combinatory terms and their main properties

### 2.1 Reduction, equality and their formalizations

The paradoxes that were discovered by Georg Cantor and Bertrand Russell in the late 19th–early 20th century both involve self-membership of a set. The ramified theory of types due to Alfred N. Whitehead and Bertrand Russell, and [ZF][9] (the formalization of set theory named after Ernst Zermelo and Abraham A. Fraenkel) exclude self-membership. However, there seems to have been always a desire to create a theory that allows self-membership or self-application. Indeed, one of Curry’s motivations for the development of CL was the goal to construct a formal language that includes a wide range of well-formed expressions, some of which—under certain interpretations—may turn out to be meaningless. (This idea may be compared to the [von Neumann–Bernays–Gödel][10] formalization of set theory, in which—without the axiom of foundation—the Russell class can be proved not to be a set, hence, to be a proper class.)

A few natural language examples provide a convenient illustration to clarify the difference between (1), that is a well-formed (but meaningless) expression and (2), which is a meaningful (but ill-formed) sentence. (The meaningfulness of (2), of course, should be taken with a grain of salt. In reality, [Kurt Gödel][11] proved the system of PM to be incomplete in 1930. Thus (2) may be guessed—using syntactic and semantics clues—to be a distorted version of (2′) Peano arithmetic was proved to be incomplete by Gödel in 1930.)

-   (1) The derivative of λx(x2+4x−6) wishes to declare that functions are smart.
-   (2) Peano arithmetics prove incomplete with Gödel at 1930.

After these informal motivations, we turn to CL proper and introduce some of its notions a bit more formally.

The *objects* in CL are called *terms*.\[[9][12]\] Terms may be thought to be interpreted as functions (as further explained in section 4.1). *Primitive terms* comprise *variables* and *constants*, whereas *compound terms* are formed by combining terms. Usually, a denumerable set (i.e., a set with cardinality ℵ0) of variables is included, and the constants include some (undefined) *combinators*. (We use x,y,z,v,w,u,x0,… as variables in the object language, and M,N,P,Q,… as metavariables that range over terms.)

*Terms* are inductively defined as follows.

-   (t1) If x is a variable, then x is a term;
-   (t2) if c is a constant, then c is a term;
-   (t3) if M and N are terms, then (MN) is a term.

In the above definition, (t3) conceals the binary operation that conjoins the two terms M and N. This operation is called *application*, and it is often denoted by juxtaposition, that is, by placing its two arguments next to each other as in (MN).

Application is not assumed to possess additional properties (such as commutativity), because its intended interpretation is *function application*. For instance, ((vw)u) and (v(wu)) are distinct terms—just as the derivative of λx.x2+4x−6 applied to 8 (that is, (λx.2x+4)8\=20) is different from the derivative of 90 (that is, (82+32−6)′\=0). Using λ notation, the two terms in the example may be expressed as

((λy.y′)(λx.x2+4x−6))8

vs

(λy.y′)((λx.x2+4x−6)8).

If terms are viewed as structured strings (where parentheses show grouping), then the number of distinct terms associated to a string of length n is the *Catalan number* Cn−1. For a non-negative integer n (i.e., for n∈N),

Cn\=1n+1(2nn).

The first seven Catalan numbers are C0\=1, C1\=1, C2\=2, C3\=5, C4\=14, C5\=42 and C6\=132. As an illustration, we may take—for simplicity—strings consisting of xs, because the terms are to differ only in their grouping. Clearly, if the term is x or xx, that is of length 1 or 2, then there is only one way to form a term, that is, there exists just one possible term in each case. If we start with three xs, then we may form (xx)x or x(xx). If the length of the term is 4, then the five terms are: xxxx, x(xx)x, xx(xx), x(xxx) and x(x(xx)). (It is a useful exercise to try to list the 14 distinct terms that can be formed from 5 xs.)

The usual notational convention in CL is to *drop parentheses* from left-associated terms together with the outmost pair. For instance, xyz would be fully written as ((xy)z), whereas xy(xz) and (xy)(xz) are both “shorthand versions” of the term ((xy)(xz)) (unlike xyxz). Grouping in terms delineates subterms. For instance, xy is a subterm of each of the terms mentioned in this paragraph, whereas yz and yx are subterms of none of those terms.

*Subterms* of a term are recursively defined as follows.

-   (s1) M is a subterm of M;
-   (s2) if M is a subterm of N or of P, then M is a subterm of NP.

Incidentally, the notion of free variables is straightforwardly definable now: x is a free variable of M iff x is a subterm of M. The set of free variables of M is sometimes denoted by fv(M).

All terms are interpreted as functions, and combinators are functions too. Similarly, to some numerical and geometrical functions, that can be described and grasped easily, the combinators that are frequently encountered can be characterized as perspicuous transformations on terms. (Sans serif letters denote combinators and > denotes *one-step reduction*.)

__Definition. (Axioms of some well-known combinators)__

Sxyz▹1xz(yz)

Kxy▹1x

Ix▹1x

Bxyz▹1x(yz)

Txy▹1yx

Cxyz▹1xzy

Wxy▹1xyy

Mx▹1xx

Yx▹1x(Yx)

Jxyzv▹1xy(xvz)

B′xyz▹1y(xz)

Vxyz▹1zxy

These axioms tacitly specify the *arity* of a combinator as well as their *reduction* (or *contraction*) pattern. Perhaps, the simplest combinaetor is the *identity* combinator I, that applied to an argument x returns the same x. K applied to x is a constant function, because when it is further applied to y, it yields x as a result, that is, K is a cancellator with respect to its second argument. W and M are *duplicators*, because in the result of their application one of the arguments (always) appears twice.\[[10][13]\] C, T and V are *permutators*, because they change the order of some of their arguments. B is an *associator*, because Bxyz turns into a term in which y is applied to z before x is applied to the result. Y is the *fixed point* combinator, because for any function x, Yx is the fixed point of that function (see section 2.3). The combinator B′ is an associator and a permutator, whereas S and J are also duplicators. S is very special and it is called the *strong composition* combinator, because when applied to two functions, let us say, g and f (in that order), as well as x, then the resulting term gx(fx) expresses the composition of g and f both applied to the same argument x.

These informal explications did not mention any restrictions on the sort of functions x,y,z,f,g,… may be. However, the axioms above limit the applicability of the combinators to variables. Intuitively, we would like to say that given any terms, that is, any functions M and N, WMN one-step reduces to MNN (possibly, as a subterm of another term). For example, M may be K and N may be yy, and then WK(yy)▹1K(yy)(yy). The latter term suggests a further one-step reduction, and indeed we might be interested in successive one-step reductions—such as those leading from WK(yy) to yy. A way to achieve these goals is to formalize (a theory of) CL starting with the standard *inequational logic* but to omit the anti-symmetry rule and to add certain other axioms and rules.

__Inequational Calculus for CL__ (CL▹).

M▹M

SMNP▹MP(NP)

KMN▹M

M▹NN▹PM▹P

M▹NMP▹NP

M▹NPM▹PN

The use of metavariables encompasses *substitution* (that we illustrated above on the term WMN). The identity axiom and the rule of transitivity imply that ▹ is a transitive and reflexive relation. The last two rules characterize application as an operation that is *monotone* in both of its argument places. CL▹ includes only S and K, because the other combinators are definable from them—as we already mentioned in section 1.2, and as we explain more precisely toward the end of this section.

The set of combinators {S,K} is called a *combinatory base*, that is, these two combinators are the undefined constants of CL▹. To give an idea of a *proof* in this calculus, the following steps may be pieced together to prove SKK(KSK)▹S. KSK▹S is an instance of an axiom. Then SKK(KSK)▹SKKS is obtained by right monotonicity, and further, SKK(KSK)▹S results by instances of the S and K axioms together with applications of the transitivity rule.

The relation ▹ is called *weak reduction*, and it may be defined alternatively as follows. (‘Weak reduction’ is a technical term used in CL to distinguish this relation on the set of terms from some other relations, one of which is called ‘strong reduction’.) A term that is either of the form SMNP or of the form KMN is a *redex*, and the leading combinators (S and K, respectively) are the *heads* of the redexes. If a term Q contains a subterm of the form SMNP, then Q′; which is obtained by replacing that subterm by MP(NP) is a *one-step reduct* of Q. (Similarly, for the redex KMN and M.) That is, Q▹Q′ in both cases. *Reduction* then may be defined as the reflexive transitive closure of one-step reduction. This notion is *completely* captured by CL▹. The calculus CL▹ is *complete* in the sense that if M▹N in the sense we have just described, then CL▹ proves M▹N. (It is easy to see that the converse implication is true too.)

The notion of reduction is a weaker relation than one-step reduction, and so it is useful to distinguish a subclass of terms using the stronger relation. A term is in *normal form* (nf) when it contains no redexes. Note that one-step reduction does not need to decrease the total number of redexes that a term contains, hence, it does not follow that every term can be turned into a term in nf via finitely many one-step reductions. Indeed, some terms do not reduce to a term in nf.

Reduction is arguably an important relation between terms that denote functions. The typical steps in a program execution and in other concrete calculations are function applications rather than moves in the other direction, what is called *expansion*. However, the notion of the equality of functions is familiar to everybody from mathematics, and the analogous notion has been introduced in CL too. The transitive, reflexive, symmetric closure of the one-step reduction relation is called (weak) *equality*. A formalization of equational CL may be obtained by extending the standard equational logic with combinatory axioms and rules characterizing the combinatory constants and the application operation.

__Equational Calculus for CL__ (CL\=).

M\=M

KMN\=M

SMNP\=MP(NP)

M\=NN\=PM\=P

M\=NN\=M

M\=NMP\=NP

M\=NPM\=PN

The first axiom and the first two rules constitute equational logic. The constants are again the combinators S and K. Note that CL\= could have been defined as an extension of CL▹ by adding the rule of symmetry, that would have paralleled the description of the definition of equality from reduction as its transitive, symmetric closure. We chose instead to repeat the inequational axioms and rules with the new notation (and add the rule of symmetry) to make the two definitions self-contained and easy to grasp. The two characterizations of \= coincide—as those of ▹ did.

CL▹ and CL\= share a feature that may or may not be desirable—depending on what sort of understanding of functions is to be captured. To illustrate the issue, let us consider the one-place combinators SKK and SK(KK). It is easy to verify that SKKM▹M and SK(KK)M▹M. However, neither SKK▹SK(KK) nor SK(KK)▹SKK is provable in CL▹; a fortiori, the equality of the two terms in not provable in CL\=. This means that CL▹ and CL\= formalize *intensional* notions of functions, where “intensionality” implies that functions that give the same output on the same input may remain distinguishable.

The archetypical intensional functions that one is likely to encounter are *algorithms*. As examples, we might think of various specifications to calculate the decimal expansion of π, or various computer programs that behave in the same way. For instance, compilers (for one and the same language) may differ from each other by using or not using some optimizations, and thereby, producing programs from a given piece of code that have identical input–output behavior but different run times.

If functions that are indistinguishable from the point of view of their input–output behavior are to be identified, that is, an *extensional* understanding of functions is sought, then CL▹ and CL\= have to be extended by the following rule, (where the symbol ‡ is to be replaced by ▹ or \=, respectively).

Mx‡NxM‡N where x is not free in MN.

### 2.2 Church–Rosser theorems and consistency theorems

The calculi CL▹ and CL\= of the previous section formalize reduction and equality. However, ▹ and \= have some further properties that are important when the terms are thought to stand for functions. The next theorem is one of the earliest and best-known results about CL.

__Church–Rosser theorem (I).__ If M reduces to N and P, then there is a term Q to which both N and P reduce.

![figure 1](https://plato.stanford.edu/entries/logic-combinatory/figure1.jpg)

Figure 1. Illustration for the Church–Rosser theorem (I)

If we think that reduction is like computing the value of a function, then the Church–Rosser theorem—in a first approximation—can be thought to state that the final result of a series of calculations with a term is unique—independently of the order of the steps. This is a slight overstatement though, because uniqueness implies that each series of calculations ends (or “loops” on a term). That is, if there is a unique final term, then only finitely many distinct consecutive calculation steps are possible.

A coarse analogy with elementary arithmetic operations, perhaps, can shed some light on the situation. The addition and multiplication of natural numbers always yield a natural number. However, if division is included then it is no longer true that all numerical expressions evaluate to a natural number, since 7/5 is a rational number that is not a natural one, and n/0 is undefined (even if n were real). That is, some numerical expressions do not evaluate to a (natural) number. Although the analogy with combinatory terms is not very tight, it is useful. For instance, n/0 (assuming that the codomain of the function λn.n/0 is extended to permit r to be rational) could be implemented on a computer by a loop (that would never terminate when executed if n≠0) which would go through an enumeration of the rational numbers trying to find an r such that r⋅0\=n.

The combinatory terms WWW and WI(WI) are, perhaps, the simplest examples of terms that do not have a normal form. Both terms induce an infinite *reduction sequence*, that is, an infinite chain of successive one-step reductions. To make the example more transparent, let us assume for a moment that W, I, C, etc. are not defined from K and S, but are primitive constants. The contraction of the only redex in WWW returns the same term, which shows that uniqueness does not imply that the term is in nf. The contraction of the only redex in WI(WI) gives I(WI)(WI) that further reduces to the term we started with. A slightly more complicated example of a term that has only infinite reduction sequences is Y(CKI). This term has a reduction sequence (in which each contracted redex is headed by Y) that contains infinitely many distinct terms. It is also possible to create infinite reduction sequences that start with Y(CKI) and have various loops too. To sum up, the Church–Rosser theorem, in general, does not guarantee the uniqueness of the term Q. However, if M has *a normal form* then that is *unique*.

The Church–Rosser theorem is often stated as follows.

__Church–Rosser theorem (II).__ If N and P are equal, then there is a term Q to which both N and P reduces.

![figure 2](https://plato.stanford.edu/entries/logic-combinatory/figure2.jpg)

Figure 2. Illustration for the Church–Rosser theorem (II)

The second form of the Church–Rosser theorem differs from the first in its *assumption*. From the definition of equality as a superset of reduction, it is obvious that the first form of the theorem is implied by the second. However, despite the weaker assumption in the second formulation of the Church–Rosser theorem, the two theorems are *equivalent*. Equality is the transitive, symmetric closure of reduction, which means that if two terms are equal then there is a finite path comprising reduction and expansion steps (which decompose into one-step reductions and one-step expansions, respectively). Then by finitely many applications of the first Church–Rosser theorem (i.e., by induction on the length of the path connecting N and P), the first Church–Rosser theorem implies the second formulation.

*Modern proofs* of the Church–Rosser theorem for CL proceed indirectly because one-step reduction fails to have the diamond property. A binary relation R (e.g., reduction) is said to have the *diamond property* when xRy and xRz imply that yRv and zRv for some v. If a binary relation R has the diamond property, so does its transitive closure. To exploit this insight in the proof of the Church–Rosser theorem, a suitable *subrelation of reduction* has to be found. The sought after subrelation should possess the diamond property, and its reflexive transitive closure should coincide with reduction.

The following counterexample illustrates that one-step reductions of a term may yield terms that further do not reduce to a common term in *one* step. SKK(KKS)▹1SKKK and SKK(KKS)▹1K(KKS)(K(KKS)), and then the potential reduction sequences are as follows.

1.  SKKK▹1KK(KK)▹1K
2.  K(KKS)(K(KKS))▹1KKS▹1K
3.  K(KKS)(K(KKS))▹1KK(K(KKS))▹1KK(KK)▹1K
4.  K(KKS)(K(KKS))▹1K(KKS)(KK)▹1KKS▹1K
5.  K(KKS)(K(KKS))▹1K(KKS)(KK)▹1KK(KK)▹1K

The failure of the diamond property is obvious once we note that SKKK▹1KK(KK) (only), but K(KKS)(K(KKS)) does not reduce in one step to KK(KK).

An appropriate subrelation of reduction is the *simultaneous reduction of a set of nonoverlapping redexes*, which is denoted by ▹sr. ‘Nonoverlapping’ means that there are no shared subterm occurrences between two redexes. ▹sr includes ▹1 because a one-step reduction of a redex may be viewed instead as ▹sr of a singleton set of redexes. ▹sr is, obviously, included in ▹ (i.e., in reduction). These two facts imply that the reflexive transitive closure of ▹sr is reduction—when the tonicity of the reflexive transitive closure operation (denoted by ∗) is taken into account.

(1)–(3) summarize the key inclusions between the relations mentioned.

-   (1) ▹1⊆▹sr⇒▹∗1⊆▹∗sr
-   (2) ▹sr⊆▹⇒▹∗sr⊆▹∗
-   (3) ▹∗1⊆▹∗ and ▹∗\=▹.

The central property of ▹sr that we need is the content of the following theorem.

__Theorem. (Diamond property for__ ▹sr) If M▹srN and M▹srP then there is a term Q such that both N▹srQ and P▹srQ.

The proof of this theorem is an easy induction on the term M. The properties of ▹sr guarantee that one or more one-step reductions can be performed at once, but the reductions cannot interfere (or overlap) with each other.

The *consistency* of CL follows from the Church–Rosser theorem together with the existence of (at least two) distinct normal forms.

__Theorem. (Consistency)__ CL is consistent, that is, there are terms that do not reduce to each other, hence they are not equal.

Not all terms have an nf, however, many do. Examples, first of all, include S and K. (The variables, if included, of which there are ℵ0 many, are all in nf.) None of these terms contains a redex, hence each reduces only to itself. By the Church–Rosser theorem, it is excluded that some term M could reduce to both x and S (making S equal to x).

The interaction between infinite reduction sequences and nfs deserves a more careful inspection though. The terms WWW, Y(CKI) and WI(WI) have *only* infinite reduction sequences. However, the existence of an infinite reduction sequence for a term does not imply that the term has no normal form (when the combinatory base is complete or contains a cancellator). Y(KI) reduces to KI(Y(KI)), KI(KI(Y(KI))), KI(KI(KI(Y(KI)))),… as well as to I.

A term *weakly normalizes* when it has an nf, whereas a term *strongly normalizes* when all its reduction sequences lead to an nf (hence, to *the nf*) of the term. A computational analogue of a strongly normalizing term is a (nondeterministic) program that terminates on every branch of computation, whereas termination on at least one branch is akin to weak normalization.

The importance of normalization led to a whole range of questions (and an extensive literature of answers). How does the order of the reduction steps (i.e., a reduction strategy) affect finding the nf (if there is one)? Are there combinatory bases that guarantee the existence of normal forms for every combinator over that base? To quickly illustrate possible answers to our sample questions, we start with noting that if there is no combinator with a duplicative effect in a base, then all combinators over that base strongly normalize. This is a very easy answer, and as a concrete base, we could have, for example, {B,C,K} or {B,C,I}, which have some independent interest in view of their connection to simply typed calculi. However, these bases are far from being combinatorially complete and even a fixed point combinator is undefinable in them.

We could ask a slightly different question: If we start with the base {S,K} and we omit S, then we get the base {K} and all the combinators strongly normalize, but what if we omit K? Do the combinators over {S} strongly normalize or at least normalize? The answer is “no.” A term (discovered by Henk Barendregt in the early 1970s) that shows the lack of strong normalization is SSS(SSS)(SSS). The first S is the head of a (indeed, *the only*) redex, and the head reduction sequence of this term is infinite. Since {S} does not contain any combinator with a cancellative effect, the existence of an infinite reduction sequence for a term means that the term has no nf. There are shorter combinators over the base {S} without an nf, for example, S(SS)SSSSS comprises only eight occurrences of S.

The sorts of questions we illustrated here (or rather, the answers to them) can become a bit technical, because they often involve concepts and techniques from graph theory, automata theory and the theory of term-rewriting.

### 2.3 The existence of fixed points and combinatorial completeness

Schönfinkel proved that S and K suffice to define the other combinators he introduced, and we mentioned in the definition of CL▹ that the set of constants is limited to S and K, because other combinators could be defined from those.

To demonstrate the sense in which definability is understood here we consider the example of B. The axiom for B is Bxyz▹1x(yz), and if we take S(KS)K instead of B, then the following reduction sequence results.

S(KS)Kxyz▹1KSx(Kx)yz▹1S(Kx)yz▹1Kxz(yz)▹1x(yz)

The term S(KS)K is in nf, however, to be in nf is not a requirement for definability. It is more convenient to work with defining terms that are in nf, because an application of a combinator that is not in nf could be started with reducing the combinator to its normal form. (Also, there are always infinitely many combinators that reduce to a combinator.) However, note that the preference for choosing combinators in nf is not meant to imply that a combinator cannot be defined by two or more terms in nf; below we give two definitions (involving only S and K) for I.

If the constants are S and K, then the *combinators* are all those terms that are formed from S and K (without variables). Once we have defined B as S(KS)K, we may use B in further definitions as an abbreviation, and we do that primarily to reduce the size of the resulting terms as well as to preserve the transparency of the definitions.

The following list gives definitions for the other well-known combinators that we mentioned earlier. (Here ‘\=’ is placed between a definiendum and a definiens.)

I\=SK(KK)

T\=B(SI)K

C\=B(T(BBT))(BBT)

W\=CSI

M\=SII

Y\=BW(BB′M)(BW(BB′M))

V\=BCT

B′\=CB

J\=W(BC(B(B(BC))(B(BB)(BB))))

The definitions are easily seen to imply that all these combinators depend on both S and K, but it is not obvious from the definitions that the defined combinators are mutually independent, that is, that none of the listed combinators is definable from another one. (Clearly, some subsets suffice to define some of the combinators.) We do not intend to give an exhaustive list of interdefinability between various subsets of these combinators, but to hint at the multiplicity and intricacy of such definitions, we list a handful of them. We also introduce two further combinators S′ and R.

I\=SKK

I\=WK

I\=CK(KK)

B\=CB′

S′\=CS

S\=CS′

W\=S′I

W\=B(T(BM(BBT)))(BBT)

W\=C(S(CC)(CC))

R\=BBT

Y\=BM(CBM)

Y\=B′(B′M)M

If the fixed point combinator Y is not taken to be a primitive, then there are various ways to define it—so far, we have listed three.

__Fixed point theorem.__ For any function M, there is a term N such that MN\=N.

The proof of this theorem is easy using a fixed point combinator, because a term that can play the rôle of N is YM.

Some of the definitions of Y have slightly different properties with respect to reduction. But the importance of the fixed point combinator is that it ensures that all functions have a fixed point and all *recursive equations* can be solved.

Both Haskell B. Curry and Alan Turing defined fixed point combinators (in CL or in the λ\-calculus). If we consider the definitions

Y1\=BM(BWB)Y2\=W(B(BW(BT)))(W(B(BW(BT))))

(where the subscripts are added to distinguish the two definitions), then we can see that Y1M\=M(Y1M), but for Y2, Y2M▹M(Y2M) holds too. In this respect, Y1 is similar to Curry’s fixed point combinator (and really, to any fixed point combinator), whereas Y2 is like Turing’s fixed point combinator.

The fixed point theorem demonstrates—to some extent—the expressive power of CL. However, fixed point combinators may be defined from bases without a cancellator (as Y1 and Y2 show). The full power of CL (with the base {S,K}) is enunciated by the following theorem.

__Theorem. (Combinatorial completeness)__ If  f(x1,…,xn)\=M (where M is a term containing no other variables than those explicitly listed), then there is a combinator X such that Xx1…xn reduces to M.

The theorem’s assumption may be strengthened to exclude the possibility that some occurrences of x do not occur in M. Then the consequent may be strengthened by adding the qualification that X is a relevant combinator, more specifically, X is a combinator over {B,W,C,I} (a base that does not contain a combinator with cancellative effect), or equivalently, X is a combinator over {I,J}. (These bases correspond to Church’s preferred λI\-calculus.)

Combinatorial completeness is usually proved via defining a “*pseudo*” λ\-*abstraction* (or *bracket abstraction*) in CL. There are various algorithms to define a bracket abstraction operator in CL, that behaves as the λ operator does in a λ\-calculus. This operator is usually denoted by \[\] or by λ∗. The algorithms differ from each other in various aspects: (i) the set of combinators they presuppose, (ii) the length of the resulting terms, (iii) whether they compose into (syntactic) identity with the algorithm that translates a combinatory term into a λ\-term, and (iv) whether they commute with either of the reductions or equalities.

The first algorithm, the elements of which may already be found in Schönfinkel (1924), consists of the following clauses that are applied in the order of their listing.

\[x\].M\=KM, where x∉fv(M)\[x\].x\=I\[x\].Mx\=M, where x∉fv(M)\[x\].MN\=BM(\[x\].N), where x∉fv(M)\[x\].MN\=C(\[x\].M)N, where x∉fv(N)\[x\].MN\=S(\[x\].M)(\[x\].N)

For example, if this algorithm is applied to the term λxyz.x(yz) (that is, to the λ\-translation of B), then the resulting term is B. However, if η is omitted then a much longer term results, namely, C(BB(BBI))(C(BBI)I). Another algorithm, for example, consists of clauses (i), (k) and (s).

## 3\. Nonclassical logics and typed CL

### 3.1 Simple types

Combinatory terms are thought of as functions, and functions are thought to have a *domain* (a set of possible inputs) and a *codomain* (a set of possible outputs). For example, if a unary function is considered as a set of ordered pairs, then the domain and codomain are given by the first and second projections, respectively. If partial and non-onto functions are permitted, then *supersets* of the sets resulting from the first and second projections can also be domains and codomains. [Category theory][14], where functions are components of categories (without a set theoretic reduction assumed), retains the notions of a domain and a codomain; moreover, every function has a unique domain and codomain.

Functions that have the same domain and codomain may be quite different, however, by abstraction, they are of the same sort or type. As a simple illustration, let f1 and f2 be two functions defined as f1\=λx.8⋅x and f2\=λx.x/3. If x is a variable ranging over reals, then f1 and f2 have the same domain and codomain (i.e., they have the same type R→R), although f1≠f2, because f1(x)≠f2(x) whenever x≠0. The usual notation to indicate that a function f has A as its domain and B as its codomain is f:A→B. It is a happy coincidence that nowadays ‘→’ is often used in logics as a symbol for entailment or (nonclassical) implication.

Given a set of basic types (that we denote by P), *types* are defined as follows.

1.  If p∈P then p is a type;
2.  if A,B are types then (A→B) is a type.

To distinguish these types from other types—some of which are introduced in the next section—they are called *simple types*.

The connection between combinators and types may be explained on the example of the identity combinator. Compound combinatory terms are formed by the application operation. Premises of modus ponens can be joined by fusion (denoted by ∘), which is like the application operation in the strongest relevance logic B. Ix▹x and so if x's type is A, then Ix's type should imply A. Furthermore, Ix's type should be of the form X∘A, for some type X; then I can be of type A→A. In the example, we fixed x's type, however, I can be applied to any term, hence, it is more accurate to say that A→A is the type *schema* of I, or that I's type can be any formula of the form of *self-implication*.

The type-assignment system TACL is formally defined as the following deduction system. (When implicational formulas are considered as types, the usual convention is to omit parentheses by association to the right.)

Δ⊢S:(A→B→C)→(A→B)→A→C Δ⊢K:A→B→A Δ⊢M:A→BΘ⊢N:AΔ,Θ⊢MN:B

Expressions of the form M:A above are called *type assignments*. A characteristic feature of type-assignment systems is that if M:A is provable then A is considered to be one of the types that can be assigned to M. However, a provable assignment does not preclude other types from becoming associated to the same term M, that is a type assignment does not fix the type of a term rigidly. Δ and Θ on the left-hand side of ⊢ are sets of type assignments to variables, and they are assumed to be consistent—meaning that no variable may be assigned two or more types.

Type assignment systems are often called *Curry-style typing systems*. Another way to type terms is by fixing a type for each term, in which case each term has exactly one type. Such calculi are called *Church-style typing systems*. Then, for example, the identity combinator I of type

(A→A→A)→A→A→A

is not the same as the identity combinator I of type

((B→B)→B)→(B→B)→B.

The two styles of typing have quite a lot in common, but there are certain differences between them. In particular, no self-application is typable in a Church-style typing system, whereas some of those terms can be assigned a type in a Curry-style typing system. Curry-style typing systems proved very useful in establishing various properties of CL and λ\-calculi. The Church-style typing, on the other hand, emulates more closely the typing in certain functional programming languages (without objects).

There is no one-one correspondence between types and combinators in either style of typing: not all combinators can be assigned a type, and some implicational formulas cannot be assigned to any combinatory term. A combinator that can be assigned a type is said to be *typable*, and a type that can be assigned to a combinator is said to be *inhabited*. For instance, M has no (simple) type, because an implicational formula is never identical to its own antecedent. On the other hand, Peirce’s law, ((A→B)→A)→A is not the type of any combinator in the type assignment system TACL. Despite (or, indeed, due to) the discrepancy between implicational formulas and combinatory terms, classes of implicational formulas that can be assigned to certain sets of combinatory terms coincide with sets of theorems of some important logics.

__Theorem.__ A→B is a theorem of the intuitionistic implicational logic, denoted by IPC→ or J→, iff for some M, M:A→B is a provable type assignment in TACL, where the term M is built from S and K, that is, M is a combinator over the base {S,K}.

A combinator that inhabits an implicational theorem encodes a *proof* of that theorem in the deduction system TACL. There is an algorithm to recover the formulas that constitute a proof of the type of the combinator, moreover, the algorithm produces a proof that is minimal and well-structured. The correspondence between implicational theorems of intuitionistic logic (and their proofs) and typable closed λ\-terms (or combinators) is called the *Curry–Howard isomorphism*. The usual notion of a proof in a Hilbert-style axiomatic system is quite lax, but it can be tidied up to obtain the notion of *traversing proofs*. In a traversing proof there is a one-one correspondence between subterms of a combinator and the formulas in the traversing proof as well as between applications and detachments therein (cf. Bimbó 2007).

The above correspondence can be modified for other implicational logics and combinatory bases. The next theorem lists correspondences that obtain between the implicational fragments of the relevance logics R and T and some combinatory bases that are of interest in themselves.

> __Theorem.__ A→B is a theorem of R→ (or T→) iff for some M, M:A→B is a provable type assignment where M is a combinator over {B,I,W,C} (or over {B,B′,I,S,S′}).

The calculus TACL may be amended by adding axiom schemas for the combinators in the two bases. (The axiom schemas of the combinators that are not in these bases may be omitted from the calculus or simply may be neglected in proofs.) The *new axioms* are as follows.

B:(A→B)→(C→A)→C→BB′:(A→B)→(B→C)→A→CC:(A→B→C)→B→A→CW:(A→A→B)→A→BS′:(A→B)→(A→B→C)→A→CI:A→A

The combinatory base {B,C,W,I} is especially interesting, because these combinators suffice for a definition of a bracket abstraction that is equivalent to the λ\-abstraction of the λI\-calculus. To put it differently, all functions that depend on all of their arguments can be defined by this base. The other base allows the definition of functions that can be described by terms in the class of the so-called hereditary right maximal terms (cf. Bimbó 2005). Informally, the idea behind these terms is that functions can be enumerated, and then their successive applications should form a sequence in which the indexes are “globally increasing.”

A type assignment has two parts: a *term* and a *formula*. The questions whether some term can be assigned a type and whether some type can be assigned to a term are the problems of *typability* and of *inhabitation*, respectively. Although these questions may be posed about one and the same set of type assignments, the computational properties of these problems may differ widely.

__Theorem.__ It is decidable if a term M can be assigned a type, that is, if M is typable.

The theorem is stated in a rather general way without specifying exactly which combinatory base or which modification of TACL is assumed, because the theorem holds for any combinatory base. Indeed, there is an algorithm that given a combinator decides if the combinator is typable, and for a typable combinator produces a type too. Of course, in the combinatorially complete base {S,K} all the combinators are expressible as terms consisting of these two combinators only. However, this assumption is not needed for a solution of typability, though it might provide an explanation for the existence of a general algorithm.

The *problem of inhabitation* does not have a similar general solution, because the problem of the equality of combinatory terms is undecidable. Given a set of axiom schemas that are types of combinators with detachment as the rule of inference, the problem of the *decidability of a logic* can be viewed as the problem of inhabitation. Indeed, if A is an implicational formula, then to decide whether A is a theorem amounts to determining if there is a term (over the base that corresponds to the axiom schemas) that can be assigned A as its type. (Of course, a more sophisticated algorithm may actually produce such a term, in which case it is easy to verify the correctness of the claim by reconstructing the proof of the theorem.)

To see from where complications can emerge in the case of decidability, we compare the rule of the *formation of terms* and the rule of *detachment*. Given a combinatory base and a denumerable set of variables, it is decidable by inspection whether a term *is* or *is not* in the set of the generated terms. That is, all the inputs of the rule are retained in the output as subterms of the resulting term. In contrast, an application of detachment results in a formula that is a proper subformula of the major premise (and in the exceptional case when the major premise is an instance of self-identity it is identical to the minor premise). The lack of the retention of all subformulas of premises through applications of modus ponens is the culprit behind the difficulty of some of the decision problems of implicational logics. It is then somewhat unsurprising that for many decidable logics there is a decision procedure utilizing sequent calculi in which the cut theorem and the subformula property hold. A solution to the problem of inhabitation may run into difficulties similar to those that arise in decidability problems in general.

For example, the combinator K can be assigned the following type.

p→(q→(q→q→q)→(q→q)→q→q)→p

SKK can be assigned the type p→p. There is a proof in TACL ending in SKK:p→p that does not contain the long formula above. However, there is a proof of SKK:p→p that contains the above formula the second antecedent of which is not a subformula of p→p, indeed, the sets of the subformulas of the two formulas are disjoint. (We picked two different propositional variables, p and q to emphasize this point.) Some important cases of the problem of inhabitation, however, are decidable.

__Theorem.__ It is decidable if a type has an inhabitant over the base {S,K}.

This theorem amounts to the typed version of the decidability of the implicational fragment of [*intuitionistic logic*][15] that is part of [Gentzen’s decidability result][16] (dating from 1935).

__Theorem.__ It is decidable if a type has an inhabitant over the base {I,C,B′,W}.

The theorem is the typed equivalent of the decidability of the implicational fragment of the logic of *relevant implication*. The decidability of R→ was proved by Saul A. Kripke in 1959 together with the decidability of the closely related E→ (the implicational fragment of the *logic of entailment*).

__Theorem.__ It is decidable if a type has an inhabitant over the base {B,B′,I,W}.

the theorem is the typed version of the decidability of the implicational fragment of the logic of ticket entailment T→, that was proved—together with the decidability of R→ (R→ with the truth constant t) and Tt→ (T→ with the truth constant t)—in Bimbó and Dunn (2012) and Bimbó and Dunn (2013). An independent result (for T→ only) is in Padovani (2013), which extends Broda et al. (2004).

The decision procedures for Tt→ and Rt→ do not use TACL or axiomatic calculi, instead, they build upon *consecution calculi* (i.e., sequent calculi in which the structural connective is not assumed to be associative). The idea that there is an affinity between structural rules and combinators goes back at least to Curry (1963). To tighten the connection, Dunn and Meyer (1997) introduced *structurally free logics* in which introduction rules for combinators replace structural rules—hence the label for these logics. Bimbó and Dunn (2014) introduced a technique to generate a combinatory inhabitant for theorems of T→ from their standard proofs in the sequent calculus, which is used in the decision procedure for Tt→. Sequent calculi provide better control over proofs than natural deduction or axiomatic systems do. The combinatory extraction procedure of Bimbó and Dunn (2014) yields an effective link between combinators and types grounded in sequent calculus proofs, which obviates the apparent advantage of TACL and axiomatic systems.

The rule of substitution is built-in into the formulation of TACL via the rule *schema* called detachment and the axiom *schemas* for the basic combinators. It is obvious that there are formulas of *least complexity* that are types of S and K, such that all the other types of S and K are their substitution instances. A formula that has this property is called a *principal type* of a combinator. Obviously, a combinator that has a principal type, has denumerably many principal types, which are all substitution instances of each other; hence, it is justified to talk about the *principal type schema* of a combinator. The existence of principal types for complex combinators is not obvious, nevertheless, obtains.

__Theorem.__ If the term M is typable, then M has a principal type and a principal type schema.

Principal types and principal type schemas may seem now to be interchangeable everywhere. Thus we could take a slightly different approach and define TACL to include axioms and the rule schema of detachment together with the *rule of substitution*. This version of TACL would assume the following form.

Δ⊢S:(p→q→s)→(p→q)→p→s Δ⊢K:q→s→q Δ⊢M:A→BΘ⊢N:AΔ,Θ⊢MN:B Δ⊢M:AΔ\[P/B\]⊢M:A\[P/B\]

where P ranges over propositional variables. (The substitution notation is extended—in the obvious way—to sets of type assignments.) Clearly, the two deduction systems are equivalent.

If substitution were dropped altogether, then the applicability of detachment would become extremely limited, for instance, SK no longer would be typable. A compromise between having substitution everywhere and having no substitution at all is to modify the detachment rule so that that includes as much substitution as necessary to ensure the applicability of the detachment rule. Such a rule (without combinatory terms or type assignments) was invented in the 1950s by Carew A. Meredith, and it is usually called *condensed detachment*. The key to the applicability of detachment is to find a common substitution instance of the minor premise and of the antecedent of the major premise. This step is called *unification*. (A bit more formally, let s(A) denote the application of the substitution s to A. Then, the result of the condensed detachment of A from B→C is s(C), when there is an s such that s(A)\=s(B), and for any s1 with this property, there is an s2 such that s1 is the composition of s and s2.)

Notice that it is always possible to choose substitution instances of a pair of formulas so that the sets of their propositional variables are disjoint, because formulas are finite objects. The *most general common instance* of two formulas A and B (that do not share a propositional variable) is C, where C is a substitution instance of both A and B, and propositional variables are identified by the substitutions only if the identification is necessary to obtain a formula that is a substitution instance of both A and B. The *unification theorem* (specialized to simple types) implies that if two formulas A and B have a common instance then there is a formula C such that all the common instances of A and B are substitution instances of C. Obviously, a pair of formulas either has no common instance at all, or it has ℵ0 many most general common instances.

A famous example of a pair of formulas that have *no common instance* is A→A and A→A→B. The instances p→p and q→q→r share no propositional variables, however, neither q→q nor (q→r)→q→r matches the shape of the second formula. To put the problem differently, q and q→r would have to be unified, but they cannot be unified no matter what formula is substituted for q. An immediate consequence of this is that WI is not typable.

On the other hand,

(r→r)→r→r

and

((s→s)→s→s)→(s→s)→s→s

are substitution instances of p→p and of q→q. Furthermore, all simple types are substitution instances of a propositional variable, hence II can be assigned both the type r→r and the type (s→s)→s→s—and, of course, the latter happens to be an instance of the former because A→A is the principal type schema of II. If we apply condensed detachment to p→p and q→q, then we get q→q (via the substitutions \[p/q→q\] and \[q/q\]), and so condensed detachment yields the principal type of II. Incidentally, II and I provide an excellent example to illustrate that *distinct* terms may have the *same* principal type schema.

Condensed detachment has been used extensively to refine axiomatizations of various implicational logics, especially, in search for shorter and fewer axioms. Some logics may be formulated using axioms (rather than axiom schemas) together with the rule of condensed detachment—without loss of theorems. All the logics that we mentioned so far (J→, R→, T→ and E→) are D\-*complete*, that is, they all may be axiomatized by axioms and the rule of condensed detachment. That is, the implicational fragments of classical and intuitionistic logics, and the implicational fragments of the relevance logics R, E and T are all D\-complete. (See Bimbó (2007) for some further technical details.)

Simply typed systems have been extended in various directions. Logics often contain connectives beyond implication. It is a natural modification of a type assignment system to expand the set of types via including further *type constructors*. Conjunction and fusion are the easiest to explain or motivate as type constructors, however, disjunction and backward implication have been introduced into types too. Types are useful, because they allow us to get a grip on classes of terms from the point of view of their behavior with respect to reduction.

__Tait’s theorem.__ If a combinatory term M is typable (with simple types) then M strongly normalizes, that is, all reduction sequences of M are finite (i.e., terminate).

The converse of this claim is, obviously, not true. For example, WI strongly normalizes but untypable, because the antecedent of contraction cannot be unified with any instance of self-implication. The aim to extend the set of typable terms led to the introduction of ∧ into types.

### 3.2 Intersection types

A different way to look at the problem of typing WI is to say that W should have a type similar to the formula (A→(A→B))→A→B, but in which the formulas in place of the two formulas A and A→B in the antecedent can be unified. This is the motivation for the inclusion of conjunction (∧) and top (⊤) as new type constructors.

An extended type system, that is often called the *intersection type discipline*, is due to Mario Coppo and Mariangiola Dezani-Ciancaglini. The set of *intersection types* (denoted by wff) is defined as follows.

1.  p∈wff if p is a propositional variable;
2.  ⊤∈wff, where ⊤ is a constant proposition;
3.  A,B∈wff implies (A→B),(A∧B)∈wff.

Of course, if TACL is augmented with an expanded set of types, then new instances of the previously assigned types become available. However, the gist of having types with the new type constructors ∧ and ⊤ is that the set of types has a richer structure than the relationships between types determined by the rules of substitution and modus ponens.

The structure of intersection types is described by the conjunction–implication fragment of B, the *basic relevance logic*. In the following presentation of this logic, ≤ is the main connective (an implication) of a formula and ⇒ separates the premises and the conclusion of an inference rule.

A≤AA≤⊤⊤≤⊤→⊤A≤A∧AA∧B≤AA∧B≤BA≤B,B≤C⇒A≤CA≤B,C≤D⇒A∧C≤B∧D(A→B)∧(A→C)≤(A→(B∧C))A≤B,C≤D⇒B→C≤A→D

The axiom schemas for the combinators S,K and I are as follows. Note that the axiom for S is not simply a substitution instance (with new connectives included) of the previous axiom for S.

Δ⊢S:(A→B→C)→(D→B)→(A∧D)→C Δ⊢K:A→B→AΔ⊢I:A→A

There are four new rules added, and there is an axiom for ⊤.

Δ⊢M:AΔ⊢M:BΔ⊢M:A∧BΔ⊢M:A∧BΔ⊢M:AΔ⊢M:A∧BΔ⊢M:B Δ⊢M:AA≤BBΔ⊢M:BΔ⊢M:⊤

This type assignment system is equivalent to the intersection type assignment system for the λ\-calculus, and it allows a more precise characterization of classes of terms with respect to the termination of reduction sequences.

__Theorem.__  
(1) A term M normalizes whenever M is typable.  
(2) A term M strongly normalizes whenever M is typable and the proof does not contain ⊤.

## 4\. Models

CL has various kinds of models, three of which are exemplified in some detail in this section. *Algebraic models* (often called “term models”) may be constructed without difficulty for both the inequational and the equational systems of CL that were introduced in section 2.1. The set of terms forms an algebra, and given a suitable equivalence relation (that is also a congruence), the application operation can be lifted to the equivalence classes of terms in the standard way. The quasi-inequational characterization of the so obtained algebra provides the basis for an algebraic semantics for these logics. Isolating the Lindenbaum algebra and verifying that it is not a trivial algebra constitutes a consistency proof for CL▹ and CL\=.

### 4.1 Scott’s models

Dana Scott defined Pω and D∞ for the λ\-calculus. We first outline Pω—the so-called *graph model*, which is easier to understand.

The natural numbers have a very rich structure. Pω is the power set of the set of natural numbers and it is at the core of the model bearing the same label. Every natural number has a unique representation in *base* 2. (E.g., 710 is 111, that is, 7\=1⋅22+1⋅21+1⋅20\=4+2+1.) Each binary representation is of the form

bm⋅2m+bm−1⋅2m−1+⋯+b1⋅21+b0⋅20,

where each b is 0 or 1. Then each binary number may be viewed as the characteristic function of a *finite subset of natural numbers*. (On the left, there are infinitely many zeros, as in …000111, which are omitted.) For a natural number n, en denotes the corresponding finite set of natural numbers. (E.g., e7\={0,1,2}.)

The *positive topology* on Pω comprises finitely generated open sets. Let E denote the finite subsets of ω. X⊆Pω is open iff X is a cone (with respect to ⊆) generated by a subset of E. Given the positive topology, a function f:Pω→Pω turns out to be *continuous* (in the usual topological sense) iff f(x)\=∪{f(en):en⊆x}, where en∈E. This means that m∈f(x) iff ∃en⊆x.m∈f(en), which leads to a characterization of a continuous function f by the pairs of natural numbers (n,m).

A one-one correspondence between (ordered) pairs of natural numbers and natural numbers is defined by

(n,m)\=\[(n+m)⋅(n+m+1)\]+2⋅m2

The set of pairs that constitute a (unary) function is sometimes called the *graph* of the function. The graph of a continuous function f:Pω→Pω is defined by graph(f)\={(n,m):m∈f(en)}. In order to be able to model type-free application—including self-application—subsets of ω should be viewed as functions too. For x,y⊆ω, the function determined by y is defined as fun(y)(x)\={m:∃en⊆x.(n,m)∈y}. For a continuous function f, fun(graph(f))\=f holds.

The graph model of CL maps terms into subsets of ω. To start with, the combinators have concrete sets as their interpretations. As a simple example, I\={(n,m):m∈en}. Of course, each pair corresponds to an element of ω, hence, we get a set of natural numbers. In particular, some of the elements are {1,6,7,11,15,23,29,30,…}.

If the combinators (as well as the variables) are interpreted as subsets of ω, then function application should take the first set (viewed as a function of type Pω→Pω) and apply that to the second set. fun(y) is a suitable function that is determined by y⊆ω. In general, if M and N are CL-terms, and I is the interpretation of atomic terms into Pω, then I is extended to compound terms by I(MN)\=fun(I(M))(I(N)). (E.g., let I(x) be e9\={0,3}. I(Ix)\=fun(I(I))(I(x))\={m:∃en⊆I(x).(n,m)∈I(I)}. We know what I(I) and I(x) are; hence, we get further that I(Ix)\={m:∃en⊆e9.m∈en}. Of course, {0,3}⊆{0,3}, and so we have that I(Ix)\={0,3}.) This model supports an *intensional* notion of functions.

The earliest model for a *typefree applicative system* as a *function space* was also given by Scott, a couple of years before the graph model, in the late 60s. The following is an outline of some of the key elements of the construction.

In pure typefree CL, an expression of the form MM is a well-formed term. Moreover, terms of this form can enter into provable equations and inequations in multiple ways. For example, xx\=xx is an axiom, and by one of the rules, y(xx)\=y(xx) is provable too. A more interesting occurrence of a term of the form MM can be seen in the provable inequation S(SKK)(SKK)x▹xx.

The set-theoretic reduction of a function yields a set of pairs (in general, a set of tuples). In set theory (assuming well-foundedness, of course) a pair (e.g., {{a},{a,b}}) is never identical to either of its two elements. Therefore, the main question concerning a mathematical model of CL is how to deal with *self-application*.

Scott’s original model is built starting with a *complete lattice* (D,≤). That is, (D,≤) is a partially ordered set in which greatest lower bounds (infima) and least upper bounds (suprema) exist for arbitrary sets of elements. A function f from (D,≤) into a complete lattice (E,≤) is said to be *continuous* when it preserves the supremum of each ideal on D, where an ideal is an upward directed downward closed subset.

A *topology* may be defined on D by selecting certain increasing sets as the opens. More precisely, if I is an ideal and C is a cone, then C is open iff C∩I≠∅ provided that ⋁I∈C, that is, provided that the supremum of I is an element of C. (For example, complements of principal ideals are open.) f turns out to be continuous in the usual topological sense, that is, the inverse image of an open set is open, when D and E are taken together with their topologies. This motivates the earlier labeling of these functions as continuous. Notably, all continuous functions are *monotone*.

For the purposes of modeling functions in CL, the interesting functions are those that are continuous *on* D. However, these functions by themselves are not sufficient to obtain a modeling of self-application, because none of them has as its domain a set of functions—as D is not assumed to be a function space. The solution starts with defining a *hierarchy of function spaces* D0, D1, D2,… so that each function space Dn, is a complete lattice on which continuous functions may be defined (creating the function space Dn+1). The importance of selecting continuous functions is that the emerging function space has the *same cardinality* as the underlying set, which allows us to define embeddings between function spaces adjacent within the hierarchy.

The hierarchy of all the function spaces Dn may be accumulated together. A standard construction in model theory is to form the disjoint union of structures. (Disjointness can always be guaranteed by indexing the carrier sets of the structures.) Scott defined D∞ to be the *disjoint union* of the function spaces Dn, for all n, except that the extremal elements are “glued together.” (More formally, the top elements and the bottom elements of the function spaces, respectively, are identified with each other.) D∞ is a complete lattice, and by Tarski’s fixed point theorem, a continuous function that maps D∞ into D∞ has a fixed point, which implies that D∞ is *isomorphic* to D∞→D∞.

The above construction may also be conceptualized in terms of *strings* and *Cartesian products*. The back-and-forth moves between functions of one and more than one variable—the “uncurrying” and “currying” of functions—algebraically corresponds to the two directions of *residuation*. For example, a function f:A×B→C may be represented by a function f′:A→B→C, and vice versa. Thus, without loss of generality, it is sufficient to consider unary functions. If a is a fixed element of the function space D∞, then x\=(a,x) holds when x is the fixed point of a. In terms of tuples, the solution may be viewed as the infinite tuple (a,(a,(a,….

### 4.2 Relational semantics

A further model that we briefly outline falls into the set-theoretical semantics paradigm of *nonclassical logic* and it is due to J. Michael Dunn and Robert K. Meyer (see Dunn and Meyer (1997)). CL and λ\-calculi are inherently connected to intuitionistic, relevance and other nonclassical logics. In particular, the CL▹ and CL\= calculi are nonclassical logics themselves. Set theoretical semantics in which the intensional connectives are modeled from relations on a collection of situations have been the preferred interpretation of nonclassical logics since the early 1960s. These sorts of semantics are sometimes called “Kripke semantics” (because Kripke introduced possible-world semantics for some normal modal logics in 1959) or “gaggle semantics” (after the pronunciation of the abbreviation ‘ggl’ that stands for “generalized Galois logics” introduced by Dunn (1991)).

A model for CL▹ may be defined as follows. Let (W,≤,R,S,K,v) comprise a (nonempty) partially ordered set (W,≤) with a three-place relation R on W, and let S, K∈W. Furthermore, for any α,β,γ,δ∈W, the conditions (s) and (k) are true.

-   (s) ∃ζ1,ζ2,ζ3∈W.RSαζ1∧Rζ1βζ2∧Rζ2γδ  
       implies  
    ∃ζ1,ζ2,ζ3∈W.Rαγζ1∧Rβγζ2∧Rζ1ζ2δ,
-   (k) ∃ζ1∈W.RKαζ1∧Rζ1βγ  
       implies  
    α≤γ.

The ternary relation is stipulated to be antitone in its first two argument places and monotone in the third. These components define a frame for CL▹. The valuation function v maps variables x,y,z,… into (nonempty) cones on W, and it maps the two primitive combinators S and K into the cones generated by S and K, respectively. Recall, that the standard notation in CL hides application, a binary operation that allows forming compound terms. The next clause extends v to compound terms and makes this operation explicit again.

v(MN)\={β:∃α,γ.Rαγβ∧α∈v(M)∧γ∈v(N)}

An inequation M▹N is valid if v(M)⊆v(N) under all valuations on frames for CL▹. (That is, the relationship between the interpretations of the two terms is invariant whenever v is varied on the set of variables.)

Informally, the underlying set W is a set of *situations*, and R is an *accessibility relation* connecting situations. All the terms are interpreted as sets of situations, and function application is the *existential image operation* derived from R. A difference from the previous models is that the result of an application of a term to a term is not determined by the objects themselves that interpret the two terms—rather the application operation is defined from R.

This semantics generalizes the possible worlds semantics for normal modal logics. Therefore, it is important to note that the situations are *not* maximally consistent theories, rather they are theories possessing the property that for any pair of formulas they contain a formula that implies both of them. Equivalently, the situations may be taken to be dual ideals on the Lindenbaum algebra of CL▹. These situations are typically consistent in the sense that they do not contain all the terms in all but one case. (The notion of negation consistency, of course, cannot be defined for CL▹ or for CL\=.)

Relational semantics can be defined for CL\= along similar lines. Then soundness and completeness—that is, the following theorem—obtains.

__Theorem.__  
(1) An inequation M▹N is provable in CL▹ if and only if v(M)⊆v(N) in any model for CL▹.  
(2) An equation M\=N is provable in CL\= if and only if v(M)\=v(N) in any model for CL\=.

Relational and operational semantics for systems of CL that include dual and symmetric combinators can be found in Bimbó (2004).

## 5\. Computable functions and arithmetic

A remarkable feature of CL is that despite its seeming simplicity it is a *powerful formalism*. Of course, the strength of CL cannot be appreciated without discovering certain relationships between combinatory terms or without an illustration that computable functions are definable.

An important beginning step in the formalization of mathematics is the [*formalization of arithmetic*][17], that was first achieved by the Dedekind–Peano axiomatization. There are various ways to formalize arithmetic in CL; two representations of numbers are described in this section together with some functions on them.

*Numbers* may be thought to be objects (or abstract objects) of some sort. (Here by numbers we mean natural numbers, that is, 0 and the positive integers.) Numbers could be characterized, for example, by the *structure* they possess as a set. This structure supports properties such as 0≠1, and that the sum of n and m is the same number as the sum of m and n. Another well-known property of the natural numbers is, for example, the existence of infinitely many prime numbers.

Numbers can be represented in CL by terms, and one way is to choose the terms KI, I, SBI, SB(SBI),… for 0, 1, 2, 3, etc. The terms that represent the arithmetic operations vary, depending on which terms stand for the numbers. Note that unlike the Dedekind–Peano formalization of arithmetic, CL makes no syntactic distinction that would parallel the difference between individual constants and function symbols—in CL the only objects are terms. The above list of terms already shows the *successor function*, which is SB. (SB(KI) strongly equals to I, that is, 1 is the successor of 0.)

*Addition* is the term BS(BB), and *multiplication* is the term B. The usual recursive definition of multiplication based on addition may suggest that addition should be a simpler operation than multiplication. However, in CL the numbers themselves are functions, and so they have properties that allows B—a simpler looking term—to be chosen for the function that is often perceived to be more complex than addition. (The addition operation could be defined using primitive recursion, which would produce a more complex term.) As a classical example, we may consider the term BII, that is strongly equal to I, that is, 1×1\=1—as expected. We do not pursue here this numerical representation further. We only note that the shape of these numbers is closely related to Church’s numerals in the λ\-calculus, each of which is a binary function (whereas here, each number is a unary function).

Another way to represent numbers in CL is to start with a different choice of terms for the numbers. Previously, I stood for 1, now we take I to be 0. The successor of a number n is V(KI)n, where the second occurrence of n indicates a numeral, that is, the combinator that represents n. (The numeral for n is often denoted—more precisely—by an overlined or otherwise decorated n. However, the double usage of n in a limited context should not cause any confusion.) In other words, the *successor* function is V(KI). Notice that the numbers in the present representation are terms over a more restricted combinatory base than in the former case. For example, no combinator with duplicative effect is definable from {I,K,V}.

Some simple *recursive functions* may be defined as follows. The *predecessor* function P on numbers is “−1” (i.e., subtracting one) for all numbers greater than or equal to 1, and the predecessor of 0 is set to be 0. The next term defines the predecessor function which is abbreviated by P.

P\=C(W(BB(C(TK)I)))(KI)

If n is a numeral, then Pn reduces to nKI(n(KI)), which suggests that for positive numbers, P could have been defined to be the term T(KI), because T(KI)n reduces to n−1 whenever n is a term of the form V(KI)(n−1).

Some models of computation (such as register machines) and certain programming languages include a *test for zero* as a primitive construct. It is useful to find a CL-term for a function Z such that Znxy reduces to x if n is zero, whereas Znxy reduces to y when n is positive. Znxy may be thought of as the conditional instruction “If n\=0 then x else y,” where x and y are themselves functions. (Of course, in the pseudo-code one should have assumed that n is of integer type and cannot take a negative value, that could be guaranteed by a declaration of variables and an additional conditional statement.) The following definition works for branching on zero.

Z\=TK

TKnxy\=nKxy, and if n is zero, that is, n\=I, then by another step Kxy and then x results; whereas if n is positive, then after a few more reductions, one gets KIxy, that is, y. The two terms, Kxy and KIxy, hint toward an interpretation of K and KI as *truth* and *falsity*, or they can be viewed as terms that can select, respectively, the first or the second argument. These ideas may be further developed into definitions of truth functions and a representation of tuples.

*Addition* may be defined by the recursive equation +mn\=Zmn(V(KI)(+(Pm)n)), where m and n are numerals, and P and Z are the already defined functions. (The abbreviations are used to enhance the readability of the terms—they can be replaced everywhere by the defining combinators.) To put into words, if m is 0 then the sum is n, otherwise m+n is the successor of (m−1)+n. Of course, this definition closely simulates the definition of addition from recursion theory, where addition is often defined by the two equations +(0,n)\=n and +(s(m),n)\=s(+(m,n)) (with s denoting the successor function). The fact that CL can express addition in this form shows—once again—the versatility of CL.

Combinatorial completeness guarantees that the term on the right hand side of the defining equation for + (i.e., the term Zmn(V(KI)(+(Pm)n))) can be transformed into a term in which + is the first, m and n are the second and third arguments, respectively. Then + can be defined explicitly as the fixed point of the combinator

B(BW)(BW(B(B(C(BB(BC(TK)))))(B(B(B(V(KI))))(CB(T(KI)))))).

Of course, we can abbreviate the so obtained term as + for the sake of transparency, just as we used earlier P and Z as shorthands for longer combinatory terms.

*Multiplication* is often denoted by ⋅. The recursive equation ⋅mn\=ZmI(+n(⋅(Pm)n)) defines multiplication and it can be deciphered as “if m is 0 then the result is 0, else n is added to the result of (m−1)⋅n.” The next step in the definition brings the right-hand side term to the form X⋅mn, where X does not contain occurrences of ⋅, m or n. Then taking the fixed point of X, and setting ⋅ to be YX concludes the definition of the multiplication function. For instance, the abstraction can yield the combinator

BW(B(B(C(BB(C(TK)I))))(B(BW)(B(B(B(C+)))(CB(T(KI)))))).

The *factorial* function is definable from the predecessor function plus from multiplication, and it is useful e.g., in combinatorics. The factorial function (denoted by !) is recursively definable by the equation !m\=Zm(V(KI)I)(⋅m(!(Pm))), that may be read as “if m is 0, then !m\=1, otherwise !m equals to m multiplied by the factorial of m−1.”

Of course, it is not necessary to define various numerical functions by simulating their recursive definitions. As we saw above in the case of the first representation of numbers, we might just happen to have the right terms such as BS(BB) and B, that behave as the target functions do on numbers. That is, an equally good way to define arithmetic functions is to simply list some terms and then show that they behave as expected. However, once it has been shown that the *basic primitive recursive functions* together with *recursion* and *minimization* can be emulated in CL, we have got not only a nice collection of arithmetic functions in the form of combinators to work with, but also a proof that combinatory logic is sufficiently expressive to formalize all *partial recursive functions*. Indeed, the remaining steps of such a proof can be carried out in CL, though the details are beyond the scope of this entry.

### 5.1 Gödel sentence

The abbreviations and the interspersed explanations in the sketch above may obscure that arithmetic has been formalized in a language that consists of five symbols (when juxtaposition is not counted): S, K, \= plus two delimiters, ( and ). The finite (and perhaps, surprisingly small) number of symbols and the availability of recursive functions conjure the thought that an arithmetization of the syntax of CL could be attempted.

[Gödel][18] achieved an encoding of a formal language by assigning numbers to symbols, formulas and sequences of formulas, which later became known as “Gödel numbers.” Concretely, Gödel assigned odd numbers to symbols and products of powers of primes (with the number corresponding to a symbol in the exponent) to sequences of symbols. However, it is possible to arithmetize the language of CL without placing a strong emphasis on the existence and the properties of prime numbers. (See for example, Raymond M. Smullyan’s books: Smullyan (1985) and Smullyan (1994).) The five symbols get as their Gödel numbers the first five positive integers. A string is assigned the number in base 10 that results from the concatenation of the corresponding numbers for the symbols.

The following outline gives the flavor of an analogue of Gödel’s incompleteness theorem adapted to CL. It is possible to define a combinator such that if this combinator is applied to a numeral n, then the whole term reduces to the numeral m that is the numeral denoting the *Gödel number* of the numeral n. Slightly more formally, there is a combinator δ such that δn\=G(n) (where G(n) denotes the Gödel number of the expression n). Furthermore, there is a combinatory term, which returns the numeral itself followed by G(n), when applied to a numeral n. For any term A there is a term B such that the equation A(δB)\=B is true. This statement (or its concrete variant for a particular formal system) is usually called the *second fixed point theorem*. Computable characteristic functions of recursive sets of numbers can be represented by combinators with the choice of K for truth and KI for falsity. The complements of such functions are computable too. Finally, it can be proved that there is no combinator that represents the set of *all true equations*. To put it differently, any combinator either represents a set of equations that fails to include some true equations, or represents a set of equations that includes all true but also some false equations.

Alonzo Church proved the *undecidability of classical first-order logic* relying on Gödel’s incompleteness theorem. Dana Scott proved that if A is a nonempty proper subset of λ\-terms that is closed under equality then A is not recursive. The analogous claim for CL, that follows from the existence of a Gödelian sentence for CL, is that it is *undecidable* if two CL-terms are equal.

[1]: https://plato.stanford.edu/entries/logic-combinatory/notes.html#note-1
[2]: https://plato.stanford.edu/entries/logic-combinatory/notes.html#note-2
[3]: https://plato.stanford.edu/entries/logic-combinatory/notes.html#note-3
[4]: https://plato.stanford.edu/entries/logic-combinatory/notes.html#note-4
[5]: https://plato.stanford.edu/entries/logic-combinatory/notes.html#note-5
[6]: https://plato.stanford.edu/entries/logic-combinatory/notes.html#note-6
[7]: https://plato.stanford.edu/entries/logic-combinatory/notes.html#note-7
[8]: https://plato.stanford.edu/entries/logic-combinatory/notes.html#note-8
[9]: https://plato.stanford.edu/entries/set-theory/ZF.html
[10]: https://plato.stanford.edu/entries/settheory-alternative/index.html#ClasTheoOverZFC
[11]: https://plato.stanford.edu/entries/goedel/
[12]: https://plato.stanford.edu/entries/logic-combinatory/notes.html#note-9
[13]: https://plato.stanford.edu/entries/logic-combinatory/notes.html#note-10
[14]: https://plato.stanford.edu/entries/category-theory/
[15]: https://plato.stanford.edu/entries/logic-intuitionistic/
[16]: https://plato.stanford.edu/entries/proof-theory-development/index.html#NatDedSeqCal
[17]: https://plato.stanford.edu/entries/dedekind-foundations/index.html#FouAri
[18]: https://plato.stanford.edu/entries/goedel/
