---
downloaded:       2021-12-25
page-url:         https://plato.stanford.edu/entries/logic-intuitionistic/
page-title:       Intuitionistic Logic (Stanford Encyclopedia of Philosophy)
article-title:    Intuitionistic Logic
---
# Intuitionistic Logic (Stanford Encyclopedia of Philosophy)

Intuitionistic logic can be succinctly described as classical logic
without the Aristotelian law of excluded middle:
## 1\. Rejection of *Tertium Non Datur*

Intuitionistic logic can be succinctly described as classical logic without the Aristotelian law of excluded middle:

A∨¬A

A∨¬A(LEM)

or the classical law of double negation elimination:

¬¬A→A

¬¬A→A(DNE)

but with the law of contradiction:

(A→B)→((A→¬B)→¬A)

(A→B)→((A→¬B)→¬A)

and *ex falso sequitur quodlibet*:

¬A→(A→B).

¬A→(A→B).

Brouwer \[1908\] observed that LEM was abstracted from finite situations, then extended without justification to statements about infinite collections. For example, let x,yx,y range over the natural numbers 0,1,2,…0,1,2,… and let B(y)B(y) abbreviate (prime(y)&prime(y+2))(prime(y)&prime(y+2)), where prime(y)prime(y) expresses “yy is a prime number.” Then ∀y(B(y)∨¬B(y))∀y(B(y)∨¬B(y)) holds intuitionistically as well as classically, because in order to determine whether or not a natural number is prime we need only check whether or not it has a divisor strictly between itself and 1.

But if A(x)A(x) abbreviates ∃y(y\>x&B(y))∃y(y\>x&B(y)), then in order to assert ∀x(A(x)∨¬A(x)) intuitionistically we would need an *effective* (cf. [the Church-Turing thesis][1]) method to determine whether or not there is a pair of twin primes larger than an arbitrary natural number x, and so far no such method is known. An obvious *semi-effective* method is to list the prime number pairs using a refinement of Eratosthenes’ sieve (generating the natural numbers one by one and striking out every number y which fails to satisfy B(y)), and if there is a pair of twin primes larger than x this method will eventually find the first one. However, ∀xA(x) expresses the Twin Primes Conjecture, which has not yet been proved or disproved, so in the present state of our knowledge we can assert neither ∀x(A(x)∨¬A(x)) nor ∀xA(x)∨¬∀xA(x).

One may object that these examples depend on the fact that the Twin Primes Conjecture has not yet been settled. A number of Brouwer’s original “counterexamples” depended on problems (such as Fermat’s Last Theorem) which have since been solved. But to Brouwer the general LEM was equivalent to the *a priori* assumption that *every* mathematical problem has a solution—an assumption he rejected, anticipating Gödel’s incompleteness theorem by a quarter of a century.

The rejection of LEM has far-reaching consequences. On the one hand,

-   Intuitionistically, *reductio ad absurdum* only proves *negative* statements, since ¬¬A→A does not hold in general. (If it did, LEM would follow by *modus ponens* from the intuitionistically provable ¬¬(A∨¬A).)
-   Intuitionistic propositional logic does not have a finite truth-table interpretation. There are infinitely many distinct axiomatic systems between intuitionistic and classical logic.
-   Not every propositional formula has an intuitionistically equivalent disjunctive or conjunctive normal form, built from prime formulas and their negations using only ∨ and &.
-   Not every predicate formula has an intuitionistically equivalent prenex normal form, with all the quantifiers at the front.
-   While ∀x¬¬(A(x)∨¬A(x)) is a theorem of intuitionistic predicate logic, ¬¬∀x(A(x)∨¬A(x)) is not; so ¬∀x(A(x)∨¬A(x)) is consistent with intuitionistic predicate logic.

On the other hand,

-   Every intuitionistic proof of a closed statement of the form A∨B can be effectively transformed into an intuitionistic proof of A or an intuitionistic proof of B, and similarly for closed existential statements.
-   Intuitionistic propositional logic is effectively decidable, in the sense that a finite constructive process applies uniformly to every propositional formula, either producing an intuitionistic proof of the formula or demonstrating that no such proof can exist.
-   The negative fragment of intuitionistic logic (without ∨ or ∃) contains a faithful translation of classical logic, and similarly for intuitionistic and classical arithmetic.
-   Intuitionistic arithmetic can consistently be extended by axioms which contradict classical arithmetic, enabling the formal study of [recursive mathematics.][2]
-   Brouwer’s controversial [intuitionistic analysis,][3] which conflicts with LEM, can be formalized and shown consistent relative to a classically *and* intuitionistically correct subtheory.

## 2\. Intuitionistic First-Order Predicate Logic

Formalized intuitionistic logic is naturally motivated by the informal Brouwer-Heyting-Kolmogorov explanation of intuitionistic truth, outlined in the entries on [intuitionism in the philosophy of mathematics][4] and [the development of intuitionistic logic][5]. The constructive independence of the logical operations &,∨,→,¬,∀,∃ contrasts with the classical situation, where e.g., A∨B is equivalent to ¬(¬A&¬B), and ∃xA(x) is equivalent to ¬∀x¬A(x). From the B-H-K viewpoint, a sentence of the form A∨B asserts that either a proof of A, or a proof of B, has been constructed; while ¬(¬A&¬B) asserts that an algorithm has been constructed which would effectively convert any pair of constructions proving ¬A and ¬B respectively, into a proof of a known contradiction.

### 2.1 The formal systems H–IPC and H–IQC

Following is a Hilbert-style formalism H–IQC from Kleene \[1952\] (cf. Troelstra and van Dalen \[1988\]) for intuitionistic first-order predicate logic. The language L of H–IQC has predicate letters P,Q(.),… of all arities and individual variables x,y,z,… (with or without subscripts 1,2,…), as well as symbols &,∨,→,¬,∀,∃ for the logical connectives and quantifiers, and parentheses (, ). The *atomic* (or *prime*) *formulas* of L are expressions such as P,Q(x),R(x,y,x) where P,Q(.),R(...) are 0\-ary, 1\-ary and 3\-ary predicate letters respectively; that is, the result of filling each blank in a predicate letter by an individual variable symbol is a prime formula. The *(well-formed) formulas* of L are defined inductively as follows.

-   Each atomic formula is a *formula*.
-   If A and B are *formulas*, so are (A&B),(A∨B),(A→B) and ¬A.
-   If A is a *formula* and x is a variable, then ∀xA and ∃xA are *formulas*.

In general, we use A,B,C as metavariables for well-formed formulas and x,y,z as metavariables for individual variables. Anticipating applications (for example to intuitionistic arithmetic) we use s,t as metavariables for *terms*; in the case of pure predicate logic, terms are simply individual variables. An occurrence of a variable x in a formula A is *bound* if it is within the scope of a quantifier ∀x or ∃x, otherwise *free*. Intuitionistically as classically, (A↔B) abbreviates ((A→B)&(B→A)), and parentheses will be omitted when this causes no confusion.

There are three rules of inference:

*Modus Ponens*  
From A and A→B, conclude B.

