---
downloaded:       2021-12-25
page-url:         https://plato.stanford.edu/entries/logic-algebraic-propositional/
page-title:       Algebraic Propositional Logic (Stanford Encyclopedia of Philosophy)
---
# Algebraic Propositional Logic

Tarski's work (1930a, 1930b, 1935, 1936) on the methodology of
the deductive sciences of the 1920s and 1930s studies the axiomatic
method abstractly and introduces for the first time the abstract
concept of consequence operation. Tarski had in mind mainly the
different mathematical axiomatic theories. On these theories, the
sentences that are proved from the axioms are consequences of them but
(of course) almost all of them are not logical truths; under a
suitable formalization of these theories, a logical calculus like
Frege's or Russell's can be used to derive the
consequences of the axioms. Tarski set the framework to study the most
general properties of the operation that assigns to a set of axioms
its consequences.

## 1. Abstract consequence relations

Tarski's work (1930a, 1930b, 1935, 1936) on the methodology of the deductive sciences of the 1920s and 1930s studies the axiomatic method abstractly and introduces for the first time the abstract concept of consequence operation. Tarski had in mind mainly the different mathematical axiomatic theories. On these theories, the sentences that are proved from the axioms are consequences of them but (of course) almost all of them are not logical truths; under a suitable formalization of these theories, a logical calculus like Frege's or Russell's can be used to derive the consequences of the axioms. Tarski set the framework to study the most general properties of the operation that assigns to a set of axioms its consequences.

Given a logical deduction system H and an arbitrary set of formulas X, a formula a is *deducible* in H from X if there is a finite sequence of formulas any one of which belongs to X or is an axiom of H or is obtained from previous formulas in the sequence by one of the inference rules of H. Such a sequence is a deduction (or proof) in H of a with premises or hypotheses in X. Let Cn(X) be the set of formulas deducible in H from the formulas in X taken as premises or hypothesis. This set is called the set of consequences of X (relative to the logical deduction system H). Cn is then an operation that is applied to sets of formulas to obtain new sets of formulas. It has the following properties: For every set of formulas X

1.  X⊆Cn(X)
2.  Cn(Cn(X))\=Cn(X)
3.  Cn(X)\=⋃{Cn(Y):Y⊆X,Y finite}

Clause 3 stipulates that Cn(X) is equal to the union of the set of formulas derivable from finite subsets of X. Tarski took these properties to define the notion of consequence operation axiomatically. In fact he added that there is a formula x such that Cn({x}) is the set A of all the formulas and that this set must be finite or of the cardinality of the natural numbers. Condition (3) implies the weaker, and important, condition of monotonicity

4.  if X⊆Y⊆A, then Cn(X)⊆Cn(Y).

To encompass the whole class of logic systems one finds in the literature, a slightly more general definition than Tarski's is required. We will say that an *abstract consequence operation* C on an arbitrary set A is an operation that applied to subsets of A gives subsets of A and for all X,Y⊆A satisfies conditions (1), (2) and (4) above. If in addition C satisfies (3) we say that it is a *finitary consequence operation*.

Consequence operations are present not only in logic but in many areas of mathematics. Abstract consequence operations are known as closure operators in universal algebra and lattice theory, for instance. In topology the operation that sends a subset of a topological space to its topological closure is a closure operator. In fact the topologies on a set A can be identified with the closure operators on A that satisfy the additional conditions that C(∅)\=∅ and C(X∪Y)\=C(X)∪C(Y) for all X,Y⊆A.

Given a consequence operation C on a set A, a subset X of A is said to be C\-*closed*, or a *closed* set of C, if C(X)\=X.

A different, but mathematically equivalent, (formal) approach is to consider consequence relations on a set of formulas instead of consequence operations. A(n) (abstract) *consequence relation* on the set of formulas of a formal language is a relation ⊢ between sets of formulas and formulas that satisfies the following conditions:

1.  if a∈X, then X⊢a
2.  if X⊢a and X⊆Y, then Y⊢a
3.  if X⊢a and for every b∈X,Y⊢b, then Y⊢a.

It is *finitary* if in addition it satisfies

4.  if X⊢a, then there is a finite set Y⊆X such that Y⊢a.

Given a logical deduction system H, the relation ⊢ defined by X⊢a if a is deducible from X in H is a finitary consequence relation. Nonetheless, we are used not only to syntactic definitions of consequence relations but also to semantic definitions. For example, we define classical propositional consequence using truth valuations, first-order consequence relation using structures, intuitionistic consequence relation using Kripke models, etc. Sometimes these model-theoretic definitions of consequence relations define non-finitary consequence relations, for example, the consequence relations for infinitary formal languages and the consequence relation of second-order logic with the so-called standard semantics.

In general, an *abstract consequence relation* on a set A (not necessarily the set of formulas of some formal language) is a relation ⊢ between subsets of A and elements of A that satisfies conditions (1)-(3) above. If it also satisfies (4) it is said to be finitary. If ⊢ is an abstract consequence relation and X⊢a we can say that X is a set of premises or hypothesis with conclusion a according to ⊢ and that a follows from X, or is entailed by X (according to ⊢). These relations correspond to Koslow's implication structures; see Koslow 1992 for the closely related but different approach to logics (in a broad sense) as consequence relations introduced by this author.

Consequence operations on a set A are in one-to-one correspondence with abstract consequence relations on A. The move from a consequence operation C to a consequence relation ⊢C and, conversely, from a consequence relation ⊢ to a consequence operation C⊢ is easy and given by the definitions:

X⊢Ca iff a∈C(X) and a∈C⊢(X) iff X⊢a.

Moreover, if C is finitary, so is ⊢C and if ⊢ is finitary, so is C⊢.

For a general discussion on logical consequence see the entry [Logical Consequence][1].

## 2. Logics as consequence relations

In this section we define what propositional logics are and explain the basic concepts relating to them. We will call the propositional logics (as defined below) simply *logic systems*.

One of the main traits of the consequence relations we study in logic is their formal character. This roughly means that if a sentence a follows from a set of sentences X and we have another sentence b and another set of sentences Y that share the same form with a and X respectively, then b also follows from Y. In propositional logics this boils down to saying that if we uniformly replace basic sub-sentences of the sentences in X∪{a} by other sentences obtaining Y and b, then b follows from Y. (The reader can find more information on the idea of formality in the entry [Logical Consequence][2].)

To turn the idea of the formal character of logics into a rigorous definition we need to introduce the concept of propositional language and the concept of substitution.

A *propositional language* L is a set of connectives, that is, a set of symbols each one of which has an arity n that tells us in case that n\=0 that the symbol is a propositional constant, and in case that n\>0 whether the connective is unary, binary, ternary, etc. For example {∧,∨,→,⊥,⊤} is (or can be) the language of several logics, like classical and intuitionistic, (⊥ and ⊤ are 0-ary and the other connectives are binary), {¬,∧,∨→,◻,◊} is the language of several modal logics, (¬,◻,◊ are unary and the other connectives binary) and {∧,∨,→,∗,⊤,⊥,1,0} is the language of many-valued logics and also of a fragment of linear logic (⊥,⊤,1, and 0 are propositional constants and the other symbols binary connectives).

Given a language L and a set of propositional variables V (which is disjoint from L), the *formulas* of L, or L\-*formulas*, are defined inductively as follows:

1.  Every variable is a formula.
2.  Every 0-ary symbol is a formula.
3.  If ∗ is a connective and n\>0 is its arity, then for all formulas ϕ1,…,ϕn,∗ϕ1…ϕn is also a formula.

A *substitution* σ for L is a map from the set of variables V to the set of formulas of L. It tells us which formula must replace which variable when we perform the substitution. If p is a variable, σ(p) denotes the formula that the substitution σ assigns to p. The result of applying a substitution σ to a formula ϕ is the formula σ(ϕ) obtained from ϕ by simultaneously replacing the variables in ϕ, say p1,…,pk, by, respectively, the formulas σ(p1),…,σ(pk). In this way a substitution σ gives a unique map σ from the set of formulas to itself that satisfies

1.  σ(p)\=σ(p), for every variable p,
2.  σ(†)\=†, for every 0-ary connective †,
3.  σ(∗ϕ1…ϕn)\=∗σ(ϕ1)…σ(ϕn), for every connective ∗ of arity n\>0 and formulas ϕ1,…,ϕn.

A formula ψ is a *substitution instance* of a formula ϕ if there is a substitution σ such that when applied to ϕ gives ψ, that is, if σ(ϕ)\=ψ.

In order to avoid unnecessary complications we will assume in the sequel that all the logics use the same set V of variables, so that the definition of formula of L depends only on L. A *logic system* (or *logic* for short) is given by a language L and a consequence relation ⊢ on the set of formulas of L that is *formal* in the sense that for every substitution σ, every set of formulas Γ and every formula ϕ,

if Γ⊢ϕ, then σ\[Γ\]⊢σ(ϕ)

where σ\[Γ\] is the set of the formulas obtained by applying the substitution σ to the formulas in Γ. The consequence relations on the set of formulas of a language that satisfy this property are called *structural* and also *substitution-invariant* in the literature. They were considered for the first time in Łoś & Suszko 1958. Tarski only explicitly considered closed sets also closed under substitution instances for some consequence relations; he never considered (at least explicitly) the substitution invariance condition for consequence relations.

We will refer to logic systems by the letter L with possible subindices, and we set L\=⟨L,⊢L⟩ and Ln\=⟨Ln,⊢Ln⟩ with the understanding that L(Ln) is the language of L(Ln) and ⊢L(⊢Ln) its consequence relation. A logic system L is *finitary* if ⊢L is a finitary consequence relation.

The consequence relation of a logic system can be given in several ways, some using proof-theoretic tools, others semantic means. One can define a substitution-invariant consequence relation using a proof system like a Hilbert-style axiom system, a Gentzen-style sequent calculus or a natural deduction style calculus, etc. One can also define a substitution-invariant consequence relation semantically using a class of mathematical objects (algebras, Kripke models, topological models, etc.) and a satisfaction relation.

If L1\=⟨L,⊢L1⟩ is a logic system with ⊢L1 defined by a proof-system and L2\=⟨L,⊢L2⟩ is a logic system over the same language with ⊢L2 defined semantically, we say that the proof-system used to define ⊢L1 is *sound* for the semantics used to define ⊢L2 if ⊢L1 is included in ⊢L2, namely if Γ⊢L1ϕ implies Γ⊢L2ϕ. If the other inclusion holds the proof-system is said to be *complete* with respect to the semantics that defines ⊢L2, that is when Γ⊢L2ϕ implies Γ⊢L1ϕ.

A set of L\-formulas Γ is called a *theory* of a logic system L, or L\-theory, if it is closed under the relation ⊢L, that is, if whenever Γ⊢Lϕ it also holds that ϕ∈Γ. In other words, the theories of L are the closed sets of the consequence operation C⊢L on the set of L\-formulas. In order to simplify the notation we denote this consequence operation by CL. A formula ϕ is a *theorem* (or validity) of L if ∅⊢Lϕ. Then CL(∅) is the set of theorems of L and is the least theory of L. The set of all theories of L will be denoted by Th(L).

Given a logic L, the consequence operation CL is substitution-invariant, which means that for every set of L\-formulas Γ and every substitution σ,σ\[CL(Γ)\]⊆CL(σ\[Γ\]). Moreover, for every theory T of L we have a new consequence operation defined as follows: CTL(Γ)\=CL(T∪Γ) that is, CTL(Γ) is the set of formulas that follow from Γ and T according to L. It turns out that T is closed under substitutions if and only if CTL is substitution-invariant.

If L is a logic and Γ,Δ are sets of L\-formulas, we will use the notation Γ⊢LΔ to state that for every ψ∈Δ,Γ⊢Lψ. Thus Γ⊢LΔ if and only if Δ⊆CL(Γ).

If L\=⟨L,⊢L⟩ is a logic system L′\=⟨L′,⊢L′⟩ whose language is L′ (hence all the L′\-formulas are L\-formulas) and whose consequence relation is defined by Γ⊢L′ϕ iff Γ⊢Lϕ, for every set of L′\-formulas Γ and every L′\-formula ϕ. In this situation we also say that L is an *expansion* of L′.

## 3. Some examples of logics

We give some examples of logic systems that we will refer to in the course of this essay, which are assembled here for the reader's convenience. Whenever possible we refer to the corresponding entries.

We use the standard convention of writing (ϕ∗ψ) instead of ∗ϕψ for binary connectives and omit the external parenthesis in the formulas.

### 3.1 Classical propositional logic

We take the language of Classical propositional logic CPL to be the set Lc\={∧,∨,→,⊤,⊥}, where ∧,∨,→ are binary connectives and ⊤,⊥ propositional constants. We assume the consequence relation defined by the usual truth-table method (⊤ is interpreted as true and ⊥ as false), that is,

Γ⊢CPLϕ iff  every truth valuation that assigns true to all ψ∈Γ assigns true to ϕ.

The formulas ϕ such that ∅⊢CPLϕ are the *tautologies*. Note that using the language Lc, the negation of a formula ϕ is defined as ϕ→⊥. For more information, see the entry on [classical logic][3]

