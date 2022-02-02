---
downloaded:       2021-11-06
author:           Zach, Richard
page-url:         https://plato.stanford.edu/entries/epsilon-calculus/
page-title:       The Epsilon Calculus (Stanford Encyclopedia of Philosophy)
article-title:    The Epsilon Calculus
article-length:   35990
article-created:  {Date-Creation-yyyymmdd}
article-modified: {Date-Revision-yyyymmdd}
desc:             {description}
---
# The Epsilon Calculus (Stanford Encyclopedia of Philosophy)

The epsilon calculus is a logical formalism developed by David Hilbert
in the service of his program in the foundations of mathematics. The
epsilon operator is a term-forming operator which replaces quantifiers
in ordinary predicate logic. Specifically, in the calculus, a term
εxA denotes some x satisfying A(x), if there
is one. In Hilbert’s Program, the epsilon terms play the role of
ideal elements; the aim of Hilbert’s finitistic consistency
proofs is to give a procedure which removes such terms from a formal
proof. The procedures by which this is to be carried out are based on
Hilbert’s epsilon substitution method. The epsilon calculus,
however, has applications in other contexts as well. The first general
application of the epsilon calculus was in Hilbert’s epsilon
theorems, which in turn provide the basis for the first correct proof
of Herbrand’s theorem. More recently, variants of the epsilon
operator have been applied in linguistics and linguistic philosophy to
deal with anaphoric pronouns.
The epsilon calculus is a logical formalism developed by David Hilbert in the service of his program in the foundations of mathematics. The epsilon operator is a term-forming operator which replaces quantifiers in ordinary predicate logic. Specifically, in the calculus, a term εxA denotes some x satisfying A(x), if there is one. In Hilbert’s Program, the epsilon terms play the role of ideal elements; the aim of Hilbert’s finitistic consistency proofs is to give a procedure which removes such terms from a formal proof. The procedures by which this is to be carried out are based on Hilbert’s epsilon substitution method. The epsilon calculus, however, has applications in other contexts as well. The first general application of the epsilon calculus was in Hilbert’s epsilon theorems, which in turn provide the basis for the first correct proof of Herbrand’s theorem. More recently, variants of the epsilon operator have been applied in linguistics and linguistic philosophy to deal with anaphoric pronouns.

## 1\. Overview

By the turn of the century David Hilbert and Henri Poincaré were recognized as the two most important mathematicians of their generation. Hilbert’s range of mathematical interests was broad, and included an interest in the foundations of mathematics: his *Foundations of Geometry* was published in 1899, and of the list of questions posed to the International Congress of Mathematicians in 1900, three addressed distinctly foundational issues.

Following the publication of Russell’s paradox, Hilbert presented an address to the Third International Congress of Mathematicians in 1904, where, for the first time, he sketched his plan to provide a rigorous foundation for mathematics via syntactic consistency proofs. But he did not return to the subject in earnest until 1917, when he began a series of lectures on the foundations of mathematics with the assistance of Paul Bernays. Although Hilbert was impressed by the work of Russell and Whitehead in their *Principia Mathematica*, he became convinced that the logicist attempt to reduce mathematics to logic could not succeed, due in particular to the non-logical character of their axiom of reducibility. At the same time, he judged the intuitionistic rejection of the law of the excluded middle as unacceptable to mathematics. Therefore, in order to counter concerns raised by the discovery of the logical and set-theoretic paradoxes, a new approach was needed to justify modern mathematical methods.