*∀\-Introduction*  
From C→A(x), where x is a variable which does not occur free in C, conclude C→∀xA(x).

*∃\-Elimination*  
From A(x)→C, where x is a variable which does not occur free in C, conclude ∃xA(x)→C.

The axioms are all formulas of the following forms, where in the last two schemas the subformula A(t) is the result of substituting an occurrence of the term t for every free occurrence of x in A(x), and no variable free in t becomes bound in A(t) as a result of the substitution.

A→(B→A)(A→B)→((A→(B→C))→(A→C))A→(B→(A&B))(A&B)→A(A&B)→BA→(A∨B)B→(A∨B)(A→C)→((B→C)→((A∨B)→C))(A→B)→((A→¬B)→¬A)¬A→(A→B)∀xA(x)→A(t)A(t)→∃xA(x)

A *proof* is any finite sequence of formulas, each of which is an axiom or an immediate consequence, by a rule of inference, of (one or two) preceding formulas of the sequence. Any proof is said to *prove* its last formula, which is called a *theorem* or *provable formula* of first-order intuitionistic predicate logic. A *derivation of* a formula E *from* a collection F of *assumptions* is any sequence of formulas, each of which belongs to F or is an axiom or an immediate consequence, by a rule of inference, of preceding formulas of the sequence, such that E is the last formula of the sequence. If such a derivation exists, we say E is *derivable from* F.

Intuitionistic propositional logic H–IPC is the subsystem of H–IQC which results when the language is restricted to formulas built from proposition letters P,Q,R,… using the propositional connectives &,∨,→ and ¬, and only the propositional postulates are used. Thus the last two rules of inference and the last two axiom schemas are absent from the propositional subsystem.

If, in the given list of axiom schemas for intuitionistic propositional or first-order predicate logic, the law expressing *ex falso sequitur quodlibet*:

¬A→(A→B)

is replaced by the classical law of double negation elimination DNE:

¬¬A→A

(or, equivalently, if the intuitionistic law of negation introduction:

(A→B)→((A→¬B)→¬A)

is replaced by LEM), a formal system H–CPC for classical propositional logic or H–CQC for classical predicate logic results. Since *ex falso* and the law of contradiction are classical theorems, intuitionistic logic is contained in classical logic. In a sense, classical logic is also contained in intuitionistic logic; see Section 4.1 below.

It is important to note that while LEM and DNE are equivalent as *schemas* over H–IPC, the *implication*

(¬¬A→A)→(A∨¬A)

is not a theorem schema of H–IPC. For theories T based on intuitionistic logic, if E is an arbitrary formula of L(T) then by definition:

E is *decidable in* T if and only if T proves E∨¬E.

E is *stable in* T if and only if T proves ¬¬E→E.

E is *testable in* T if and only if T proves ¬E∨¬¬E.

Decidability implies stability, but not conversely. The conjunction of stability and testability is equivalent to decidability. Brouwer himself proved that “absurdity of absurdity of absurdity is equivalent to absurdity” (Brouwer \[1923C\]), so every formula of the form ¬A is stable; but in H–IPC and H–IQC prime formulas and their negations are undecidable, as shown in Section 5.1 below.

### 2.2 Alternative formalisms, and the deduction theorem

The Hilbert-style system H–IQC is useful for metamathematical investigations of intuitionistic logic, but its forced linearization of deductions and its preference for axioms over rules make it an awkward instrument for establishing derivability. A natural deduction system N–IQC for intuitionistic predicate logic results from the deductive system D, presented in Section 3 of the entry on [classical logic][6] in this Encyclopedia, by omitting the symbol and rules for identity, and replacing the classical rule (DNE) of double negation elimination by the intuitionistic negation elimination rule expressing *ex falso*:

-   (INE) If F entails A and F entails ¬A, then F entails B.

The keys to proving that H–IQC is equivalent to N–IQC are *modus ponens* and its converse, the:

**Deduction Theorem**  
If B is derivable from A and possibly other formulas F, with all variables free in A held constant in the derivation (that is, without using the second or third rule of inference on any variable x occurring free in A, unless the assumption A does not occur in the derivation before the inference in question), then A→B is derivable from F.

This fundamental result, roughly expressing the rule (→I) of I, can be proved for H–IQC by induction on the definition of a derivation. The other rules of I hold for H–IQC essentially by *modus ponens*, which corresponds to (→E) in N–IQC; and all the axioms of H–IQC are provable in N–IQC.

To illustrate the usefulness of the Deduction Theorem, consider the (apparently trivial) theorem schema (A→A). A correct proof in H–IPC takes five lines:

-   1. A→(A→A)
-   2. (A→(A→A))→((A→((A→A)→A))→(A→A))
-   3. (A→((A→A)→A))→(A→A)
-   4. A→((A→A)→A)
-   5. A→A

where 1, 2 and 4 are axioms and 3, 5 come from earlier lines by *modus ponens*. However, A is derivable from A (as assumption) in one obvious step, so the Deduction Theorem allows us to conclude that a proof of A→A exists. (In fact, the formal proof of A→A just presented is part of the constructive proof of the Deduction Theorem!)

It is important to note that, in the definition of a derivation from assumptions in H–IQC, the assumption formulas are treated as if all their free variables were universally quantified, so that ∀xA(x) is derivable from the hypothesis A(x). However, the variable x will be *varied* (not held constant) in that derivation, by use of the rule of ∀\-introduction; and so the Deduction Theorem cannot be used to conclude (falsely) that A(x)→∀xA(x) (and hence, by ∃\-elimination, ∃xA(x)→∀xA(x)) are provable in H–IQC. As an example of a correct use of the Deduction Theorem for predicate logic, consider the implication ∃xA(x)→¬∀x¬A(x). To show this is provable in H–IQC, we first derive ¬∀x¬A(x) from A(x) with all free variables held constant:

-   1. ∀x¬A(x)→¬A(x)
-   2. A(x)→(∀x¬A(x)→A(x))
-   3. A(x) (assumption)
-   4. ∀x¬A(x)→A(x)
-   5. (∀x¬A(x)→A(x))→((∀x¬A(x)→¬A(x))→¬∀x¬A(x))
-   6. (∀x¬A(x)→¬A(x))→¬∀x¬A(x)
-   7. ¬∀x¬A(x)

Here 1, 2 and 5 are axioms; 4 comes from 2 and 3 by *modus ponens*; and 6 and 7 come from earlier lines by *modus ponens*; so no variables have been varied. The Deduction Theorem tells us there is a proof P in H–IQC of A(x)→¬∀x¬A(x), and one application of ∃\-*elimination* converts P into a proof of ∃xA(x)→¬∀x¬A(x). The converse is not provable in H–IQC, as shown in Section 5.1 below.

Other important alternatives to H–IQC and N–IQC are the various sequent calculi for intuitionistic propositional and predicate logic. The first such calculus was defined by Gentzen \[1934–5\], cf. Kleene \[1952\]. Sequent systems, which prove exactly the same formulas as H–IQC and N–IQC, keep track explicitly of all assumptions and conclusions at each step of a proof, replacing *modus ponens* (which eliminates an intermediate formula) by a *cut rule* (which can be shown to be an admissible rule (cf. Section 4.2) for the subsystem remaining when it is omitted).