### 3.2 Intuitionistic propositional logic

We take the language of Intuitionistic propositional logic to be the same as that of classical propositional logic, namely the set {∧,∨,→,⊤,⊥}. The consequence relation is defined by the following Hilbert-style calculus.

#### Axioms:

All the formulas of the forms

-   C0. ⊤
-   C1. ϕ→(ψ→ϕ)
-   C2. ϕ→(ψ→(ϕ∧ψ))
-   C3. (ϕ∧ψ)→ϕ
-   C4. (ϕ∧ψ)→ψ
-   C5. ϕ→(ϕ∨ψ)
-   C6. ψ→(ϕ∨ψ)
-   C7. (ϕ∨ψ)→((ϕ→δ)→((ψ→δ)→δ))
-   C8. (ϕ→ψ)→((ϕ→(ψ→δ))→(ϕ→δ))
-   C9. ⊥→ϕ

#### Rule of inference

ϕ,ϕ→ψ/ψ

For more information, see the entry on [intuitionistic logic][4]

### 3.3 Local Normal Modal logics

The language of modal logic we consider here is the set Lm\={∧,∨,→,¬,◻,⊤,⊥} that expands Lc by adding the unary connective ◻. In the standard literature on modal logic a normal modal logic is defined not as a consequence relation but as a set of formulas with certain properties. A *normal modal logic* is a set Λ of formulas of Lm which contains all the tautologies of the language of classical logic, the formulas of the form ◻(ϕ→ψ)→(◻ϕ→◻ψ) and is closed under the rules

ϕ,ϕ→ψ/ψϕ/◻ϕϕ/σ(ϕ), for every substitution σ

Note that the set Λ is closed under substitution instances, namely for every substitution σ, if ϕ∈Lm, then σ(ϕ)∈Lm.

The least normal modal logic is called K and can be axiomatized by the Hilbert-style calculus with axioms the tautologies of classical logic and the formulas ◻(ϕ→ψ)→(◻ϕ→◻ψ), and with rules of inference Modus Ponens, Modal Generalization and Substitution.

With a normal modal logic Λ it is associated the consequence relation defined by the calculus that takes as axioms all the formulas in Λ and as the only rule of inference Modus Ponens. The logic system given by this consequence relation is called the *local consequence* of Λ. We denote it by lΛ. Its theorems are the elements of Λ. It holds that

Γ⊢lΛϕ iff ϕ∈Λ or there are ϕ1,…,ϕn∈Γ such that (ϕ1∧…∧ϕn)→ϕ∈Λ.

### 3.4 Global Normal Modal logics

Another consequence relation is associated with each normal modal logic Λ. It is defined by the calculus that has as axioms the formulas of Λ and as rules of inference Modus Ponens and Modal Generalization. The logic system given by this consequence relation is called the *global consequence* of Λ and will be denoted by gΛ. It has the same theorems as the local lΛ, namely the elements of Λ. The difference between lΛ and gΛ lies in the consequences they allow to draw from nonempty sets of premises. This difference has an enormous effect on their algebraic behavior.

For more information on modal logic, see the entry on [modal logic][5]. The reader can find specific information on modal logics as consequence relations in Kracht 2006.

### 3.5 Intuitionistic Linear Logic without exponentials

We take as the language of Intuitionistic Linear Logic without exponentials the set {∧,∨,→,∗,0,1,⊤,⊥}, where ∧,∨,→,∗ are binary connectives and 0,1,⊤,⊥ propositional constants. We denote the logic by ILL. The axioms and rule of inference below provide a Hilbert-style axiomatization of this logic.

#### Axioms:

-   L1. 1
-   L2. (ϕ→ψ)→((ψ→δ)→(ϕ→δ))
-   L3. (ϕ→(ψ→δ))→(ψ→(ϕ→δ))
-   L4. ϕ→(ψ→(ϕ∗ψ))
-   L5. (ϕ→(ψ→δ))→((ϕ∗ψ)→δ)
-   L6. 1→(ϕ→ϕ)
-   L7. (ϕ∧ψ)→ϕ
-   L8. (ϕ∧ψ)→ψ
-   L9. ψ→(ϕ∨ψ)
-   L10. ϕ→(ϕ∨ψ)
-   L11. ((ϕ→ψ)∧(ϕ→δ))→(ϕ→(ψ∧δ))
-   L12. ((ϕ→δ)∧(ψ→δ))→((ϕ∨ψ)→δ)
-   L13. ϕ→⊤
-   L14. ⊥→ψ

#### Rules of inference:

ϕ,ϕ→ψ/ψϕ,ψ/ϕ∧ψ

The 0-ary connective 0 is used to define a negation by ¬ϕ:=ϕ→0. No specific axiom schema deals with 0.

For more information, see the entry on [linear logic][6]

### 3.6 The system R of Relevance Logic

The language we consider is the set {∧,∨,→,¬}, where ∧,∨,→ are binary connectives and ¬ a unary connective. A Hilbert style axiomatization for R can be given by the rules of Intuitionistic Linear Logic without exponentials and the axioms L2, L3, L7-L12 of this logic together with the axioms

1.  (ϕ→(ϕ→ψ))→(ϕ→ψ)
2.  (ϕ→¬ψ)→(ψ→¬ψ)
3.  (ϕ∧(ψ∨δ))→((ϕ∧ψ)∨ϕ∧δ))
4.  ¬¬ϕ→ϕ

For more information, see the entry on [relevance logic][7].

## 4. Algebras

The algebraic study of a particular logic has to provide first of all its formal language with an algebraic semantics using a class of algebras whose properties are exploited to understand which properties the logic has. In this section, we present how the formal languages of propositional logics are given an algebraic interpretation. In the next section, we address the question of what is an algebraic semantics for a logic system.

We start by describing the first two steps involved in the algebraic study of propositional logics. Both are needed in order to endow propositional languages with algebraic interpretations. To expound them we will assume knowledge of first-order logic (see the entries on [classical logic][8] and [first-order model theory][9]) and we will call *algebraic first-order languages*, or simply *algebraic languages*, the first-order languages with equality and without any relational symbols, so that these languages have only operation symbols (also called function symbols), if any, in the set of their non-logical symbols.

The two steps we are about to expound can be summarized in the slogan:

Propositional formulas are terms.

The *first step* consist in looking at the formulas of any propositional language L as the terms of the algebraic first-order language with L as its set of operation symbols. This means that (i) every connective of L of arity n is taken as an operation symbol of arity n (thus every 0-ary symbol of L is taken as an individual constant) and that (ii) the propositional formulas of L are taken as the terms of this first-order language; in particular the propositional variables are the variables of the first-order language. From this point of view the definition of L\-formula is exactly the definition of L\-term. We will refer to the algebraic language with L as its set of operation symbols as the L\-*algebraic language*.

The *second step* is to interpret the propositional formulas in the same manner in which terms of a first-order language are interpreted in a structure. In this way the concept of L\-algebra comes into play. On a given set A, an n\-ary connective is interpreted by a n\-ary function on A (a map that assigns an element of A to every sequence ⟨a1,…,an⟩ of elements of A). This procedure is a generalization of the truth-table interpretations of the languages of logic systems like classical logic and Łukasiewicz and Post's finite-valued logics. In those cases, given the set of truth-values at play the function that interprets a connective is given by its truth-table.

A way to introduce algebras is as the models of some algebraic first-order language. We follow an equivalent route and give the definition of algebra using the setting of propositional languages. Let L be a propositional language. An *algebra* A of type L, or L\-algebra for short, is a set A, called the carrier of A, together with a function ∗A on A of the arity of ∗, for every connective ∗ in L (if ∗ is 0-ary, ∗A is an element of A). An algebra A is *trivial* if its carrier is a one element set.

A *valuation* on an L\-algebra A is a map v from the set of variables into its carrier A. Algebras together with valuations are used to interpret in a compositional way the formulas of L, assuming that a connective ∗ of L is interpreted in an L\-algebra A by the function ∗A. Let A be an algebra of type L and v a valuation on A. The value of a compound formula ∗ϕ1…ϕn is computed by applying the function ∗A that interprets ∗ in A to the previously computed values v(ϕ1),…,v(ϕn) of the formulas ϕ1,…,ϕn. Precisely speaking the value v(ϕ) of a formula ϕ is defined inductively as follows:

1.  v(p)\=v(p), for each variable p,
2.  v(†)\=†A, if † is a 0-ary connective
3.  v(∗ϕ1…ϕn)\=∗A(v(ϕ1),…,v(ϕn)), if ∗ is a n\-ary (n\>0) connective.

Note that in this way we have obtained a map v from the set of L\-formulas to the carrier of A. It is important to notice that the value of a formula under a valuation depends only on the propositional variables that actually appear in the formula. Accordingly, if ϕ is a formula we use the notation ϕ(p1,…,pn) to indicate that the variables that appear in ϕ are in the list p1,…,pn, and given elements a1,…,an of an algebra A by ϕA\[a1,…,an\] we refer to the value of ϕ(p1,…,pn) under any valuation v on A such that v(p1)\=a1,…,v(pn)\=an.

A *third* and fundamental *step* in the algebraic study of logics is to turn the set of formulas of a language L into an algebra, the *algebra of formulas* of L, denoted by FmL. This algebra has the set of L\-formulas as carrier and the operations are defined as follows. For every n\-ary connective ∗ with n\>0, the function ∗FmL is the map that sends each tuple of formulas (ϕ1,…,ϕn) (where n is the arity of ∗) to the formula ∗ϕ1…ϕn, and for every 0-ary connective †,†FmL is †. If no confusion is likely we suppress the subindex in FmL and write Fm instead.

### 4.1 Some concepts of universal algebra and model theory

Algebras are a particular type of structure or model. An L\-algebra is a structure or model for the L\-algebraic first-order language. Therefore the concepts of model theory for the first-order languages apply to them (see the entries on [classical logic][10] and [first-order model theory][11]). We need some of these concepts. They are also used in universal algebra, a field that to some extent can be considered the model theory of the algebraic languages. We introduce the definitions of the concepts we need.

Given an algebra A of type L, a *congruence* of A is an equivalence relation θ on the carrier of A that satisfies for every n\-ary connective ∗∈L the following compatibility property: for every a1,…,an,b1,…,bn∈A,

if a1θb1,…,anθb1, then ∗A(a1,…,an) θ∗A(b1,…,bn).

Given a congruence θ of A we can reduce the algebra by identifying the elements which are related by θ. The algebra obtained is the *quotient algebra* of A modulo θ. It is denoted by A/θ, its carrier is the set A/θ of equivalence classes \[a\] of the elements a of A modulo the equivalence relation θ, and the operations are defined as follows:

1.  †A/θ\=\[†A\], for every 0-ary connective †,
2.  ∗A/θ(\[a1\],…,\[an\])\=\[∗A(a1,…,an)\], for every connective ∗ whose arity is n and n\>0.

The compatibility property ensures that the definition is sound.

Let A and B be L\-algebras. A *homomorphism* h from A to B is a map h from A to B such that for every 0-ary symbol †∈L and every n\-ary connective ∗∈L

1.  h(†A)\=†B
2.  h(∗A(a1,…,an))\=∗B(h(b1),…,h(bn)), for all a1,…,an∈A.

We say that B is a *homomorphic image* of A if there is a homomorphism from A to B which is an onto map from A to B. An homomorphism from A to B is an *isomorphism* if it is a one-to-one and onto map from A to B. If an isomorphism from A to B exists, we say that A and B are *isomorphic* and that B is an *isomorphic image* (or a copy) of A.

Let A and B be L\-algebras. A is a *subalgebra* of B if (1) A⊆B, (2) the interpretations of the 0-ary symbols of L in B belong to A and A is closed under the functions of B that interpret the non 0-ary symbols, and (3) the interpretations of the 0-ary symbols in A coincide with their interpretations in B and the interpretations on A of the other symbols in L are the restrictions to A of their interpretations in B.

We refer the reader to the entry on [first-order model theory][12] for the notions of direct product (called product there) and ultraproduct.

### 4.2 Varieties and quasivarieties

The majority of classes of algebras that provide semantics for propositional logics are quasivarieties and in most cases varieties. The theory of varieties and quasivarieties is one of the main subjects of universal algebra.

A variety of L\-algebras is a class of L\-algebras that is definable in a very simple way (by equations) using the L\-algebraic language. An L\-*equation* is a formula ϕ≈ψ where ϕ and ψ are terms of the L\-algebraic language (that is, L\-formulas if we take the propositional logics point of view). An equation ϕ≈ψ is *valid* in an algebra A, or A is a *model* of ϕ≈ψ, if for every valuation v on A,v(ϕ)\=v(ψ). This is exactly the same as to saying that the universal closure of ϕ≈ψ is a sentence true in A according to the usual semantics for first-order logic with equality. A *variety* of L\-algebras is a class of L\-algebras which is the class of all the models of a given set of L\-equations.

