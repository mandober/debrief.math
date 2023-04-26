---
downloaded:       2021-12-25
page-url:         https://plato.stanford.edu/entries/proof-theory/
page-title:       Proof Theory (Stanford Encyclopedia of Philosophy)
article-title:    Proof Theory
---
# Proof Theory (Stanford Encyclopedia of Philosophy)

Hilbert viewed the axiomatic method as the crucial tool for
mathematics (and rational discourse in general). In a talk to the
Swiss Mathematical Society in 1917, published the following year as
Axiomatisches Denken (1918), he articulates his broad
perspective on that method and presents it “at work” by
considering, in detail, examples from various parts of mathematics and
also from physics. Proceeding axiomatically is not just developing a
subject in a rigorous way from first principles, but rather requires,
for advanced subjects, their deeper conceptual organization and
serves, for newer investigations, as a tool for discovery. In his talk
Hilbert reflects on his investigations of the arithmetic of real
numbers and of Euclidean geometry from before 1900. We emphasize the
particular form of his axiomatic formulations; they are not logical
formulations, but rather mathematical ones: he defines Euclidean space
in a similar way as other abstract notions like group or field;
that’s why we call it structural
 axiomatics.[1]
 However, Hilbert turns from the past and looks to the future,
pointing out a programmatic direction for research in the
foundations of mathematics; he writes:
## 1\. Proof Theory: A New Subject

Hilbert viewed the *axiomatic method* as the crucial tool for mathematics (and rational discourse in general). In a talk to the Swiss Mathematical Society in 1917, published the following year as *Axiomatisches Denken* (1918), he articulates his broad perspective on that method and presents it “at work” by considering, in detail, examples from various parts of mathematics and also from physics. Proceeding axiomatically is not just developing a subject in a rigorous way from first principles, but rather requires, for advanced subjects, their deeper conceptual organization and serves, for newer investigations, as a tool for discovery. In his talk Hilbert reflects on his investigations of the arithmetic of real numbers and of Euclidean geometry from before 1900. We emphasize the particular form of his axiomatic formulations; they are not logical formulations, but rather mathematical ones: he defines Euclidean space in a similar way as other abstract notions like group or field; that’s why we call it *structural axiomatics*.\[[1][1]\] However, Hilbert turns from the past and looks to the future, pointing out a programmatic direction for research in the *foundations* of mathematics; he writes:

> To conquer this field \[concerning the foundations of mathematics\] we must turn the concept of a specifically mathematical proof itself into an object of investigation, just as the astronomer considers the movement of his position, the physicist studies the theory of his apparatus, and the philosopher criticizes reason itself.

He then asserts, “The execution of this program is at present still an unsolved task”. During the following winter term 1917–18, Hilbert—with the assistance of Paul Bernays—gave a lecture course entitled *Prinzipien der Mathematik*. Here modern mathematical logic is invented in one fell swoop and completes the shift from structural to formal axiomatics. This dramatic shift allows the constructive, elementary definition of the syntax of theories and, in particular, of the concept of *proof in a formal theory*. This fundamental insight underpins the articulation of the consistency problem and seems to open a way of proving, meta-mathematically, that no proof in a formal theory establishes a contradiction.

That perspective is formulated first in a talk Bernays presented in the fall of 1921, published as “Über Hilberts Gedanken zur Grundlegung der Mathematik” (1922). Starting with a discussion of *structural axiomatics* and pointing out its assumption of a system of objects that satisfies the axioms, he asserts this assumption contains “something so-to-speak transcendent for mathematics”. He raises the question, “which principled position should be taken with respect to it?” Bernays believes that it might be perfectly coherent to appeal to an *intuitive* grasp of the natural number sequence or even of the manifold of real numbers. However, that could not be an intuition in any primitive sense and would conflict with the tendency of the exact sciences to use only restricted means to acquire knowledge.

> Under this perspective we are going to try, whether it is not possible to give a foundation to these transcendent assumptions in such a way that only primitive intuitive knowledge is used. (Bernays 1922: 11)

Meaningful mathematics is to be based, Bernays demands, on primitive intuitive knowledge that includes, however, induction concerning natural numbers—both as a proof and definition principle. In the outline for the lectures *Grundlagen der Mathematik* to be given in the winter term 1921–22, Bernays discusses a few weeks after his talk “constructive arithmetic” and then the “broader formulation of constructive thought”:

> Construction of the proofs, by means of which the formalization of the higher inferences is made possible and the consistency problem is becoming accessible in a general way.

Bernays concludes the outline by suggesting, “This would be followed by the development of proof theory”. The outline was sent to Hilbert on 17 October 1921 and it was followed strictly in the lectures of the following term—with only one terminological change: “constructive” in the above formulations is turned into “finitist”.\[[2][2]\]

Bernays’s notes of the 1921/22 lectures reflect the consequence of that change in attitude. They contain a substantial development of “finitist arithmetic” and “finitist logic” in a quantifier-free formalism. Finitist arithmetic involves induction and primitive recursion\[[3][3]\] from the outset, and the central metamathematical arguments all proceed straightforwardly by induction on proof figures. The third part of these lectures is entitled *The grounding of the consistency of arithmetic by Hilbert’s new proof theory*. Here we find the first significant consistency proof—from a finitist perspective.\[[4][4]\] The proof is sketched in Hilbert’s Leipzig talk (Hilbert 1923: 184) and was presented in a modified form during the winter term of 1922/23; in that form the proof is given in Ackermann 1925: 4–7. Ackermann’s article was submitted for publication in early 1924, and by then the proof had taken on a certain canonical form that is still found in the presentation of Hilbert and Bernays 1934: 220–230. Let us see what was achieved by following Ackermann’s concise discussion.

### 1.1 Hilbert’s *Ansatz* and Results

The proof is given in section II of Ackermann’s paper entitled, tellingly, *The consistency proof before the addition of the transfinite axioms*. Ackermann uses a logical calculus in axiomatic form that is taken over from Hilbert’s lectures and is discussed below in [section 2][5]. Here we just note that it involves two logical rules, namely, modus ponens and substitution (for individual, function and statement variables) in axioms. The non-logical axioms concern identity, zero and successor, and recursion equations that define primitive recursive functions. The first step in the argument turns the linear proof into a tree, so that any formula occurrence is used at most once as a premise of an inference (*Auflösung in Beweisfäden*); this is done in preparation for the second step, namely, the elimination of all necessarily free variables (*Ausschaltung der Variablen*); in the third step, the numerical value of the closed terms is computed (*Reduktion der Funktionale*). The resulting syntactic configurations, a *Beweisfigur*, contains now only *numerical formulae* that are built up from equations or inequations between numerals and Boolean connectives; these formulae can be effectively determined to be true or false. By induction on the “*Beweisfigur*” one shows that all its component formulae are true; thus, a formula like 0≠00≠0 is not provable. The induction principle can be directly incorporated into these considerations when it is formulated as a rule for quantifier-free statements. That was not done in Ackermann’s discussion of the proof, but had been achieved already by Hilbert and Bernays in their 1922/23 lectures.

These proof theoretic considerations are striking and important as they involve for the first time genuine transformations of formal derivations. Nevertheless, they are preliminary as they concern a quantifier-free theory that is a *part* of finitist mathematics and *need* not be secured by a consistency proof. What has to be secured is “transfinite logic” with its “ideal elements”, as Hilbert put it later. The strategy was direct and started to emerge already in 1921. First, introduce functional terms by the *transfinite axiom*\[[5][6]\]

A(a)→A(εx.A(x))A(a)→A(εx.A(x))

and define quantifiers by

∃xA(x)↔A(εx.A(x))∃xA(x)↔A(εx.A(x))

and

∀xA(x)↔A(εx.¬A(x)).∀xA(x)↔A(εx.¬A(x)).

Using the epsilon terms, quantifiers can now be eliminated from proofs in quantificational logic, thus transforming them into quantifier-free ones. Finally, the given derivation allows one, so it was conjectured, to determine numerical values for the epsilon terms. In his Leipzig talk of September 1922, published in 1923, Hilbert discussed this *Ansatz* for eliminating quantifiers and reducing the transfinite case to that of the quantifier-free theory. He presented the actual execution of this strategic plan only “for the simplest case” (in Hilbert 1923: 1143–1144). However, the talk was crucial in the development of proof theory and the finitist program: “With the structure of proof theory, presented to us in the Leipzig talk, the principled form of its conception had been reached”. That is how Bernays characterizes its achievement in his essay on *Hilbert’s investigations of the foundations of arithmetic* (1935: 204)

Ackermann continued in section III of his 1925 at the very spot where Hilbert and Bernays had left off. His paper, submitted to *Mathematische Annalen* in March of 1924, and the corrective work he did in 1925 led to the conviction that the consistency of elementary arithmetic had been established. The corrective work had been done to address difficulties von Neumann had pointed out, but was not published by Ackermann; it was only presented in the second volume of Hilbert and Bernays 1939 (pp. 93–130).\[[6][7]\] Von Neumann’s own proof theoretic investigations, submitted to *Mathematische Zeitschrift* in July 1925, were published under the title *Zur Hilbertschen Beweistheorie* in 1927. Hilbert’s 1928 Bologna Lecture prominently took Ackermann’s and von Neumann’s work as having established the consistency of elementary arithmetic, the proof making use only of finitist principles. Let **F** be a theory containing exclusively such principles, like *primitive recursive arithmetic* **PRA**; the principles of **PRA** consist of the Peano axioms for zero and successor, the defining equations for all primitive recursive functions (defined in [note 3][8]), and quantifier-free induction. Now the significance of a consistency proof in **F** can be articulated as follows:

Theorem 1.1 Let **T** be a theory that contains a modicum of arithmetic and let *A* be a Π01Π01\-statement, i.e., one of the form ∀x1…∀xnP(x1,…,xn)∀x1…∀xnP(x1,…,xn) with quantifiers ranging over naturals and *P* a primitive recursive predicate, i.e., a predicate with a primitive recursive characteristic function. If **F** proves the consistency of **T** and **T** proves *A*, then **F** proves *A*.

This theorem can be expressed and proved in **PRA** and ensures that a **T**\-proof of a “real”, finitistically meaningful statement *A* leads to a finitistically valid statement. This point is made clear in Hilbert’s 1927-Hamburg lecture (Hilbert 1927). There he takes *A* to be the Fermat proposition and argues that if we had a proof of *A* in a theory containing “ideal” elements, a finistist consistency proof for that theory would allow us to transform that proof into a finitist one.

The belief that Ackermann and von Neumann had established the consistency of elementary arithmetic was expressed as late as December 1930 by Hilbert in his third Hamburg talk (Hilbert 1931a) and by Bernays in April 1931 in a letter to Gödel (see Gödel 2003: 98–103). Bernays asserts there that he has “repeatedly considered \[Ackermann’s modified proof\] and viewed it as correct”. He continues, referring to Gödel’s incompleteness results,

> On the basis of your results one must now conclude, however, that that proof cannot be formalized within the system *Z* \[of elementary number theory\]; this must in fact hold true even if the system is restricted so that, of the recursive definitions, only those for addition and multiplication are retained. On the other hand, I don’t see at which place in Ackermann’s proof the formalization within *Z* should become impossible, …

At the end of his letter, Bernays mentions that Herbrand misunderstood him in a recent conversation on which Herbrand had reported in a letter to Gödel with a copy to Bernays. Not only had Herbrand misunderstood Bernays, but Bernays had also misunderstood Herbrand as to the extent of the latter’s consistency result that was to be published a few months later as Herbrand 1931. Bernays understood Herbrand as having claimed that he had established the consistency of full first-order arithmetic: Herbrand’s system is indeed a first-order theory with a rich collection of finitist functions, but it uses the induction principle only for quantifier-free formulae.\[[7][9]\] Gödel asserted in December 1933 that this theorem of Herbrand’s was even then the strongest result that had been obtained in the pursuit of Hilbert’s finitist program, and he formulated the result in a beautiful informal way as follows:

> If we take a theory, which is constructive in the sense that each existence assertion made in the axioms is covered by a construction, and if we add to this theory the non-constructive notion of existence and all the logical rules concerning it, e.g., the law of the excluded middle, we shall never get into any contradiction. (Gödel 1933: 52)

Gödel himself had been much more ambitious in early 1930; his goal was then to prove the consistency of analysis! According to Wang (1981: 654), his idea was “to prove the consistency of analysis by number theory, where one can assume the truth of number theory, not only the consistency”. The plan for establishing the consistency of analysis relative to number theory did not work out, instead Gödel found that sufficiently strong formal theories like *Principia Mathematica* and Zermelo-Fraenkel set theory are (syntactically) incomplete.

### 1.2 Incompleteness and a Reduction

In 1931 Gödel published a paper (1931a) that showed that there are true arithmetic statements that cannot be proved in the formal system of *Principia Mathematica*, assuming *PM* to be consistent. His methods not only applied to *PM* but to any formal system that contains a modicum of arithmetic. A couple of months after Gödel had announced this result at a conference in Königsberg in September 1930, von Neumann and Gödel independently realized that a striking corollary could be drawn from the incompleteness theorem. Every consistent and effectively axiomatized theory that allows for the development of basic parts of arithmetic cannot prove its own consistency. This came to be known as the *second incompleteness theorem*. (For details on these theorems and their history see [appendix A.4][10]) The second incompleteness theorem refutes the general ambitions of Hilbert’s program under the sole and very plausible assumption that finitist mathematics is contained in one of the formal theories of arithmetic, analysis or set theory. As a matter of fact, contemporary characterizations of finitist mathematics have elementary arithmetic as an upper bound.\[[8][11]\] In response to Gödel’s result, Hilbert attempted in his last published paper (1931b) to formulate a strategy for consistency proofs that is reminiscent of his considerations in the early 1920s (when thinking about the object theories as constructive) and clearly extends the finitist standpoint. He introduced a broad constructive framework that includes full intuitionist arithmetic and suggested extendibility of the new “method” to “the case of function variables and even higher sorts of variables”. He also formulated a new kind of rule that allowed the introduction of a new axiom ∀xA(x)∀xA(x) as soon as all the numerical instances A(n)A(n) had been established by finitist proofs; in 1931 that is done for quantifier-free A(x)A(x), whereas in 1931b that is extended to formulae of arbitrary complexity. The semi-formal calculi, which articulate the broader framework, are based on rules that reflect mathematical practice, but also define the meaning of logical connectives. Indeed, Hilbert’s reasons for taking them to be evidently consistent are expressed in a single sentence: “All transfinite rules and inference schemata are consistent; for they amount to definitions”. Adding the *tertium non datur* in the form

∀xA(x)∨∃x¬A(x)∀xA(x)∨∃x¬A(x)

yields now the classical version of the theory and it is that addition that has to be justified.\[[9][12]\] Hilbert’s problematic considerations for this new metamathematical step inspired Gentzen’s “Urdissertation” when he began working in late 1931 on a consistency proof for elementary arithmetic.\[[10][13]\]