When the details of the formalism are not important, from now on we follow Troelstra and van Dalen \[1988\] in letting “IQC” or “IPC” refer to any formal system for intuitionistic predicate or propositional logic respectively, and similarly “CQC” and “CPC” for classical predicate and propositional logic.

Both IPC and IQC satisfy *interpolation theorems*, e.g.: If A and B are propositional formulas having at least one proposition letter in common, and if A→B is provable in IPC, then there is a formula C, containing only proposition letters which occur in both A and B, such that both A→C and C→B are provable. These topics are treated in Kleene \[1952\] and Troelstra and Schwichtenberg \[2000\].

While identity can of course be added to intuitionistic logic, for applications (e.g., to arithmetic) the equality symbol is generally treated as a distinguished predicate constant satisfying the axioms for an equivalence relation (reflexivity, symmetry and transitivity) and additional nonlogical axioms (e.g., the primitive recursive definitions of addition and multiplication). Identity is decidable, intuitionistically as well as classically, but intuitionistic extensional equality is not always decidable; see the discussion of Brouwer’s continuity axioms in Section 3 of the entry on [intuitionism in the philosophy of mathematics][7].

## 3\. Intuitionistic Number Theory (Heyting Arithmetic) HA

Intuitionistic (Heyting) arithmetic HA and classical (Peano) arithmetic PA share the same first-order language and the same non-logical axioms; only the logic is different. In addition to the logical connectives, quantifiers and parentheses and the individual variables x,y,z,… (also used as metavariables), the language L(HA) of arithmetic has a binary predicate symbol \=, individual constant 0, unary function constant S, and finitely or countably infinitely many additional constants for primitive recursive functions including addition and multiplication; the precise choice is a matter of taste and convenience. *Terms* are built from variables and 0 using the function constants; in particular, each natural number n is expressed in the language by the *numeral* n obtained by applying S n times to 0 (e.g., S(S(0)) is the numeral for 2). *Prime formulas* are of the form (s\=t) where s,t are terms, and *compound formulas* are obtained from these as usual.

The logical axioms and rules of HA are those of first-order intuitionistic predicate logic IQC. The nonlogical axioms include the reflexive, symmetric and transitive properties of \=: ∀x(x\=x),

∀x∀y(x\=y→y\=x),

∀x∀y∀z((x\=y&y\=z)→x\=z);

the axiom characterizing 0 as the least natural number:

∀x¬(S(x)\=0),

the axiom characterizing S as a one-to-one function:

∀x∀y(S(x)\=S(y)→x\=y),

the extensional equality axiom for S:

∀x∀y(x\=y→S(x)\=S(y));

the primitive recursive defining equations for each function constant, in particular for addition: ∀x(x+0\=x),

∀x∀y(x+S(y)\=S(x+y));

and multiplication: ∀x(x⋅0\=0),

∀x∀y(x⋅S(y)\=(x⋅y)+x);

and the (universal closure of the) schema of mathematical induction, for arbitrary formulas A(x):

(A(0)&∀x(A(x)→A(S(x))))→∀xA(x).

Extensional equality axioms for all function constants are derivable by mathematical induction from the equality axiom for S and the primitive recursive function axioms.

The natural order relation x<y can be defined in HA by ∃z(S(z)+x\=y), or by the quantifier-free formula S(x)˙−y\=0 if the symbol and primitive recursive defining equations for predecessor : Pd(0)\=0,

∀x(Pd(S(x))\=x)

and cutoff subtraction : ∀x(x˙−0\=x),

∀x∀y(x˙−S(y)\=Pd(x˙−y))

are present in the formalism. HA proves the comparative law

∀x∀y(x<y∨x\=y∨y<x)

and an intuitionistic form of the least number principle, for arbitrary formulas A(x):

∀x\[∀y(y<x→(A(y)∨¬A(y)))→(∃y((y<x&A(y))&∀z(z<y→¬A(z)))∨∀y(y<x→¬A(y)))\].

The hypothesis is needed because not all arithmetical formulas are decidable in HA. However, ∀x∀y(x\=y∨¬(x\=y)) can be proved directly by mathematical induction, and so

Prime formulas (and hence all *quantifier-free* formulas) are decidable and stable in HA.

If A(x) is decidable in HA, then by induction on x so are ∀y(y<x→A(y)) and ∃y(y<x&A(y)). Hence

Formulas in which all quantifiers are *bounded* are decidable and stable in HA.

The collection Δ0 of arithmetical formulas in which all quantifiers are bounded is the lowest level of a classical arithmetical hierarchy based on the pattern of alternations of quantifiers in a prenex formula. In HA not every formula has a prenex form, but Burr \[2004\] discovered a simple intuitionistic arithmetical hierarchy corresponding level by level to the classical. For the purposes of the next two definitions only, ∀x denotes a block of finitely many universal number quantifiers, and similarly ∃x denotes a block of finitely many existential number quantifiers. With these conventions, Burr’s classes Φn and Ψn are defined by:

-   Φ0\=Ψ0\=Δ0,
-   Φ1 is the class of all formulas of the form ∀xA(x) where A(x) is in Ψ0. For n≥2, Φn is the class of all formulas of the form ∀x\[A(x)→∃yB(x,y)\] where A(x) is in Φn−1 and B(x,y) is in Φn−2,
-   Ψ1 is the class of all formulas of the form ∃xA(x) where A(x) is in Φ0. For n≥2, Ψn is the class of all formulas of the form A→B where A is in Φn and B is in Φn−1.

The corresponding classical prenex classes are defined more simply:

-   Π0\=Σ0\=Δ0,
-   Πn+1 is the class of all formulas of the form ∀xA(x) where A(x) is in Σn,
-   Σn+1 is the class of all formulas of the form ∃xA(x) where A(x) is in Πn.

Peano arithmetic PA comes from Heyting arithmetic HA by adding LEM or ¬¬A→A to the list of logical axioms, i.e., by using classical instead of intuitionistic logic. The following results hold even in the fragments of HA and PA with the induction schema restricted to Δ0 formulas.

> **Burr’s Theorem:**
> 
> -   Every arithmetical formula is provably equivalent in HA to a formula in one of the classes Φn.
> -   Every formula in Φn is provably equivalent in PA to a formula in Πn, and conversely.
> -   Every formula in Ψn is provably equivalent in PA to a formula in Σn, and conversely.

HA and PA are proof-theoretically equivalent, as will be shown in Section 4. Each is capable of (numeralwise) expressing its own proof predicate. By Gödel’s famous Incompleteness Theorem, if HA is consistent then neither HA nor PA can prove its own consistency.

## 4\. Basic Proof Theory

### 4.1 Translating classical into intuitionistic logic

A fundamental fact about intuitionistic logic is that it has the same consistency strength as classical logic. For propositional logic this was first proved by Glivenko \[1929\].

**Glivenko’s Theorem**  
An arbitrary propositional formula A is classically provable, if and only if ¬¬A is intuitionistically provable.