Quasivarieties of L\-algebras are classes of L\-algebras definable using the L\-algebraic language in a slightly more complex way than in varieties. A *proper L\-quasiequation* is a formula of the form ⋀i≤nϕi≈ψi→ϕ≈ψ. An L\-*quasiequation* is a formula of the above form but possibly with an empty antecedent, in which case it is just the equation ϕ≈ψ. Hence, the L\-quasiequations are the proper L\-quasiequations and the L\-equations. An L\-quasiequation is *valid* in an L\-algebra A, or the algebra is a model of it, if the universal closure of the quasiequation is sentence true in A. A *quasivariety* of L\-algebras is a class of algebras which is the class of the models of a given set of L\-quasiequations. Since equations are quasiequations, each variety is a quasivariety. The converse is false.

Varieties and quasivarieties can be characterized by the closure properties they enjoy. A class of L\-algebras is a variety if and only if it is closed under subalgebras, direct products, and homomorphic images. The variety generated by a class K of L\-algebras is the least class of L\-algebras that includes K and is closed under subalgebras, direct products and homomorphic images. It is also the class of the algebras that are models of the equations valid in K. For example, the variety generated by the algebra of the two truth-values for classical logic is the class of Boolean algebras. If we restrict that algebra to the operations for conjunction and disjunction only, it generates the variety of distributive lattices and if we restrict it to the operations for conjunction and disjunction and the interpretations of ⊤ and ⊥, it generates the variety of bounded distributive lattices.

A class of L\-algebras is a quasivariety if and only if it is closed under subalgebras, direct products, ultraproducts, isomorphic images, and contains a trivial algebra. The quasivariety generated by a class K of L\-algebras is the least class of L\-algebras that includes K, the trivial algebras and is closed under subalgebras, direct products, ultraproducts, and isomorphic images.

An SP-*class* of L\-algebras is a class of L\-algebras that contains a trivial algebra and is closed under isomorphic images, subalgebras, and direct products. Thus quasivarieties and varieties are all SP-classes. The SP-class generated by a class K of L\-algebras is the least class of L\-algebras that includes K, the trivial algebras and is closed under subalgebras, direct products and isomorphic images.

## 5. Algebraic semantics

The term 'algebraic semantics' was (and many times still is) used in the literature in a loose way. To provide a logic with an algebraic semantics was to interpret its language in a class of algebras, define a notion of satisfaction of a formula (under a valuation) in an algebra of the class and prove a soundness and completeness theorem, usually for the theorems of the logic only. Nowadays there is a precise concept of algebraic semantics for a logic system. It was introduced by Blok and Pigozzi in Blok & Pigozzi 1989. In this concept we find a general way to state in mathematically precise terms what is common to the many cases of purported algebraic semantics for specific logic systems found in the literature. We expose the notion in this section. To motivate the definition we discuss several examples first, stressing what is common to all of them. The reader does not need to know about the classes of algebras that provide algebraic semantics we refer to in the examples. Its existence is what is important.

The prototypical examples of algebraic semantics for propositional logics are the class **BA** of [Boolean algebras][13], which is the algebraic semantics for classical logic, and the class **HA** of Heyting algebras, which is the algebraic semantics for [intuitionistic logic][14]. Every Boolean algebra and every Heyting algebra A has a greatest element according to their natural order; this element is denoted usually by 1A and interprets the propositional constant symbol ⊤. It is taken as the distinguished element relative to which the algebraic semantics is given. The algebraic semantics of these two logics works as follows:

Let L be classical or intuitionistic logic and let K(L) be the corresponding class of algebras **BA** or **HA**. It holds that

Γ⊢Lϕ iff  for every A∈K(L) and every valuation v on A, if v(ψ)\=1A for all ψ∈Γ, then v(ϕ)\=1A.

This is the precise content of the statement that **BA** and **HA** are an algebraic semantics for classical logic and for intuitionistic logic respectively. The implication from left to right in the expression above is an algebraic soundness theorem and the implication from right to left an algebraic completeness theorem.

There are logics for which an algebraic semantics is provided in the literature in a slightly different way from the one given by the schema above. Let us consider the example in [Section 3.5][15] of Intuitionistic Linear Logic without exponentials. We denote by IL0 the class of IL-algebras with zero defined in Troelstra 1992 (but adapted to the language of ILL). Each A∈IL0 is a lattice with extra operations and thus has its lattice order ≤A. This lattice order has a greatest element which we take as the interpretation of ⊤. On each one of these algebras A there is a designated element 1A (the interpretation of 1) that may be different from the greatest element. It holds:

Γ⊢ILLϕ iff  for every A∈IL0 and every valuation v on A, if 1A≤Av(ψ) for all ψ∈Γ, then 1A≤Av(ϕ).

In this case one does not consider only a designated element in every algebra A but a set of designated elements, namely the elements of A greater than or equal to 1A, to provide the definition. Let us denote this set by D(A), and notice that D(A)\={a∈A:1A∧Aa\=1A}. Hence,

Γ⊢ILLϕ iff  for every A∈IL0 if v\[Γ\]⊆D(A), then v(ϕ)∈D(A).

Still there are even more complex situations. One of them is the system R of relevance logic. Consider the class of algebras Ral defined in Font & Rodríguez 1990 (see also Font & Rodríguez 1994) and denoted there by 'R'. Let us consider for every A∈Ral the set E(A):={a∈A:a∧A(a→Aa)\=a→Aa}. Then Ral is said to be an algebraic semantics for R because the following holds:

Γ⊢Rϕ iff  for every A∈Ral and every valuation v on A, if v\[Γ\]⊆E(A), then v(ϕ)∈E(A).

The common pattern in the examples above is that the algebraic semantics is given by

1.  a class of algebras K,
2.  in each algebra in K a set of designated elements that plays the role 1A (more precisely the set {1A}) plays in the cases of classical and intuitionistic logic, and
3.  this set of designated elements is definable (in the same manner on every algebra) by an equation in the sense that it is the set of elements of the algebra that satisfy the equation (i.e., its solutions). For **BA** and **HA** the equation is p≈⊤. For Ral it is p→(p∧p)≈p→p, and for IL0 it is 1∧p≈1.

The main point in Blok and Pigozzi's concept of algebraic semantics comes from the realization, mentioned in (3) above, that the set of designated elements considered in the algebraic semantics of known logics is in fact the set of solutions of an equation, and that what practice forced researchers to look for when they tried to obtain algebraic semantics for new logics was in fact, although not explicitly formulated in these terms, an equational way to define uniformly in every algebra a set of designated elements in order to obtain an algebraic soundness and completeness theorem.

We are now in a position to expose the mathematically precise concept of algebraic semantics. To develop a fruitful and general theory of the algebraization of logics some generalizations beyond the well-known concrete examples have to be made. In the definition of algebraic semantics, one takes the move from a single equation to a set of them in the definability condition for the set of designated elements.

Before stating Blok and Pigozzi's definition we need to introduce a notational convention. Given an algebra A and a set of equations Eq in one variable, we denote by Eq(A) the set of elements of A that satisfy all the equations in Eq. Then a logic L is said to have an *algebraic semantics* if there is a class of algebras K and a set of equations Eq in one variable such that

-   (\*\*) Γ⊢Lϕ iff  for every A∈K and every valuation v on A, if v\[Γ\]⊆Eq(A), then v(ϕ)∈Eq(A).

In this situation we say that the class of algebras K is an Eq\-*algebraic semantics* for L, or that the pair (K,Eq) is an *algebraic semantics* for L. If Eq consists of a single equation δ(p)≈ε(p) we will simply say that K is a δ(p)≈ε(p)\-algebraic semantics for L. In fact, Blok and Pigozzi required that Eq should be finite in their definition of algebraic semantics. But it is better to be more general. The definition clearly encompasses the situations encountered in the examples.

If K is an Eq\-algebraic semantics for a finitary logic L and Eq is finite, then the quasivariety generated by K is also an Eq\-algebraic semantics. The same does not hold in general if we consider the generated variety. For this reason it is customary and useful when developing the theory of the algebraization of finitary logics to consider quasivarieties of algebras as algebraic semantics instead of arbitrary subclasses that generate them. Conversely, if a quasivariety is an Eq\-algebraic semantics for a finitary L and Eq is finite, so is any subclass of the quasivariety that generates it.

In the best-behaved cases, the typical algebraic semantics of a logic is a variety, for instance in all the examples discussed above. But there are cases in which it is not.

A quasivariety can be an Eq\-algebraic semantics for a logic and an Eq′\-algebraic semantics for another logic (with Eq and Eq′ different). For example, due to Glivenko's theorem (see the entry on [intuitionistic logic][16]) the class of Heyting algebras is a {¬¬p≈1}\-algebraic semantics for classical logic and it is the standard {p≈1}\-algebraic semantics for intuitionistic logic. Moreover, different quasivarieties of algebras can be an Eq\-algebraic semantics for the same logic. It is known that there is a quasivariety that properly includes the variety of Boolean algebras and is a {p≈1}\-algebraic semantics for classical propositional logic. It is also known that for some logics with an algebraic semantics (relative to some set of equations), the natural class of algebras that corresponds to the logic is not an algebraic semantics (for any set of equations) of it. One example where this situation holds is in the local normal modal logic lK. Finally, there are logics that do not have any algebraic semantics.

These facts highlight the need for some criteria of the goodness of a pair (K,Eq) to provide a natural algebraic semantics for a logic L when some exists. One such criterion would be that L is an algebraizable logic with (K,Eq) as an algebraic semantics. Another that K is the natural class of algebras associated with the logic L. The notion of the natural class of algebras of a logic system will be discussed in [Section 8][17] and the concept of algebraizable logic in [Section 9][18].

## 6. Logical matrices

In the last section, we saw that to provide a logic with an algebraic semantics we need in many cases to consider in every algebra a set of designated elements instead of a single designated one. In the examples we discussed, the set of designated elements was definable in the algebras by one equation. This motivated the definition of algebraic semantics in [Section 5][19]. For many logics, to obtain a semantics similar to an algebraic semantics using the class of algebras naturally associated with them one needs for every algebra a set of designated elements that cannot be defined using only the equations of the algebraic language or is not even definable by using this language only. As we already mentioned, one example where this happens is the local consequence of the normal modal logic K.

To endow *every* logic with a semantics of an algebraic kind one has to consider, at least, algebras together with a set of designated elements, without any requirement about its definability using the corresponding algebraic language. These pairs are the logical matrices. Tarski defined the general concept of logical matrix in the 1920s but the concept was already implicit in previous work by Łukasiewicz, Bernays, Post and others, who used truth-tables, either in independence proofs or to define logics different from classical logic. A *logical matrix* is a pair ⟨A,D⟩ where A is an algebra and D a subset of the carrier A of A; the elements of D are called the *designated elements* of the matrix and accordingly D is called *the set of designated elements* (sometimes it is also called the *truth set* of the matrix). Logical matrices were first used as models of the theorems of specific logic systems, for instance in the work of McKinsey and Tarski, and also to define sets of formulas with similar properties to those of the set of theorems of a logic system, namely closure under substitution instances. This was the case of the n\-valued logics of Łukasiewicz and of his infinite-valued logic. It was Tarski who first considered logical matrices as a general tool to define this kind of sets.

The general theory of logical matrices explained in this entry is due mainly to Polish logicians, starting with Łoś 1949 and continuing in Łoś & Suszko 1958, building on previous work by Lindenbaum. In Łoś and Suszko's paper matrices are used for the first time both as models of logic systems (in our sense) and to define these kinds of systems.

In the rest of this section, we present the relevant concepts of the theory of logical matrices using modern terminology.

Given a logic L, a logical matrix ⟨A,D⟩ is said to be a *model* of L if wherever Γ⊢Lϕ then every valuation v on A that maps the elements of Γ to some designated value (i.e., an element of D) also maps ϕ to a designated value. When ⟨A,D⟩ is a model of L it is said that D is an L\-*filter* of the algebra A. The set of L\-filters of an algebra A plays a crucial role in the theory of the algebraization of logic systems. We will come to this point later.

A class M of logical matrices is said to be a *matrix semantics* for a logic L if

-   (\*)Γ⊢Lϕ iff  for every ⟨A,D⟩∈M and every valuation v on A, if v\[Γ\]⊆D, then v(ϕ)∈D.

The implication from left to right says that L is sound relative to M, and the other implication says that it is complete. In other words, M is a matrix semantics for L if and only if every matrix in M is a model of L and moreover for every Γ and ϕ such that Γ⊬Lϕ there is a model ⟨A,D⟩ of L in M that witnesses the fact, namely there is a valuation on the model that sends the formulas in Γ to designated elements and ϕ to a non-designated one.

Logical matrices are also used to define logics semantically. If M\=⟨A,D⟩ is a logical matrix, the relation defined by

Γ⊢Mϕ iff  for every valuation v on A if v(ψ)∈D for all ψ∈Γ, then v(ϕ)∈D

is a consequence relation which is substitution-invariant; therefore ⟨L,⊢M⟩ is a logic system. Similarly, we can define the logic of a class of matrices M by taking condition (\*) as a definition of a consequence relation. In the entry on [many-valued logic][20] the reader can find several logics defined in this way.