By the summer of 1920, Hilbert had formulated such an approach. First, modern mathematical methods were to be represented in formal deductive systems. Second, these formal systems were to be proved syntactically consistent, not by exhibiting a model or reducing their consistency to another system, but by a direct metamathematical argument of an explicit, “finitary” character. The approach became known as [Hilbert's program][1]. The epsilon calculus was to provide the first component of this program, while his epsilon substitution method was to provide the second.

The epsilon calculus is, in its most basic form, an extension of first-order predicate logic with an “epsilon operation” that picks out, for any true existential formula, a witness to the existential quantifier. The extension is conservative in the sense that it does not add any new first-order consequences. But, conversely, quantifiers can be defined in terms of the epsilons, so first-order logic can be understood in terms of quantifier-free reasoning involving the epsilon operation. It is this latter feature that makes the calculus convenient for the purpose of proving consistency. Suitable extensions of the epsilon calculus make it possible to embed stronger, quantificational theories of numbers and sets in quantifier-free calculi. Hilbert expected that it would be possible to demonstrate the consistency of such extensions.

## 2\. The Epsilon Calculus

In his Hamburg lecture in 1921 (1922), Hilbert first presented the idea of using such an operation to deal with the principle of the excluded middle in a formal system for arithmetic. These ideas were developed into the epsilon calculus and the epsilon substitution method in a series of lecture courses between 1921 and 1923, and in Hilbert’s (1923). The final presentation of the epsilon-calculus can be found in Wilhelm Ackermann’s dissertation (1924).

This section will describe a version of the calculus corresponding to first-order logic, while extensions to first- and second-order arithmetic will be described below.

Let L be a first-order language, which is to say, a list of constant, function, and relation symbols with specified arities. The set of epsilon terms and the set of formulae of L are defined inductively, simultaneously, as follows:

-   Each constant of L is a term.
-   Each variable is a term.
-   If s and t are terms, then s\=t is a formula.
-   If s1,…,sk are terms and F is a k\-ary function symbol of L,F(s1,…,sk) is a term.
-   If s1,…,sk are terms and R is a k\-ary relation symbol of L,R(s1,…,sk) is a formula.
-   If A and B are formulae, so are A∧B,A∨B,A→B, and ¬A.
-   If A is a formula and x is a variable, εxA is a term.

Substitution and the notions of free and bound variable, are defined in the usual way; in particular, the variable x becomes bound in the term εxA. The intended interpretation is that εxA denotes *some* x satisfying A, if there is one. Thus, the epsilon terms are governed by the following axiom (Hilbert’s “transfinite axiom”): A(x)→A(εxA) In addition, the epsilon calculus includes a complete set of axioms governing the classical propositional connectives, and axioms governing the equality symbol. The only rules of the calculus are the following:

-   Modus ponens
-   Substitution: from A(x), conclude A(t), for any term t.

Earlier forms of the epsilon calculus (such as that presented in Hilbert 1923) use a dual form of the epsilon operator, in which εxA returns a value *falsifying* A(x). The version above was used in Ackermann’s dissertation (1924), and has become standard.

Note that the calculus just described is quantifier-free. Quantifiers can be *defined* as follows: ∃xA(x)≡A(εxA)∀xA(x)≡A(εx(¬A)) The usual quantifier axioms and rules can be derived from these, so the definitions above serve to embed first-order logic in the epsilon calculus. The converse is, however, not true: not every formula in the epsilon calculus is the image of an ordinary quantified formula under this embedding. Hence, the epsilon calculus is more expressive than the predicate calculus, simply because epsilon terms can be combined in more complex ways than quantifiers.

It is worth noting that epsilon terms are nondeterministic. For example, in a language with constant symbols a and b, εx(x\=a∨x\=b) is either a or b, but the calculus leaves it entirely open as to which is the case. One can add to the calculus a schema of *extensionality*, ∀x(A(x)↔B(x))→εxA\=εxB which asserts that the epsilon operator assigns the same witness to equivalent formulae A and B. For many applications, however, this additional schema is not necessary.

## 3\. The Epsilon Theorems

The second volume of Hilbert and Bernays’ *Grundlagen der Mathematik* (1939) provides an account of results on the epsilon-calculus that had been proved by that time. This includes a discussion of the first and second epsilon theorems with applications to first-order logic, the epsilon substitution method for arithmetic with open induction, and a development of analysis (that is, second-order arithmetic) with the epsilon calculus.

The first and second epsilon theorems are as follows:

__First epsilon theorem:__ Suppose Γ∪{A} is a set of quantifier-free formulae not involving the epsilon symbol. If A is derivable from Γ in the epsilon calculus, then A is derivable from Γ in quantifier-free predicate logic.

__Second epsilon theorem:__ Suppose Γ∪{A} is a set of formulae not involving the epsilon symbol. If A is derivable from Γ in the epsilon calculus, then A is derivable from Γ in predicate logic.

In the first epsilon theorem, “quantifier-free predicate logic” is intended to include the substitution rule above, so quantifier-free axioms behave like their universal closures. Since the epsilon calculus includes first-order logic, the first epsilon theorem implies that any detour through first-order predicate logic used to derive a quantifier-free theorem from quantifier-free axioms can ultimately be avoided. The second epsilon theorem shows that any detour through the epsilon calculus used to derive a theorem in the language of the predicate calculus from axioms in the language of the predicate calculus can also be avoided.

More generally, the first epsilon theorem establishes that quantifiers and epsilons can always be eliminated from a proof of a quantifier-free formula from other quantifier-free formulae. This is of particular importance for Hilbert’s program, since the epsilons play the role of ideal elements in mathematics. If quantifier-free formulae correspond to the “real” part of the mathematical theory, the first epsilon-theorem shows that ideal elements can be eliminated from proofs of real statements, provided the axioms are also real statements.

This idea is made precise in a certain general consistency theorem which Hilbert and Bernays derive from the first epsilon-theorem, which says the following: Let F be any formal system which results from the predicate calculus by addition of constant, function, and predicate symbols plus true axioms which are quantifier- and epsilon-free, and suppose the truth of atomic formulae in the new language is decidable. Then F is consistent in the strong sense that every derivable quantifier- and epsilon-free formula is true. Hilbert and Bernays use this theorem to give a finitary consistency proof of elementary geometry (1939, Sec 1.4).

The difficulty for giving consistency proofs for arithmetic and analysis consists in extending this result to cases where the axioms also contain ideal elements, i.e., epsilon terms.

*Further reading.* The original sources on the epsilon-calculus and the epsilon theorems (Ackermann 1924, Hilbert & Bernays 1939) remain available only in German. Leisenring 1969 is a relatively modern book-length introduction to the epsilon calculus in English. The first and second epsilon theorem are described in detail in Zach 2017. Moser & Zach 2006 give a detailed analysis for the case without equality. The original proofs are given for axiomatic presentations of the epsilon-calculus. Maehara 1955 was the first to consider sequent calculus with epsilon terms. He showed how to prove the second epsilon theorem using cut elimination, and then strengthened the theorem to include the schema of extensionality (Maehara 1957). Baaz et al. 2018 give an improved version of the first epsilon theorem. Corrections to errors in the literature (including Leisenring’s book) can be found in Flannagan 1975; Ferrari 1987; and Yasuhara 1982. A variation of the epsilon calculus based on Skolem functions, and therefore compatible with first-order logic, is discussed in Davis & Fechter 1991.

## 4\. Herbrand’s Theorem

Hilbert and Bernays used the methods of the epsilon calculus to establish theorems about first order logic that make no reference to the epsilon calculus itself. One such example is *Herbrand’s theorem* (Herbrand 1930; see Buss 1995, Girard 1982, and section 2.5 of Buss 1998). This is often formulated as the statement that if an existential formula ∃x1…∃xkA(x1,…,xk) is derivable in first-order predicate logic (without equality), where A is quantifier-free, then there are sequences of terms t11,…,tk1,…,t1n,…,tkn, such that A(t11,…,tk1)∨…∨A(t1n,…,tkn) is a tautology. If one is dealing with first-order logic *with* equality, one has to replace “tautology” by “tautological consequence of substitution instances of the equality axioms”; we will use the term “quasi-tautology” to describe such a formula.

The version of Herbrand’s theorem just described follows immediately from the *Extended First Epsilon Theorem* of Hilbert and Bernays. Using methods associated with the proof of the second epsilon theorem, however, Hilbert and Bernays derived a stronger result that, like Herbrand’s original formulation, provides more information. To understand the two parts of the theorem below, it helps to consider a particular example. Let A be the formula

∃x1∀x2∃x3∀x4B(x1,x2,x3,x4) where B is quantifier-free. The negation of A is equivalent to ∀x1∃x2∀x3∃x4¬B(x1,x2,x3,x4). By Skolemizing, i.e., using function symbols to witness the existential quantifiers, we obtain ∃f2,f4∀x1,x3¬B(x1,f2(x1),x3,f4(x1,x3)). Taking the negation of this, we see that the original formula is “equivalent” to ∀f2,f4∃x1,x3B(x1,f2(x1),x3,f4(x1,x3)).

The first clause of the theorem below, in this particular instance, says that the formula A above is derivable in first-order logic if and only if there is a sequence of terms t11,t31,…,t1n,t3n in the expanded language with f2 and f4 such that B(t11,f2(t11),t31,f4(t11,t31))∨…∨B(t1n,f2(t1n),t3n,f4(t1n,t3n)) is a quasi-tautology.

The second clause of the theorem below, in this particular instance, says that the formula A above is derivable in first-order logic if and only if there are sequences of variables x21,x41,…,x2n,x4n and terms s11,s31,…,s1n,s3n in the *original language* such that B(s11,x21,s31,x41)∨…∨B(s1n,x2n,s3n,x4n) is a quasi-tautology, and such that A is derivable from this formula using only the quantifier and idempotency rules described below.

More generally, suppose A is any prenex formula, of the form Q1x1…QnxnB(x1,…,xn), where B is quantifier-free. Then B is said to be the *matrix* of A, and an *instance of* B is obtained by substituting terms in the language of B for some of its variables. The *Herbrand normal form* AH of A is obtained by

-   deleting each universal quantifier, and
-   replacing each universally quantified variable xi by fi(xi1,…,xik(i)), where xi1,…,xik(i) are the variables corresponding to the existential quantifiers preceding Qi in A (in order), and fi is a new function symbol designated for this role.

When we refer to an *instance* of the matrix of AH, we mean a formula that is obtained by substituting terms in the expanded language in the matrix of AH. We can now state Hilbert and Bernays’s formulation of

__Herbrand’s theorem.__ (1) A prenex formula A is derivable in the predicate calculus if and only if there is a disjunction of instances of the matrix of AH which is a quasi-tautology.

(2) A prenex formula A is derivable in the predicate calculus if and only if there is a disjunction ⋁jBj of instances of the matrix of A, such that ⋁jBj is a quasi-tautology, and A is derivable from ⋁jBj using the following rules:

-   from C1∨…∨Ci(t)∨…∨Cm  
    conclude C1∨…∨∃xCi(x)∨…∨Cm and
-   from C1∨…∨Ci(x)∨…∨Cm  
    conclude C1∨…∨∀xCi(x)∨…∨Cm (if x not in Cj for j≠i),

as well as the idempotence of ∨ (from C∨C∨D conclude C∨D).

Herbrand’s theorem can also be obtained by using cut elimination, via Gentzen’s “midsequent theorem.” However, the proof using the second epsilon theorem has the distinction of being the first complete and correct proof of Herbrand’s theorem. Moreover, and this is seldom recognized, whereas the proof based on cut-elimination provides a bound on the length of the Herbrand disjunction only as a function of the cut rank and complexity of the cut formulas in the proof, the length obtained from the proof based on the epsilon calculus provides a bound as a function of the number of applications of the transfinite axiom, and the rank and degree of the epsilon-terms occurring therein. In other words, the length of the Herbrand disjunction depends only on the quantificational complexity of the substitutions involved, and, e.g., not at all on the propositional structure or the length of the proof.

The version of Herbrand’s theorem stated at the beginning of this section is essentially the special case of (2) in which the formula A is existential. In light of this special case, (1) is equivalent to the assertion that a formula A is derivable in first-order predicate logic if and only if AH is. The forward direction of this equivalence is much easier to prove; in fact, for any formula A,A→AH is derivable in predicate logic. Proving the reverse direction involves eliminating the additional function symbols in AH, and is much more difficult, especially in the presence of equality. It is here that epsilon methods play a central role.

Given a prenex formula, the *Skolem normal form* AS is defined dually to AH, i.e., by replacing existentially quantified variables by witnessing functions. If Γ is a set of prenex sentences, let ΓS denote the set of their Skolem normal forms. Using the deduction theorem and Herbrand’s theorem, it is not hard to show that the following are pairwise equivalent: Γ proves AΓ proves AHΓS proves AΓS proves AH

A striking application of Herbrand's theorem and related methods is found in Luckhardt's (1989) analysis of Roth's theorem. For a discussion of useful extensions of Herbrand's methods, see Sieg 1991. A model-theoretic version of this is discussed in Avigad 2002a.

## 5\. The Epsilon Substitution Method and Arithmetic

As noted above, historically, the primary interest in the epsilon calculus was as a means to obtaining consistency proofs. Hilbert’s lectures from 1917–1918 already note that one can easily prove the consistency of propositional logic, by taking propositional variables and formulae to range over truth values 0 and 1, and interpreting the logical connectives as the corresponding arithmetic operations. Similarly, one can prove the consistency of predicate logic (or the pure epsilon calculus), by specializing to interpretations where the universe of discourse has a single element. These considerations suggest the following more general program for proving consistency:

-   Extend the epsilon calculus in such a way as to represent larger portions of mathematics.
-   Show, using finitary methods, that each proof in the extended system has a consistent interpretation.

For example, consider the language of arithmetic, with symbols for 0, 1, +, ×, <. Along with quantifier-free axioms defining the basic symbols, one can specify that the epsilon terms εxA(x) picks out the least value satisfying A, if there is one, with the following axiom: (\*)A(x)→A(εxA(x))∧εxA(x)≤x The result is a system that is strong enough to interpret first-order (Peano) arithmetic. Alternatively, one can take the epsilon symbol to satisfy the following axiom: A(y)→A(εxA(x))∧εxA(x)≠y+1.

In other words, if there is any witness y satisfying A(y), the epsilon term returns a value whose predecessor does not have the same property. Clearly the epsilon term described by (\*) satisfies the alternative axiom; conversely, one can check that given A, a value of εx(∃z≤xA(x)) satisfying the alternative axiom can be used to interpret εxA(x) in (\*). One can further fix the meaning of the epsilon term with the axiom εxA(x)≠0→A(εxA(x)) which requires that if there is no witness to A, the epsilon term return 0. For the discussion below, however, it is most convenient to focus on (\*) alone.

Suppose we wish to show that the system above is consistent; in other words, we wish to show that there is no proof of the formula 0\=1. By pushing all substitutions to the axioms and replacing free variables by the constant 0, it suffices to show that there is no propositional proof of 0\=1 from a finite set of closed instances of the axioms. For that, it suffices to show that, given any finite set of closed instances of axioms, one can assign numerical values to terms in such a way that all the axioms are true under the interpretation. Since the arithmetical operations + and × can be interpreted in the usual way, the only difficulty lies in finding appropriate values to assign to the epsilon terms.

Hilbert’s *epsilon substitution method* can be described, roughly, as follows:

-   Given a finite set of axioms, start by interpreting all epsilon terms as 0.
-   Find an instance of the axiom (\*) above that is false under the interpretation. This can only happen if one has a term t such that A(t) is true in the interpretation, but either A(εxA(x)) is false or the value of t is smaller than the value of εxA(x).
-   “Repair” the assignment by assigning to εxA(x) the value of t, and repeat the process.

A finitary consistency proof is obtained once it is shown in a finitarily acceptable manner that this process of successive “repairs” terminates. If it does, all critical formulas are true formulas without epsilon-terms.

This basic idea (the “Hilbertsche Ansatz”) was set out first by Hilbert in his 1922 talk (1923), and elaborated in lectures in 1922–23. The examples given there, however, only deal with proofs in which all instances of the transfinite axiom correspond to a single epsilon term εxA(x). The challenge was to extend the approach to more than one epsilon term, to nested epsilon terms, and ultimately to second-order epsilons (in order to obtain a consistency proof not just of arithmetic, but of analysis).

The difficulty in dealing with nested epsilon terms can be described as follows. Suppose one of the axioms in the proof is the transfinite axiom B(y)→B(εyB(y)) εyB(y) may, of course, occur in other formulae in the proof, in particular in other transfinite axioms, e.g., A(x,εyB(y))→A(εxA(x,εyB(y)),εyB(y)) So first, it seems necessary to find a correct interpretation for εyB(y) before we attempt to find one for εxA(x,εyB(y)). However, there are more complicated patterns in which epsilon terms may occur in a proof. An instance of the axiom, which plays a role in determining the correct interpretation for εyB(y) might be B(εxA(x,εyB(y)))→B(εyB(y)) If B(0) is false, then in the first round of the procedure εyB(y) will be interpreted by 0. A subsequent change of the interpretation of εxA(x,0) from 0 to, say, n, will result in an interpretation of this instance as B(n)→B(0) which will be false if B(n) is true. So the interpretation of εyB(y) will have to be corrected to n, which, in turn, might result in the interpretation of εxA(x,εyB(y)) to no longer be a true formula.

This is just a sketch of the difficulties involved in extending Hilbert’s idea to the general case. Ackermann (1924) provided such a generalization using a procedure which “backtracks” whenever a new interpretation at a given stage results in the need to correct an interpretation already found at a previous stage.

Ackermann’s procedure applied to a system of second-order arithmetic, in which, however, second order terms were restricted so as to exclude cross-binding of second-order epsilons. This amounts, roughly, to a restriction to arithmetic comprehension as the set-forming principle available (see the discussion at the end of this section). Further difficulties with second-order epsilon terms surfaced, and it quickly became apparent that the proof as it stood was fallacious. However, no one in Hilbert’s school realized the extent of the difficulty until 1930, when Gödel announced his incompleteness results. Until then, it was believed that the proof (at least with some modifications introduced by Ackermann, some of which involved ideas from von Neumann’s (1927) version of the epsilon substitution method) would go through at least for the first-order part. Hilbert and Bernays (1939) suggest that the methods used only provides a consistency proof for first-order arithmetic with open induction. In 1936, Gerhard Gentzen succeeded in giving a proof of the consistency of first-order arithmetic in a formulation based on predicate logic without the epsilon symbol. This proof uses transfinite induction up to ε0. Ackermann (1940) was later able to adapt Gentzen’s ideas to give a correct consistency proof of first-order arithmetic using the epsilon-substitution method.

Even though Ackermann’s attempts at a consistency proof for second-order arithmetic were unsuccessful, they provided a clearer understanding of the use of second-order epsilon terms in the formalization of mathematics. Ackermann used second-order epsilon terms εf A(f), where f is a function variable. In analogy with the first-order case, εf A(f) is a function for which A(f) is true, e.g., εf(x+f(x)\=2x) is the identity function f(x)\=x. Again in analogy with the first-order case, one can use second-order epsilons to interpret second-order quantifiers. In particular, for any second-order formula A(x) one can find a term t(x) such that A(x)↔t(x)\=1 is derivable in the calculus (the formula A may have other free variables, in which case these appear in the term t as well). One can then use this fact to interpret *comprehension* principles. In a language with function symbols, these take the form ∃f∀x(A(x)↔f(x)\=1) for an arbitrary formula A(x). Comprehension is more commonly expressed in terms of set variables, in which case it takes the form ∃Y∀x(A(x)↔x∈Y), asserting that every second order formula, with parameters, defines a set.

[*Analysis*][2], or *second-order arithmetic*, is the extension of first-order arithmetic with the comprehension schema for arbitrary second-order formulae. The theory is *impredicative* in that it allows one to define sets of natural numbers using quantifiers that range over the entire universe of sets, including, implicitly, the set being defined. One can obtain *predicative* fragments of this theory by restricting the type of formulae allowed in the comprehension axiom. For example, the restriction discussed in connection with Ackermann above corresponds to the *arithmetic comprehension schema*, in which formulae do not involve second-order quantifiers. There are various ways of obtaining stronger fragments of analysis that are nonetheless predicatively justified. For example, one obtains *ramified analysis* by associating an ordinal rank to set variables; roughly, in the definition of a set of a given rank, quantifiers range only over sets of lower rank, i.e., those whose definitions are logically prior.

*Further Reading*. Hilbert’s and Ackermann’s early proofs are discussed in Zach 2003; 2004. Von Neumann’s proof is the topic of Bellotti 2016. Ackermann’s 1940 proof is discussed in Hilbert & Bernays 1970, and Wang 1963. A modern presentation is given by Moser 2006. An early application of epsilon substitution is the no-counterexample interpretation (Kreisel 1951).

## 6\. More Recent Developments

In this section we discuss the development of the epsilon-substitution method for obtaining consistency results for strong systems; these results are of a mathematical nature. We cannot, unfortunately, discuss the details of the proofs here but would like to indicate that the epsilon-substitution method did not die with Hilbert’s program, and that a significant amount of current research is carried out in epsilon-formalisms.

[Gentzen’s consistency proofs for arithmetic][3] launched a field of research known as *ordinal analysis*, and the program of measuring the strength of mathematical theories using ordinal notations is still pursued today. This is particularly relevant to the *extended Hilbert’s program*, where the goal is to justify classical mathematics relative to constructive, or quasi-constructive, systems. Gentzen’s methods of cut-elimination (and extensions to infinitary logic developed by Paul Lorentzen, Petr Novikov, and Kurt Schütte) have, in large part, supplanted epsilon substitution methods in these pursuits. But epsilon calculus methods provide an alternative approach, and there is still active research on ways to extend Hilbert-Ackermann methods to stronger theories. The general pattern remains the same:

1.  Embed the theory under investigation in an appropriate epsilon calculus.
2.  Describe a process for updating assignments to the epsilon terms.
3.  Show that the procedure is normalizing, i.e., given any set of terms, there is a sequence of updates that results in an assignment that satisfies the axioms.

Since the last step guarantees the consistency of the original theory, from a foundational point of view one is interested in the methods used to prove normalization. For example, one obtains an *ordinal analysis* by assigning ordinal notations to steps in the procedure, in such a way that the value of a notation decreases with each step.

In the 1960’s, Tait (1960, 1965, 2010) extended Ackermann’s methods to obtain an ordinal analysis of extensions of arithmetic with principles of transfinite induction. More streamlined and modern versions of this approach can be found in Mints 2001 and Avigad 2002b. More recently, Mints, Tupailo, and Buchholz have considered stronger, yet still predicatively justifiable, fragments of analysis, including theories of arithmetic comprehension and a Δ11\-comprehension rule (Mints, Tupailo & Buchholz 1996; Mints & Tupailo 1999; see also Mints 2016). Arai 2002 has extended the epsilon substitution method to theories that allow one to iterate arithmetic comprehension along primitive recursive well orderings. In particular, his work yields ordinal analyses for predicative fragments of analysis involving transfinite hierarchies and transfinite induction.

Some first steps have been taken in using the epsilon substitution method in the analysis of *impredicative* theories (see Arai 2003, 2006 and Mints 2015).

A variation on step 3 above involves showing that the normalization procedure is not sensitive to the choice of updates, which is to say, *any* sequence of updates terminates. This is called *strong normalization.* Mints 1996 has shown that many of the procedures considered have this stronger property.

In addition to the traditional, foundational branch of proof theory, today there is a good deal of interest in *structural proof theory*, a branch of the subject that focuses on logical deductive calculi and their properties. This research is closely linked with issues relevant to computer science, having to do with automated deduction, functional programming, and computer aided verification. Here, too, Gentzen-style methods tend to dominate (see again the [entry on proof theory][4]). But the epsilon calculus can also provide valuable insights; cf. for example Aguilera & Baaz 2019, or the discussion of Herbrand’s theorem above.

Aside from the investigations of the epsilon calculus in proof theory, two applications should be mentioned. One is the use of epsilon notation in Bourbaki’s *Theorie des ensembles* (1958). The second, of perhaps greater current interest, is the use of the epsilon-operator in the theorem-proving systems [HOL][5] and [Isabelle][6], where the expressive power of epsilon-terms yields significant practical advantages.

## 7\. Epsilon Operators in Linguistics, Philosophy, and Non-classical Logics

Reading the epsilon operator as an indefinite choice operator (“an x such that A(x)”) suggests that it might be a useful tool in the analysis of indefinite and definite noun phrases in formal semantics. The epsilon notation has in fact been so used, and this application has proved useful in particular in dealing with anaphoric reference.

Consider the familiar example

1.  Every farmer who owns a donkey beats it.

The generally accepted analysis of this sentence is given by the universal sentence

1.  ∀x∀y(Farmer(x)∧Donkey(y)∧Owns(x,y))→Beats(x,y))