Glivenko’s Theorem does not extend to predicate logic, although an arbitrary predicate formula A is classically provable if and only if ¬¬A is provable in intuitionistic predicate logic plus the “double negation shift” schema.

∀x¬¬B(x)→¬¬∀xB(x)

The more sophisticated **negative translation** of classical into intuitionistic theories, due independently to Gödel and Gentzen, associates with each formula A of the language L another formula g(A) (with no ∨ or ∃), such that

-   (I) Classical predicate logic proves A↔g(A).
-   (II) Intuitionistic predicate logic proves g(A)↔¬¬g(A).
-   (III) If classical predicate logic proves A, then intuitionistic predicate logic proves g(A).

The proofs are straightforward from the following inductive definition of g(A) (using Gentzen’s direct translation of implication, rather than Gödel’s in terms of ¬ and &):

g(P) is ¬¬P, if P is prime.g(A&B) is g(A)&g(B).g(A∨B) is ¬(¬g(A)&¬g(B)).g(A→B) is g(A)→g(B).g(¬A) is ¬g(A).g(∀xA(x)) is ∀xg(A(x)).g(∃xA(x)) is ¬∀x¬g(A(x)).

For each formula A, g(A) is provable intuitionistically if and only if A is provable classically. In particular, if B&¬B were classically provable for some formula B, then g(B)&¬g(B) (which is g(B&¬B)) would in turn be provable intuitionistically. Hence

-   (IV) Classical and intuitionistic predicate logic are equiconsistent.

The negative translation of classical into intuitionistic number theory is even simpler, since prime formulas of intuitionistic arithmetic are stable. Thus g(s\=t) can be taken to be s\=t, and the other clauses are unchanged. The negative translation of any instance of mathematical induction is another instance of mathematical induction, and the other nonlogical axioms of arithmetic are their own negative translations, so

-   (I), (II), (III) and (IV) hold also for number theory.

Gödel \[1933e\] interpreted these results as showing that intuitionistic logic and arithmetic are *richer* than classical logic and arithmetic, because the intuitionistic theory distinguishes formulas which are classically equivalent, and has the same [consistency strength][8] as the classical theory. In particular, Gödel’s incompleteness theorems apply to HA as well as to PA.

Direct attempts to extend the negative interpretation to analysis fail because the negative translation of the countable axiom of choice is not a theorem of intuitionistic analysis. However, it is consistent with intuitionistic analysis, including Brouwer’s controversial continuity principle, by the functional version of Kleene’s recursive realizability (cf. Section 6.2 below). It follows that intuitionistic mathematics, which can only be expressed by using all the standard logical connectives and quantifiers, is consistent with a faithful translation of classical mathematics avoiding ∨ and ∃.

This is important because Brouwer’s intuitionistic analysis is inconsistent with LEM. However, if A is any *negative* formula (without ∨ or ∃) then ¬¬A→A is provable using intuitionistic logic. A reconciliation of intuitionistic and classical analysis along these lines, inspired by Kripke’s notion of choice sequence, is suggested in Moschovakis \[2017\].

### 4.2 Admissible rules of intuitionistic logic and arithmetic

Gödel \[1932\] observed that intuitionistic propositional logic has the **disjunction property**:

-   (DP) If A∨B is a theorem, then A is a theorem or B is a theorem.

Gentzen \[1935\] established the disjunction property for closed formulas of intuitionistic predicate logic. From this it follows that if intuitionistic logic is consistent, then P∨¬P is not a theorem if P is an atomic formula. Kleene \[1945, 1952\] proved that intuitionistic first-order number theory also has the related (cf. Friedman \[1975\]) **existence property**:

-   (EP) If ∃xA(x) is a closed theorem, then for some closed term t, A(t) is a theorem.

The disjunction and existence properties are special cases of a general phenomenon peculiar to nonclassical theories. The *admissible rules* of a theory are the rules under which the theory is closed. For example, Harrop \[1960\] observed that the rule

If ¬A→(B∨C) is a theorem, so is (¬A→B)∨(¬A→C)

is admissible for intuitionistic propositional logic IPC because if A, B and C are any formulas such that ¬A→(B∨C) is provable in IPC, then also (¬A→B)∨(¬A→C) is provable in IPC. Harrop’s rule is not *derivable* in IPC because (¬A→(B∨C))→(¬A→B)∨(¬A→C) is not intuitionistically provable. Another important example of an admissible nonderivable rule of IPC is Mints’s rule:

If (A→B)→(A∨C) is a theorem, so is ((A→B)→A)∨((A→B)→C).

The two-valued truth table interpretation of classical propositional logic CPC gives rise to a simple proof that every admissible rule of CPC is derivable: otherwise, some assignment to A, B, etc. would make the hypothesis true and the conclusion false, and by substituting e.g. P→P for the letters assigned “true” and P&¬P for those assigned “false” one would have a provable hypothesis and unprovable conclusion. The fact that the intuitionistic situation is more interesting leads to many natural questions, some of which have recently been answered.

By generalizing Mints’s Rule, Visser and de Jongh identified a recursively enumerable sequence of successively stronger admissible rules (“Visser’s rules”) which, they conjectured, formed a *basis* for the admissible rules of IPC in the sense that every admissible rule is derivable from the disjunction property and one of the rules of the sequence. Building on work of Ghilardi \[1999\], Iemhoff \[2001\] succeeded in proving their conjecture. Rybakov \[1997\] proved that the collection of all admissible rules of IPC is decidable but has no finite basis. Visser \[2002\] showed that his rules are also the admissible propositional rules of HA, and of HA extended by Markov’s Principle MP (defined in Section 5.2 below). More recently, Jerabek \[2008\] found an independent basis for the admissible rules of IPC, with the property that no rule in the basis derives another.

Much less is known about the admissible rules of intuitionistic predicate logic. Pure IQC, without individual or predicate constants, has the following remarkable admissible rule for A(x) with no variables free but x:

If ∃xA(x) is a theorem, so is ∀xA(x).

Not every admissible predicate rule of IQC is admissible for all formal systems based on IQC; for example, HA evidently violates the rule just stated. Visser proved in \[1999\] that the property of being an admissible predicate rule of HA is Π2 complete, and in \[2002\] that HA + MP has the same predicate admissible rules as HA. Plisko \[1992\] proved that the *predicate logic* of HA + MP (the set of sentences in the language of IQC all of whose uniform substitution instances in the language of arithmetic are provable in HA + MP) is Π2 complete; Visser \[2006\] extended this result to some constructively interesting consistent extensions of HA which are not contained in PA.

While they have not been completely classified, the admissible rules of intuitionistic predicate logic are known to include **Markov’s Rule** for decidable predicates:

If ∀x(A(x)∨¬A(x))&¬∀x¬A(x) is a theorem, so is ∃xA(x).

and the following **Independence-of-Premise Rule** (where y is assumed not to occur free in A(x)):

If ∀x(A(x)∨¬A(x))&(∀xA(x)→∃yB(y)) is a theorem, so is ∃y(∀xA(x)→B(y)).

Both rules are also admissible for HA. The corresponding implications (MP and IP respectively), which are not provable intuitionistically, are verified by Gödel’s “Dialectica” interpretation of HA (cf. Section 6.3 below). So is the implication (CT) corresponding to one of the most interesting admissible rules of Heyting arithmetic, let us call it the **Church-Kleene Rule**:

If ∀x∃yA(x,y) is a closed theorem of HA then there is a number n such that, provably in HA, the partial recursive function with Gödel number n is total and maps each x to a y satisfying A(x,y) (and moreover A(x,y) is provable, where x is the numeral for the natural number x and y is the numeral for y).

Combining Markov’s Rule with the negative translation gives the result that classical and intuitionistic arithmetic prove the same formulas of the form ∀x∃yA(x,y) where A(x,y) is quantifier-free. In general, if A(x,y) is provably decidable in HA and if ∀x∃yA(x,y) is a closed theorem of *classical* arithmetic PA, the conclusion of the Church-Kleene Rule holds even in *intuitionistic* arithmetic. For if HA proves ∀x∀y(A(x,y)∨¬A(x,y)) then by the Church-Kleene Rule the characteristic function of A(x,y) has a Gödel number m, provably in HA; so HA proves ∀x∃yA(x,y)↔∀x∃y∃zB(m,x,y,z) where B is quantifier-free, and the adjacent existential quantifiers can be contracted in HA. It follows that HA and PA have the same provably recursive functions.

Here is a proof that the rule “If ∀x(A∨B(x)) is a theorem, so is A∨∀xB(x)” (where x is not free in A) is *not* admissible for HA, if HA is consistent. Gödel numbering provides a quantifier-free formula G(x) which (numeralwise) expresses the predicate “x is the code of a proof in HA of (0\=1).” By intuitionistic logic with the decidability of quantifier-free arithmetical formulas, HA proves ∀x(∃yG(y)∨¬G(x)). However, if HA proved ∃yG(y)∨∀x¬G(x) then by the disjunction property, HA must prove either ∃yG(y) or ∀x¬G(x). The first case is impossible, by the existence property with the consistency assumption and the fact that HA proves all true quantifier-free sentences. But the second case is also impossible, by Gödel’s second incompleteness theorem, since ∀x¬G(x) expresses the consistency of HA.

## 5\. Basic Semantics

Intuitionistic systems have inspired a variety of interpretations, including Beth’s tableaux, Rasiowa and Sikorski’s topological models, Heyting algebras, formulas-as-types, Kleene’s recursive realizabilities, the Kleene and Aczel slashes, and models based on sheafs and topoi. Of all these interpretations Kripke’s \[1965\] possible-world semantics, with respect to which intuitionistic predicate logic is complete and consistent, most resembles classical model theory. Recursive realizability interpretations, on the other hand, attempt to effectively implement the B-H-K explanation of intuitionistic truth.

### 5.1 Kripke semantics for intuitionistic logic

A *Kripke structure* K for L consists of a partially ordered set K of *nodes* and a *domain function D* assigning to each node k in K an inhabited set D(k), such that if k≤k′, then D(k)⊆D(k′). In addition K has a *forcing* relation determined as follows.

For each node k let L(k) be the language extending L by new constants for all the elements of D(k). To each node k and each 0\-ary predicate letter (each proposition letter) P, either assign f(P,k)\= *true* or leave f(P,k) undefined, consistent with the requirement that if k≤k′ and f(P,k)\= *true* then f(P,k′)\= *true* also. Say that

k ⊨ P if and only if f(P,k)\= *true*.

To each node k and each (n+1)\-ary predicate letter Q(…), assign a (possibly empty) set T(Q,k) of (n+1)\-tuples of elements of D(k) in such a way that if k≤k′ then T(Q,k)⊆T(Q,k′). Say that

k ⊨ Q(d0,…,dn) if and only if (d0,…,dn)∈T(Q,k).

Now define k ⊨ E (which may be read “ k *forces* E ”) for compound sentences E of L(k) inductively as follows:

k ⊨ (A&B)

if k ⊨ A and k ⊨ B.

k ⊨ (A∨B)

if k ⊨ A or k ⊨ B.

k ⊨ (A→B)

if, for every k′≥k, if k′ ⊨ A then k′ ⊨ B.

k ⊨ ¬A

if for no k′≥k does k′ ⊨ A.

k ⊨ ∀xA(x)

if for every k′≥k and every d∈D(k′), k′ ⊨ A(d).

k ⊨ ∃xA(x)

if for some d∈D(k), k ⊨ A(d).

Any such forcing relation is *consistent*:

For no sentence A and no k is it the case that both k ⊨ A and k ⊨ ¬A.

and *monotone*:

If k≤k′ and k ⊨ A then k′ ⊨ A.

**Kripke’s Soundness and Completeness Theorems** establish that a sentence of L is provable in intuitionistic predicate logic if and only if it is forced by every node of every Kripke structure. Thus to show that ¬∀x¬P(x)→∃xP(x) is intuitionistically unprovable, it is enough to consider a Kripke structure with K\={k,k′}, k<k′, D(k)\=D(k′)\={0}, T(P,k) empty but T(P,k′)\={0}. And to show the converse is intuitionistically provable (without actually exhibiting a proof), one only needs the consistency and monotonicity properties of arbitrary Kripke models, with the definition of ⊨.

Kripke models for languages with equality may interpret \= at each node by an arbitrary equivalence relation, subject to monotonicity. For applications to intuitionistic arithmetic, *normal* models (those in which equality is interpreted by identity at each node) suffice because equality of natural numbers is decidable.

Propositional Kripke semantics is particularly simple, since an arbitrary propositional formula is intuitionistically provable if and only if it is forced by the root of every Kripke model whose *frame* (the set K of nodes together with their partial ordering) is a finite tree with a least element (the *root*). For example, the Kripke model with K\={k,k′,k″},k<k′ and k<k″, and with P true only at k′, shows that both P∨¬P and ¬P∨¬¬P are unprovable in IPC.

Each terminal node or *leaf* of a Kripke model is a classical model, because a leaf forces every formula or its negation. Only those proposition letters which occur in a formula E, and only those nodes k′ such that k≤k′, are relevant to deciding whether or not k forces E. Such considerations allow us to associate effectively with each formula E of L(IPC) a finite class of finite Kripke structures which will include a countermodel to E if one exists. Since the class of all theorems of IPC is recursively enumerable, we conclude that

IPC is effectively decidable. There is a recursive procedure which determines, for each propositional formula E, whether or not E is a theorem of IPC, concluding with either a proof of E or a (finite) Kripke countermodel.

The decidability of IPC was first obtained by Gentzen in 1935. The undecidability of IQC follows from the undecidability of CQC by the negative interpretation.

Familiar non-intuitionistic logical schemata correspond to structural properties of Kripke models, for example

-   DNS holds in every Kripke model with finite frame.
-   (A→B)∨(B→A) holds in every Kripke model with linearly ordered frame. Conversely, every propositional formula which is not derivable in IPC+(A→B)∨(B→A) has a Kripke countermodel with linearly ordered frame (cf. Section 6.1 below).
-   If x is not free in A then ∀x(A∨B(x))→(A∨∀xB(x)) holds in every Kripke model K with constant domain (so that D(k)\=D(k′) for all k,k′ in K). The same is true for MP.