Every logic (independently of how it is defined) has a matrix semantics. Moreover, every logic has a matrix semantics whose elements have the property of being reduced in the following sense: A matrix ⟨A,D⟩ is *reduced* if there are no two different elements of A that behave in the same way. We say that a,b∈A *behave in the same way* in ⟨A,D⟩ if for every formula ϕ(q,p1,…,pn) and all elements d1,…,dn∈A ϕA\[a,d1,…,dn\]∈D iff ϕA\[b,d1,…,dn\]∈D. Thus a,b∈A behave differently if there is a formula ϕ(q,p1,…,pn) and elements d1,…,dn∈A such that one of ϕA\[a,d1,…,dn\] and ϕA\[b,d1,…,dn\] belongs to D but not both. The relation of behaving in the same way in ⟨A,D⟩ is a congruence relation of A. This relation is known after Blok & Pigozzi 1986, 1989 as the *Leibniz congruence* of the matrix ⟨A,D⟩ and is denoted by ΩA(D). It can be characterized as the greatest congruence relation of A that is *compatible* with D, that is, that does not relate elements in D with elements not in D. The concept of Leibniz congruence plays a fundamental role in the general theory of the algebraization of the logic systems developed during the 1980s by Blok and Pigozzi. The reader is referred to Font, Jansana, & Pigozzi 2003 and Czelakowski 2001 for extensive information on the developments around the concept of Leibniz congruence during this period.

Every matrix M can be turned into a reduced matrix by identifying the elements related by its Leibniz congruence. This matrix is called the *reduction* of M and is usually denoted by M∗. A matrix and its reduction are models of the same logic systems, and since reduced matrices have no redundant elements, the classes of reduced matrices that are matrix semantics for logic systems are usually taken as the classes of matrices that deserve study; they are better suited to encoding in algebraic-like terms the properties of the logics that have them as their matrix semantics.

The proof that every logic system has a reduced matrix semantics (i.e., a matrix semantics consisting of reduced matrices) is as follows. Let L be a logic system. Consider the matrices ⟨FmL,T⟩ over the formula algebra, where T is a theory of L. These matrices are known as the *Lindenbaum matrices* of L. It is not difficult to see that the class of those matrices is a matrix semantics for L. Since a matrix and its reduction are models of the same logics, the reductions of the Lindenbaum matrices of L constitute a matrix semantics for L too, and indeed a reduced one. Moreover, any class of reduced matrix models of L that includes the reduced Lindenbaum matrices of L is automatically a complete matrix semantics for L. In particular, the class of all reduced matrix models of L is a complete matrix semantics for L. We denote this class by RMatr(L).

The above proof can be seen as a generalization of the Lindenbaum-Tarski method for proving algebraic completeness theorems that we will discuss in the next section.

The class of the algebras of the matrices in RMatr(L) plays a prominent role in the theory of the algebraization of logics and it is denoted by Alg∗L. It has been considered for a long time the natural class of algebras that has to be associated with a given logic L as its algebraic counterpart. For instance, in the examples considered above, the classes of algebras that were given as algebraic semantics of the different logics (Boolean algebras, Heyting algebras, etc.) are exactly the class Alg∗L of the corresponding logic L. And in fact the class Alg∗L coincides with what was taken to be the natural class of algebras for all the logics L studied up to the 1990s. In the 1990s, due to the knowledge acquired of several logics not studied before, some authors proposed another way to define the class of algebras that has to be counted as the algebraic counterpart to be associated with a given logic L. For many logics L it leads exactly to the class Alg∗L but for others it gives a class that extends it properly. We will see it in [Section 8][21].

## 7. The Lindenbaum-Tarski method for proving algebraic completeness theorems

We now discuss the method that is most commonly used to prove that a class of algebras K is a δ(p)≈ε(p)\-algebraic semantics for a logic L, namely the Lindenbaum-Tarski method. It is the standard method used to prove that the classes of algebras of the examples mentioned in [Section 5][22] are algebraic semantics for the corresponding logics.

The Lindenbaum-Tarski method contributed in two respects to the elaboration of important notions in the theory of the algebraization of logics. It underlies Blok and Pigozzi's notion of algebraizable logic and reflecting on it some ways to define for each logic a class of algebras can be justified as providing a natural class. We will consider this issue in [Section 8][23].

The Lindenbaum-Tarski method can be outlined as follows. To prove that a class of algebras K is a δ(p)≈ε(p)\-algebraic semantics for a logic L first it is shown that K gives a sound δ(p)≈ε(p)\-semantics for L, namely that if Γ⊢Lϕ, then for every A∈K and every valuation v in A if the values of the formulas in Γ satisfy δ(p)≈ε(p), then the value of ϕ does too. Secondly, the other direction, that is, the completeness part, is proved by what is properly known as the Lindenbaum-Tarski method. This method uses the theories of L to obtain matrices on the algebra of formulas and then reduces these matrices in order to get for each one, a matrix whose algebra is in K and whose set of designated elements is the set of elements of the algebra that satisfy δ(p)≈ε(p). We proceed to describe the method step by step.

Let L be one of the logics discussed in the examples in [Section 5][24]. Let K be the corresponding class of algebras we considered there and let δ(p)≈ε(p) be the equation in one variable involved in the soundness and completeness theorem. To prove the completeness theorem one proceeds as follows. Given any set of formulas Γ:

1.  The theory CL(Γ)\={ϕ:Γ⊢Lϕ} of Γ, which we denote by T, is considered and the binary relation θ(T) on the set of formulas is defined using the formula p↔q as follows: ⟨ϕ,ψ⟩∈θ(T) iff ϕ↔ψ∈T.
2.  It is shown that θ(T) is a congruence relation on FmL. The set \[ϕ\] of the formulas related to the formula ϕ by θ(T) is called the equivalence class of ϕ.
3.  A new matrix ⟨Fm/θ(T),T/θ(T)⟩ is obtained by identifying the formulas related by θ(T), that is, Fm/θ(T) is the quotient algebra of Fm modulo θ(T) and T/θ(T) is the set of equivalence classes of the elements of T. Recall that the algebraic operations of the quotient algebra are defined by: ∗Fm/θ(T)(\[ϕ1\],…,\[ϕn\])\=\[∗ϕ1…ϕn\]†Fm/θ(T)\=\[†\]
4.  It is shown that θ(T) is a relation compatible with T, i.e., that if ⟨ϕ,ψ⟩∈θ(T) and ϕ∈T, then ψ∈T. This implies that ϕ∈T iff \[ϕ\]⊆T iff \[ϕ\]∈T/θ(T).
5.  It is proved that the matrix ⟨Fm/θ(T),T/θ(T)⟩ is reduced, that Fm/θ(T) belongs to K and that T/θ(T) is the set of elements of Fm/θ(T) that satisfy the equation δ(p)≈ε(p) in Fm/θ(T).

The proof of the completeness theorem then goes as follows. [(4)][25] and [(5)][26] imply that for every formula ψ,Γ⊢Lψ if and only if \[ψ\] satisfies the equation δ(p)≈ε(p) in the algebra Fm/θ(T). Thus, considering the valuation id mapping every variable p to its equivalence class \[p\], and whose extension id to the set of all formulas is such that id(ϕ)\=\[ϕ\] for every formula ϕ, we have for every formula ψ,

Γ⊢Lψ iff id(ψ) satisfies the equation δ(p)≈ε(p) in Fm/θ(T).

Hence, since by [(5)][27] Fm/θ(T)∈K, it follows that if Γ⊬Lϕ, then there is an algebra A (namely Fm/θ(T)) and a valuation v (namely id) such that the elements of v\[Γ\] satisfy the equation on A but v(ϕ) does not.

The Lindenbaum-Tarski method, when successful, shows that the class of algebras {Fm/θ(T):T is a theory of L} is a δ(p)≈ε(p)\-algebraic semantics for L. Therefore it also shows that every class of algebras K which is δ(p)≈ε(p)\-sound for L and includes {Fm/θ(T):T is a theory of L} is also a δ(p)≈ε(p)\-algebraic semantics for L.

Let us make some remarks on the Lindenbaum-Tarski method just described. The first is important for the generalizations leading to the classes of algebras associated with a logic. The other to obtain the conditions in the definition of the concept of algebraizable logic.

1.  Conditions [(4)][28] and [(5)][29] imply that θ(T) is in fact the Leibniz congruence of ⟨FmL,T⟩.
2.  When the Lindenbaum-Tarski method succeeds, it usually holds that in every algebra A∈K, the relation defined by the equation δ(p↔q)≈ε(p↔q), which is the result of replacing in δ(p)≈ε(p) the letter p by the formula p↔q that defines the congruence relation of a theory, is the identity relation on A.
3.  For every formula ϕ, the formulas δ(p/ϕ)↔ε(p/ϕ) and ϕ are interderivable in L (i.e., ϕ⊢Lδ(p/ϕ)↔ε(p/ϕ) and δ(p/ϕ)↔ε(p/ϕ)⊢Lϕ).

The concept of algebraizable logic introduced by Blok and Pigozzi, which we will discuss in [Section 9][30], can be described roughly by saying that a logic L is algebraizable if it has an algebraic semantics (K,Eq) such that (1) K is included in the natural class of algebras Alg∗L associated with L and (2) the fact that (K,Eq) is an algebraic semantics can be proved by using the Lindenbaum-Tarski method slightly generalized.

## 8. The natural class of algebras of a logic system

We shall now discuss the two definitions that have been considered as providing natural classes of algebras associated with a logic L. Both definitions can be seen as arising from an abstraction of the Lindenbaum-Tarski method and we follow this path in introducing them. The common feature of these abstractions is that in them the specific way in which the relation θ(T) is defined in the Lindenbaum-Tarski method is disregarded.

It has to be remarked that, nonetheless, for many logics both definitions lead to the same class. But the classes obtained from both definitions have been considered in the algebraic studies of many particular logics (for some logics one, for others the other) the natural class that deserves to be studied.

We already encountered the first generalization in [Section 6][31] when we showed that every logic has a reduced matrix semantics. It leads to the class of algebras Alg∗L; that its definition is a generalization of the Lindenbaum-Tarski method comes from the realization that the relation θ(T), associated with an L\-theory, defined in the different completeness proofs in the literature that use the Lindenbaum-Tarski method is in fact the Leibniz congruence of the matrix ⟨FmL,T⟩ and that therefore the matrix ⟨Fm/θ(T),T/θ(T)⟩ is its reduction. As we mentioned in [Section 6][32], for every logic L every L\-sound class of matrices M that contains all the matrices ⟨Fm/ΩFmL(T),T/ΩFmL(T)⟩, where T is a theory of L, is a complete reduced matrix semantics for L. From this perspective the notion of the Leibniz congruence of a matrix can be taken as a generalization to arbitrary matrices of the idea that comes from the Lindenbaum-Tarski procedure of proving completeness. Following this course of reasoning the class Alg∗L of the algebras of the reduced matrix models of a logic L is the natural class of algebras to associate with L. It is the class

{A/ΩA(F):A is an L\-algebra and F is a L\-filter of A}.

The second way of generalizing the Lindenbaum-Tarski method uses another fact, namely that in the examples discussed in [Section 3][33] the relation θ(T) is also the relation Ω∼FmL(T) defined by the condition

⟨ϕ,ψ⟩∈Ω∼FmL(T) iff ∀T′∈Th(L),∀p∈V,∀γ(p)∈FmL(T⊆T′⇒(γ(p/ϕ)∈T′⇔γ(p/ψ)∈T′)).

For every logic L and every L\-theory T the relation Ω∼FmL(T) defined in this way is the greatest congruence compatible with all the L\-theories that extend T. Therefore it holds that Ω∼FmL(T)\=⋂T′∈Th(L)TΩFmL(T′) where Th(L)T\={T′∈Th(L):T⊆T′}. The relation Ω∼FmL(T) is known as the *Suszko congruence* of T (w.r.t. L). Suszko defined it-in an equivalent way-in 1977.

For every logic L, the notion of the Suszko congruence can be extended to its matrix models. The *Suszko congruence* of a matrix model ⟨A,D⟩ of L (w.r.t. L) is the greatest congruence of A compatible with every L\-filter of A that includes D, that is, it is the relation given by Ω∼AL(D)\=⋂D′∈FiL(A)DΩA(D′) where FiL(A)D\={D′:D′ is a L\-filter of A and D⊆D′}. Notice that unlike the intrinsic notion of Leibniz congruence, the Suszko congruence of a matrix model of L is not intrinsic to the matrix: it depends in an essential way on the logic under consideration. The theory of the Suszko congruence of matrices has been developed in Czelakowski 2003 and recently in Albuquerque & Font & Jansana 2016.

In the same manner that the concept of Leibniz congruence leads to the concept of reduced matrix, the notion of Suszko congruence leads to the notion of Suszko-reduced matrix. A matrix model of L is *Suszko-reduced* if its Suszko congruence is the identity. Then the class of algebras of the Suszko-reduced matrix models of a logic L is another class of algebras that is taken as a natural class of algebras to associate with L. It is the class of algebras