As part of his “Urdissertation”, Gentzen had established by the end of 1932 the reduction of classical to intuitionist arithmetic, a result that had also been obtained by Gödel. Gentzen’s investigations led, finally in 1935, to his first consistency proof for arithmetic. In the background was a normal form theorem for intuitionist logic that will be discussed in the next section together with Gentzen’s actual dissertation and the special calculi he introduced there. Now we just formulate the Gentzen-Gödel result “connecting” classical first-order number theory **PA** with its intuitionist version **HA**. The non-logical principles of these theories aim at describing NN, the arguably most important structure in mathematics, namely, Dedekind’s simply infinite system NN together with zero, successor, multiplication, exponentiation and the less-than relation:

N\=(N;0N,SN,+N,×N,EN,<N).N\=(N;0N,SN,+N,×N,EN,<N).

They are formulated in the first-order language that has the relation symbols =, <, the function symbols *S*, +, ××, *E* and the constant symbol 0. The axioms comprise the usual equations for zero, successor, addition, multiplication, exponentiation, and the less-than relation. In addition, the *induction principle* is given by the schema F(0)∧∀x\[F(x)→F(Sx)\]→∀xF(x)(IND)F(0)∧∀x\[F(x)→F(Sx)\]→∀xF(x) for all formulae F(x)F(x) of the language. These principles together with classical logic constitute the theory of *first order arithmetic* or *first order number theory*, also known as *Dedekind-Peano arithmetic*, **PA**; together with intuitionist logic they constitute *intuitionistic first order arithmetic* commonly known as *Heyting-arithmetic*, **HA**.

Now we are considering the syntactic translation ττ from the common language of **PA** and **HA** into its “negative” fragment that replaces disjunctions A∨BA∨B by their de Morgan equivalent ¬(¬A∧¬B)¬(¬A∧¬B) and existential statements ∃xA(x)∃xA(x) by ¬∀x¬A(x)¬∀x¬A(x). The reductive result obtained by Gentzen and Gödel in 1933 is now stated quite easily:

Theorem 1.2

1.  **PA** proves the equivalence of *A* and τ(A)τ(A) for any formula *A*.
    
2.  If **PA** proves *A*, then **HA** proves τ(A)τ(A).
    

For atomic sentences like 1≠11≠1 the translation ττ is clearly the identity, and the provability of 1≠11≠1 in **PA** would imply its provability in **HA**. Thus, **PA** is consistent relative to **HA**. This result is technically of great interest and had a profound effect on the perspective concerning the relationship between finitism and intuitionism: finitist and intuitionist mathematics were considered as co-extensional; this theorem showed that intuitionist mathematics is actually stronger than finitist mathematics. Thus, if the intuitionist standpoint is taken to guarantee the soundness of **HA**, then it guarantees the consistency of **PA**. The corresponding connection between classical and intuitionist logic had been established already by Kolmogorov (1925) who not only formalized intuitionist logic but also observed the translatability of classical into intuitionist logic. His work, though, seems not to have been noticed at the time or even in 1932, when Gentzen and Gödel established their result for classical and intuitionist arithmetic.

The foundational discussion concerning extended “constructive” viewpoints is taken up in [section 4][14]. There, and throughout our paper the concepts of “proof-theoretic reducibility” and “proof-theoretic equivalence” will play a central role. The connection between **PA** and **HA** is paradigmatic and leads to the notion of *proof-theoretic reduction*. Before we can furnish a precise definition, we should perhaps stress that many concepts can be expressed in the language of **PRA** (as well as **PA**) via coding, also known as *Gödel numbering*. Any finite object such as a string of symbols or an array of symbols can be coded via a single natural number in such a way that the string or array can be retrieved from the number when we know how the coding is done. Typical finite objects include formulae in a given language and also proofs in a theory. Talk about formulae or proofs can then be replaced by talking about predicates of numbers that single out the codes of formulae and proofs, respectively. We then say that the concepts of formula and proof have been arithmetized and thereby rendered expressible in the language of **PRA**.

Definition 1.3 Let T1T1, T2T2 be a pair of theories with languages L1L1 and L2L2, respectively, and let ΦΦ be a (primitive recursive) collection of formulae common to both languages. Furthermore, ΦΦ should contain the closed equations of the language of **PRA**.

We then say that T1T1 is *proof-theoretically ΦΦ\-reducible to T2T2*, written T1≤ΦT2T1≤ΦT2, if there exists a primitive recursive function *f* such that

PRA⊢∀x∀y\[formΦ(x)∧ProofT1(y,x)→ProofT2(f(y),x)\].(1)PRA⊢∀x∀y\[formΦ(x)∧ProofT1(y,x)→ProofT2(f(y),x)\].

Here formΦformΦ and ProofTiProofTi are arithmetized formalizations of ΦΦ and the proof relation in TiTi, respectively, i.e., formΦ(x)formΦ(x) expresses that *x* is the Gödel number of a formula in ΦΦ while ProofTi(y,x)ProofTi(y,x) expresses that *y* codes a proof in TiTi of a formula with Gödel number *x*.

T1T1 and T2T2 are said to be *proof-theoretically ΦΦ\-equivalent*, written T1≡ΦT2T1≡ΦT2, if T1≤ΦT2T1≤ΦT2 and T2≤ΦT1T2≤ΦT1.

The appropriate class ΦΦ is revealed in the process of reduction itself, so that in the statement of theorems we simply say that T1T1 is *proof-theoretically reducible* to T2T2 (written T1≤T2T1≤T2) and T1T1 and T2T2 are *proof-theoretically equivalent* (written T1≡T2T1≡T2), respectively. Alternatively, we shall say that T1 and T2 have the *same proof-theoretic strength* when T1≡T2. In practice, if T1≡T2 is shown via proof-theoretic means\[[11][15]\] this always entails that the two theories prove at least the same Π02 sentences (those of the complexity of the twin prime conjecture). The complexity of formulae of **PRA** is stratified as follows. The Σ00 and Π00 formulae are of the form R(t1,…,tn) where *R* is a predicate symbol for an *n*\-ary primitive recursive predicate. A formula is Σ0k+1 (Π0k+1) if it is of the form

∃y1…∃ymF(y1,…,ym)(∀y1…∀ymF(y1,…,ym))

with F(y1,…,ym) being of complexity Π0k (Σ0k). Thus the complexity of a formula is measured in terms of quantifier alternations. For instance Π02\-formulae have two alternations starting with a block of universal quantifiers or more explicitly they are of the shape

∀x1…∀xn∃y1…∃ymR(x1,…,xn,y1,…,ym)

with *R* primitive recursive.

## 2\. New Logical Calculi

For the reduction of classical elementary number theory to its intuitionist version, Gödel and Gentzen used different logical calculi. Gödel used the system Herbrand had investigated in his 1931, whereas Gentzen employed the formalization of intuitionist arithmetic from Heyting 1930. For his further finitist investigations Gentzen introduced new calculi that were to become of utmost importance for proof theory: natural deduction and sequent calculi.

### 2.1 From Axioms to Rules: Natural Reasoning

As we noted above, Gentzen had already begun in 1931 to be concerned with the consistency of full elementary number theory. As the logical framework he used, what we now call, natural deduction calculi. They evolved from an axiomatic calculus that had been used by Hilbert and Bernays since 1922 and introduced an important modification of the calculus for sentential logic. The connectives ∧ and ∨ are incorporated, and the axioms for these connectives are as follows:

A∧B→AA∧B→BA→(B→A∧B)A→A∨BB→A∨B(A→C)→((B→C)→(A∨B→C))

Hilbert and Bernays introduced this new logical formalism for two reasons, (i) to be able to better and more easily formalize mathematics, and (ii) to bring out the understanding of logical connectives in methodological parallel to the treatment of geometric concepts in *Foundations of geometry*. The methodological advantages of this calculus are discussed in Bernays 1927: 10:

> The starting formulae can be chosen in quite different ways. A great deal of effort has been spent, in particular, to get by with a minimal number of axioms, and the limit of what is possible has indeed been reached. However, for the purposes of logical investigations it is better to separate out, in line with the axiomatic procedure for geometry, different axiom groups in such a way that each of them expresses the role of a single logical operation.

Then Bernays lists four groups, namely, axioms for the conditional →, for ∧ and ∨ as above, and for negation ¬. The axioms for the conditional are not only reflecting logical properties, but also structural features as in the later sequent calculus (and in Frege’s *Begriffsschrift*, 1879).

A→(B→A)(A→(A→B))→(A→B)(A→(B→C))→(B→(A→C))(B→C)→((A→B)→(A→C))

As axioms for negation one can choose:

A→(¬A→B)(A→B)→((¬A→B)→B)

Hilbert formulates this logical system in *Über das Unendliche* and in his second Hamburg talk of 1927, but gives a slightly different formulation of the axioms for negation, calling them the *principle of contradiction* and the *principle of double negation*:

(A→(B∧¬B))→¬A¬¬A→A

Clearly, the axioms correspond directly to the natural deduction rules for these connectives, and one finds here the origin of Gentzen’s natural deduction calculi. Bernays had investigated in his *Habilitationsschrift* (1918) rule based calculi. However, in the given context, the simplicity of the metamathematical description of calculi seemed paramount, and in Bernays 1927 (p. 17) one finds the programmatic remark: “We want to have as few rules as possible, rather put much into axioms”.

Gentzen was led to a rule-based calculus with *introduction* and *elimination rules* for every logical connective. The truly distinctive feature of this new type of calculus was for Gentzen, however, making and discharging assumptions. This feature, he remarked, most directly reflects a crucial aspect of mathematical argumentation.\[[12][16]\] Here we formulate the distinctive rules that involve contradictions and go beyond minimal logic that has I- and E-rules for all logical connectives. Intuitionist logic is obtained from minimal logic by adding the rule: from ⊥ infer any formula *A*, i.e., *ex falso quodlibet*. In the case of classical logic, if a proof of ⊥ is obtained from the assumption ¬A, then infer *A* (and cancel the assumption ¬A). Gentzen discovered a remarkable fact for the intuitionist calculus, having observed that proofs can have peculiar *detours* of the following form: a formula is obtained by an I-rule and is then the major premise of the corresponding E-rule. For conjunction such a detour is depicted as follows:

⋮A⋮BA∧BB

Clearly, a proof of *B* is already contained in the given derivation. Proofs without detours are called *normal*, and Gentzen showed that any proof can be effectively transformed via “reduction steps” into a normal one.

Theorem 2.1 (Normalization for intuitionist logic) A proof of *A* from a set of assumptions Γ can be transformed into a normal proof of *A* from the same set of assumptions.

Focusing on normal proofs, Gentzen proved then that the complexity of formulae in such proofs can be bounded by that of assumptions and conclusion.

Corollary 2.2 (Subformula property) If D is a normal proof of *A* from Γ, then every formula in D is either a subformula of an element Γ or of *A*.

As Gentzen recounts matters at the very beginning of his dissertation (1934/35), he was led by the investigation of the natural calculus to his *Hauptsatz*\[[13][17]\] when he could not extend the considerations to classical logic.

> To be able to formulate it \[the *Hauptsatz*\] in a direct way, I had to base it on a particularly suitable logical calculus. The calculus of natural deduction turned out not to be appropriate for that purpose.

So, Gentzen focused his attention on sequent calculi that had been introduced by Paul Hertz and which had been the subject of Gentzen’s first scientific paper (1932).

### 2.2 Sequent Calculi

In his thesis Gentzen introduced a form of the sequent calculus and his technique of *cut elimination*. As this is a tool of utmost importance in proof theory, an outline of the underlying ideas will be discussed next. The sequent calculus can be generalized to so-called infinitary logics and is central for ordinal analysis. The *Hauptsatz* is also called the *cut elimination theorem*.

We use upper case Greek letters Γ,Δ,Λ,Θ,Ξ… to range over finite lists of formulae. Γ⊆Δ means that every formula of Γ is also a formula of Δ. A *sequent* is an expression Γ⇒Δ where Γ and Δ are finite sequences of formulae A1,…,An and B1,…,Bm, respectively. We also allow for the possibility that Γ or Δ (or both) are empty. The empty sequence will be denoted by ∅. Σ⇒Δ is read, informally, as Γ yields Δ or, rather, the *conjunction* of the Ai yields the *disjunction* of the Bj.

The *logical axioms* of the calculus are of the form

A⇒A

where *A* is any formula. In point of fact, one could limit this axiom to the case of atomic formulae *A*. We have *structural rules* of the form

Γ⇒ΔΓ′⇒Δ′if Γ⊆Γ′,Δ⊆Δ′.

A special case of the structural rule, known as *contraction*, occurs when the lower sequent has fewer occurrences of a formula than the upper sequent. For instance, A,Γ⇒Δ,B follows structurally from A,A,Γ⇒Δ,B,B.

Now we list the rules for the logical connectives.

LeftRightΓ⇒Δ,A¬A,Γ⇒ΔB,Γ⇒ΔΓ⇒Δ,¬BΓ⇒Δ,AB,Λ⇒ΘA→B,Γ,Λ⇒Δ,ΘA,Γ⇒Δ,BΓ⇒Δ,A→BA,Γ⇒ΔA∧B,Γ⇒ΔB,Γ⇒ΔA∧B,Γ⇒ΔΓ⇒Δ,AΓ⇒Δ,BΓ⇒Δ,A∧BA,Γ⇒ΔB,Γ⇒ΔA∨B,Γ⇒ΔΓ⇒Δ,AΓ⇒Δ,A∨BΓ⇒Δ,BΓ⇒Δ,A∨B ∀LF(t),Γ⇒Δ∀xF(x),Γ⇒Δ∀RΓ⇒Δ,F(a)Γ⇒Δ,∀xF(x)∃LF(a),Γ⇒Δ∃xF(x),Γ⇒Δ∃RΓ⇒Δ,F(t)Γ⇒Δ,∃xF(x)

In ∀L and ∃R, *t* is an arbitrary term. The variable *a* in ∀R and ∃L is an *eigenvariable* of the respective inference, i.e., *a* is not to occur in the *lower sequent*.

Finally, we have the special *Cut Rule*

Γ⇒Δ,AA,Λ⇒ΘΓ,Λ⇒Δ,Θ

The formula *A* is called the *cut formula* of the inference.

In the rules for logical operations, the formulae highlighted in the premises are called the *minor formulae* of that inference, while the formula highlighted in the conclusion is the *principal formula* of that inference. The other formulae of an inference are called *side formulae*. A *proof* (also known as a *deduction* or *derivation*) D is a tree of sequents satisfying the conditions that (i) the topmost sequents of D are logical axioms and (ii) every sequent in D except the lowest one is an upper sequent of an inference whose lower sequent is also in D. A sequent Γ⇒Δ is *deducible* if there is a proof having Γ⇒Δ as its bottom sequent.