Kripke models and Beth models (which differ from Kripke models in detail, but are intuitionistically equivalent) are a powerful tool for establishing properties of intuitionistic formal systems; cf. Troelstra and van Dalen \[1988\], Smorynski \[1973\], de Jongh and Smorynski \[1976\], Ghilardi \[1999\] and Iemhoff \[2001\], \[2005\]. However, there is no purely intuitionistic proof that every sentence which is valid in all Kripke and Beth models is provable in IQC. Following an observation by Gödel, Kreisel \[1958\] verified that the completeness of intuitionistic predicate logic for Beth semantics is equivalent to Markov’s Principle MP, which Brouwer rejected.

Moreover, Dyson and Kreisel \[1961\] showed that if IQC is *weakly* complete for Beth semantics (that is, if no unprovable sentence holds in every Beth model) then the following consequence of MP holds : ∀αB(α)¬¬∃xR(α,x)→¬¬∀αB(α)∃xR(α,x),

where x ranges over all natural numbers, α ranges over all infinite sequences of natural numbers, B(α) abbreviates ∀x(α(x)≤1), and R expresses a primitive recursive relation of α and x. Conversely, GDK entails the weak completeness of IQC. This interesting principle, which would justify the negative interpretation of a form of Brouwer’s Fan Theorem, is weaker than MP but unprovable in current systems of intuitionistic analysis. Kreisel \[1962\] suggested that GDK may eventually be provable on the basis of as yet undiscovered properties of intuitionistic mathematics.

By modifying the definition of a Kripke model to allow “exploding nodes” which force every sentence, Veldman \[1976\] found a completeness proof using only intuitionistic logic, but he questioned whether Kripke models with exploding nodes were intuitionistically meaningful mathematical objects.

### 5.2 Realizability semantics for Heyting arithmetic

One way to implement the B-H-K explanation of intuitionistic truth for arithmetic is to associate with each sentence E of HA some collection of numerical codes for algorithms which could establish the constructive truth of E. Following Kleene \[1945\], a number e *realizes* a sentence E of the language of arithmetic by induction on the logical form of E:

e realizes r\=t

if r\=t is true.

e realizes A&B

if e codes a pair (f,g) such that f realizes A and g realizes B.

e realizes A∨B

if e codes a pair (f,g) such that if f\=0 then g realizes A, and if f\>0 then g realizes B.

e realizes A→B

if, whenever f realizes A, then the eth partial recursive function is defined at f and its value realizes B.

e realizes ¬A

if no f realizes A.

e realizes ∀xA(x)

if, for every n, the eth partial recursive function is defined at n and its value realizes A(n).

e realizes ∃xA(x)

if e codes a pair (n,g) and g realizes A(n).

An arbitrary formula is realizable if some number realizes its universal closure. Observe that not both A and ¬A are realizable, for any formula A. The fundamental result is

**Nelson’s Theorem** \[1947\]  
If A is derivable in HA from realizable formulas F, then A is realizable.

Some nonintuitionistic principles can be shown to be realizable. For example, *Markov’s Principle* (for decidable formulas) can be expressed by the schema

-   (MP) ∀x(A(x)∨¬A(x))&¬∀x¬A(x)→∃xA(x).

Although unprovable in HA, MP is realizable by an argument which uses Markov’s Principle informally. But realizability is a fundamentally nonclassical interpretation. In HA it is possible to express an axiom of recursive choice CT (for “Church’s Thesis”), which contradicts LEM but is (constructively) realizable. Hence by Nelson’s Theorem, HA + MP + CT is consistent.

Kleene used a variant of number-realizability to prove HA satisfies the Church-Kleene Rule; the same argument works for HA with MP or CT, and for HA + MP + CT. In Kleene and Vesley \[1965\] and Kleene \[1969\], functions replace numbers as realizing objects, establishing the consistency of formalized intuitionistic analysis and its closure under a second-order version of the Church-Kleene Rule.

Nelson’s Theorem establishes the unprovability in IQC of some theorems of classical predicate logic. If, to each n\-place predicate letter P(…), a formula f(P) of L(HA) with n free variables is assigned, and if the formula f(A) of L(HA) comes from the formula A of L by replacing each prime formula P(x1,…,xn) by f(P)(x1,…,xn), then f(A) is called an *arithmetical substitution instance* of A. As an example, if a formula of L(HA) expressing “x codes a proof in HA of the formula with code y” is assigned to P(x,y), the resulting arithmetical substitution instance of ∀y(∃xP(x,y)∨¬∃xP(x,y)) is unrealizable and hence unprovable in HA, and so is its double negation. It follows that ¬¬∀y(∃xP(x,y)∨¬∃xP(x,y)) is not provable in IQC.

De Jongh \[1970\] combined realizability with Kripke modeling to show that intuitionistic propositional logic IPC and a fragment of IQC are arithmetically complete for HA. A uniform assignment of simple existential formulas to predicate letters suffices to prove

**De Jongh’s Theorem (for IPC) \[1970\]**  
If a propositional formula A of the language L is not provable in IPC, then some arithmetical substitution instance of A is not provable in HA.

The proof of this version of de Jongh’s Theorem does not need realizability; cf. Smorynski \[1973\]. As an example, Rosser’s form of Gödel’s Incompleteness Theorem provides a sentence C of L(HA) such that PA proves neither C nor ¬C, so by the disjunction property HA cannot prove (C∨¬C). But de Jongh’s semantical proof also established that every intuitionistically unprovable predicate formula of a restricted kind has an arithmetical substitution instance which is unprovable in HA. Using a syntactic method, Daniel Leivant \[1979\] extended de Jongh’s Theorem to all intuitionistically unprovable predicate formulas, proving that IQC is arithmetically complete for HA. See van Oosten \[1991\] for a historical exposition and a simpler proof of the full theorem, using abstract realizability with Beth models instead of Kripke models.

Without claiming that number-realizability coincides with intuitionistic arithmetical truth, Nelson observed that for each formula A of L(HA) the predicate “y realizes A” can be expressed in HA by another formula (abbreviated “yreA”), and the schema A↔∃y(yreA) is consistent with HA. Troelstra \[1973\] showed that HA + (A↔∃y(yreA)) is equivalent to HA + ECT, where ECT is a strengthened form of CT. In HA + MP + ECT, which Troelstra considers to be a formalization of Russian recursive mathematics (cf. section 3.2 of the entry on [constructive mathematics][9]), every formula of the form (yreA) has an equivalent “classical” prenex form A′(y) consisting of a quantifier-free subformula preceded by alternating “classical” quantifiers of the forms ¬¬∃x and ∀z¬¬, and so ∃yA′(y) is a kind of prenex form of A.

## 6\. Additional Topics and Further Reading

### 6.1 Subintuitionistic and Intermediate Logics

At present there are several other entries in this encyclopedia treating intuitionistic logic in various contexts, but a general treatment of weaker and stronger propositional and predicate logics appears to be lacking. Many such logics have been identified and studied. Here are a few examples.