AlgL\={A/Ω∼AL(F):A is an L\-algebra and F is a L\-filter of A}.

This class of algebras is nowadays taken in abstract algebraic logic as *the* natural class to be associated with L and it called its *algebraic counterpart*.

For an arbitrary logic L the relation between the classes AlgL and Alg∗L is that AlgL is the closure of Alg∗L under subdirect products, in particular Alg∗L⊆AlgL. In general, both classes may be different. For example, if L is the (∧,∨)\-fragment of classical propositional logic, AlgL is the variety of distributive lattices (the class that has been always taken to be the natural class of algebras associated with L) while Alg∗L is not this class-in fact it is not a quasivariety. Nonetheless, for many logics L, in particular for the algebraizable and the protoalgebraic ones to be discussed in the next sections, and also when Alg∗L is a variety, the classes AlgL and Alg∗L are equal. This fact can explain why in the 1980s, before the algebraic study of non-protoalgebraic logics was considered worth pursuing, the conceptual difference between both definitions of the natural class of algebras of a logic was not needed and accordingly it was not considered (or even discovered).

## 9. When a logic is algebraizable and what does this mean?

The algebraizable logics are purported to be the logics with the strongest possible link with their algebraic counterpart. This requirement demands that the algebraic counterpart of the logic should be an algebraic semantics but requires a more robust connection between the logic and the algebraic counterpart than that. This more robust connection is present in the best behaved particular logics known. The mathematically precise concept of algebraizable logic characterizes this type of link. Blok and Pigozzi introduced that fundamental concept in Blok & Pigozzi 1989 and its introduction can be considered the starting point of the unification and growth of the field of abstract algebraic logic in the 1980s. Blok and Pigozzi defined the notion of algebraizable logic only for finitary logics. Later Czelakowski and Herrmann generalized it to arbitrary logics and also weakened some conditions in the definition. We present here the generalized concept.

We said in [Section 7][34] that, roughly speaking, a logic L is algebraizable when 1) it has an algebraic semantics, i.e., a class of algebras K and a set of equations Eq(p) such that K is a Eq\-algebraic semantics for L,2) this fact can be proved by using the Lindenbaum-Tarski method slightly generalized and, moreover, 3) K⊆Alg∗L. The generalization of the Lindenbaum-Tarski method (as we described it in [Section 7][35]) consists in allowing in step (5) (as already done in the definition of algebraic semantics) a set of equations Eq(p) in one variable instead of a single equation δ(p)≈ε(p) and in allowing in a similar manner a set of formulas Δ(p,q) in at most two variables to play the role of the formula p↔q in the definition of the congruence of a theory. Then, given a theory T, the relation θ(T), which has to be the greatest congruence on the formula algebra compatible with T (i.e., the Leibniz congruence of T), is defined by

⟨ϕ,ψ⟩∈θ(T) iff Δ(p/ϕ,q/ψ)⊆T.

We need some notational conventions before engaging in the precise definition of algebraizable logic. Given a set of equations Eq(p) in one variable and a formula ϕ, let Eq(ϕ) be the set of equations obtained by replacing in all the equations in Eq the variable p by ϕ. If Γ is a set of formulas, let

Eq(Γ):=⋃ϕ∈ΓEq(ϕ).

Similarly, given a set of formulas in two variables Δ(p,q) and an equation δ≈ε, let Δ(δ,ε) denote the set of formulas obtained by replacing p by δ and q by ε in all the formulas in Δ. Moreover, if Eq is a set of equations, let

Δ(Eq)\=⋃δ≈ε∈EqΔ(δ,ε).

Given a set of equations Eq(p,q) in two variables, this set defines on every algebra A a binary relation, namely the set of pairs ⟨a,b⟩ of elements of A that satisfy in A all the equations in Eq(p,q). In standard model-theoretic notation, this set is the relation

{⟨a,b⟩:a,b∈A and A⊨Eq(p,q)\[a,b\]}.

The formal definition of algebraizable logic is as follows. A logic L is *algebraizable* if there is a class of algebras K, a set of equations Eq(p) in one variable and a set of formulas Δ(p,q) in two variables such that

1.  K is an Eq\-algebraic semantics for L, namely
    
    Γ⊢Lϕ iff  for every A∈K and every valuation v on A, if v\[Γ\]⊆Eq(A), then v(ϕ)∈Eq(A).
    
2.  For every A∈K, the relation defined by the set of equations in two variables Eq(Δ(p,q)) is the identity relation on A.

A class of algebras K for which there are sets Eq(p) and Δ(p,q) with these two properties is said to be an *equivalent algebraic semantics* for L. The set of formulas Δ is called a *set of equivalence formulas* and the set of equations Eq a *set of defining equations*.

The conditions of the definition imply:

3.  p is inter-derivable in L with the set of formulas Δ(Eq), that is Δ(Eq)⊢Lp and p⊢LΔ(Eq).
4.  For every L\-theory T, the Leibniz congruence of ⟨FmL,T⟩ is the relation defined by Δ(p,q), namely ⟨ϕ,ψ⟩∈ΩFm(T) iff Δ(p/ϕ,q/ψ)⊆T.
5.  If Δ and Δ′ are two sets of equivalence formulas, Δ⊢LΔ′ and Δ′⊢LΔ. Similarly, if Eq(p) and Eq′(p) are two sets of defining equations, for every algebra A∈K,Eq(A)\=Eq′(A).
6.  The class of algebras Alg∗L also satisfies conditions [(1)][36] and [(2)][37], and hence it is an equivalent algebraic semantics for L. Moreover, it includes every other class of algebras that is an equivalent algebraic semantics for L. Accordingly, it is called *the greatest equivalent algebraic semantics* of L.
7.  For every A∈Alg∗L there is exactly one L\-filter F such that the matrix ⟨A,F⟩ is reduced, and this filter is the set Eq(A). Or, to put it in other terms, the class of reduced matrix models of L is {⟨A,Eq(A)⟩:A∈Alg∗L}.
8.  Alg∗L is an SP-class and includes any class of algebras K which is an equivalent algebraic semantics for L. The class Alg∗L is then the greatest equivalent algebraic semantics for L and thus it deserves to be called *the* equivalent algebraic semantics of L.

Blok and Pigozzi's definition of algebraizable logic in Blok & Pigozzi 1989 was given only for finitary logics and, moreover, they imposed that the sets of defining equations and of equivalence formulas should be finite. Today we say that an algebraizable logic is *finitely algebraizable* if the sets of equivalence formulas Δ and of defining equations Eq can both be taken finite. And we say that a logic is Blok-Pigozzi algebraizable (BP-algebraizable) if it is finitary and finitely algebraizable.

If L is finitary and finitely algebraizable, then Alg∗L is not only an SP-class, but a quasivariety and it is the quasivariety generated by any class of algebras K which is an equivalent algebraic semantics for L.

We have just seen that in algebraizable logics the class of algebras Alg∗L plays a prominent role. Moreover, in these logics the classes of algebras obtained by the two ways of generalizing the Lindenbaum-Tarski method coincide, that is, Alg∗L\=AlgL-this is due to the fact that for any algebraizable logic L,Alg∗L is closed under subdirect products. Hence for every algebraizable logic L its algebraic counterpart AlgL is its greatest equivalent algebraic semantics, whatever perspective is taken on the generalization of the Lindenbaum-Tarski method.

Conditions [(1)][38] and [(2)][39] of the definition of algebraizable logic (instantiated to Alg∗L) encode the fact that there is a very strong link between an algebraizable logic L and its class of algebras AlgL, so that this class of algebras reflects the metalogical properties of L by algebraic properties of AlgL and conversely.

The definition of algebraizable logic can be stated in terms of translations between the logic and an equational consequence relation ⊨K associated with any equivalent algebraic semantics K for it-which is the same relation no matter what equivalent algebraic semantics we choose.

The equational consequence ⊨K of a class of algebras K is defined as follows.

{ϕi≈ψi:i∈I}⊨Kϕ≈ψ iff  for every A∈K and every valuation v on A, if v(ϕi)\=v(ψi), for all i∈I, then v(ϕ)\=v(ψ).

The translations needed are given by the set of defining equations and the set of equivalence formulas. A set of equations Eq(p) in one variable defines a *translation from formulas to sets of equations*: each formula is translated into the set of equations Eq(ϕ). Similarly, a set of formulas Δ(p,q) in two variables defines a *translation from equations to sets of formulas*: each equation ϕ≈ψ is translated into the set of formulas Δ(ϕ,ψ).

Condition [(1)][40] in the definition of algebraizable logic can be reformulated as Γ⊢Lϕ iff Eq(Γ)⊨KEq(ϕ) and condition [(2)][41] as p≈q⊨KEq(Δ(p,q)) and Eq(Δ(p,q))⊨Kp≈q.

These two conditions imply

9.  {ϕi≈ψi:i∈I}⊨Kϕ≈ψ iff Δ({ϕi≈ψi:i∈I})⊢LΔ(ϕ,ψ)

and condition [(3)][42] above is

p⊢LΔ(Eq(p)) and Δ(Eq(p))⊢Lp.

Thus an algebraizable logic L is faithfully interpreted in the equational logic of its equivalent algebraic semantics (condition [(2)][43]) by means of the translation of formulas into sets of equations given by a set of defining equations, and the equational logic of its equivalent algebraic semantics is faithfully interpreted in the logic L (condition [(9)][44]) by means of the translation of equations into sets of formulas given by an equivalence set of formulas. Moreover, both translations are inverses of each other (conditions [(2)][45] and [(3)][46]) modulo logical equivalence. In this way we see that the link between L and its greatest equivalent algebraic semantics is really very strong and that the properties of L should translate into properties of the associated equational consequence relation. The properties that this relation actually has depend on the properties of the class of algebras AlgL.

Given an algebraic semantics (K,Eq) for a logic L, a way to stress the difference between it being merely an algebraic semantics and being an algebraic semantics that makes L algebraizable is that the translation of formulas into equations given by the set of equations Eq is invertible in the sense that there is a translation, say Δ, of equations into formulas given by a set of formulas in two variables that satisfies condition [(9)][47] above, and such that Eq and Δ provide mutually inverses translations (i.e., conditions [(2)][48] and [(3)][49] hold).

The link between an algebraizable logic L and its greatest equivalent algebraic semantics given by the set of defining equations and the set of equivalence formulas allows us to prove a series of general theorems that relate the properties of L with the properties of AlgL. We will mention as a sample only three of them.

The first concerns the deduction theorem. To prove a general theorem relating the existence of a deduction theorem with an algebraic property requires first that a concept of deduction theorem applicable to any logic has to be defined. A logic L has the *deduction-detachment property* if there is a finite set of formulas Σ(p,q) such that for every set of formulas Γ and all formulas ϕ,ψ

Γ∪{ϕ}⊢Lψ iff Γ⊢LΣ(ϕ,ψ).

Note that this is a generalization of the standard deduction theorem (the direction from left to right in the above expression) and Modus Ponens (equivalent to the implication from right to left) that several logics have for a connective →. In those cases Σ(p,q)\={p→q}.

**Theorem 1.**  
A finitary and finitely algebraizable logic L has the deduction-detachment property if and only if the principal relative congruences of the algebras in AlgL are equationally definable.

The second theorem refers to Craig interpolation. Several notions of interpolation are applicable to arbitrary logics. We consider only one of them. A logic L has the *Craig interpolation property* for the consequence relation if whenever Γ⊢Lϕ there is a finite set of formulas Γ' with variables shared by ϕ and the formulas in Γ such that Γ⊢LΓ′ and Γ′⊢Lϕ.

**Theorem 2.**  
Let L be a finitary and finitely algebraizable logic with the deduction-detachment property. Then L has the Craig interpolation property if and only if AlgL has the amalgamation property.

Finally, the third theorem concerns the Beth definability property. The interested reader can find the definition in Font, Jansana & Pigozzi 2003. It is too involved in the general setting we are in to give it here.

**Theorem 3.**  
A finitary and finitely algebraizable logic has the Beth property if and only if all the epimorphisms of the category with objects the algebras in AlgL and morphisms the algebraic homomorphisms are surjective homomorphisms.

Other results relating properties of an algebraizable logic with a property of its natural class of algebras can be found in Raftery 2011, 2013. They concern respectively a generalization of the property of having the deduction-detachment property and the property that generalize the inconsistency lemmas of classical and intuitionistic logic. Also an abstract notion of having a theorem like Glivenko's theorem relating classical and intuitionistic logic has been proposed and related to an algebraic property in the case of algebraizable logics in Torrens 2008.

For several classes of algebras that are the equivalent algebraic semantics of some algebraizable logic it has been known for a long time that for every algebra in the class there is an isomorphism between the lattice of congruences of the algebra and a lattice of subsets of the algebra with important algebraic meaning. For example, in Boolean algebras and Heyting algebras these subsets are the lattice filters and in modal algebras they are the lattice filters that are closed under the operation that interprets ◻. In all those cases, the sets are exactly the L\-filters of the corresponding algebraizable logic L.