The drawback is that “a donkey” suggest an existential quantifier, and thus the analysis should, somehow, parallel in form the analysis of sentence 3 given by 4:

1.  Every farmer who owns a donkey is happy,
2.  ∀x(Farmer(x)∧∃y(Donkey(y)∧Owns(x,y))→Happy(x)),

but the closest possible formalization,

1.  ∀x((Farmer(x)∧∃y(Donkey(y)∧Owns(x,y))→Beats(x,y))

contains a free occurrence of y. Evans 1980 suggests that since pronouns are referring expressions, they should be analyzed as definite descriptions; and if the pronoun occurs in the consequent of a conditional, the descriptive conditions are determined by the antecedent. This leads to the following E-type analysis of (1): ∀x((Farmer(x)∧∃y(Donkey(y)∧Owns(x,y))→(Beats(x,ιy(Donkey(y)∧Owns(x,y))) Here, ιx is the definite description operator, so ιy(Donkey(y)∧Owns(x,y)) is “the donkey owned by x;”. The trouble with this is that on the standard analysis, the definite description carries a uniqueness condition, and so (5) will be false if there is a farmer who owns more than one donkey. A way out of this is to introduce a new operator, whe (whoever, whatever) which works as a generalizing quantifier (Neale, 1990): ∀x((Farmer(x)∧∃y(Donkey(y)∧Owns(x,y))→(Beats(x,whey(Donkey(y)∧Owns(x,y)))

As pointed out by von Heusinger (1994), this suggests that Neale is committed to pronouns being ambiguous between definite descriptions (ι\-expressions) and whe-expressions. Heusinger suggests instead to use epsilon operators indexed by choice functions (which depend on the context). According to this approach, the analysis of (1) is

> For every choice function i: ∀x((Farmer(x)∧Owns(x,εiyDonkey(y))→Beats(x,εa∗yDonkey(y))

Here a∗ is a choice function which depends on i and the antecedent of the conditional: If i is a choice function which selects εiyDonkey(y) from the set of all donkeys, then εa∗yDonkey(y) selects from the set of donkeys owned by x.

This approach to dealing with pronouns using epsilon operators indexed by choice functions enable von Heusinger to deal with a wide variety of circumstances (see Egli and von Heusinger, 1995; von Heusinger, 2000).

Applications of the epsilon-operator in formal semantics, and choice functions in general, have received significant interest in recent years.  Von Heusinger and Egli (2000a) list, among others, the following: representations of questions (Reinhart, 1992), specific indefinites (Reinhart 1992; 1997; Winter 1997), E-type pronouns (Hintikka and Kulas 1985; Slater 1986; Chierchia 1992, Egli and von Heusinger 1995) and definite noun phrases (von Heusinger 1997, 2004).

For discussion of the issues and applications of the epsilon operator in linguistics and philosophy of language, see B. H. Slater’s article on epsilon calculi (cited in the Other Internet Resources section below), and the collections von Heusinger and Egli 2000 and von Heusinger and Kempson 2004.

Another application of epsilon calculus is as a general logic for reasoning about arbitrary objects. Meyer Viol (1995a) provides a comparison of the epsilon calculus with Fine’s (1985) theory of arbitrary objects. Indeed, the connection is not hard to see. Given the equivalence ∀xA(x)≡ A(εx(¬A)), the term εx(¬A) is an arbitrary object in the sense that it is an object of which A is true iff A is true generally.

Meyer Viol (1995a, 1995b) contain further proof- and model-theoretic studies of the epsilon calculus; specifically intuitionistic epsilon calculi.  Here, the epsilon theorems no longer hold, i.e., introduction of epsilon terms produces non-conservative extensions of intuitionistic logic. Other investigations of epsilon operators in intuitionistic logic can be found in Shirai (1971), Bell (1993a, 1993b) and DeVidi (1995). For epsilon-operators in many-valued logics, see Mostowski (1963), for modal epsilon calculus, Fitting (1975).

*Further Reading*. The following is a list of some publications in the area of language and linguistics of relevance to the epsilon calculus and its applications. The reader is directed in particular to the collections von Heusinger & Egli (eds.) 2000 and von Heusinger & Kempson (eds.) 2004 for further discussion and references: Bell 1993a, 1993b; Chierchia 1992; DeVidi 1995;Egli & von Heusinger 1995; Fine 1985; Fitting 1975; von Heusinger 1994, 1997, 2000, 2004; von Heusinger & Egli (eds.) 2000; von Heusinger & Kempson (eds.) 2004; Hintikka & Kulas 1985; Kempson, Meyer Viol, & Gabbay 2001; Meyer Viol 1995a, 1995b, Neale 1990; Mostowski 1963; Reinhart 1992, 1997; Slater 1986, 1988, 1994, 2000; and Winter 1997.

[1]: https://plato.stanford.edu/entries/hilbert-program/
[2]: https://plato.stanford.edu/entries/proof-theory/#BeyoAritSubsBZ2
[3]: https://plato.stanford.edu/entries/proof-theory/#GentConsProo
[4]: https://plato.stanford.edu/entries/proof-theory/
[5]: http://www.cl.cam.ac.uk/Research/HVG/HOL/
[6]: http://www.cl.cam.ac.uk/Research/HVG/Isabelle/