A *subintuitionistic propositional logic* can be obtained from IPC by restricting the language, or weakening the logic, or both. An extreme example of the first is RN, intuitionistic logic with a single propositional variable P, which is named after its discoverers Rieger and Nishimura \[1960\]. RN is characterized by the *Rieger-Nishimura lattice* of infinitely many nonequivalent formulas Fn such that every formula whose only propositional variable is P is equivalent by intuitionistic logic to some Fn. Nishimura’s version is

F∞\=P→P.F0\=P&¬P.F1\=P.F2\=¬P.F2n+3\=F2n+1∨F2n+2.F2n+4\=F2n+3→F2n+1.

In RN neither F2n+1 nor F2n+2 implies the other; but F2n implies F2n+1, and F2n+1 implies each of F2n+3 and F2n+4.

Fragments of IPC missing one or more logical connectives restrict the language and incidentally the logic, since the intuitionistic connectives &, ∨, →, ¬ are logically independent over IPC. Rose \[1953\] proved that the *implicationless fragment* (without →) is complete with respect to realizability, in the sense that if every arithmetical substitution instance of a propositional formula E without → is (number)-realizable then E is a theorem of IPC. This result contrasts with

**Rose’s Theorem** \[1953\]  
IPC is incomplete with respect to realizability.

Let F be the propositional formula ((¬¬D→D)→(¬¬D∨¬D))→(¬¬D∨¬D)

where D is (¬P∨¬Q) and P, Q are prime. Every arithmetical substitution instance of F is realizable (using classical logic), but F is not provable in IPC.

It follows that IPC is arithmetically incomplete for HA + ECT (cf. Section 5.2).

*Minimal logic* ML comes from intuitionistic logic by deleting *ex falso*. Kolmogorov \[1925\] showed that this fragment already contains a negative interpretation of classical logic retaining both quantifiers, cf. Leivant \[1985\]. Minimal logic does prove the special case ¬A→(A→¬B) of *ex falso* for negations. Colacito, de Jongh and Vardas \[2017\] study various *subminimal logics*, each weaker than ML.

Griss contested Brouwer’s use of negation, objecting to both the law of contradiction and *ex falso*. It is worth noting that negation is not really needed for intuitionistic mathematics since 0\=1 is a known contradiction so ¬A can be defined by A→0\=1. Then *ex falso* can be stated as 0\=1→A, and the law of contradiction is provable from the remaining axioms of H.

An *intermediate propositional logic* is any consistent collection of propositional formulas containing all the axioms of IPC and closed under *modus ponens* and substitution of arbitrary formulas for proposition letters. Each intermediate propositional logic is contained in CPC. Some particular intermediate propositional logics, characterized by adding one or more classically correct but intuitionistically unprovable axiom schemas to IPC, have been studied extensively.

One of the simplest intermediate propositional logics is the Gödel-Dummett logic LC, obtained by adding to IPC the schema (A→B)∨(B→A) which is valid on all and only those Kripke frames in which the partial order of the nodes is linear. Gödel \[1932\] used an infinite sequence of successively stronger intermediate logics to show that IPC has no finite truth-table interpretation. For each positive integer n, let Gn be LC plus the schema (A1→A2)∨…∨(A1&…&An→An+1). Then Gn is valid on all and only those linearly ordered Kripke frames with no more than n nodes.

The Jankov logic KC, which adds to IPC the principle of *testability* ¬A∨¬¬A, obviously does not have the disjunction property. The Kreisel-Putnam logic KP, obtained by adding to IPC the schema (¬A→B∨C)→((¬A→B)∨(¬A→C)), has the disjunction property but does not satisfy all the Visser rules. The intermediate logic obtained by adding the schema ((¬¬D→D)→(D∨¬D))→(¬¬D∨¬D), corresponding to Rose’s counterexample, to IPC also has the disjunction property. Iemhoff \[2005\] proved that IPC is the only intermediate propositional logic with the disjunction property which is closed under all the Visser rules. Iemhoff and Metcalfe \[2009\] developed a formal calculus for generalized admissibility for IPC and some intermediate logics. Goudsmit \[2015\] is a thorough study of the admissible rules of intermediate logics, with a comprehensive bibliography.

An intermediate propositional logic L is said to have the *finite frame property* if there is a class of finite frames on which the Kripke-valid formulas are exactly the theorems of L. Many intermediate logics, including LC and KP, have this property. Jankov \[1968\] used an infinite sequence of finite rooted Kripke frames to prove that there are continuum many intermediate logics. De Jongh, Verbrugge and Visser \[2009\] proved that every intermediate logic L with the finite frame property is the *propositional logic* of HA(L), that is, the class of all formulas in the language of IPC all of whose arithmetical substitution instances are provable in the logical extension of HA by L.

An intermediate propositional logic L is *structurally complete* if every rule which is admissible for L is derivable in L, and *hereditarily structurally complete* if every intermediate logic extending L is also structurally complete. Every intermediate logic L has a *structural completion* ¯L, obtained by adjoining all its admissible rules. LC and Gn are hereditarily structurally complete. While IPC, RN and KC are not structurally complete, their structural completions are hereditarily structurally complete. For these results and more, see Citkin \[2016, Other Internet Resources\].

Some *intermediate predicate logics*, extending IQC and closed under substitution, are IQC + DNS (Section 4.1), IQC + MP (cf. Section 5.2), IQC + MP + IP (cf. Section 4.2), and the *intuitionistic logic of constant domains* CD obtained by adding to IQC the schema ∀x(A∨B(x))→(A∨∀xB(x)) for all formulas A, B(x) with x not occurring free in A. Mints, Olkhovikov and Urquhart \[2012, Other Internet Resources\] showed that CD does not have the interpolation property, refuting earlier published proofs by other authors.

### 6.2 Advanced topics

Brouwer’s influence on Gödel was significant, although Gödel never became an intuitionist. Gödel’s \[1933f\] translation of intuitionistic propositional logic into the [modal logic][10] S4 is described in Section 2.5 of the entry on [Gödel][11] and in Troelstra’s introductory note to the translation of \[1933f\] in Volume I of Gödel’s Collected Works. See also Mints \[2012\]. Kripke models for modal logic predated those for intuitionistic logic.

Alternatives to Kripke and Beth semantics for intuitionistic propositional and predicate logic include the topological interpretation of Stone \[1937\], Tarski \[1938\] and Mostowski \[1948\] (cf. Rasiowa and Sikorski \[1963\], Rasiowa \[1974\]), which was extended to intuitionistic analysis by Scott \[1968\] and Krol \[1978\]. M. Hyland \[1982\] defined the effective topos *Eff* and proved that its logic is intuitionistic. For a very informative discussion of semantics for intuitionistic logic and mathematics by W. Ruitenberg, and an interesting new perspective by G. Bezhanishvili and W. Holliday, see Other Internet Resources (below).