Algebraizable logics can be characterized by the existence of this kind of isomorphism between congruences and logic filters on the algebras of their algebraic counterpart. To spell out this characterization we need a couple of definitions. Let L be a logic. The *Leibniz operator* on an algebra A (relative to L) is the map from the L\-filters of A to the set of congruences of A that sends every L\-filter D of A to its Leibniz congruence ΩA(D). We say that the Leibniz operator of a logic L *commutes with the inverses of homomorphisms* between algebras in a class K if for every homomorphism h from an algebra A∈K to an algebra B∈K and every L\-filter D of B,h−1\[ΩB(D)\]\=ΩA(h−1\[D\]).

**Theorem 4.**  
A logic L is algebraizable if and only if for every algebra A∈AlgL the Leibniz operator commutes with the inverses of homomorphisms between algebras in AlgL and is an isomorphism between the set of all L\-filters of A, ordered by inclusion, and the set of congruences θ of A such that A/θ∈AlgL, ordered also by inclusion.

The theorem provides a logical explanation of the known isomorphisms mentioned above and similar ones for other classes of algebras. For example the isomorphism between the congruences and the normal subgroups of a group can be explained by the existence of an algebraizable logic L of which the class of groups is its greatest equivalent algebraic semantics and the normal subgroups of a group are its L\-filters.

A different but related characterization of algebraizable logics is this:

**Theorem 5.**  
A logic L is algebraizable if and only if on the algebra of formulas FmL, the map that sends every theory T to its Leibniz congruence commutes with the inverses of homomorphisms from FmL to FmL and is an isomorphismbetween the set Th(L) of theories of L, ordered by inclusion, and the set of congruences θ of FmL such that FmL/θ∈AlgL, also ordered by inclusion.

## 10. A classification of logics

Unfortunately not every logic is algebraizable. A typical example of a non-algebraizable logic is the local consequence of the normal modal logic K. Let us discuss this example.

The local modal logic lK and the corresponding global one gK are not only different, but their metalogical properties differ. For example lK has the deduction-detachment property for →:

Γ∪{ϕ}⊢lKψ iff Γ⊢lKϕ→ψ.

But gK does not have the deduction-detachment property (at all).

The logic gK is algebraizable and lK is not. The equivalent algebraic semantics of gK is the variety MA of modal algebras, the set of equivalence formulas is the set {p↔q} and the set of defining equations is {p≈⊤}. Interestingly, lK and gK have the same algebraic counterpart (i.e., AlglK\=AlglK), namely, the variety of modal algebras.

A lesson to draw from this example is that the algebraic counterpart of a logic L, i.e, the class of algebras AlgL, does not necessarily fully encode the properties of L. The class of modal algebras encodes the properties of gK because this logic is algebraizable and so the link between gK and AlggK is as strong as possible. But AlglK, the class of modal algebras, cannot by itself completely encode the properties of lK.

What causes this difference between gK and lK is that the class of reduced matrix models of gK is {⟨A,{1A}⟩:A∈MA}, but the class of reduced matrix models of lK properly includes this class so that for some algebras A∈MA, in addition to {1A} there is some other lK\-filter F with ⟨A,F⟩ reduced. This fact provides a way to show that lK can not be algebraizable by showing that the lK\-filters of the reduced matrices are not equationally definable from the algebras; if they where, then for every A∈AlglK there would exists exactly one lK\-filter F of A such that ⟨A,F⟩ is reduced.

Nonetheless, we can perform some of the steps of the Lindenbaum-Tarski method in the logic lK. We can define the Leibniz congruence of every lK\-theory in a uniform way by using formulas in two variables. But in this particular case the set of formulas has to be infinite. Let Δ(p,q)\={◻n(p↔q):n a natural number}, where for every formula ϕ,◻0ϕ is ϕ and ◻nϕ for n\>0 is the formula ϕ with a sequence of n boxes in front (◻…n…◻ϕ). Then, for every lK\-theory T the relation θ(T) defined by

⟨ϕ,ψ⟩∈θ(T) iff {◻n(ϕ↔ψ):n a natural number}⊆T

is the Leibniz congruence of T. In this case, it happens though that there are two different lK\-theories with the same Leibniz congruence, something that does not hold for gK.

The logics L with the property that there is a set of formulas (possibly infinite) Δ(p,q) in two variables which defines in every L\-theory T its Leibniz congruence, that is, that for all L\-formulas ϕ,ψ it holds ⟨ϕ,ψ⟩∈ΩFm(T) iff Δ(ϕ,ψ)⊆T are known as the *equivalential logics*. If Δ(p,q) is finite, the logic is said to be *finitely equivalential*. A set Δ(p,q) that defines in every L\-theory its Leibniz congruence is called a *set of equivalence formulas* for L. It is clear that every algebraizable logic is equivalential and that every finitely algebraizable logic is finitely equivalential.

The logic lK is, according to the definition, equivalential, and it can be shown that it is not finitely equivalential. The local modal logic **lS**4 is an example of a non-algebraizable logic that is finitely equivalential. A set of equivalence formulas for **lS**4 is {◻(p↔q)}.

A set of equivalence formulas for a logic L should be considered as a generalized biconditional, in the sense that collectively the formulas in the set have the relevant properties of the biconditional, for example of classical logic, that makes it suitable to define the Leibniz congruences of its theories. This comes out very clearly from the following syntactic characterization of the sets of equivalence formulas.

**Theorem 6.**  
A set Δ(p,q) of L\-formulas is a set of equivalence formulas for a logic L if and only if

-   (RΔ)⊢LΔ(p,p)
-   (MPΔ)p,Δ(p,q)⊢Lq
-   (SΔ) Δ(p,q)⊢LΔ(q,p)
-   (TΔ)Δ(p,q)∪Δ(q,r)⊢LΔ(p,r)
-   (ReΔ)Δ(p1,q1)∪…∪Δ(pn,qn)⊢LΔ(∗p1…pn,∗q1…qn), for every connective ∗ of L of arity n greater that 0.

There is some redundancy in the theorem. Conditions (SΔ) and (TΔ) follow from (RΔ),(MPΔ) and (ReΔ).

Equivalential logics were first considered as a class of logics deserving to be studied in Prucnal & Wroński 1974, and they have been studied extensively in Czelakowski 1981; see also Czelakowski 2001.

We already mentioned that the algebraizable logics are equivalential. The difference between an equivalential logic and an algebraizable one can be seen in the following syntactic characterization of algebraizable logics:

**Theorem 7.**  
A logic L is algebraizable if and only if there exists a set Δ(p,q) of L\-formulas and a set Eq(p) of L\-equations such that the conditions (RΔ)-(ReΔ) above hold for Δ(p,q) and p⊢LΔ(Eq(p)) and Δ(Eq(p))⊢Lp.

The set Δ(p,q) in the theorem is then an equivalence set of formulas for and the set Eq(p) a set of defining equations.

There are logics that are not equivalential but have the property of having a set of formulas \[p⇒q\] which collectively behave in a very weak sense as the implication → does in many logics. Namely, it has the properties (RΔ) and (MPΔ) in the syntactic characterization of a set of equivalence formulas, i.e.,

-   (R⇒) ⊢L\[p⇒p\]
-   (MP⇒) p,\[p⇒q\]⊢Lq

If a logic is finitary and has a set of formulas with these properties, there is always a finite subset with the same properties. The logics with a set of formulas (finite or not) with properties [(1)][50] and [(2)][51] above are called *protoalgebraic*. in particular, every equivalential logic and every algebraizable logic are protoalgebraic.

Protoalgebraic logics were first studied by Czelakowski, who called them non-pathological, and a slightly later by Blok and Pigozzi in Blok & Pigozzi 1986. The label 'protoalgebraic logic' is due to these last two authors.

The class of protoalgebraic logics turned out to be the class of logics for which the theory of logical matrices works really well in the sense that many results of universal algebra have counterparts for the classes of reduced matrix models of these logics and many methods of universal algebra can be adapted to its study; consequently the algebraic study of protoalgebraic logics using their matrix semantics has been extensively and very fruitfully pursued. But, as we will see, some interesting logics are not protoalgebraic.

An important characterization of protoalgebraic logics is via the behavior of the Leibniz operator. The following conditions are equivalent:

1.  L is protoalgebraic.
2.  The Leibniz operator ΩFmL is monotone on the set of L\-theories with respect to the inclusion relation, that is, if T⊆T′ are L\-theories, then ΩFmL(T)⊆ΩFmL(T′).
3.  For every algebra A, the Leibniz operator ΩA is monotone on the set of L\-filters of \\bA with respect to the inclusion relation.

Due to the monotonicity property of the Leibniz operator, for any protoalgebraic logic \\bL the class of algebras \\bAlg^\*\\bL is closed under subdirect products and therefore it is equal to \\bAlg\\bL. Hence for protoalgebraic logics the two ways we encountered to associate a class of algebras with a logic produce, as we already mentioned, the same result.

There are also characterizations of equivalential and finitely equivalential logics by the behavior of the Leibniz operator. The reader is referred to Czelakowski 2001 and Font & Jansana & Pigozzi 2003.

In his Raftery 2006b, Raftery studies Condition 7 in the list of properties of an algebraizable logic we gave just after the definition. The condition says:

For every \\bA \\in \\bAlg^\*\\bL the class of reduced matrix models of \\bL is \\{\\langle \\bA, \\iEq(\\bA) \\rangle : \\bA \\in \\bAlg^\*\\bL\\}, where \\iEq(p) is the set of defining equations for \\bL.

The logics with a set of equations \\iEq(p) with this property, namely such that for every \\bA \\in \\bAlg^\*\\bL the class of reduced matrix models of \\bL is \\{\\langle \\bA, \\iEq(\\bA) \\rangle : \\bA \\in \\bAlg^\*\\bL\\}, are called *truth-equational*, a name introduced in Raftery 2006b. Some truth-equational logics are protoalgebraic but others are not. We will see later an example of the last situation.

The protoalgebraic logics that are truth-equational are in fact the *weakly algebraizable logics* studied already in Czelakowski & Jansana 2000. Every algebraizable logic is weakly algebraizable. In fact, the algebraizable logics are the equivalential logics that are truth-equational. But not every weakly algebraizable logic is equivalential. An example is the quantum logic determined by the ortolattices, namely by the class of the matrices \\langle \\bA, \\{1\\} \\rangle where \\bA is an ortolattice and 1 is its greatest element (see Czelakowski & Jansana 2000 and Malinowski 1990).

The classes of logics we have considered so far are the main classes in what has come to be known as the *Leibniz hierarchy* because its members are classes of logics that can be characterized by the behavior of the Leibniz operator. We described only the most important classes of logics in the hierarchy. The reader is referred to Czelakowski 2001, Font 2016b, Font, Jansana & Pigozzi 2003, and Font 2016b for more information. In particular, Czelakowski 2001 gathers extensively the information on the different classes of the Leibniz hierarchy known at the time of its publication. The relations between the classes of the Leibniz hierarchy considered in this entry are summarized in the following diagram:

Figure. The Leibniz Hierarchy

Recently the Leibniz hierarchy has been refined in Cintula & Noguera 2010, 2016. The idea is to consider instead of sets of equivalence formulas \\Delta (that correspond to the biconditional) sets of formulas \[p\\Rightarrow q\] with properties of the conditional (\\rightarrow), among which (R\_{\\Rightarrow}) and (MP\_{\\Rightarrow}), and such that the set \[p\\Rightarrow q\] \\cup\[p\\Rightarrow q\] is a set of equivalence formulas. New classes arise when the set \[p\\Rightarrow q\] has a single element.

## 11. Replacement principles

Two classes of logics that are not classes of the Leibniz hierarchy have been extensively studied in abstract algebraic logic. They are defined from a completely different perspective from the one provided by the behavior of the Leibniz operator, namely from the perspective given by the replacement principles a logic might enjoy.

The strongest replacement principle that a logic system \\bL might have, shared for example by classical logic, intuitionistic logic and all its axiomatic extensions, says that for any set of formulas \\Gamma, any formulas \\phi , \\psi , \\delta and any variable p

if \\Gamma , \\phi \\vdash\_{\\bL } \\psi and \\Gamma , \\psi \\vdash\_{\\bL } \\phi, then \\Gamma , \\delta(p/\\phi) \\vdash\_{\\bL } \\delta(p/\\psi) and \\Gamma , \\delta(p/\\psi) \\vdash\_{\\bL } \\delta(p/\\phi),

where \\delta(p/\\phi) and \\delta(p/\\psi) are the formulas obtained by substituting respectively \\phi and \\psi for p in \\delta. This replacement property is taken by some authors as the formal counterpart of Frege's principle of compositionality for truth. Logics satisfying this strong replacement property are called *Fregean* in Font& Jansana 1996 and are thoroughly studied in Czelakowski & Pigozzi 2004a, 2004b.

Many important logics do not satisfy the strong replacement property, for instance almost all the logics (local or global) of the modal family, but some, like the local consequence relation of a normal modal logic, satisfy a weaker replacement principle: for all formulas \\phi , \\psi , \\delta,