The Cut rule differs from the other rules in an important respect. With the rules for introducing connectives, one sees that every formula that occurs above the line occurs below the line either directly, or as a subformula of a formula below the line. That is also true for the structural rules. (Here A(t) is counted as a subformula, in a slightly extended sense, of both ∃xA(x) and ∀xA(x).) But in the case of the Cut rule, the cut formula *A* vanishes. Gentzen showed that such “vanishing rules” can be eliminated.

Theorem 2.3 (Gentzen’s *Hauptsatz*) If a sequent Γ⇒Δ is deducible, then it is also deducible without the Cut rule; the resulting proof is called *cut-free* or *normal*.

The secret to Gentzen’s *Hauptsatz* is the symmetry of left and right rules for all the logical connectives including negation. The proof of the cut elimination theorem is rather intricate as the process of removing cuts interferes with the structural rules. It is contraction that accounts for the high cost of eliminating cuts. Let |D| be the *height* of the deduction D and let rank(D) be the *supremum* of the *lengths of cut formulae* occurring in D. Turning D into a cut-free deduction of the same end sequent results, in the worst case, in a deduction of height H(rank(D),|D|) where H(0,n)\=n and H(k+1,n)\=4H(k,n), yielding hyper-exponential growth.

The sequent calculus we have been discussing allows the proof of classically, but not intuitionistically correct formulae, for example, the law of excluded middle. An intuitionist version of the sequent calculus can be obtained by a very simple structural restriction: there can be at most one formula on the right hand side of the sequent symbol ⇒. The cut elimination theorem is also provable for this intuitionist variant. In either case, the *Hauptsatz* has an important corollary that parallels that of the Normalization theorem (for intuitionist logic) and expresses the subformula property.

Corollary 2.4 (Subformula property) If D is a cut-free proof of the sequent Γ⇒Δ, then all formulae in D are subformulae of elements in either Γ or Δ.

This Corollary has another direct consequence that explains the crucial role of the *Hauptsatz* for obtaining consistency proofs.

Corollary 2.5 (Consistency) A contradiction, i.e., the empty sequent ∅⇒∅, is not provable.

**Proof**: Assume that the empty sequent is provable; then, according to the *Hauptsatz* it has a cut-free derivation D. The previous corollary assures us that only empty sequents can occur in D; but such a D does not exist since every proof must contain axioms. ◻

The foregoing results are solely concerned with pure logic. Formal theories that axiomatize mathematical structures or serve as formal frameworks for developing substantial chunks of mathematics are based on logic but have additional axioms germane to their purpose. If they are of the latter kind, such as *first-order arithmetic* or *Zermelo-Fraenkel set theory*, they will assert the existence of *mathematical objects* and their properties. What happens when we try to apply the procedure of cut elimination to theories? Axioms are usually detrimental to this procedure. It breaks down because the symmetry of the sequent calculus is lost. In general, one cannot remove cuts from deductions in a theory **T** when the cut formula is an axiom of **T**. However, sometimes the axioms of a theory are of *bounded syntactic complexity*. Then the procedure applies partially in that one can remove all cuts that exceed the complexity of the axioms of **T**. This gives rise to *partial cut elimination*. It is a very important tool in proof theory. For example, it can be used to analyze theories with restricted induction (such as fragments of **PA**; cf. Sieg 1985). It also works very well if the axioms of a theory can be presented as *atomic intuitionist sequents* (also called *Horn clauses*), yielding the completeness of *Robinson*’s *resolution method* (see Harrison 2009).

Using the *Hauptsatz* and its Corollary, Gentzen was able to capture all of the consistency results that had been obtained prior to 1934 including Herbrand’s, that had been called by Gödel in his 1933 “the most far-reaching” result. They had been obtained at least in principle for fragments of elementary number theory; in practice, Gentzen did not include the quantifier-free induction principle. Having completed his dissertation, Gentzen went back to investigate natural deduction calculi and obtained in 1935 his first consistency proof for full first-order arithmetic. He formulated, however, the natural calculus now in “sequent form”: instead of indicating the assumptions on which a particular claim depended by the undischarged ones in its proof tree, they are attached now to every node of the tree. The “sequents” that are being proved are of the form Γ⇒A, where all the logical inferences are carried out on the right hand side. This proof was published only in 1974; it was subsequently analyzed most carefully in Tait 2015 and Buchholz 2015. It was due to criticism of Bernays and Gödel that Gentzen modified his consistency proof quite dramatically; he made use of transfinite induction, as will be discussed in detail in the next section. Here we just mention that Bernays extensively discussed transfinite induction in *Grundlagen der Mathematik II*. The main issue for Bernays was the question, *is it still a finitist principle?*—Bernays did not discuss, however, two other aspects of Gentzen’s work, namely, the use of structural features of formal proofs for consistency proofs and the attempt of gaining a constructive, semantic understanding of intuitionist arithmetic. The former became crucial for proof theoretic investigations; the latter influenced Gödel and his functional interpretation via computable functionals of finite type.\[[14][18]\] The two aspects together opened a new era for proof theory and mathematical logic with the goal of proving the consistency of analysis. We will see, how far current techniques lead us and what foundational significance one can attribute to them.

## 3\. Gentzen’s Consistency Proof

Cut elimination fails for first-order arithmetic (i.e., **PA**), not even partial cut elimination is possible since the induction axioms have unbounded complexity. Gentzen, however, found an ingenious way of dealing with purported contradictions in arithmetic. In Gentzen 1938b he showed how to effectively transform an alleged **PA**\-proof of an inconsistency (the empty sequent) in his sequent calculus into another proof of the empty sequent such that the latter gets assigned a smaller ordinal than the former. Ordinals are a central concept in set theory as well as in proof theory. To present Gentzen’s work we shall first discuss the notion of ordinal from a proof-theoretic point of view.

### 3.1 Ordinals in Proof Theory

This is the first time we talk about the transfinite and ordinals in proof theory. Ordinals have become very important in advanced proof theory. The concept of an ordinal is a generalization of that of a natural number. The latter are used for counting finitely many things whereas ordinals can also “count” infinitely many things. It is derived from the concept of an ordering ≺ of a set *X* which arranges the objects of *X* in order, one after another, in such a way that for every predicate *P* on *X* there is always a first element of *X* with respect to ≺ that satisfies *P* if there is at least one object in *X* satisfying *P*. Such an ordering is called a *well-ordering* of *X*. Certainly the usual less-than relation on N is a well-ordering. Here every number ≠0 is the successor of another number. If one orders the natural numbers \>0 in the usual way but declares that 0 is bigger than every number ≠0 one arrives at another ordering of N. Let’s call it ≺. ≺ is also a well-ordering of N. This time 1 is the least number with respect to ≺. However, 0 plays a unique role. There are infinitely many numbers ≺0 and there is no number m≺0 such that 0 is the next number after *m*. Such numbers are are called limit numbers (with respect to ≺).

In order to be able to formulate Gentzen’s results from the end of section 3.3, we have to “arithmetize” the treatment of ordinals. Let us first state some precise definitions and a Cantorian theorem.

Definition 3.1 A non-empty set *A* equipped with a total ordering ≺ (i.e., ≺ is transitive, irreflexive, and

∀x,y∈A\[x≺y∨x\=y∨y≺x\])

is a *well-ordering* if every non-empty subset *X* of *A* contains a ≺\-least element, i.e.,

(∃u∈X)(∀y∈X)\[u≺y∨u\=y\].

The elements of a well-ordering (A,≺) can be divided into three types. Since *A* is non-empty there is least element with respect to ≺ which is customarily denoted by 0 or 0A. Then there are elements a∈A such that there exists b≺a but there is no *c* between *b* and *a*. These are the successor elements of *A*, with *a* being the successor of *b*. An element c∈A such that 0≺c and for all b≺c there exists d∈A with b≺d≺c is said to be a limit element of *A*.

In set theory a set is called *transitive* just in case all its elements are also subsets. An *ordinal* in the set-theoretic sense is a transitive set that is well-ordered by the elementhood relation ∈. It follows that each ordinal is the set of predecessors. According to the trichotomy above, there is a least ordinal (which is just the empty set) and all other ordinals are either successor or limit ordinals. The first limit ordinal is denoted by ω.

Fact 3.2 Every well-ordering (A,≺) is order isomorphic to a unique ordinal (α,∈).

Ordinals are traditionally denoted by lower case Greek letters α,β,γ,δ,… and the relation ∈ on ordinals is notated simply by <. If β is a successor ordinal, i.e., β is the successor of some (necessarily unique) ordinal α we also denotes β by α′. Another important fact is that for any family of ordinals αi for i∈I (*I* some set) there is a smallest ordinal, denoted by supi∈Iαi that is bigger than every ordinal αi.

The operations of addition, multiplication, and exponentiation can be defined on all ordinals by using case distinctions and transfinite recursion (on α). The following states the definitions just to convey the flavor:

β+0\=ββ+α′\=(β+α)′β+λ\=supξ<λ(β+ξ)β⋅0\=0β⋅α′\=(β⋅α)+ββ⋅λ\=supξ<λ(β⋅ξ)β0\=0′βα′\=βα⋅ββλ\=supξ<λ(βξ)

However, addition and multiplication are in general not commutative.

We are interested in representing specific ordinals α as relations on N. In essence Cantor defined the first ordinal representation system in 1897. Natural *ordinal representation system*s are frequently derived from structures of the form

A\=⟨α,f1,…,fn,<α⟩

where α is an ordinal, <α is the ordering of ordinals restricted to elements of α and the fi are functions

fi:α×⋯×α⏟ki times⟶α

for some natural number ki.

A\=⟨A,g1,…,gn,≺⟩

is a *computable* (or *recursive*) *representation* of A if the following conditions hold:

1.  A⊆N and *A* is a computable set.
    
2.  ≺ is a computable total ordering on *A* and the functions gi are computable.
    
3.  A≅A, i.e., the two structures are isomorphic.
    

Theorem 3.3 (Cantor 1897) For every ordinal β\>0 there exist unique ordinals β0≥β1≥⋯≥βn such that

β\=ωβ0+…+ωβn.

The representation of β in (4) is called the *Cantor normal form*. We shall write β\=CNFωβ1+⋯+ωβn to convey that β0≥β1≥⋯≥βk.

The rather famous ordinal that emerged in Gentzen’s consistency proof of **PA** is denoted by ε0. It refers to first ordinal α\>0 such that (∀β<α)ωβ<α. ε0 can also be described as the least ordinal α such that ωα\=α.

Ordinals β<ε0 have a Cantor normal form with exponents βi<β and these exponents have Cantor normal forms with yet again smaller exponents. As this process must terminate, ordinals <ε0 can be coded by natural numbers. For instance a coding function

⌜.⌝:ε0⟶N

could be defined as follows:

⌜α⌝\={0if α\=0⟨⌜α1⌝,…,⌜αn⌝⟩if α\=CNFωα1+⋯+ωαn

where ⟨k1,⋯,kn⟩:=2k1+1⋅…⋅pkn+1n with pi being the *i*th prime number (or any other coding of tuples). Further define:

A0:=range of  ⌜.⌝⌜α⌝≺⌜β⌝:⇔α<β⌜α⌝ˆ+⌜β⌝:=⌜α+β⌝⌜α⌝ˆ⋅⌜β⌝:=⌜α⋅β⌝ˆω⌜α⌝:=⌜ωα⌝.

Then

⟨ε0,+,⋅,δ↦ωδ,<⟩≅⟨A0,ˆ+,ˆ⋅,x↦ˆωx,≺⟩.

A0,ˆ+,ˆ⋅,x↦ˆωx,≺ are primitive recursive. Finally, we can spell out the scheme PR-TI(ε0) in the language of **PA**:

∀x\[∀y(y≺x→P(y))→P(x)\]→∀xP(x)

for all primitive recursive predicates *P*.

Given a natural ordinal representation system ⟨A,≺,…⟩ of order type τ let PRA+TIqf(<τ) be **PRA** augmented by quantifier-free induction over all initial (externally indexed) segments of ≺. This is perhaps best explained via the representation system for ε0 given above. There one can take the initial segments of ≺ to be determined by the Gödel numbers of the ordinals ω0:=1 and ωn+1:=ωωn whose limit is ε0.

Definition 3.4 We say that a theory *T* has *proof-theoretic ordinal* τ, written |T|\=τ, if *T* can be proof-theoretically reduced to PRA+TIqf(<τ), i.e.,

T≡Π02PRA+TIqf(<τ).

Unsurprisingly, the above notion has certain intensional aspects and hinges on the naturality of the representation system (for a discussion see Rathjen 1999a: section 2.).

### 3.2 Infinite Proofs

Gentzen’s consistency proof for **PA** employs a reduction procedure R on proofs *P* of the empty sequent together with an assignment *ord* of representations for ordinals to proofs such that ord(R(P))<ord(P). Here < denotes the ordering on ordinal representations induced by the ordering of the pertinent ordinals. For this purpose he needed representations for ordinals <ε0 where ε0 is the smallest ordinal τ such that whenever α<τ then also ωα<τ with α↦ωα being the function of ordinal exponentiation with base ω. Moreover, the functions R and *ord* and the relation < are computable (when viewed as acting on codes for the syntactic objects), they can be chosen to be primitive recursive. With g(n)\=ord(Rn(P)), the *n*\-fold iteration of R applied to *P*, one has g(0)\>g(1)\>g(2)\>…\>g(n) for all *n*, which is absurd as the ordinals <ε0 are well-founded. Hence **PA** is consistent.

Gentzen’s proof, though elementary, was very intricate and thus more transparent proofs were sought. As it turned out, the obstacles to cut elimination, inherent to **PA**, could be overcome by moving to a richer proof system, albeit in a drastic way by going *infinite*. This richer system allows for proof rules with infinitely many premises.\[[15][19]\] The inference commonly known as the ω\-*rule* consists of the two types of *infinitary inferences*:

Γ⇒Δ,F(0);Γ⇒Δ,F(1);…;Γ⇒Δ,F(n);…Γ⇒Δ,∀xF(x)F(0),Γ⇒Δ;F(1),Γ⇒Δ;…;F(n),Γ⇒Δ;…∃xF(x),Γ⇒Δ

The price to pay will be that deductions become infinite objects, i.e., *infinite well-founded trees*.

The sequent-style version of Peano arithmetic with the ω\-*rule* will be denoted by PAω. PAω has no use for free variables. Thus free variables are discarded and all *terms* will be closed. All formulae of this system are therefore closed, too. The *numerals* are the terms ˉn, where ˉ0\=0 and ¯n+1\=Sˉn. We shall identify ˉn with the natural number *n*. All terms *t* of PAω evaluate to a numeral ˉn.

PAω has all the inference rules of the sequent calculus except for ∀R and ∃L. In their stead, PAω has the ωR and ωL inferences. The *Axioms* of PAω are the following: (i) ∅⇒A if *A* is a *true* atomic sentence; (ii) B⇒∅ if *B* is a *false* atomic sentence; (iii) F(s1,…,sn)⇒F(t1,…,tn) if F(s1,…,sn) is an atomic sentence and the si and ti evaluate to the same numerals, respectively.

With the aid of the ω\-rule, each instance of the induction scheme becomes logically deducible with an infinite proof tree. To describe the cost of cut elimination for PAω, we introduce the measures of *height* and *cut rank* of a PAω deduction D. We will notate this by

D|αkΓ⇒Δ.

The above relation is defined inductively following the buildup of the deduction D. For the *cut rank* we need the definition of the *length*, |A| of a formula:

|A|\=0 if A is atomic; |¬A0|\=|A0|+1;|A0◻A1|\=max(|A0,A1|)+1

where ◻\=∧,∨,→; |∃xF(x)|\=|∀xF(x)|\=|F(0)|+1.

Now suppose the last inference *I* of D is of the form

D0Γ0⇒Δ0 … DnΓn⇒Δn … n<τΓ⇒ΔI

where τ\=1,2,ω and the Dn are the immediate subdeductions of D. If

Dn|αnkΓn⇒Δn

and αn<α for all n<τ then

D|αkΓ⇒Δ

providing that in the case of *I* being a *cut* with cut formula *A* we also have |A|<k. We will write PAω|αkΓ⇒Δ to convey that there exists a PAω\-deduction D|αkΓ⇒Δ. The ordinal analysis of **PA** proceeds by first unfolding any **PA**\-deduction into a PAω\-deduction:

If PA⊢Γ⇒Δ then PAω|ω+mkΓ⇒Δ

for some m,k<ω. The next step is to get rid of the cuts. It turns out that the cost of lowering the cut rank from k+1 to *k* is an exponential with base ω.

Theorem 3.5 (Cut Elimination for PAω) If PAω|αk+1Γ⇒Δ, then

PAω|ωαkΓ⇒Δ.

As a result, if PAω|αnΓ⇒Δ, we may apply the previous theorem *n* times to arrive at a cut-free deduction PAω|ρ0Γ⇒Δ with ρ\=ωω⋰ωα, where the stack has height *n*. Combining this with the result from (5), it follows that every sequent Γ⇒Δ deducible in **PA** has a cut-free deduction in PAω of length <ε0. Ruminating on the details of how this result was achieved yields a consistency proof for **PA** from transfinite induction up to ε0 for elementary decidable predicates on the basis of finitist reasoning (as described below).

Gentzen did not deal explicitly with infinite proof trees in his second published proof of the consistency of **PA** (Gentzen 1938b). However, in the unpublished first consistency proof of Gentzen 1974 he aims at showing that a proof of a sequent in first-order arithmetic gives rise to a a well-founded reduction tree; that tree can be identified with a cut-free proof in the sequent calculus with the ω\-rule. The infinitary version of **PA** with the ω\-rule was investigated by Schütte (1950). There remained the puzzle, how Gentzen’s work that used an ingenious method of assigning ordinals to purported proofs of the empty sequent relates to the infinitary approach. Much later work by Buchholz (1997) and others revealed an intrinsic connection between Gentzen’s assignment of ordinals to deductions in **PA** and the standard one to infinite deductions in PAω. In the 1950s infinitary proof theory flourished in the hands of Schütte. He extended his approach to **PA** to systems of ramified analysis to be discussed below in [section 5.2][20].

One last remark about the use of ordinals: Gentzen showed that transfinite induction up to the ordinal ε0 suffices to prove the consistency of **PA**. Using the arithmetized formalization of the proof predicate (see above, after [Definition 1.3][21]) and taking *k* as the numeral denoting the Gödel number of the formula 0\=1, we can express the consistency of **PA**, Con(PA), by the formula ∀x¬ProofPA(x,k). To appreciate Gentzen’s result it is pivotal to note that he applied transfinite induction up to ε0 only for primitive recursive predicates (the latter principle was denoted above by PR-TI(ε0)). Otherwise, Gentzen’s proof used only finistist means. Hence, a more accurate formulation of Gentzen’s result is

F+PR-TI(ε0)⊢Con(PA),

where **F**, as above, contains only finitistically acceptable means. In his 1943 paper Gentzen also showed that this result is best possible, as **PA** proves transfinite induction up to any α<ε0. So one might argue that the non-finitist part of **PA** is encapsulated in PR-TI(ε0) and therefore “measured” by ε0. ε0 is also the proof-theoretic ordinal of **PA** as specified in [Definition 3.4][22]. Gentzen hoped that results of this character could also be obtained for stronger mathematical theories, in particular for analysis. Hilbert’s famous second problem asked for a direct consistency proof of that mathematical theory. Gentzen wrote in 1938 that

> the most important \[consistency\] proof of all in practice, that for *analysis*, is still outstanding. (1938a \[Gentzen 1969: 236\]).

He actually worked on a consistency proof for analysis as letters (e.g. one to Bernays on 23.6.1935 translated in von Plato 2017: 240) and stenographic notes from 1945 (e.g., Gentzen 1945) show. Formally, “analysis” was identified already in Hilbert 1917/18 as a form of second order number theory. Hilbert and Bernays developed mathematical analysis in a supplement of the second volume of their “Grundlagen der Mathematik”. We take Z2 as given in the following way. Its language extends that of **PA** by an additional sort of variables X,Y,Z,… that range over sets of numbers and the binary membership relation t∈X. Its axioms are those of **PA**, but the principle of proof by induction is formulated as the *second order induction axiom*

∀X(0∈X∧∀x(x∈X→S(x)∈X)→∀x(x∈X)).

Finally, the axiom schema of *comprehension*, **CA**, asserts that for every formula F(u) of the language of Z2, there is a set X\={u∣F(u)} having exactly those numbers *u* as members that satisfy F(u). More formally,

∃X∀u(u∈X↔F(u))

for all formulae F(u) in which *X* does not occur. That Z2 is often called “analysis” is due to the realization (e.g., in Hilbert & Bernays 1939) that, via the coding of real numbers and continuous functions as sets of natural numbers, a good theory of the continuum can be developed from these axioms.

Modern analyses of “finitist mathematics” consider it as situated between **PRA** and **PA**. When arguing that Gödel’s second incompleteness theorem refutes Hilbert’s finitist program, von Neumann argued that finitist mathematics is included in **PA** and, if not there, undoubtedly in Z2. So it is quite clear that a consistency proof of Z2 would use non-finitist principles or that the pursuit of the consistency program would require an extension of the finitist standpoint. In the next section we discuss briefly a variety of extensions and elaborate two in greater detail.

## 4\. Hilbert’s Program, Extended

According to Bernays, the reductive result due to Gödel and Gentzen, [Theorem 1.2][23], has a dramatic impact on the work concerned with Hilbert’s program. It opened in a very concrete and precise way the finitist perspective to a broader “constructive” one. Hilbert himself had taken such a step in a much vaguer way in his last paper (Hilbert 1931b). [Theorem 1.2][24] showed, after all, that **PA** is contained in **HA** via the negative translation. Since **HA** comprises just a fragment of Brouwer’s intuitionism, the consistency of **PA** is secured on the basis of the intuitionist standpoint. In a letter to Heyting of 25 February 1933, Gentzen suggested investigating the consistency of **HA** since a consistency proof for classical arithmetic had not been given so far by finitist means. He then continued

> If on the other hand, one admits the intuitionistic position as a secure basis in itself, i.e., as a consistent one, the consistency of classical arithmetic is secured by my result. If one wished to satisfy Hilbert’s requirements, the task would still remain of showing intuitionistic arithmetic consistent. This, however, is not possible by even the formal apparatus of classical arithmetic, on the basis of Gödel’s result in combination with my proof. Even so, I am inclined to believe that a consistency proof for intuitionistic arithmetic, from an even more evident position, is possible and desirable. (quoted and translated in von Plato 2009: 672)

Gödel took a very similar position in December of 1933 (Gödel 1995: 53). There he broadened the idea of a revised version of Hilbert’s program allowing constructive means that go beyond the finitist ones without accepting fully fledged intuitionism; the latter he considered to be problematic, in particular on account of the impredicative nature of intuitionist implication. As to an extension of Hilbert’s position he wrote:

> But there remains the hope that in future one may find other and more satisfactory methods of construction beyond the limits of the system A \[capturing finitist methods\], which may enable us to found classical arithmetic and analysis upon them. This question promises to be a fruitful field for further investigations.

In [section 3.2][25] we described Gentzen’s considerations; in [section 4.2][26] we discuss Gödel’s as developed in the late 1930s. In [section 4.1][27] we *sketch* some other constructive positions.

### 4.1 Constructive Frameworks

A particularly appealing idea is to pursue Hilbert’s program relative to a constructive point of view and determine which parts of classical mathematics are demonstrably consistent relative to that standpoint (see Rathjen 2009 for pursuing this with regard to Martin-Löf type theory). As one would suspect, there are differing “schools” of constructivism and different layers of constructivism. Several frameworks for developing mathematics from such a point of view have been proposed. Some we will refer to in this article (arguably the most important) are:

1.  Arithmetical Predicativism.
2.  Theories of higher type functionals.
3.  Takeuti’s “Hilbert-Gentzen finitist standpoint”.
4.  Feferman’s explicit mathematics.
5.  Martin-Löf’s intuitionistic type theory.
6.  Constructive set theory (Myhill, Friedman, Beeson, Aczel).

At this point we will just give a very rough description of these foundational views. A few more details, especially about their scope on a standard scale of theories and proof-theoretic ordinals, will be provided at the very end of [section 5.3][28].

(a) Arithmetical Predicativism originated in the writings of Poincaré and Russell in response to the set-theoretic paradoxes. It is characterized by a ban of impredicative definitions. Whilst it accepts the completed infinite set of naturals numbers, all other sets are required to be constructed out of them via an autonomous process of arithmetical definitions. A first systematic attempt at developing mathematics predicatively was made in Weyl’s 1918 monograph *Das Kontinuum* (Weyl 1918).

(b) Theories of higher type functionals comprise Gödel’s *T* and Spector’s extension of *T* via functionals defined by bar recursion. The basic idea goes back to Gödel’s 1938 lecture at Zilsel’s (Gödel 1995: 94). It was inspired by Hilbert’s 1926 *Über das Unendliche*, which considered a hierarchy of functionals over the natural numbers, not only of finite but also of transfinite type.

(c) To understand Takeuti’s finitist standpoint it is important to pinpoint the place where in a consistency proof à la Gentzen the means of **PRA** are exceeded. Gentzen’s proof employs a concrete ordering ≺ of type ε0, it uses an assignment of ordinals to proofs and provides a reduction procedure on proofs such that any alleged proof of an inconsistency is reduced to another proof of an inconsistency which gets assigned a smaller element of the ordering. The ordering, the ordinal assignment and the reduction procedure are actually primitive recursive and the steps described so far can be carried out in a small fragment of **PRA**. The additional principle needed to infer the consistency of **PA** is the following:

-   (\*)There are no infinite elementary recursive sequences α0,α1,α2,… such that αn+1≺αn holds for all *n*.

Takeuti refers to (\*) as the accessibility of ≺. Note that this is a weaker property than the well-foundedness of ≺ which refers to arbitrary sequences. There is nothing special about the case of **PA** since any ordinal analysis of a theory *T* in the literature can be made to fit this format. Thus epistemologically (\*) is the fulcrum in any such consistency proof. Takeuti’s central idea (1987, 1975) was that we can carry out *Gedankenexperimente* (thought experiments) on concretely given (elementary) sequences to arrive at the insight that (\*) obtains.\[[16][29]\]

(d) Errett Bishop’s novel (informal) approach to constructive analysis (1967) made a great on impression on mathematicians with constructive leanings. In it, he dealt with different kinds of mathematical objects (numbers, functions, sets) as if they were given by explicit presentations, each kind being equipped with its own germane “equality” relation conceived in such a way that operations on them would lead from representations to representations respecting the equality relation. An important ingredient that made Bishop’s constructivism workable is the systematic use of witnessing data as an integral part of what constitutes a mathematical object. For instance, a real number comes with a modulus of convergence while a function of real numbers comes equipped with a modulus of (uniform) convergence. In his *explicit mathematics*, Feferman (1975, 1979) aims (among other things) at formalizing the core of Bishop’s ontology. Explicit mathematics is a theory that describes a realm of concretely and explicitly given objects (a universe *U* of symbols) equipped with an operation ∙ of application in such a way that given two objects a,b∈U, *a* may be viewed as a program which can be run on input *b* and may produce an output a∙b∈U or never halt (such structures are known as partial combinatory algebras or Schönfinkel algebras). Moreover, some of the objects of *U* represent sets of elements of *U*. The construction of new sets out of given sets is either done explicitly by elementary comprehension or by a process of inductive generation. If one also adds principles to the effect that every internal operation (given as λx.a∙x for some a∈U) which is monotone on sets possesses a least fixed point one arrives at a remarkably strong theory (cf. Rathjen 1998, 1999b, 2002).

(e) Martin-Löf type theory is an intuitionist theory of dependent types intended to be a full scale system for formalizing constructive mathematics. Its origins of can be traced to *Principia Mathematica*, Hilbert’s *Über das Unendliche*, the natural deduction systems of Gentzen, taken in conjunction with Prawitz’s reduction procedures, and to Gödel’s Dialectica system. It incorporates inductively defined data types which together with the vehicle of internal reflection via universes endow it with considerable consistency strength.

(f) Constructive set theory (as do the theories under (d) and (e)) sets out to develop a framework for the style of constructive mathematics of Bishop’s 1967 *Foundations of constructive analysis* in which he carried out a development of constructive analysis, based on informal notions of constructive function and set, which went substantially further mathematically than anything done before by constructivists. Where Brouwer reveled in differences, Bishop stressed the commonalities with classical mathematics. What was novel about his work was that it could be read as a piece of classical mathematics as well.

The ‘manifesto’ of constructive set theory was most vividly expressed by Myhill:

> … the argumentation of \[Bishop 1967\] looks very smooth and seems to follow directly from a certain conception of what sets, functions, etc. are, and we wish to discover a formalism which isolates the principles underlying this conception in the same way that Zermelo-Fraenkel set-theory isolates the principles underlying classical (nonconstructive) mathematics. We want these principles to be such as to make the process of formalization completely trivial, as it is in the classical case. (Myhill 1975: 347)

Despite first appearances, there are close connections between the approaches of (d)–(f). Constructive set theory can be interpreted in Martin-Löf type theory (due to Aczel 1978) and explicit mathematics can be interpreted in constructive set theory (see Rathjen 1993b, in Other Internet Resources). Perhaps the closest fit between (e) and (f), giving back and forth interpretations, is provided by Rathjen & Tupailo 2006. Some concrete mathematical results are found at the end of [section 5.3][30].

### 4.2 The Dialectica Interpretation: Gödel and Spector

Among the proposals for extending finitist methods put forward in his 1938 lecture at Zilsel’s, Gödel appears to have favored the route via higher type functions. Details of what came to be known as the Dialectica interpretation were not published until 1958 (Gödel 1958) but the D-interpretation itself was arrived at by 1941. Gödel’s system T axiomatizes a class of functions that he called the *primitive recursive functionals of finite type*. T is a largely equational theory whose axioms are equations involving terms for higher type functionals with just a layer of propositional logic on top of that. In this way the quantifiers, problematic for finists and irksome to intuitionists, are avoided. To explain the benefits of the D-interpretation we need to have a closer look at the syntax of T.

Definition 4.1 T has a many-sorted language in that each terms is assigned a type. Type (symbols) are generated from 0 by the rule: If σ and τ are types then so is σ→τ. Intuitively the ground type 0 is the type of natural numbers. If σ and τ are types that are already understood then σ→τ is a type whose objects are considered to be functions from objects of type σ to objects of type τ. In addition to variables xτ,yτ,zτ,… for each type τ, the language of T has special constants 0, suc, Kσ,τ, Sρ,σ,τ, and Rσ for all types ρ,σ,τ. The meaning of these constants is explained by their defining equations. Kσ,τ and Sρ,σ,τ are familiar from combinatory logic which was introduced by Schönfinkel in 1924 and became more widely known through Curry’s work (1930). 0 plays the role of the first natural number while suc embodies the successor function on objects of type 0. The constants Rσ, called *recursors*, provide the main vehicle for defining functionals by recursion on N. Term formation starts with constants and variables, and if *s* and *t* are terms of type σ→τ and σ, respectively, then s(t) is a term of type τ. To increase readability we shall write t(r,s) instead of (t(r))(s) and t(r,s,q) instead of (t(r,s))(q) etc. Also suc(t) will be shortened to t′. The defining axioms for the constants are the following:\[[17][31]\]

1.  ¬t′\=0
2.  t′\=r′→t\=r
3.  Kσ,τ(s,t)\=s
4.  Sρ,σ,τ(r,s,t)\=(r(t))(s(t))
5.  Rσ(f,g,0)\=f
6.  Rσ(f,g,n′)\=g(n,Rσ(f,g,n)).

The axioms of T consist of the above defining axioms, equality axioms and axioms for propositional logic. Inference rules are modus ponens and the induction rule

from A(0) and A(x)→A(x′) conclude A(t)

for *t* of type 0 and *x* not in A(0).

The first step towards the D-interpretation of Heyting arithmetic in T consists of associating to each formula *A* of arithmetic a syntactic translation AD which is of the form

AD≡∃xσ1…∃xσn∀yτ1…∀yτmAD(→x,→y)

with AD(→x,→y) being quantifier free. Thus AD is not a formula of T but of its augmentation via quantifiers ∀xτ and ∃yτ for all types τ. The translation proceeds by induction on the buildup of *A*. The cases where the outermost logical symbol of *A* is among ∧, ∨, ∃x, ∀x are rather straightforward. The crucial case occurs when *A* is an implication B→C. To increase readability we shall suppress the typing of variables. Let BD≡∃→x∀→yBD(→x,→y) and CD≡∃→u∀→vCD(→u,→v). Then one uses a series of judicious equivalences to bring the quantifiers in BD→CD to the front and finally employs skolemization of existential variables as follows:

∃→x∀→yBD(→x,→y)→∃→u∀→vCD(→u,→v)∀→x\[∀→yBD(→x,→y)→∃→u∀→vCD(→u,→v)\]∀→x∃→u\[∀→yBD(→x,→y)→∀→vCD(→u,→v)\]∀→x∃→u∀→v\[∀→yBD(→x,→y)→CD(→u,→v)\]∀→x∃→u∀→v∃→y\[BD(→x,→y)→CD(→u,→v)\]∀→x∃→u∃Y∀→v\[BD(→x,Y(→v))→CD(→u,→v)\]∃U∃Z∀→x∀→v\[BD(→x,Z(→x,→v))→CD(U(→x),→v)\].

AD is then defined to be the formula in (vii). Note, however, that these equivalences are not necessarily justified constructively. Only (i) ⇔ (ii) and (iii) ⇔ (iv) hold constructively whereas (v) ⇔ (vi) and (vi) ⇔ (vii) are justified constructively only if one also accepts the axiom of choice for all finite types (AC*ft*). Equivalences (ii) ⇔ (iii) and (iv) ⇔ (v) use a certain amount of classical logic known as the *principle of independence of premise* (IP*ft*) and *Markov’s principle* (MP*ft*) for all finite types, respectively. At this point A↦AD is just a syntactic translation. But amazingly it gives rise to a meaningful interpretation of **HA** in *T*.

Theorem 4.2 (Gödel 1958) Suppose D is a proof of *A* in **HA** and AD as in (7). Then one can effectively construct a sequence of terms →t (from D) such that T proves AD(→t,→y).

If one combines the *D*\-interpretation with the Kolmogorov-Gentzen-Gödel negative translation of **PA** into **HA** one also arrives at an interpretation of **PA** in T. Some interesting consequences of the latter are that the consistency of **PA** follows finitistically from the consistency of T and that every total recursive function of **PA** is denoted by a term of T.

The three principles AC*ft*, IP*ft* and MP*ft* which figured in the *D*\-translation actually characterize the *D*\-translation in the sense that over the quantifier extension of T with intuitionistic logic, called HAω, they are equivalent to the schema

C↔CD

for all formulae *C* of that theory. Principles similar to the three above are also often validated in another type of computational interpretation of intuitionistic theories known as *realizability*. Thus it appears that they are intrinsically related to computational interpretations of such theories.

A further pleasing aspect of Gödel’s interpretation is that it can be extended to stronger systems such as higher order systems and even to set theory (Burr 2000, Diller 2008). Moreover, it sometimes allows one to extract computational information even from proofs of specific classical theorems (see, e.g., Kohlenbach 2007). It behaves nicely with respect to modus ponens and thus works well for ordinary proofs that are usually structured via a series of lemmata. This is in contrast to cut elimination which often requires a computationally costly transformation of proofs.

Spector (1962) extended Gödel’s functional interpretation, engineering an interpretation of Z2 into *T* augmented via a scheme of transfinite recursion on higher type orderings. This type of recursion, called *bar recursion*, is conceptually related to Brouwer’s bar induction principle. (For a definition of bar induction and a presentation of Spector’s result see [appendix C][32].)

## 5\. Beyond Arithmetic: Subsystems of Z2

We described the system Z2 of second order arithmetic already at the end of section 3.2. It was viewed as the “next”system to be proved consistent—after first-order arithmetic **PA** had been shown to be. As we mentioned Z2 is also called “analysis”, because it allows the development of classical mathematical analysis: coding real numbers and continuous functions as sets of natural numbers, a good theory of the continuum can be developed from Z2’s axioms. Indeed, Hermann Weyl showed in 1918 that a considerable portion of analysis can be developed in small fragments of Z2 that are actually conservative over **PA**. The idea of singling out the minimal fragment of Z2 required to expose a particular part of ordinary mathematics led in the 1980s to the research program of *reverse mathematics*. However, before discussing that program, we are going to proof-theoretic investigations of Z2 and its subsystems that have been a focal point until the very early 1980s.

### 5.1 Takeuti’s Fundamental Conjecture

After Gentzen, it was Gaisi Takeuti who worked on a consistency proof for Z2 in the late 1940s. He conjectured that Gentzen’s *Hauptsatz* not only holds for first order logic but also for higher order logic, also known as simple type theory, **STT**. This came to be known as Takeuti’s fundamental conjecture.\[[18][33]\] The particular sequent calculus he introduced was called a generalized logic calculus, GLC (Takeuti 1953). Z2 can be viewed as a subtheory of GLC. In the setting of GLC the comprehension principle **CA** is encapsulated in the right introduction rule for the existential second-order quantifier and the left introduction rule for the universal second-order quantifier. In order to display these rules the following notation is convenient. If F(U) and A(a) are formulae then F({v∣A(v)}) arises from F(U) by replacing all subformulae t∈U of F(U) (with *U* indicated) by A(t). The rules for second order quantifiers can then be stated as follows:\[[19][34]\]

(∀2L)F({v∣A(v)}),Γ⇒Δ∀XF(X),Γ⇒Δ(∀2R)Γ⇒Δ,F(U)Γ⇒Δ,∀XF(X)(∃2L)F(U),Γ⇒Δ∃XF(X),Γ⇒Δ(∃2R)Γ⇒Δ,F({v∣A(v)})Γ⇒Δ,∃XF(X)

To deduce an instance ∃X∀x\[x∈X↔A(x)\] of **CA** just let F(U) be the formula ∀x\[x∈U↔A(x)\] and observe that

F({v∣A(v)})≡∀x\[A(x)↔A(x)\],

and hence

⋮Γ⇒Δ,∀x\[A(x)↔A(x)\]Γ⇒Δ,∃X∀x\[x∈X↔A(x)\]

As the deducibility of the empty sequent is ruled out if cut elimination holds for GLC (or just the fragment GLC2 corresponding to Z2), Takeuti’s Fundamental Conjecture entails the consistency of Z2. However note that it does not yield the subformula property as in the first-order case since the minor formula F({x∣A(x)}) in (∃2R) and (∀2L) may have a much higher (quantifier) complexity than the principal formula ∃XF(X) and ∀XF(X), respectively. Indeed, ∃XF(X) may be a proper subformula of A(x) which clearly exhibits the impredicative nature of these inferences and shows that they are strikingly different from those in predicative analysis where a proper subformula property obtains.

In 1960a Schütte developed a semantic equivalent to the (syntactic) fundamental conjecture using partial or semi-valuations. He employed the method of search trees (or deduction chains) to show that a formula *F* that cannot be deduced in the cut-free system has a deduction chain without axioms which then gives rise to a partial valuation *V* assigning the value “false” to *F*. From the latter he inferred that the completeness of the cut-free system\[[20][35]\] is equivalent to the semantic property that every partial valuation can be extended to a total valuation (basically a Henkin model of **STT**). In 1966 Tait succeeded in proving cut-elimination for second order logic using Schütte’s semantic equivalent for that fragment. Soon afterwards, Takahashi (1967) and Prawitz (1968) independently proved for full classical simple type that every partial valuation extends to a total one, thereby establishing Takeuti’s fundamental conjecture. These results, though, were somewhat disappointing as they were obtained by highly non-constructive methods that provided no concrete method for eliminating cuts in a derivation. However, Girard showed in 1971 that simple type theory not only allows cut-elimination but that there is also a terminating normalization procedure.\[[21][36]\] These are clearly very interesting results, but as far as instilling trust in the consistency of Z2 or **SST** is concerned, the cut elimination or termination proofs are just circular since they blatantly use the very comprehension principles formalized in these theories (and a bit more). To quote Takeuti:

> My fundamental conjecture itself has been resolved in a sense by Motoo Takahashi and Dag Prawitz independently. However, their proofs rely on set theory, and so it cannot be regarded as an execution of Hilbert’s Program. (Takeuti 2003: 133)

Takeuti’s work on his conjecture instead focused on partial results. A major breakthrough that galvanized research in proof theory, especially ordinal-theoretic investigations, was made by him in 1967. In Takeuti 1967 he gave a consistency proof for Π11\-comprehension and thereby for the first time obtained an ordinal analysis of an impredicative theory. For this Takeuti vastly extended Gentzen’s method of assigning ordinals (ordinal diagrams, to be precise) to purported derivations of the empty sequent. It is worth quoting Takeuti’s own assessment of his achievements.

> … the subsystems for which I have been able to prove the fundamental conjecture are the system with Π11 comprehension axiom and a slightly stronger system, that is, the one with Π11 comprehension axiom together with inductive definitions.\[…\] I tried to resolve the fundamental conjecture for the system with the Δ12 comprehension axiom within our extended version of the finite standpoint. Ultimately, our success was limited to the system with provably Δ12 comprehension axiom. This was my last successful result in this area. (Takeuti 2003: 133)

The subsystems of Z2 that are alluded to in the above discussion are now to be described. We consider the axiom schema of C\-*comprehension* for formula classes C which is given by

Γ⇒∃X∀u(u∈X↔F(u))

for all formulae F∈C in which *X* does not occur. Natural formula classes are the *arithmetical formulae*, consisting of all formulae without second order quantifiers ∀X and ∃X, and the Π1n\-*formulae*, where a Π1n\-formula is a formula of the form ∀X1…QXnA(X1,…,Xn) with ∀X1…QXn being a string of *n* alternating set quantifiers, commencing with a universal one, followed by an arithmetical formula A(X1,…,Xn). Note that in this notation the class of arithmetical formulae is denoted by Π10.

Also “mixed” forms of comprehension are of interest, e.g.,

Γ⇒∀u\[F(u)↔G(u)\]→∃X∀u\[u∈X↔F(u)\]

where F(u) is in Π1n and G(u) in Σ1n.

One also considers Δ1n comprehension rules:

∅⇒∀u\[F(u)↔G(u)\]Γ⇒∃X∀u\[u∈X↔F(u)\]if F(u)∈Π1n,G(u)∈Σ1n

For each axiom scheme Ax we denote by (Ax)0 the theory consisting of the basic arithmetical axioms plus the scheme Ax. By contrast, (Ax) stands for the theory (Ax)0 augmented by the scheme of induction for all L2\-formulae. An example for these notations is the theory (Π11−CA)0 which has the comprehension schema for Π11\-formulae.

In **PA** one can define an elementary injective pairing function on numbers, e.g., (n,m):=2n×3m. With the help of this function an infinite sequence of sets of natural numbers can be coded as a single set of natural numbers. The nth section of set of natural numbers *U* is defined by Un:={m:(n,m)∈U}. Using this coding, we can formulate a form of the axiom of choice for formulae F in C by

Γ⇒∀x∃YF(x,Y)→∃Y∀xF(x,Yx).

The basic relations between the above theories are discussed in Feferman and Sieg 1981a.

### 5.2 Predicative Theories

A major stumbling block for proving Takeuti’s fundamental conjecture is that in (∀2L) and (∃2R) inferences the minor formula F({v∣A(v)}) can have a much higher complexity than the principal (inferred) formula QXF(X). If, instead, one allowed these inferences only in cases where the ‘abstraction’ term {v∣A(v)} had (in some sense) a lower complexity than QXF(X), cut elimination could be restored. To implement this idea, one introduces a hierarchy of sets (formally represented by abstraction terms) whose complexity is stratified by ordinal levels α, and a pertaining hierarchy of quantifiers ∀Xβ and ∃Xβ conceived to range over sets of levels <β. This is the basic idea underlying the ramified analytic hierarchy. The problem of which ordinals could be used for the transfinite iteration led to the concept of *autonomous progressions of theories*. The general idea of progressions of theories is very natural and we shall consider it first before discussing the autonomous versions.

#### 5.2.1 Progressions of theories: Completing the incomplete

As observed earlier, Hilbert attempted to overcome the incompleteness of first-order arithmetic by introducing as axioms Π01\-statements all of whose instances had been finitistically proved (Hilbert 1931a). In a way he modified the concept of a “formal” theory by invoking finitist provability. Bernays, in his letter to Gödel of January 18, 1931 (Gödel 2003: 86–88), proposed a *rule* of a more general form. He indicated also that it would allow the elimination of the induction principle—in exchange for dealing with infinite proofs.

These considerations among others raised the issue of what constitutes a properly *formal* theory. Gödel paid very special attention to it when giving his Princeton Lectures in 1934. At the very end he introduced the general recursive functions. This class of number theoretic functions was shown to be co-extensional with Church’s λ-definable ones by Church and Kleene. In Church 1936 an “identification” of effective calculability and general recursiveness was proposed, what is usually called *Church’s thesis*. Turing, of course, proposed his machine computability for a very similar purpose and proved its equivalence to λ-definability in an appendix to his 1936. Church and Turing used their respective notion to establish the undecidability of first-order logic. For Gödel, this was the background for formulating the incompleteness theorems in “full generality” for all formal theories (containing a modicum of number or set theory); see the Postscriptum to the Princeton Lectures Gödel wrote in 1964:

> In consequence of later advances, in particular of the fact that, due to A.M. Turing’s work, a precise and unquestionably adequate definition of the general concept of formal system can now be given, the existence of undecidable arithmetical propositions and the non-demonstrability of the consistency of a system in the same system can now be proved rigorously for *every* consistent formal system containing a certain amount of finitary number theory. (Gödel 1986: 369).

The first incompleteness is proved for any such theory **T**, by explicitly producing an unprovable yet true statement GT. That formula can then be added to **T** making T+GT a “less incomplete” theory. Von Neumann had already established the equivalence of GT with the consistency statement for **T**, Con(T); the latter expresses that there is no proof in *T* of a blatantly false statement such as 0\=1. This gives then rise to an extension procedure leading from **T** to T′, namely (R1) T′\=T+GT.

Thus one might try to address the incompleteness of **T** by forming a sequence of theories T\=T0⊂T1⊂T2⊂… where Ti+1\=T′i and to continue this into the transfinite. The latter can be achieved by letting Tλ\=⋃α<λTα for limit ordinals λ and Tα+1\=T′α for successor ordinals α+1. However, the consistency statement for Tλ, thus the provability predicate for the theory, has to be expressed in the language of Tλ, and one cannot simply use set theoretic ordinals. Furthermore, the extensions of **T** are all supposed to be formal theories, i.e., the axioms have to be enumerable by recursive functions. To deal with both issues at once, one has to deal with ordinals in an effective way.

That is what Turing did in his Princeton dissertation (1939) concerning, what he called, *ordinal logics*. There he considers two ways of achieving the effective representation of ordinals. The first way is via the set W of numbers *e* for recursive well-orderings ≤e, the second is provided by the class of Church-Kleene notations for ordinals (Church and Kleene 1936) that used expressions in the λ-calculus to describe ordinals. The latter approach was then modified in Kleene 1938 to an equivalent recursion-theoretic definition that uses numerical codes to denote countable ordinals and is known as Kleene’s O.

Definition 5.1 A *computable* or *recursive function* on the naturals is one that can be computed by a Turing machine. The program of a Turing machine *M* can be assigned a Gödel number ⌜M⌝. For natural numbers e,n, to convey that the Turing machine with Gödel number *e* computes a number *m* on input *n*, we use the notation {e}(n) for *m*.

Kleene uses suc(a):=2a as notations for successor ordinals and and lim(e):=3⋅5e for limit ordinals.

The class O of ordinal notations, the partial ordering relation <O between such notations, and the ordinal ∣a∣ denoted by a∈O are defined simultaneously as follows:

1.  0∈O, and ∣0∣\=0.
2.  If a∈O then suc(a)∈O, a<Osuc(a) and |suc(a)|\=|a|+1.
3.  If *e* is an index of a total recursive function and {e}(n)<O{e}(n+1) holds for all n∈N, then lim(e)∈O, and |lim(e)|\=sup{|{e}(n)|∣n∈N}.
4.  If a<Ob and b<Oc then a<Oc.

The first ordinal τ such that there is no recursive well-ordering of order type τ is usually denoted by ωCK in honor of Church and Kleene. It can be shown for the above definition of O that the recursive ordinals are exactly those that have a notation in O.

When it comes to theories **T**, quite unlike to other areas of logic (e.g., model theory), results as those presented in this section depend not only on the set of axioms of **T**, but also on the way they are presented. When talking about a theory **T** we assume that **T** is given by a Σ01\-formula ψ(v0) such that *F* is an axiom of **T** just in case ψ(⌜F⌝) holds; a Σ01\-formula is of the form ∃y1…∃ynR(y1,…yn) with *R* primitive recursive. This consideration together with Kleene’s O allows us to build a transfinite hierarchy of theories based on any suitable theory **T**. A *consistency progression* based on **T** is a primitive recursive function n↦ψn that associates with every natural number *n* a Σ01\-formula ψn(v0) that defines Tn such that **PA** proves: (i) T0\=T; (ii) Tsuc(n)\=T′n, and (iii) Tlim(n)\=⋃xT{n}(x). So, finally we can formulate Turing’s completeness result.

Theorem 5.2 For any true Π01 sentence *F* a number aF∈O can be constructed such that ∣aF∣\=ω+1 and TaF⊢F. Moreover, the function F↦aF is given by a primitive recursive function.

At first glance Turing’s theorem seems to provide some insight into the nature of true Π01\-statements. That this is an “illusion” is revealed by the analysis of its simple proof which is just based on the trick of coding the truth of *F* as a member of O. The proof also shows that the infinitely many iterated consistency axioms Con(T0),Con(T1),… of Tsuc(lim(e)) are irrelevant for proving *F*. As it turns out, the reason why one has to go to stage ω+1 is simply that only at stage ω a non-standard definition of the axioms of ⋃n<ωTn can be introduced. More details and other results on recursive progressions are discussed in [Appendix B][37]. Here let us just mention that one has considered other progressions based on various extension procedures T↦T′ that strengthen a given theory, notably:\[[22][38]\]

-   (R2)T′\=T+{∃yProofT(y,⌜F⌝)→F∣F closed}.
-   (R3)T′\=T+{∀x∃yProofT(y,⌜F(ˉx)⌝)→∀xF(x)∣ all F(x) with at most *x* free}.

(R2) is called an extension by the *local reflection principle*, whereas (R3) uses the *uniform reflection principle*. Feferman obtained in 1962 an amazing result that strengthens Turing’s result in a dramatic way.

Let (Ta)a∈O be a progression using the uniform reflection principle with **PA** as the base theory **T**. Then we have: for any true arithmetical sentence *F* there is an a∈O, such that Ta⊢F. Moreover, a∈O can be chosen such that ∣a∣≤ωωω+1.

For further discussion see [Appendix B][39]. Here we just note that the union of the Ta is no longer a formal theory.

In the foregoing progressions the ordinals remained external to the theory. *Autonomous progressions of theories* are the proper internalization of the general concept of progressions. In the autonomous case one is allowed to ascend to a theory Ta only if one already has shown in a previously accepted theory Tb that a∈O. This idea of generating a hierarchy of theories via a boot-strapping process appeared for the first time in Kreisel 1960, where it was proposed as a way of characterizing finitism and predicativism in mathematically precise way. In more formal terms, the starting point is a theory T0 which is accepted as correct and an extension procedure T↦T′ which is viewed as leading from a correct theory **T** to a more encompassing correct theory T′. Moreover, the language of these theories is supposed to contain a formula Acc(x) such that provability of Acc(ˉa) in a correct theory entails that a∈O.\[[23][40]\] Kreisel singled out two autonomous progressions of theories {Fa} and {Ra} for finitism and predicativity, respectively, and determined the least upper bound of the |a| appearing in the first hierarchy to be the ordinal ε0 which is also the proof-theoretic ordinal of **PA**. The determination of the least upper bound for the predicative hierarchy {Ra} was achieved independently by Feferman (1964) and Schütte (1964, 1965). It turned out that this ordinal can be expressed in a notation system developed by Veblen that will be presented next.

#### 5.2.2 Stronger ordinal representations: The Veblen and Bachmann hierarchies

As we saw above, ordinals below ε0 suffice for the proof-theoretic treatment of **PA**. For stronger theories segments larger than ε0 have to be employed, requiring new normal forms akin to Cantor’s normal form. Ordinal representation systems utilized by proof theorists in the 1960s first emerged in a purely set-theoretic context more than 50 years earlier. In 1904 Hardy wanted to “construct” a subset of R of size ℵ1, the first uncountable cardinal. His method was to represent countable ordinals via increasing sequences of natural numbers and then to correlate a decimal expansion with each such sequence. Hardy used two processes on sequences: (i) Removing the first element to represent the successor; (ii) Diagonalizing at limits. For example, if the sequence 1,2,3,… represents the ordinal 1, then 2,3,4,… represents the ordinal 2 and 3,4,5,… represents the ordinal 3 etc., while the ‘diagonal’ 1,3,5,… provides a representation of ω. In general, if λ\=limn∈Nλn is a limit ordinal with bn1,bn2,bn3,… representing λn<λ, then b11,b22,b33,… represents λ. This representation, however, depends on the sequence chosen with limit λ. A sequence (λn)n∈N with λn<λ and limn∈Nλn\=λ is called a *fundamental sequence* for λ. Hardy’s two operations give explicit representations for all ordinals <ω2.

Veblen in 1908 extended the initial segment of the countable for which fundamental sequences can be given effectively. The new tools he devised were the operations of *derivation* and *transfinite iteration* applied to *continuous increasing functions* on ordinals.

Definition 5.4 Let ON be the class of ordinals. A (class) function f:ON→ON is said to be *increasing* if α<β implies f(α)<f(β) and *continuous* (in the order topology on ON) if

f(limξ<λαξ)\=limξ<λf(αξ)

holds for every limit ordinal λ and increasing sequence (αξ)ξ<λ. *f* is called *normal* if it is increasing and continuous.

The function β↦ω+β is normal while β↦β+ω is not continuous at ω since limξ<ω(ξ+ω)\=ω but (limξ<ωξ)+ω\=ω+ω.

Definition 5.5 The *derivative* f′ of a function f:ON→ON is the function which enumerates in increasing order the solutions of the equation f(α)\=α, also called the *fixed points* of *f*.

If *f* is a normal function, {α:f(α)\=α} is a proper class and f′ will be a normal function, too.

Definition 5.6 Now, given a normal function f:ON→ON, define a hierarchy of normal functions as follows:

f0\=ffα+1\=f′αfλ(ξ)\=ξth element of ⋂α<λ(Range of fα) for λ a limit ordinal.

In this way, from the normal function *f* we get a two-place function, φf(α,β):=fα(β). One usually discusses the hierarchy when f\=ℓ, where ℓ(α)\=ωα. The least ordinal γ\>0 closed under φℓ, i.e., the least ordinal \>0 satisfying (∀α,β<γ)φℓ(α,β)<γ is called Γ0. It has a somewhat iconic status, in particular since Feferman and Schütte determined it to be the least ordinal ‘unreachable’ by certain *predicative* means expressed in terms of autonomous progressions of theories (defined in [section 5.2][41]).

Veblen extended this idea first to arbitrary finite numbers of arguments, but then also to transfinite numbers of arguments, with the proviso that in, for example Φf(α0,α1,…,αη), only a finite number of the arguments αν may be non-zero. Finally, Veblen singled out the ordinal E(0), where E(0) is the least ordinal δ\>0 which cannot be named in terms of functions Φℓ(α0,α1,…,αη) with η<δ, and each αγ<δ.

Though the “great Veblen number” (as E(0) is sometimes called) is quite an impressive ordinal it does not furnish an ordinal representation sufficient for the task of analyzing a theory as strong as Π11\-comprehension. Of course, it is possible to go beyond E(0) and initiate a new hierarchy based on the function ξ↦E(ξ) or even consider hierarchies utilizing finite type functionals over the ordinals. Still all these further steps amount to rather modest progress over Veblen’s methods. In 1950 Bachmann presented a new kind of operation on ordinals which dwarfs all hierarchies obtained by iterating Veblen’s methods. Bachmann builds on Veblen’s work but his novel idea was the systematic use of *uncountable ordinals* to keep track of the functions defined by diagonalization. Let Ω be the first uncountable ordinal. Bachmann defines a set of ordinals B closed under successor such that with each limit λ∈B is associated an increasing sequence ⟨λ\[ξ\]:ξ<τλ⟩ of ordinals λ\[ξ\]∈B of length τλ≤Ω and limξ<τλλ\[ξ\]\=λ. A hierarchy of functions (φBα)α∈B is then obtained as follows:

φB0(β)\=ωβφBα+1\=(φBα)′φBλ enumerates ⋂ξ<τλ(Range of φBλ\[ξ\])if λ is a limit with τλ<ΩφBλ enumerates {β<Ω:φBλ\[β\](0)\=β}if λ is a limit with τλ\=Ω.

After the work of Bachmann, the story of ordinal representations becomes very complicated. Significant papers (by Isles, Bridge, Pfeiffer, Schütte, Gerber to mention a few) involve quite horrendous computations to keep track of the fundamental sequences. Also Bachmann’s approach was combined with uses of higher type functionals by Aczel and Weyhrauch. Feferman proposed an entirely different method for generating a Bachmann-type hierarchy of normal functions which does not involve fundamental sequences. Buchholz further simplified the systems and proved their computability. For details we recommend the preface to Buchholz et al. 1981.

#### 5.2.3 Infinitary proofs for predicative theories

The ordinal that Feferman and Schütte determined as the least upper bound for {Ra} is Γ0, the least non-zero ordinal closed under the Veblen function α,β↦φα(β). This was a genuine proof-theoretic result with the tools coming ready-made from Schütte’s (1960b) monograph. There he had calculated the proof-theoretic ordinals of the Ra as a function of |a|, using cut elimination techniques for logics with infinitary rules (dubbed “semi-formal systems”). If |a|\=ωα then |Ra|\=φα(0). “Semi-formal” is a terminology employed by Schütte and refers to the fact that this proof system has rules with infinitely many premises, similar to the ω\-rule.

Definition 5.7 In the following we assume that the ordinals come from some representation system. The language of RA∗ is an extension of that of first order arithmetic. For each ordinal α and β\>0 it has free set variables Uα0,Uα1,Uα2… of level α and bound set variables of level β. The level, lev(A), of a formula *A* of RA∗ is defined to be the maximum of the levels of set variables that occur in *A*. Expressions of the form {x∣A(x)} with A(u) a formula will be called *abstraction terms*, their level being the same as that of the formula A(u).

The inference rules of RA∗ comprise those of the sequent calculus with the exception of (∀R) and (∃L) which are replaced by those for the ω\-rule: ωR and ωL. Below Pβ stands for the set of all abstraction terms with levels <β. The rules for the set quantifiers are as follows:

F(P),Γ⇒Δ,∀XβF(Xβ),Γ⇒ΔΓ⇒Δ,F(P)  all P∈PβΓ⇒Δ,∀XβF(Xβ)F(P),Γ⇒Δ  all P∈Pβ∃XβF(Xβ),Γ⇒ΔΓ⇒Δ,F(P)Γ⇒Δ,∃XβF(Xβ)

where in ∀βL and ∃βR, *P* is an abstraction term of level <β.

As per usual, the price one has to pay for rules with infinitely many premises is that derivations become infinite (well-founded) trees. The length of a derivation can then be measured by the ordinal rank associated with the tree. One also wants to keep track of the complexity of cuts in the derivation. The length we assign to a formula *A*, |A|, measures its complexity. It is an ordinal of the form ω⋅α+n where α is the level of *A* and n<ω. One then defines a notion of derivability in RA,

RA∗|αρΓ⇒Δ

where α majorizes the transfinite length of the derivation and ρ conveys that all cut formulae in the derivation have length <ρ.

Cut elimination works smoothly for RA∗, however, the prize one has to pay can only be measured in terms of Veblen’s φ function. The optimal result is the so-called second cut elimination theorem.

Theorem 5.8 (Second Cut Elimination Theorem)

If RA∗|αρ+ωνΓ⇒Δ then RA∗|φν(α)ρΓ⇒Δ

It entails of course the special case that RA∗|αωνΓ⇒Δ yields RA∗|φν(α)0Γ⇒Δ, and thus, as the latter deduction is cut-free, all cuts can be removed. Several subtheories of Z2 can be interpreted in RA∗, yielding upper bounds for their proof-theoretic ordinals via [Theorem 5.8][42]. Here is a selection of such results:\[[24][43]\]

Theorem 5.9

1.  |(Π10\-CA)0|\=ε0.
2.  |(Π10\-CA)|\=φ2(0)\=εε0.
3.  |(Δ11\-CR)|\=φω(0).
4.  |(Δ11\-CA)|\=|(Σ11\-AC)|\=φε0(0).

For the definitions of the theories in this theorem, see end of [section 5.1][44]. To obtain the results about theories in (iii) and (iv) it is somewhat easier to first reduce them to systems of the form (Π01\-CA)<ρ as the latter have a straightforward interpretation in RA∗. Reductions of (Δ11\-CR) to (Π01\-CA)<ωω and of (Σ11\-AC) to (Π01\-CA)<ε0 are due to Feferman (1964) and Friedman (1970), respectively.\[[25][45]\]

The investigation of such subsystems of analysis and the determined effort to establish their mathematical power led to a research program that was initiated by Friedman and Simpson some thirty years ago and dubbed *Reverse Mathematics*. The objective of the program is to investigate the role of set existence principles in ordinary mathematics.\[[26][46]\] The main question can be stated as follows:

Given a specific theorem τ of ordinary mathematics, which set existence axioms are needed in order to prove τ?

Central to the above is the reference to what is called ‘ordinary mathematics’. This concept, of course, doesn’t have a precise definition. Roughly speaking, by ordinary mathematics we mean main-stream, non-set-theoretic mathematics, i.e., the core areas of mathematics which make no essential use of the concepts and methods of set theory and do not essentially depend on the theory of uncountable cardinal numbers.

For many mathematical theorems τ, there is a weakest natural subsystem S(τ) of Z2 such that S(τ) proves τ. Very often, if a theorem of ordinary mathematics is proved from the weakest possible set existence axioms, the statement of that theorem will turn out to be provably equivalent to those axioms over a still weaker base theory. Moreover, it has turned out that S(τ) often belongs to a small list of specific subsystems of Z2 dubbed RCA0, WKL0, ACA0, ATR0 and (Π11\-CA)0, respectively.\[[27][47]\] The systems are enumerated in increasing strength. ACA0 is actually the same theory as (Π10\-CA)0. The main set existence axioms of RCA0, WKL0, ACA0, ATR0, and (Π11\-CA)0 are recursive comprehension, weak König’s lemma, arithmetical comprehension, arithmetical transfinite recursion, and Π11\-comprehension, respectively. ACA0 is actually the same theory as (Π10\-CA)0. For exact definitions of all these systems and their role in reverse mathematics see Simpson 1999. Examples of mathematical statements provable in RCA0 are the intermediate value theorem and the Baire category theorem. Reversals for WKL0 are the Heine/Borel covering lemma and the local existence theorem for solutions of ordinary differential equations. Among the many reversals for ACA0, ATR0, and (Π11\-CA)0 one finds the existence of maximal ideals in countable rings, Ulm’s theorem, and the Cantor-Bendixson theorem, respectively.

The proof-theoretic strength of RCA0 is weaker than that of **PA** while ACA0 has the same strength as **PA**. To get a sense of scale, the strengths of the first four theories are best expressed via their proof-theoretic ordinals:

Theorem 5.10

1.  |RCA0|\=|WKL0|\=ωω.
2.  |ACA0|\=ε0.
3.  |ATR0|\=Γ0.

|(Π11\-CA)0|, however, eludes expression in the ordinal representations introduced so far. This will require the much stronger representation to be introduced in [Definition 5.11][48].

There are important precursors of reverse mathematics. Weyl (1918) started to develop analysis using a minimalist foundation (that equates to ACA0) whilst Hilbert and Bernays (1939) developed analysis in second order arithmetic, whereby on closer inspection one sees that all they used is (Π11\-CA)0. The first theorem of genuinely reverse mathematics was established by Dedekind in his essay *Stetigkeit und irrationale Zahlen* (1872). It states that his continuity (or completeness) principle is equivalent to a well-known theorem of analysis, namely, every bounded, monotonically increasing sequence has a limit. He emphasizes,

> This theorem is equivalent to the principle of continuity, i.e., it loses its validity as soon as we assume a single real number not to be contained in the domain R \[of all real numbers, i.e., of all cuts of rational numbers\]. (1872 \[1996: 778\])

It is to bring out “the connection between the principle of continuity and infinitesimal analysis” (1872 \[1996: 779\]).

### 5.3 Impredicative Subsystems and Generalized Inductive Definitions

Spector’s (1962) functional interpretation of Z2 via bar recursive functionals was of great interest to proof theory. However, it was not clear whether there was a constructive foundation of these functionals along the lines of hereditarily continuous functionals that can be represented by computable functions (akin to Kleene 1959; Kreisel 1959) which would make them acceptable on intuitionistic grounds. In 1963 Kreisel conducted a seminar the expressed aim of which was to assay the constructivity of Spector’s interpretation (see Kreisel 1963). Specifically he asked whether an intuitionistic theory of monotonic inductive definitions, IDi1(mon), could model bar recursion, or even more specifically, formally capture a class of indices of representing functions of these functionals. In a subsequent report the seminar’s conclusion was later summarized by Kreisel:

> … the answer is negative by a wide margin, since not even bar recursion of type 2 can be proved consistent \[from intuitionistically accepted principles\]. (Kreisel in “Reports of the Seminar on the Foundations of Analysis, Stanford, Summer 1963”, as quoted in Feferman 1998: 223)

He not only introduced theories of one inductive definition but also of ν\-times transfinitely iterated inductive definitions, IDν. Albeit it soon became clear that even the theories IDν couldn’t reach the strength of Z2 (in point of fact, such theories are much weaker than the fragment of Z2 based on Π12\-comprehension); they became the subject of proof-theoretic investigation in their own right and occupied the attention of proof theorists for at least another 15 years. One reason for this interest was surely that the intuitionistic versions corresponding to the accessible (i.e., well-founded) part of a primitive recursive ordering are immediately constructively appealing and a further reason was that they were thought to be more amenable to direct proof-theoretic treatments than fragments of Z2 or set theories.

We shall not give a detailed account of the formalization of these theories, but focus on the non-iterated case ID1 and its intuitionistic version IDi1 to convey the idea. A monotone operator on N is a map Γ that sends a set X⊆N to a subset Γ(X) of N and is monotone, i.e., X⊆Y⊆N implies Γ(X)⊆Γ(Y). Owing to monotonicity, the operator Γ will have a least fixed point IΓ⊆N, i.e., Γ(IΓ)\=IΓ and for every other fixed point *X* it holds IΓ⊆X. Set-theoretically IΓ is obtained by iterating Γ through the ordinals,

Γ0\=∅,Γ1\=Γ(Γ0),Γα\=Γ(⋃ξ<αΓξ).

Monotonicity ensures (in set theory) that one finds an ordinal τ such that Γ(Γτ)\=Γτ, and the set Γτ will be the least fixed point. If one adds a new 1-place predicate symbol *P* to the language of arithmetic, one can describe the so-called positive arithmetical operators. They are of the form

ΓA(X)\={n∈N∣A(n,X)}

where A(x,P) is a formula of the language of **PA** augmented by *P* in which the predicate *P* occurs only positively.\[[28][49]\] The syntactic condition of positivity then ensures that the operator ΓA is monotone. The language of ID1 is an extension of that of **PA**. It contains a unary predicate symbol IA for each positive arithmetical operator ΓA and the axioms

∀x(A(x,IA)→IA(x))∀x\[A(x,F)→F(x)\]→∀x\[IA(x)→F(x)\]

where in (Id2) F(x) is an arbitrary formula of ID1 and A(x,F) arises from A(x,P) by replacing every occurrence of P(t) in the formula by F(t). Collectively these axioms assert that IA is the least fixed point of ΓA, or more accurately the least among all sets of natural numbers definable in the language of ID1. IDi1 will be used to denote the intuitionistic version. Its subtheory IDi1(O) is obtained by just adding the predicate symbol IA and the pertaining axioms (Id1) and (Id2), where ΓA is the operator that defines Kleene’s O (cf. [Definition 5.1][50]).

By a complicated passage through formal theories for choice sequences it was known that the theory ID1 can be reduced to IDi1(O). The first ordinal analysis for the theory IDi1(O) was obtained by Howard (1972). Via the known proof-theoretical reductions this entailed also an ordinal analysis for ID1. The proof-theoretic ordinal of ID1 is the *Bachmann-Howard ordinal*, which is denoted by ψΩ1(εΩ1+1) in the system of [Definition 5.11][51].

As inductively defined sets can be the starting point of another inductive definition, the procedure of inductively defining predicates can be iterated along any well-ordering ν in a uniform way. This leads to the theories IDν which allow one to formalize ν\-times iterated inductive definitions, where ν stands for a primitive recursive well-ordering. If ν is a well-ordering on constructive grounds then also the ν\-times iterated version of Kleene’s O has a clear constructive meaning. As a result the formal theories IDiν(O) that embody this process are constructively justified. The topic of theories of iterated inductive definitions was flourishing at the 1968 conference on Intuitionism and Proof Theory in Buffalo (see Kino et al. 1970). One of the main proof-theoretic goals was to find a reduction of the classical theories IDν to their intuitionistic counterparts IDiν(O). This was all the more desirable because of known reductions of important fragments of second order arithmetic to theories of the former kind. Friedman (1970) had shown that the second order system with the Σ12\-axiom of choice can be interpreted in the system (Π11\-CA)<ε0 of less than ε0\-fold iterated Π11\-comprehensions and Feferman (1970a) had shown that less than ν\-fold iterated Π11\-comprehensions could be interpreted in the system

ID<ν:=⋃α<νIDα

for ν\=ωγ with γ limit. However, Zucker (1973) showed that there are definite obstacles to a straightforward reduction of the theories IDν for ν\>1 to their intuitionistic cousins. Sieg (1977) attacked the problem by a method adapted from Tait (1970) who had used cut elimination for an infinitary propositional logic with formulae indexed over constructive number classes to obtain a consistency proof for second order arithmetic theory with the schema of Σ12 dependent choices. He achieved a reduction of ID<ν to IDi<ν(O) for limit ν by carrying out the proof theory for a system of PLα of propositional logic with infinitely long conjunctions and disjunctions indexed over the constructive number classes Oα for α<ν inside IDiα+1(O). As IDα can be reduced to PLα this brought about the reduction. Ordinal analyses for theories of iterated inductive definitions, first for finite and then also for transfinite iterations, were obtained by Pohlers using Takeuti’s reduction procedure for Π11\-comprehension (see Pohlers 1975, 1977). Working independently, Buchholz (1977a) used a new type of rules, dubbed Ωμ+1\-rules to recapture these results without use of Takeuti’s methods. These rules are an extension of the Ω-rule described in [Definition C.3][52].

#### 5.3.1 Interlude: an ordinal representation system beyond Bachmann’s

The ordinal representation systems encountered so far are not sufficient for expressing the strength of theories of iterated inductive definitions nor that of the strongest of the standard system of reverse mathematics, (Π11\-CA)0. Therefore we intersperse a brief account of how to proceed onwards, adumbrating the main ideas.

Bachmann’s bold move of using large ordinals to generate names for small ordinals was a very important idea. To obtain ordinal analyses of ever stronger theories one has to find new ways of defining ordinal representation systems that can encapsulate their strength. The latter goes hand in hand with the development of new cut elimination techniques that are capable of removing cuts in (infinitary) proof systems with strong reflection rules. Ordinal representations, however, appear to pose a considerable barrier to understanding books and articles in this research area. Nonetheless we think that they are the best way to express the proof-theoretic strength of a theory as they provide a scale by means of which one can get a grasp of how much stronger a theory S1 is than another theory S2 (rather than the bland statement that S1 is stronger than S2).

As an example we will introduce an ordinal representation system which characterizes the theory (Π11\-CA)+BI, following Buchholz 1977b. It is based on certain ordinal functions ψΩn which are often called *collapsing functions*. The definition of these functions, that is of the value ψΩn(α) at α, proceeds by recursion on α and gets intertwined with the definition of sets of ordinals CΩω(α,β), dubbed “Skolem hulls” since they are defined as the smallest structures closed under certain functions specified below.

Let N+ be the natural numbers without 0. Below we shall assume that Ωn (n∈N+) is a “large” ordinal and that ω<Ωn<Ωn+1. Their limit, supn∈N+Ωn, will be denoted by Ωω.

Definition 5.11 By recursion on α we define:

CΩω(α,β)\={closure of β∪{0,Ωω}∪{Ωn∣n∈N+}under: +,(ξ↦ωξ)(ξ⟼ψΩn(ξ))ξ<α for n∈N+ψΩn(α)\=min{ρ<Ωn∣CΩω(α,ρ)∩Ωn\=ρ}.

At this point it is not clear whether ψΩn(α) will actually be defined for all α since there might not exist a ρ<Ωn such that

CΩω(α,ρ)∩Ωn\=ρ.

This is where the “largeness” of Ωn comes into play. One (easy) way of guaranteeing this consists in letting Ωn be the nth uncountable regular cardinal, that is Ωn:=ℵn. However, such strong set-theoretic assumptions can be avoided. For instance, it suffices to let Ωn be the nth recursively regular ordinal (which is a countable ordinal) (see Rathjen 1993a).

To get a better feel for what ψΩn is doing, note that if ρ\=ψΩn(α), then ρ<Ωn and with \[ρ,Ωn) being the interval consisting of ordinals ρ≤α<Ωn one has

\[ρ,Ωn)∩CΩω(α,ρ)\=∅

thus the order-type of the ordinals below Ωn which belong to the “Skolem hull” CΩω(α,ρ) is ρ. In more pictorial terms, ρ is said to be the αth *collapse* of Ωn since the order-type of Ωn viewed from within the structure CΩω(α,ρ) is actually ρ.

The ordinal representation system we are after is provided by the set

CΩω(εΩω+1,0)

where εΩω+1 is the least epsilon number after Ωω, i.e., the least ordinal η\>Ωω such that ωη\=η. The proof-theoretic ordinal of (Π11\-CA)+BI is ψΩ1(εΩω+1). Although the definition of the set CΩω(εΩω+1,0) and its ordering is set-theoretic, it turns that it also has a purely primitive recursive definition which can be given in a fragment of **PRA**. Thus the set-theoretic presentation mainly serves the purpose of a “visualization” of an elementary well-ordering.

The pattern of definition exhibited in [Definition 5.11][53] continues for stronger systems, albeit only as a basic template since for theories beyond the level of (Δ12\-CA)+BI substantially new ideas are required. Analogies between large set-theoretic ordinals (cardinals) and recursively large ordinals on the one hand and ordinal representation systems on the other hand can be a fruitful source of inspiration for devising new representation systems. More often than not, hierarchies and structural properties that have been investigated in set theory and recursion theory on ordinals turn out to have proof-theoretic counterparts.

#### 5.3.2 Assigning proof-theoretic ordinals

Using an extended version of the representation system from [Definition 5.11][54] if ν\>ω,\[[29][55]\] the outcome of all the work on the theories of inductive definitions can be summarized by the following theorem.\[[30][56]\]

Theorem 5.12 For recursive ν,

|IDν|\=|IDiν(O)|\=ψΩν(εΩν+1).

A generalized treatment of theories of iterated inductive definitions for arbitrary well-orderings and of autonomous iteration was carried out in Rathjen 1988, 2010. These theories are stronger than (Δ12\-CA) if ν≥ε0.

[Theorem 5.12][57] played an important role in determining the exact strength of some fragments of Z2. The major ordinal-theoretic results pertaining to subsystems of Z2 of the pre-1980 area given in the next theorem.\[[31][58]\]

Theorem 5.13

1.  |(Π11\-CA)0|\=|ID<ω|\=ψΩ1(Ωω)
2.  |(Π11\-CA)|\=ψΩ1(Ωω⋅ε0)
3.  |(Π11\-CA)+BI|\=|IDω|\=ψΩ1(εΩω+1)
4.  |(Δ12\-CR)|\=ψΩ1(Ωωω)
5.  |(Δ12\-CA)|\=ψΩ1(Ωε0)

The next challenge after (Δ12\-CA) was posed by the theory (Δ12\-CA)+BI. Its treatment not only required a considerably stronger ordinal representation system but also coincided with a shift away from L2 theories and theories of iterated inductive definitions to a direct proof-theoretic treatment of set theories. Pioneering work on the proof theory of set theories is mainly due to Jäger (1980, 1982). The analysis of (Δ12\-CA)+BI in Jäger & Pohlers 1982 provides a particularly nice application of this new approach which has been called *admissible proof theory*, owing to its concern with theories extending Kripke-Platek set theory by axioms asserting the existence of admissible sets (for some details see [Appendix D.1][59]).

Theorem 5.14 |(Δ12\-CA)+BI|\=ψΩ1(εI+1)

The “*I*” in the foregoing notation is supposed to be indicative of “*inaccessible cardinal*”. Indeed, the easiest way to build an extended ordinal representation system sufficient unto this task (modeled on [Definition 5.11][60]) is to add an inaccessible *I*, close the Skolem hulls under ξ↦Ωξ for ξ<I and introduce collapsing functions ψπ for all π of either form *I* or Ωξ+1.

The goal of giving an ordinal analysis of full second order arithmetic has not been attained yet. For many years Π12\-comprehension posed a formidable challenge and the quest for its ordinal analysis attained something of a holy grail status (cf. Feferman 1989). At first blush it might be difficult to see why the latter comprehension is so much more powerful than Δ12\-comprehension (plus BI). To get a sense for the enormous difference, it seems advisable to work in (admissible) set theory and consider a hierarchy of recursively large ordinal notions wherein these comprehension schemes correspond to the bottom and the top end of the scale, respectively. That is discussed in [Appendix D][61]. Here we just mention a few reductions to “constructive” frameworks. The reductions we have in mind, underlie a broadened view of “constructivity”. Constructive theories of functions and sets that relate to Bishop’s constructive mathematics as theories like **ZFC** relate to Cantorian set theory have been proposed by Myhill, Martin–Löf, Feferman and Aczel. Among those are Feferman’s constructive theory of operations and classes, T0 in 1975 and 1979, Martin-Löf’s intuitionistic type theory (1984) and constructive set theory, especially Constructive Zermelo-Fraenkel Set Theory, **CZF**, the latter also combined with the regular extension axiom, **REA**. By employing an ordinal analysis for set theory **KPi** which is an extension of Kripke-Platek set theory via an axiom asserting that every set is contained in an admissible set (see [Appendix D][62]) it has been shown that **KPi** and consequently (Δ12\-CA)+BI can be reduced to both of these theories:

Theorem 5.15 (Feferman 1975; Jäger 1983; Jäger & Pohlers 1982; Rathjen 1993b) (Δ12\-CA)+BI, **KPi**, T0 and **CZF**+**REA** are proof-theoretically equivalent. In particular, these theories prove the same theorems in the negative arithmetic fragment.

Theorem 5.16 (Rathjen 1993b; Setzer 1998) The soundness of the negative arithmetic fragment of Δ12−CA+BI and **KPi** is provable in Martin-Löf’s 1984 type theory.

A detailed account of these results has been given in section 3 of Rathjen 1999a.

## 6\. Epilogue

Proof theory has become a large subject with many specialized branches that can be mathematically quite complex. So we have tried to present developments close to the main artery of its body, starting with its inception at the beginning of the twentieth century and ending with results from the close of the century. The theorems mentioned at the end of section 5 foreshadow investigations in the twenty-first century that are presented in Rathjen (2018) and concern relationships between Feferman’s systems of explicit mathematics and Martin-Löf type theories; the paper touches also on the completely new developments of homotopy type theory (see Awodey 2012). Some additional contemporary proof theoretic developments are described in appendices [D][63], [E][64] and [F][65]. The theme of [Appendix E][66], the extraction of computational information from proofs in particular formal theories, is the central topic of Schwichtenberg and Wainer’s 2012. They deal with theories of arithmetic and analysis up to (Π11\-CA)0. Standard texts on proof theory covering ordinal analysis are Takeuti 1985 and Schütte 1977. First steps into ordinal analysis are taken in Pohlers 2009. Finally, some new directions of proof theoretic work are taken in contributions to both Kahle and Rathjen 2015 and Jäger and Sieg 2018.

Let us also report on progress on the methodological issues the finitist consistency program was to address. First of all, due to quite a bit of important historical work, we have a much better grasp of the evolution of the program in the 1920s and its roots in the development toward modern structuralist mathematics in the nineteenth century. The work of editing Hilbert’s unpublished lecture notes has opened a treasure of information.\[[32][67]\] The connections to the development in nineteenth century mathematics are hinted at in [Appendix A][68], but they are explored in greater depth, for example, in Ferreirós 2008; Reck 2003, 2013; and the papers Sieg wrote on Dedekind with Morris (forthcoming) and Schlimm (2005, 2017), respectively. Secondly, as to the properly methodological issues, we presented some broad considerations in [section 4.1][69], namely, that consistency proofs should be given relative to “constructive” theories. We did not make any remarks about what is characteristic of a constructive perspective and why such a perspective has not only a mathematical, but also a philosophical point. There is, of course, a very rich literature. Let us point to some informative sources: van Atten (2007) as defending Brouwer’s views, Martin-Löf (1984) as exposing the philosophical motivation for his type theory, Feferman (1988, 2000) discussing the foundational point of proof theory, Bernays (1976) as presenting crucial aspects of an informed philosophy of mathematics, and (Sieg 2013) as explicating (the context for) his *reductive structuralism*.

Back to proof theory: We have to admit that we neglected some classical topics. One is the study of different proof systems and their relationships going back to Gentzen’s dissertation (1935). In their *Basic Proof Theory*, Troelstra and Schwichtenberg (2000) give an excellent selection, but some important calculi such as the Schütte proof systems are not covered (see, for example, Schütte 1960b, 1977). They also do not cover proof systems for temporal and modal logic, neither are substructural logics presented.\[[33][70]\]

A second omission concerns Bounded Arithmetic, where feasibility issues are a central focus: one studies formal theories with provably recursive functions that form very small subclasses of the primitive recursive ones. Indeed, the class of the provably total functions of Buss’ base theory is that of functions that can be computed in polynomial time, and there was the hope that proof theoretic investigations might contribute novel results in complexity theory. A third omission concerns proof mining; that line of deep mathematical investigations using proof theoretic tools was initiated by Kreisel (1958, 1982) and Luckhardt (1989), but really perfected only by Kohlenbach (2007). We hinted at the work of his school at the very end of [section 4.1][71].

Proof theory, as we described it, deals primarily with formal proofs or derivations. Hilbert aimed, however, as we pointed out in [section 1][72], for a more general analysis of ordinary, informal mathematical proofs. For Gentzen in his 1936, “the objects of proof theory shall be the *proofs* carried out in mathematics proper” (p. 499). The aim of Hilbert and his collaborators was undoubtedly to achieve a deeper mathematical and conceptual understanding, but also to find general methods of proof construction in formal calculi. This is now being pursued in the very active area of using powerful computers for the interactive verification of proofs and programs as well as the fully automated search for proofs of mathematical theorems.\[[34][73]\] That can be pursued with a cognitive scientific purpose of modeling mathematical reasoning (see Sieg 2010 and Ganesalingam & Gowers 2017). It is clearly in the spirit of Hilbert who articulated matters in his second Hamburg talk of 1927 as follows:

> The formula game … has, besides its mathematical value, an important general philosophical significance. For this formula game is carried out according to certain definite rules, in which the technique of our thinking is expressed. These rules form a closed system that can be discovered and definitively stated.

Then he continues with a provocative statement about the cognitive goal of proof theoretic investigations.

> The fundamental idea of my proof theory is none other than to describe the activity of our understanding, to make a protocol of the rules according to which our thinking actually proceeds. (Hilbert 1927 \[1967: 475\])

It is clear to us, and it was clear to Hilbert, that mathematical thinking does not proceed in the strictly regimented ways imposed by an austere formal theory. Though formal rigor is crucial, it is not sufficient to shape proofs intelligibly or to discover them efficiently, even in pure logic. Recalling the principle that mathematics should solve problems “by a minimum of blind calculation and a maximum of guiding thought”, we have to investigate the subtle interaction between understanding and reasoning, i.e., between introducing concepts and proving theorems.

[1]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-1
[2]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-2
[3]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-3
[4]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-4
[5]: https://plato.stanford.edu/entries/proof-theory/#NewLogiCalc
[6]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-5
[7]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-6
[8]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-3
[9]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-7
[10]: https://plato.stanford.edu/entries/proof-theory/appendix-a.html#GdelIncoResu
[11]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-8
[12]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-9
[13]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-10
[14]: https://plato.stanford.edu/entries/proof-theory/#HilbProgExte
[15]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-11
[16]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-12
[17]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-13
[18]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-14
[19]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-15
[20]: https://plato.stanford.edu/entries/proof-theory/#PredTheo
[21]: https://plato.stanford.edu/entries/proof-theory/#Def21
[22]: https://plato.stanford.edu/entries/proof-theory/#PO
[23]: https://plato.stanford.edu/entries/proof-theory/#GG
[24]: https://plato.stanford.edu/entries/proof-theory/#GG
[25]: https://plato.stanford.edu/entries/proof-theory/#InfiProo
[26]: https://plato.stanford.edu/entries/proof-theory/#DialInteGodeSpec
[27]: https://plato.stanford.edu/entries/proof-theory/#ConsFram
[28]: https://plato.stanford.edu/entries/proof-theory/#ImprSubsGeneInduDefi
[29]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-16
[30]: https://plato.stanford.edu/entries/proof-theory/#ImprSubsGeneInduDefi
[31]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-17
[32]: https://plato.stanford.edu/entries/proof-theory/appendix-c.html
[33]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-18
[34]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-19
[35]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-20
[36]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-21
[37]: https://plato.stanford.edu/entries/proof-theory/appendix-b.html
[38]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-22
[39]: https://plato.stanford.edu/entries/proof-theory/appendix-b.html
[40]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-23
[41]: https://plato.stanford.edu/entries/proof-theory/#PredTheo
[42]: https://plato.stanford.edu/entries/proof-theory/#reductionII
[43]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-24
[44]: https://plato.stanford.edu/entries/proof-theory/#TakeFundConj
[45]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-25
[46]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-26
[47]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-27
[48]: https://plato.stanford.edu/entries/proof-theory/#ord-pre
[49]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-28
[50]: https://plato.stanford.edu/entries/proof-theory/#ko
[51]: https://plato.stanford.edu/entries/proof-theory/#ord-pre
[52]: https://plato.stanford.edu/entries/proof-theory/appendix-c.html#BO
[53]: https://plato.stanford.edu/entries/proof-theory/#ord-pre
[54]: https://plato.stanford.edu/entries/proof-theory/#ord-pre
[55]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-29
[56]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-30
[57]: https://plato.stanford.edu/entries/proof-theory/#major-iter
[58]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-31
[59]: https://plato.stanford.edu/entries/proof-theory/appendix-d.html#admiss
[60]: https://plato.stanford.edu/entries/proof-theory/#ord-pre
[61]: https://plato.stanford.edu/entries/proof-theory/appendix-d.html
[62]: https://plato.stanford.edu/entries/proof-theory/appendix-d.html
[63]: https://plato.stanford.edu/entries/proof-theory/appendix-d.html
[64]: https://plato.stanford.edu/entries/proof-theory/appendix-e.html
[65]: https://plato.stanford.edu/entries/proof-theory/appendix-f.html
[66]: https://plato.stanford.edu/entries/proof-theory/appendix-e.html
[67]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-32
[68]: https://plato.stanford.edu/entries/proof-theory/appendix-a.html
[69]: https://plato.stanford.edu/entries/proof-theory/#ConsFram
[70]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-33
[71]: https://plato.stanford.edu/entries/proof-theory/#ConsFram
[72]: https://plato.stanford.edu/entries/proof-theory/#ProoTheoNewSubj
[73]: https://plato.stanford.edu/entries/proof-theory/notes.html#note-34