One alternative to realizability semantics for intuitionistic arithmetic is Gödel’s \[1958\] “Dialectica” interpretation, which associates with each formula B of L(HA) a quantifier-free formula BD in the language of intuitionistic arithmetic of all finite types. The *“Dialectica” interpretation* of B, call it BD, is ∃Y∀xBD(Y,x). If B is a closed theorem of HA, then BD(F,x) is provable for some term F in Gödel’s theory T of “primitive recursive” functionals of higher type. The translation from B to BD requires the axiom of choice (at all finite types), MP and IP, so is not strictly constructive; however, the number-theoretic functions expressible by terms F of T are precisely the provably recursive functions of HA (and of PA). The interpretation was extended to analysis by Spector \[1962\]; cf. Howard \[1973\]. Clear expositions, and additional references, are to be found in Troelstra’s introduction to the English translation in Gödel \[1990\] of the original *Dialectica* article, in Avigad and Feferman \[1998\], and in Ferreira \[2008\].

While HA is a proper part of classical arithmetic, the intuitionistic attitude toward mathematical objects results in a theory of real numbers (cf. sections 3.4–3.7 of the entry on [intuitionism in the philosophy of mathematics][12]) diverging from the classical. Kleene’s function-realizability interpretation, developed to prove the consistency of his formalization FIM of the intuitionistic theory of sequences (“intuitionistic analysis”), changes the interpretation of arithmetical formulas; for example, ¬¬∀x(A(x)∨¬A(x)) is function-realizable for every arithmetical formula A(x). In the language of analysis, Markov’s Principle and the negative translation of the countable axiom of choice are among the many non-intuitionistic principles which are function-realizable (by classical arguments) and hence consistent with FIM; cf. Kleene \[1965\], Vesley \[1972\] and Moschovakis \[2003\].

Concrete and abstract realizability semantics for a wide variety of formal systems have been developed and studied by logicians and computer scientists; cf. Troelstra \[1998\] and van Oosten \[2002\] and \[2008\]. Variations of the basic notions are especially useful for establishing relative consistency and relative independence of the nonlogical axioms in theories based on intuitionistic logic; some examples are Moschovakis \[1971\], Lifschitz \[1979\], and the realizability notions for constructive and intuitionistic set theories developed by Rathjen \[2006, 2012\] and Chen \[2012\]. Early abstract realizability notions include the *slashes* of Kleene \[1962, 1963\] and Aczel \[1968\], and Läuchli \[1970\]. Kohlenbach, Avigad and others have developed realizability interpretations for parts of classical mathematics.

Artemov’s [justification logic][13] is an alternative interpretation of the B-H-K explanation of the intuitionistic connectives and quantifiers, with (idealized) proofs playing the part of realizing objects. See also Artemov and Iemhoff \[2007\].

Another line of research in intuitionistic logic concerns Brouwer’s very controversial “creating subject counterexamples” to principles of classical analysis (such as Markov’s Principle) which could not be refuted on the basis of the theory FIM of Kleene and Vesley \[1965\]. By weakening Kleene’s form of Brouwer’s principle of continuous choice, and adding an axiom he called *Kripke’s Schema* (KP), Myhill managed to formalize the creating subject arguments. KP is inconsistent with FIM, but Vesley \[1970\] found an alternative principle (*Vesley’s Schema* VS) which can consistently be added to FIM and implies all the counterexamples for which Brouwer required a creating subject. Krol \[1978\] and Scowcroft gave topological consistency proofs for intuitionistic analysis with Kripke’s Schema and weak continuity.

### 6.3 Recommended reading

The entry on [L. E. J. Brouwer][14] discusses Brouwer’s philosophy and mathematics, with a chronology of his life and a selected list of publications including translations and secondary sources. The best way to learn more is to read some of the original papers. English translations of Brouwer’s doctoral dissertation and other papers which originally appeared in Dutch, along with a number of articles in German, can be found in *L. E. J. Brouwer: Collected Works* \[1975\], edited by Heyting. Benacerraf and Putnam’s essential source book contains Brouwer \[1912\] (in English translation), Brouwer \[1949\] and Dummett \[1975\]. Mancosu’s \[1998\] provides English translations of many fundamental articles by Brouwer, Heyting, Glivenko and Kolmogorov, with illuminating introductory material by W. van Stigt whose \[1990\] is another valuable resource.

The third edition \[1971\] of Heyting’s classic \[1956\] is an attractive introduction to intuitionistic philosophy, logic and mathematical practice. As part of the formidable project of editing and publishing Brouwer’s *Nachlass*, van Dalen \[1981\] provides a comprehensive view of Brouwer’s own intuitionistic philosophy. The English translation, in van Heijenoort \[1969\], of Brouwer’s \[1927\] (with a fine introduction by Parsons) is still an indispensable reference for Brouwer’s theory of the continuum. Veldman \[1990\] and \[2005\] are authentic modern examples of traditional intuitionistic mathematical practice. Troelstra \[1991\] places intuitionistic logic in its historical context as the common foundation of constructive mathematics in the twentieth century. Bezhanishvili and de Jongh \[2005, Other Internet Resources\] includes recent developments in intuitionistic logic.

Kleene and Vesley’s \[1965\] gives a careful axiomatic treatment of intuitionistic analysis, a proof of its consistency relative to a classically correct subtheory, and an extended application to Brouwer’s theory of real number generators. Kleene’s \[1969\] formalizes the theory of partial recursive functionals, enabling precise formalizations of the function-realizability interpretation used in \[1965\] and of a related q-realizability interpretation which gives the Church-Kleene Rule for intuitionistic analysis.

Troelstra’s \[1973\], Beeson’s \[1985\] and Troelstra and van Dalen’s \[1988\] (with [corrections][15]) stand out as the most comprehensive studies of intuitionistic and semi-intuitionistic formal theories, using both constructive and classical methods, with useful bibliographies. Troelstra and Schwichtenberg \[2000\] presents the proof theory of classical, intuitionistic and minimal logic in parallel, focusing on sequent systems. Troelstra’s \[1998\] presents formulas-as-types and (Kleene and Aczel) slash interpretations for propositional and predicate logic, as well as abstract and concrete realizabilities for a multitude of applications. Martin-Löf’s constructive theory of types \[1984\] (cf. Section 3.4 of the entry on [constructive mathematics][16]) provides another general framework within which intuitionistic reasoning continues to develop.

[1]: https://plato.stanford.edu/entries/church-turing/
[2]: https://plato.stanford.edu/entries/mathematics-constructive/
[3]: https://plato.stanford.edu/entries/intuitionism/
[4]: https://plato.stanford.edu/entries/intuitionism/
[5]: https://plato.stanford.edu/entries/intuitionistic-logic-development/
[6]: https://plato.stanford.edu/entries/logic-classical/
[7]: https://plato.stanford.edu/entries/intuitionism/
[8]: https://plato.stanford.edu/entries/hilbert-program/
[9]: https://plato.stanford.edu/entries/mathematics-constructive/
[10]: https://plato.stanford.edu/entries/logic-modal/
[11]: https://plato.stanford.edu/entries/goedel/
[12]: https://plato.stanford.edu/entries/intuitionism/
[13]: https://plato.stanford.edu/entries/logic-justification/
[14]: https://plato.stanford.edu/entries/brouwer/
[15]: http://www.math.ucla.edu/~joan/ourTvDcorr030818.pdf
[16]: https://plato.stanford.edu/entries/mathematics-constructive/