if \\phi \\vdash\_{\\bL }\\psi and \\psi \\vdash\_{\\bL }\\phi, then \\delta(p/\\phi) \\vdash\_{\\bL } \\delta(p/\\psi) and \\delta(p/\\psi) \\vdash\_{\\bL } \\delta(p/\\phi).

A logic satisfying this weaker replacement property is called *selfextensional* by Wójcicki (e.g., in Wójcicki 1969, 1988) and *congruential* in Humberstone 2005. We will use the first terminology because it seems more common-at least in the abstract algebraic logic literature.

Selfextensional logics have a very good behavior from several points of view. Their systematic study started in Wójcicki 1969 and has recently been continued in the context of abstract algebraic logic in Font & Jansana 1996; Jansana 2005, 2006; and Jansana & Palmigiano 2006.

There are selfextensional and non-selfextensional logics in any one of the classes of the Leibniz hierarchy and also in the class of non-protoalgebraic logics. These facts show that the perspective that leads to the consideration of the classes in the Leibniz hierarchy and the perspective that leads to the definition of the selfextensional and the Fregean logics as classes of logics worthy of study as a whole are to a large extent different. Nonetheless, one of the trends of today's research in abstract algebraic logic is to determine the interplay between the two perspectives and study the classes of logics that arise when crossing both classifications. In fact, there is a connection between the replacement principles and the Suszko congruence (and thus with the Leibniz congruence). A logic \\bL satisfies the strong replacement principle if and only if for every \\bL\-theory T its Suszko congruence is the interderivability relation relative to T, namely the relation \\{\\langle \\phi , \\psi \\rangle : T, \\phi \\vdash\_{\\bL } \\psi and T, \\psi \\vdash\_{\\bL } \\phi \\}. And a logic \\bL satisfies the weak replacement principle if and only if the Suszko congruence of the set of theorems of \\bL is the interderivability relation \\{\\langle \\phi , \\psi \\rangle : \\phi \\vdash\_{\\bL } \\psi and \\psi \\vdash\_{\\bL } \\phi \\}.

## 12. Beyond protoalgebraic logics

Not all interesting logics are protoalgebraic. In this section we will briefly discuss four examples of non-protoalgebraic logics: the logic of conjunction and disjunction, positive modal logic, the strict implication fragment of \\blK and Visser's subintuitionistic logic. All of them are selfextensional. In the next section, we will expound the semantics of abstract logics and generalized matrices that serves to develop a really general theory of the algebraization of logic systems. As we will see, the perspective changes in an important respect from the perspective taken in logical matrix model theory.

### 12.1 The logic of conjunction and disjunction

This logic is the \\{\\wedge , \\vee , \\bot , \\top \\}\-fragment of Classical Propositional Logic. Hence its language is the set \\{\\wedge , \\vee , \\top , \\bot \\} and its consequence relation is given by

\\Gamma \\vdash \\phi\\txtiff\\Gamma \\vdash\_{\\bCPL} \\phi.

It turns out that it is also the \\{\\wedge , \\vee , \\bot , \\top \\}\-fragment of Intuitionistic Propositional Logic. Let us denote it by \\bL^{\\{\\wedge , \\vee \\}}.

The logic \\bL^{ \\{\\wedge , \\vee \\}} is not protoalgebraic but it is Fregean. Its classes of algebras \\bAlg^\*\\bL^{ \\{\\wedge , \\vee \\}} and \\bAlg\\bL^{ \\{\\wedge , \\vee \\}} are different. Moreover, \\bAlg\\bL^{\\{\\wedge , \\vee \\}} is the variety of bounded distributive lattices, the class of algebras naturally expected to be the associated with \\bL^{ \\{\\wedge , \\vee \\}}, but \\bAlg^\*\\bL^{ \\{\\wedge , \\vee \\}} is strictly included in it. In fact, this last class of algebras is not a quasivariety, but it is first-order definable still.

The logic \\bL^{\\{\\wedge , \\vee \\}} is thus a natural example of a logic where the class of algebras of its reduced matrix models is not the right class of algebras expected to correspond to it (see Font & Verdú 1991 where the logic is studied at length). The properties of this example and its treatment in Font & Verdú 1991 motivated the systematic study in Font & Jansana 1996 of the kind of models for sentential logics considered in Brown & Suszko 1973, namely, abstract logics.

### 12.2 Positive Modal Logic

Positive Modal Logic is the \\{\\wedge , \\vee , \\Box , \\Diamond , \\bot , \\top \\}\-fragment of the local normal modal logic \\blK. We denote it by \\bPML. This logic has some interest in Computer Science.

The logic \\bPML is not protoalgebraic, it is not truth-equational, it is selfextensional and it is not Fregean. Its algebraic counterpart \\bAlg \\bPML is the class of positive modal algebras introduced by Dunn in Dunn 1995. The logic is studied in Jansana 2002 from the perspective of abstract algebraic logic. The class of algebras \\bAlg\\bPML is different from \\bAlg^\*\\bPML.

### 12.3 Visser's subintuitionistic logic

This logic is the logic in the language of intuitionistic logic that has to the least normal modal logic K the same relation that intuitionistic logic has to the normal modal logic S4. It was introduced in Visser 1981 (under the name Basic Propositional Logic) and has been studied by several authors, such as Ardeshir, Alizadeh, and Ruitenburg. It is not protoalgebraic, it is truth-equational and it is Fregean (hence also selfextensional).

### 12.4 The strict implication fragment of the local modal logic **lK**

The strict implication of the language of modal logic is defined using the \\Box operator and the material implication \\rightarrow. We will use \\Rightarrow for the strict implication. Its definition is \\phi \\Rightarrow \\psi := \\Box(\\phi \\rightarrow \\psi). The language of the logic \\bSilK, that we call the strict implication fragment of the local modal logic \\blK, is the language L = \\{\\wedge , \\vee , \\bot , \\top , \\Rightarrow \\}. We can translate the formulas of L to formulas of the modal language by systematically replacing in an L\-formula \\phi every subformula of the form \\psi \\Rightarrow \\delta by \\Box(\\psi \\rightarrow \\delta) and repeating the process until no appearance of \\Rightarrow is left. Let us denote by \\phi^\* the translation of \\phi and by \\Gamma^\* the set of the translations of the formulas in \\Gamma. Then the definition of the consequence relation of \\bSilK is:

\\Gamma \\vdash\_{\\bSilK } \\phi\\txtiff\\Gamma^\* \\vdash\_{\\blK } \\phi^\*.

The logic \\bSilK is not protoalgebraic and is not truth-equational. It is selfextensional but it is not Fregean. Its algebraic counterpart \\bAlg \\bSilK is the class of bounded distributive lattices with a binary operation with the properties of the strict implication of \\blK. This class of algebras is introduced and studied in Celani & Jansana 2005, where its members are called Weakly Heyting algebras. \\bAlg \\bSilK does not coincide with \\bAlg^\* \\bSilK.

The logic \\bSilK belongs, as Visser's logic, to the family of so-called subintuitionistic logics. A reference to look at for information on these logics is Celani & Jansana 2003.

## 13. Abstract logics and generalized matrices

The logical matrix models of a given logic can be thought of as algebraic generalizations of its theories, more precisely, of its Lindenbaum matrices. They come from taking a local perspective centered around the theories of the logic considered one by one, and its analogs the logic filters (also taken one by one). But, as we will see, the properties of a logic depend in general on the global behavior of the set of its theories taken together as a bunch; or-to put it otherwise-on its consequence relation. The consideration of this global behavior introduces a global perspective on the design of semantics for logic systems. The abstract logics that we are going to define can be seen, in contrast to logical matrices, as algebraic generalizations of the logic itself and its extensions. They are the natural objects to consider when one takes the global perspective seriously.

Let L be a propositional language. An L\-*abstract logic* is a pair \\cA = \\langle \\bA, C \\rangle where \\bA is an L\-algebra and C an abstract consequence operation on A.

Given a logic \\bL, an L\-abstract logic \\cA = \\langle \\bA, C \\rangle is a *model* of \\bL if for every set of formulas \\Gamma and every formula \\phi

\\Gamma \\vdash\_{\\bL } \\phi\\txtiff for every valuation v on \\bA, \\bv(\\phi) \\in C(\\bv\[\\Gamma\]).

This definition has an equivalent in terms of the closed sets of C: an abstract logic \\cA = \\langle \\bA, C \\rangle is a model of \\bL if and only if for every C\-closed set X the matrix \\langle \\bA, X \\rangle is a model of \\bL (i.e., X is an \\bL\-filter).

This observation leads to another point of view on abstract logics as models of a logic system. It transforms them into a collection of logical matrices (given by the closed sets) over the same algebra, or, to put it more simply, into a pair \\langle \\bA, \\cB \\rangle where \\cB is a collection of subsets of A. A structure of this type is called in the literature a *generalized matrix* (Wójcicki 1973) and more recently it has been called an *atlas* in Dunn & Hardegree 2001. It is said to be a model of a logic \\bL if for every X \\in \\cB, \\langle \\bA, X \\rangle is a matrix model of \\bL.

A logic system \\bL = \\langle L, \\vdash\_{\\bL } \\rangle straightforwardly provides us with an equivalent abstract logic \\langle \\bFm\_L, C\_{\\vdash\_{ \\bL} } \\rangle and an equivalent generalized matrix \\langle \\bFm\_L,\\tTH(\\bL) \\rangle, where \\tTH(\\bL) is the set of C\_{\\vdash\_{ \\bL}}\-closed sets of formulas (i.e., the \\bL\-theories). We will move freely from one to the other.

The generalized matrices \\langle \\bA, \\cB \\rangle that correspond to abstract logics have the following two properties: A \\in \\cB and \\cB is closed under intersections of arbitrary nonempty families. A family \\cB of subsets of a set A with these two properties is known as a *closed-set system* and also as a *closure system*. There is a dual correspondence between abstract consequence operations on a set A and closed-set systems on A. Given an abstract consequence operation C on A, the set \\cC\_C of C\-closed sets is a closed-set system and given a closed-set system \\cC the operation C\_{\\cC} defined by C\_{\\cC }(X) = \\bigcap \\{Y \\in \\cC: X \\subseteq Y\\}, for every X \\subseteq A, is an abstract consequence operation. In general, every generalized matrix \\langle \\bA, \\cB \\rangle can be turned into a closed-set system by adding to \\cB \\cup \\{A\\} the intersections of arbitrary nonempty subfamilies, and therefore into an abstract logic, which we denote by \\langle \\bA, C\_{\\cB }\\rangle. In that situation we say that \\cB is a *base* for C\_{\\cB}. It is obvious that an abstract logic can have more than one base. Any family of closed sets with the property that every closed set is an intersection of elements of the family is a base. The study of bases for the closed set system of the theories of a logic usually plays an important role in its study. For example, in classical logic an important base for the family of its theories is the family of maximal consistent theories and in intuitionistic logic the family of prime theories. In a similar way, the systematic study of bases for generalized matrix models of a logic becomes important.

In order to make the exposition smooth we will now move from abstract logics to generalized matrices. Let \\cA = \\langle \\bA, \\cB \\rangle be a generalized matrix. There exists the greatest congruence of \\bA compatible with all the sets in \\cB; it is known as the *Tarski congruence* of \\cA. We denote it by \\bOmega^{\\sim}\_{\\bA }(\\cB). It has the following characterization using the Leibniz operator

\\bOmega^{\\sim}\_{\\bA }(\\cB) = \\bigcap\_{X \\in \\cB} \\bOmega\_{\\bA }(X).

It can also be characterized by the condition:

\\langle a, b \\rangle \\in \\bOmega^{\\sim}\_{\\bA }(\\cB)\\txtiff for every \\phi(p, q\_1 , \\ldots ,q\_n), every c\_1 , \\ldots ,c\_n \\in A and all X \\in \\cB

\\phi^{\\bA }\[a, c\_1 , \\ldots ,c\_n\] \\in X \\Leftrightarrow \\phi^{\\bA }\[b, c\_1 , \\ldots ,c\_n\] \\in X

or equivalently by

\\langle a, b \\rangle \\in \\bOmega^{\\sim}\_{\\bA }(\\cB)\\txtiff for every \\phi(p, q\_1 , \\ldots ,q\_n) and every c\_1 , \\ldots ,c\_n \\in A, C\_{\\cB }(\\phi^{\\bA }\[a, c\_1 , \\ldots ,c\_n\]) = C\_{\\cB }(\\phi^{\\bA }\[b, c\_1 , \\ldots ,c\_n\]).

A generalized matrix is *reduced* if its Tarski congruence is the identity. Every generalized matrix \\langle \\bA, \\cB \\rangle can be turned into an equivalent reduced one by identifying the elements related by its Tarski congruence. The result is the quotient generalized matrix \\langle \\bA / \\bOmega^{\\sim}\_{\\bA }(\\cB), \\cB/\\bOmega^{\\sim}\_{\\bA }(\\cB) \\rangle, where \\cB/\\bOmega^{\\sim}\_{\\bA }(\\cB) = \\{X/\\bOmega^{\\sim}\_{\\bA }(\\cB): X \\in \\cB\\} and for X \\in \\cB, X/\\bOmega^{\\sim}\_{\\bA }(\\cB) is the set of equivalence classes of the elements of X.

The properties of a logic \\bL depend in general, as we already said, on the global behavior of the family of its theories. In some logics, this behavior is reflected in the behavior of its set of theorems, as in classical and intuitionistic logic due to the deduction-detachment property, but this is by no means the most general situation, as it is witnessed by the example of the local and global modal logics of the normal modal logic K. Both have the same theorems but do not share the same properties. Recall that the local logic has the deduction-detachment property but the global one not. In a similar way, the properties of a logic are *in general* better encoded in an algebraic setting if we consider families of \\bL\-filters on the algebras than if we consider a single \\bL\-filter as it is done in logical matrices model theory.

The generalized matrix models that have naturally attracted most of the attention in the research on the algebraization of logics are the generalized matrices of the form \\langle \\bA, \\tFi\_{\\bL }\\bA \\rangle where \\tFi\_{\\bL }\\bA is the set of all the \\bL\-filters of \\bA. An example of a property of logics encoded in the structure of the lattices of \\bL\-filters of the L\-algebras is that for every finitary protoalgebraic logic \\bL, \\bL has the deduction-detachment property if and only if for every algebra \\bA the join-subsemilattice of the lattice of all \\bL\-filters of \\bA that consists of the finitely generated \\bL\-filters is dually residuated; see Czelakowski 2001.

The generalized matrices of the form \\langle \\bA, \\tFi\_{\\bL }\\bA \\rangle are called the *basic full g-models* of \\bL (the letter 'g' stands for generalized matrix). The interest in these models lead to the consideration of the class of generalized matrix models of a logic \\bL with the property that their quotient by their Tarski congruence is a basic full g-model. These generalized matrices (and their corresponding abstract logics) are called *full g-models*. The theory of the full g-models of an arbitrary logic is developed in Font & Jansana 1996, where the notion of full g-model and basic full g-model is introduced. We will mention some of the main results obtained there.

Let \\bL be a logic system.

1.  \\bL is protoalgebraic if and only if for every full g-model \\langle \\bA, \\cC \\rangle there exists an \\bL\-filter F of \\bA such that \\cC = \\{G \\in \\tFi\_{\\bL }\\bA: F \\subseteq G\\}.
2.  If \\bL is finitary, \\bL is finitely algebraizable if and only if for every algebra \\bA and every \\bL\-filter F of \\bA, the generalized matrix \\langle \\bA, \\{G \\in \\tFi\_{\\bL }\\bA: F \\subseteq G\\} \\rangle is a full g-model and \\bAlg\\bL is a quasivariety.
3.  The class \\bAlg\\bL is both the class of algebras of the reduced generalized matrix models of \\bL, and the class \\{\\bA: \\langle \\bA, \\tFi\_{\\bL }\\bA \\rangle is reduced\\}.
4.  For every algebra \\bA there is an isomorphism between the family of closed-set systems \\cC on A such that \\langle\\bA, \\cC\\rangle is a full g-model of \\bL and the family of congruences \\theta of \\bA such that \\bA/\\theta \\in \\bAlg\\bL. The isomorphism is given by the Tarski operator that sends a generalized matrix to its Tarski congruence.

The isomorphism [theorem (4)][52] above is a generalization of the isomorphism theorems we encountered earlier for algebraizable logics. What is interesting here is that the theorem holds for every logic system. Using [(2)][53] above, [theorem (4)][54] entails the isomorphism theorem for finitary and finitely algebraizable logics. Thus [theorem (4)][55] can be seen as the most general formulation of the mathematical logical phenomena that underlies the isomorphism theorems between the congruences of the algebras in a certain class and some kind of subsets of them we mentioned in [Section 9][56].

The use of generalized matrices and abstract logics as models for logic systems has proved very useful for the study of selfextensional logics in general and more in particular for the study of the selextenional logics that are not protoalgebraic such as the logics discused in [Section 12][57]. In particular, they have proved very useful for the study of the class of finitary selfextensional logics with a conjunction and the class of finitary selfextensional logics with the deduction-detachment property for a single term, say p \\rightarrow q; the logics in this last class are nevertheless protoalgebraic. A logic \\bL has a *conjunction* if there is a formula in two variables \\phi(p, q) such that

\\phi(p, q) \\vdash\_{\\bL } p, \\phi(p, q)\\vdash\_{\\bL } q, p, q \\vdash\_{\\bL } \\phi(p, q).

The logics in those two classes have the following property: the Tarski relation of every full g-model \\langle \\bA, C \\rangle is \\{\\langle a, b \\rangle \\in A \\times A: C(a) = C(b)\\}. A way of saying it is to say that for these logics the property that defines selfextensionality, namely that the interderivability condition is a congruence, lifts or transfers to every full g-model. The selfextensional logics with this property are called *fully selfextensional*. This notion was introduced in Font & Jansana 1996 under the name 'strongly selfextensional'. All the known and natural selfextensional logics are fully selfextensional, in particular the logics discussed in [Section 12][58], but Babyonyshev showed (Babyonyshev 2003) an *ad hoc* example of a selfextensional logic that is not fully selfextensional.

An interesting result on the finitary logics which are fully selfextensional logics with a conjunction or with the deduction-detachment property for a single term is that their class of algebras \\bAlg\\bL is always a variety. The researchers in abstract algebraic logic are somehow surprised by the fact that several finitary and finitely algebraizable logics have a variety as its equivalent algebraic semantics, when the theory of algebraizable logics allows in general to prove only that the equivalent algebraic semantics of a finitary and finitely algebraizable logic is a quasivariety. The result explains this phenomenon for the finitary and finitely algebraizable logics to which it applies. For many other finitary and finitely algebraizable logics to find a convincing explanation is still an open area of research.

Every abstract logic \\cA = \\langle \\bA, C \\rangle determines a quasi-order (a reflexive and transitive relation) on A. It is the relation defined by a \\le\_{\\cA } b\\txtiff C(b) \\subseteq C(a)\\txtiff b \\in C(a).

Thus a \\le\_{\\cA } b if and only if b belongs to every C\-closed set to which A belongs. For a fully selfextensional logic \\bL, this quasi-order turns into a partial order in the reduced full g-models, which are in fact the reduced basic full g-models, namely, the abstract logics \\langle \\bA, \\tFi\_{\\bL }\\bA \\rangle with \\bA \\in \\bAlg\\bL. Consequently, in a fully selfextensional logic \\bL every algebra \\bA \\in \\bAlg\\bL carries a partial order definable in terms of the family of the \\bL\-filters. If the logic is fully selfextensional with a conjunction this partial order is definable by an equation of the L\-algebraic language because in this case for every algebra \\bA \\in \\bAlg\\bL we have: a \\le b\\txtiff C(b) \\subseteq C(a)\\txtiff C(a \\wedge^{\\bA } b) = C(a)\\txtiff a \\wedge^{\\bA } b = a, where C is the abstract consequence operation that corresponds to the closed-set system \\tFi\_{\\bL }\\bA, and \\wedge^{\\bA} is the operation defined on \\bA by the formula that is a conjunction for the logic \\bL.

A similar situation holds for fully selfextensional logics with the deduction-detachment property for a single term, say p \\rightarrow q, for then for every algebra \\bA \\in \\bAlg\\bL

a \\le b\\txtiff C(b) \\subseteq C(a)\\txtiff C(a \\rightarrow^{\\bA } b) = C(\\varnothing) = C(a \\rightarrow^{\\bA } a) \\txtiff \\\\ a \\rightarrow^{\\bA } b = a \\rightarrow^{\\bA } a.

These observations lead us to view the finitary fully selfextensional logics \\bL with a conjunction and those with the deduction-detachment property for a single term as logics definable by an order which is definable in the algebras in \\bAlg\\bL by using an equation of the \\bL\-algebraic language. Related to this, the following result is known.

**Theorem 8.**  
A finitary logic \\bL with a conjunction is fully selfextensional if and only if there is a class of algebras \\bK such that for every \\bA \\in \\bK the reduct \\langle A, \\wedge^{\\bA }\\rangle is a meet-semilattice and if \\le is the order of the semilattice, then

\\phi\_1 , \\ldots ,\\phi\_n\\vdash\_{\\bL } \\phi\\txtiff for all \\bA \\in \\bK and every valuation v on \\bA \\; \\bv(\\phi\_1) \\wedge^{\\bA }\\ldots \\wedge^{\\bA } \\bv(\\phi\_n) \\le \\bv(\\phi)

and

\\vdash\_{\\bL } \\phi\\txtiff for all \\bA \\in \\bK and every valuation v on \\bA \\; a \\le \\bv(\\phi), for every a \\in A.

Moreover, in this case the class of algebras \\bAlg\\bL is the variety generated by \\bK.

Similar results can be obtained for the selfextensional logics with the deduction-detachment property for a single term. The reader is referred to Jansana 2006 for a study of the selfextensional logics with conjunction, and to Jansana 2005 for a study of the selfextensional logics with the deduction-detachment property for a single term.

The class of selfextensional logics with a conjunction includes the so-called logics preserving degrees of truth studied in the fields of substructural logics and of many-valued logics. The reader can look at Bou et al. 2009 and the references therein.

## 14. Extending the setting

The research on logic systems described in the previous sections has been extended to encompass other consequence relations that go beyond propositional logics, like equational logics and the consequence relations between sequents built from the formulas of a propositional language definable using sequent calculi. The interested reader can consult the excellent paper Raftery 2006a.

This research arose the need for an, even more, abstract way of developing the theory of consequence relations. It has lead to a reformulation (in a category-theoretic setting) of the theory of logic systems as explained in this entry. The work has been done mainly by G. Voutsadakis in a series of papers, e.g., Voutsadakis 2002. Voutsadakis's approach uses the notion of a pi-institution, introduced by Fiadeiro and Sernadas, as the analog of the logic systems in his category-theoretic setting. Some work in this direction is also found in Gil-Férez 2006. A different approach to a generalization of the studies encompassing the work done for logic systems and for sequent calculi is found in Galatos & Tsinakis 2009; Gil-Férez 2011 is also in this line. The work presented in these two papers originates in Blok & Jónsson 2006. The Galatos-Tsinakis approach has been recently extended in a way that also encompasses the setting of Voutsadakis in Galatos & Gil-Férez 2017.

Another recent line of research that extends the framework described in this entry develops a theory of algebraization of many-sorted logic systems using instead of the equational consequence relation of the natural class of algebras a many-sorted behavioral equational consequence (a notion coming from computer science) and a weaker concept than algebraizable logic: behaviorally algebraizable logic. See Caleiro, Gonçalves & Martins 2009.

[1]: https://plato.stanford.edu/entries/logical-consequence/
[2]: https://plato.stanford.edu/entries/logical-consequence/
[3]: https://plato.stanford.edu/entries/logic-classical/
[4]: https://plato.stanford.edu/entries/logic-intuitionistic/
[5]: https://plato.stanford.edu/entries/logic-modal/
[6]: https://plato.stanford.edu/entries/logic-linear/
[7]: https://plato.stanford.edu/entries/logic-relevance/
[8]: https://plato.stanford.edu/entries/logic-classical/
[9]: https://plato.stanford.edu/entries/modeltheory-fo/
[10]: https://plato.stanford.edu/entries/logic-classical/
[11]: https://plato.stanford.edu/entries/modeltheory-fo/
[12]: https://plato.stanford.edu/entries/modeltheory-fo/
[13]: https://plato.stanford.edu/entries/boolalg-math/
[14]: https://plato.stanford.edu/entries/logic-intuitionistic/
[15]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#IntuLineLogiWithExpo
[16]: https://plato.stanford.edu/entries/logic-intuitionistic/
[17]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#NatuClasAlgeLogiSyst
[18]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#WhenLogiAlgeWhatDoesMean
[19]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#AlgeSema
[20]: https://plato.stanford.edu/entries/logic-manyvalued/
[21]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#NatuClasAlgeLogiSyst
[22]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#AlgeSema
[23]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#NatuClasAlgeLogiSyst
[24]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#AlgeSema
[25]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#cond4
[26]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#cond5
[27]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#cond5
[28]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#cond4
[29]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#cond5
[30]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#WhenLogiAlgeWhatDoesMean
[31]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#LogiMatr
[32]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#LogiMatr
[33]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#SomeExamLogi
[34]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#LindTarsMethForProvAlgeCompTheo
[35]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#LindTarsMethForProvAlgeCompTheo
[36]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#bcond1
[37]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#bcond2
[38]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#bcond1
[39]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#bcond2
[40]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#bcond1
[41]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#bcond2
[42]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#bcond3
[43]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#bcond2
[44]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#bcond9
[45]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#bcond2
[46]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#bcond3
[47]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#bcond9
[48]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#bcond2
[49]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#bcond3
[50]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#aprop1
[51]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#bprop2
[52]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#theorem4
[53]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#sys2
[54]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#theorem4
[55]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#theorem4
[56]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#WhenLogiAlgeWhatDoesMean
[57]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#BeyoProtLogi
[58]: https://plato.stanford.edu/entries/logic-algebraic-propositional/#BeyoProtLogi
