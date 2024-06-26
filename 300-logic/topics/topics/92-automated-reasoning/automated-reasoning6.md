---
downloaded:       2021-11-03
author:           Portoraro, Frederic
page-url:         https://plato.stanford.edu/entries/reasoning-automated/
page-title:       Automated Reasoning (Stanford Encyclopedia of Philosophy)
---
# Automated Reasoning (Stanford Encyclopedia of Philosophy)

Reasoning is the ability to make inferences, and automated reasoning
is concerned with the building of computing systems that automate this
process. Although the overall goal is to mechanize different forms of
reasoning, the term has largely been identified with valid deductive
reasoning as practiced in mathematics and formal logic. In this
respect, automated reasoning is akin to mechanical theorem proving.
Building an automated reasoning program means providing an algorithmic
description to a formal calculus so that it can be implemented on a
computer to prove theorems of the calculus in an efficient manner.
Important aspects of this exercise involve defining the class of
problems the program will be required to solve, deciding what language
will be used by the program to represent the information given to it
as well as new information inferred by the program, specifying the
mechanism that the program will use to conduct deductive inferences,
and figuring out how to perform all these computations efficiently.
While basic research work continues in order to provide the necessary
theoretical framework, the field has reached a point where automated
reasoning programs are being used by researchers to attack open
questions in mathematics and logic, provide important applications in
computing science, solve problems in engineering, and find novel
approaches to questions in exact philosophy.
Reasoning is the ability to make inferences, and automated reasoning is concerned with the building of computing systems that automate this process. Although the overall goal is to mechanize different forms of reasoning, the term has largely been identified with valid deductive reasoning as practiced in mathematics and formal logic. In this respect, automated reasoning is akin to mechanical theorem proving. Building an automated reasoning program means providing an algorithmic description to a formal calculus so that it can be implemented on a computer to prove theorems of the calculus in an efficient manner. Important aspects of this exercise involve defining the class of problems the program will be required to solve, deciding what language will be used by the program to represent the information given to it as well as new information inferred by the program, specifying the mechanism that the program will use to conduct deductive inferences, and figuring out how to perform all these computations efficiently. While basic research work continues in order to provide the necessary theoretical framework, the field has reached a point where automated reasoning programs are being used by researchers to attack open questions in mathematics and logic, provide important applications in computing science, solve problems in engineering, and find novel approaches to questions in exact philosophy.

## 1\. Introduction

A problem being presented to an automated reasoning program consists of two main items, namely a statement expressing the particular question being asked called the __problem’s conclusion__, and a collection of statements expressing all the relevant information available to the program—the __problem’s assumptions__. Solving a problem means proving the conclusion from the given assumptions by the systematic application of rules of deduction embedded within the reasoning program. The problem solving process ends when one such proof is found, when the program is able to detect the non-existence of a proof, or when it simply runs out of resources.

### 1.1 Problem Domain

A first important consideration in the design of an automated reasoning program is to delineate the class of problems that the program will be required to solve—the __problem domain__. The domain can be very large, as would be the case for a general-purpose theorem prover for first-order logic, or be more restricted in scope as in a special-purpose theorem prover for Tarski’s geometry, or the modal logic K. A typical approach in the design of an automated reasoning program is to provide it first with sufficient logical power (e.g., first-order logic) and then further demarcate its scope to the particular domain of interest defined by a set of __domain axioms__. To illustrate, EQP, a theorem-proving program for equational logic, was used to solve an open question in Robbins algebra (McCune 1997): *Are all Robbins algebras Boolean?* For this, the program was provided with the axioms defining a Robbins algebra:

> (A1)
> 
> *x* + *y* = *y* + *x*
> 
> (commutativity)
> 
> (A2)
> 
> (*x* + *y*) + *z* = *x* + (*y* + *z*)
> 
> (associativity)
> 
> (A3)
> 
> −(−(*x* + *y*) + −(*x* + −*y*)) = *x*
> 
> (Robbins equation)

The program was then used to show that a characterization of Boolean algebra that uses Huntington’s equation,

> −(−*x* + *y*) + −(−*x* + −*y*) = *x*,

follows from the axioms. We should remark that this problem is non-trivial since deciding whether a finite set of equations provides a basis for Boolean algebra is undecidable, that is, it does not permit an algorithmic representation; also, the problem was attacked by Robbins, Huntington, Tarski and many of his students with no success. The key step was to establish that all Robbins algebras satisfy

> ∃*x*∃*y*(*x* + *y* = *x*),

since it was known that this formula is a sufficient condition for a Robbins algebra to be Boolean. When EQP was supplied with this piece of information, the program provided invaluable assistance by completing the proof automatically.

A special-purpose theorem prover does not draw its main benefit by restricting its attention to the domain axioms but from the fact that the domain may enjoy particular theorem-proving techniques which can be hardwired—coded—within the reasoning program itself and which may result in a more efficient logic implementation. Much of EQP’s success at settling the Robbins question can be attributed to its built-in associative-commutative inference mechanisms.

### 1.2 Language Representation

A second important consideration in the building of an automated reasoning program is to decide (1) how problems in its domain will be presented to the reasoning program; (2) how they will actually be represented internally within the program; and, (3) how the solutions found—completed proofs—will be displayed back to the user. There are several formalisms available for this, and the choice is dependent on the problem domain and the underlying deduction calculus used by the reasoning program. The most commonly used formalisms include standard first-order logic, typed λ-calculus, and clausal logic. We take up clausal logic here and assume that the reader is familiar with the rudiments of first-order logic; for the typed λ-calculus the reader may want to check Church 1940. Clausal logic is a quantifier-free variation of first-order logic and has been the most widely used notation within the automated reasoning community. Some definitions are in order: A __term__ is a constant, a variable, or a function whose arguments are themselves terms. For example, *a*, *x*, *f*(*x*), and *h*(*c*,*f*(*z*),*y*) are all terms. A __literal__ is either an atomic formula, e.g. *F*(*x*), or the negation of an atomic formula, e.g. ~*R*(*x*,*f*(*a*)). Two literals are __complementary__ if one is the negation of the other. A __clause__ is a (possibly empty) finite disjunction of literals *l*1∨ … ∨ *ln* where no literal appears more than once in the clause (that is, clauses can be alternatively treated as sets of literals). __Ground__ terms, ground literals, and ground clauses have no variables. The __empty clause__, \[ \], is the clause having no literals and, hence, is unsatisfiable—false under any interpretation. Some examples: ~*R*(*a*,*b*), and *F*(*a*) ∨ ~*R*(*f*(*x*),*b*) ∨ *F*(*z*) are both examples of clauses but only the former is ground. The general idea is to be able to express a problem’s formulation as a set of clauses or, equivalently, as a formula in __conjunctive normal form (CNF)__, that is, as a conjunction of clauses.

For formulas already expressed in standard logic notation, there is a systematic two-step procedure for transforming them into conjunctive normal form. The first step consists in re-expressing a formula into a semantically equivalent formula in __prenex normal form__, (Θ*x*1)…(Θ*xn*)α(*x*1,…,*xn*), consisting of a string of quantifiers (Θ*x*1)…(Θ*xn*) followed by a quantifier-free expression α(*x*1,…,*xn*) called the __matrix__. The second step in the transformation first converts the matrix into conjunctive normal form by using well-known logical equivalences such as DeMorgan’s laws, distribution, double-negation, and others; then, the quantifiers in front of the matrix, which is now in conjunctive normal form, are dropped according to certain rules. In the presence of existential quantifiers, this latter step does not always preserve equivalence and requires the introduction of __Skolem functions__ whose role is to “simulate” the behaviour of existentially quantified variables. For example, applying the skolemizing process to the formula

> ∀*x*∃*y*∀*z*∃*u*∀*v*\[*R*(*x*,*y*,*v*) ∨ ~*K*(*x*,*z*,*u*,*v*)\]

requires the introduction of a one-place and two-place Skolem functions, *f* and *g* respectively, resulting in the formula

> ∀*x*∀*z*∀*v*\[*R*(*x*,*f*(*x*),*v*) ∨ ~*K*(*x*,*z*,*g*(*x*,*z*),*v*)\]

The universal quantifiers can then be removed to obtain the final clause, *R*(*x*,*f*(*x*),*v*) ∨ ~*K*(*x*,*z*,*g*(*x*,*z*),*v*) in our example. The Skolemizing process may not preserve equivalence but maintains satisfiability, which is enough for clause-based automated reasoning.

Although clausal form provides a more uniform and economical notation—there are no quantifiers and all formulas are disjunctions—it has certain disadvantages. One drawback is the increase in the size of the resulting formula when transformed from standard logic notation into clausal form. The increase in size is accompanied by an increase in cognitive complexity that makes it harder for humans to read proofs written with clauses. Another disadvantage is that the syntactic structure of a formula in standard logic notation can be used to guide the construction of a proof but this information is completely lost in the transformation into clausal form.

## 2\. Deduction Calculi

A third important consideration in the building of an automated reasoning program is the selection of the actual deduction calculus that will be used by the program to perform its inferences. As indicated before, the choice is highly dependent on the nature of the problem domain and there is a fair range of options available: General-purpose theorem proving and problem solving (first-order logic, simple type theory), program verification (first-order logic), distributed and concurrent systems (modal and temporal logics), program specification (intuitionistic logic), hardware verification (higher-order logic), logic programming (Horn logic), constraint satisfaction (propositional clausal logic), computational metaphysics (higher-order modal logic), and others.

A deduction calculus consists of a set of logical axioms and a collection of deduction rules for deriving new formulas from previously derived formulas. Solving a problem in the program’s problem domain then really means establishing a particular formula α—the problem’s conclusion—from the extended set Γ consisting of the logical axioms, the domain axioms, and the problem assumptions. That is, the program needs to determine if Γ entails α, Γ⊨ α. How the program goes about establishing this semantic fact depends, of course, on the calculus it implements. Some programs may take a very __direct__ route and attempt to establish that Γ ⊨ α by actually constructing a step-by-step proof of α from Γ. If successful, this shows of course that Γ derives—proves—α, a fact we denote by writing Γ ⊢ α. Other reasoning programs may instead opt for a more __indirect__ approach and try to establish that Γ ⊨ α by showing that Γ ∪ {~α} is inconsistent which, in turn, is shown by deriving a contradiction, ⊥, from the set Γ ∪ {~α}. Automated systems that implement the former approach include natural deduction systems; the latter approach is used by systems based on resolution, sequent deduction, and matrix connection methods.

Soundness and completeness are two (metatheoretical) properties of a calculus that are particularly important for automated deduction. __Soundness__ states that the rules of the calculus are truth-preserving. For a direct calculus this means that if Γ ⊢ α then Γ ⊨ α. For indirect calculi, soundness means that if Γ∪{~α} ⊢ ⊥ then Γ ⊨ α. __Completeness__ in a direct calculus states that if Γ ⊨ α then Γ ⊢ α. For indirect calculi, the completeness property is expressed in terms of __refutations__ since one establishes that Γ ⊨ α by showing the existence of a proof, not of α from Γ, but of ⊥ from Γ∪{~α}. Thus, an indirect calculus is __refutation complete__ if Γ ⊨ α implies Γ∪{~α} ⊢ ⊥. Of the two properties, soundness is the most desirable. An incomplete calculus indicates that there are entailment relations that cannot be established within the calculus. For an automated reasoning program this means, informally, that there are true statements that the program cannot prove. Incompleteness may be an unfortunate affair but lack of soundness is a truly problematic situation since an unsound reasoning program would be able to generate false conclusions from perfectly true information.

It is important to appreciate the difference between a logical calculus and its corresponding implementation in a reasoning program. The implementation of a calculus invariably involves making some modifications to the calculus and this results, strictly speaking, in a new calculus. The most important modification to the original calculus is the “mechanization” of its deduction rules, that is, the specification of the systematic way in which the rules are to be applied. In the process of doing so, one must exercise care to preserve the metatheoretical properties of the original calculus.

Two other metatheoretical properties of importance to automated deduction are decidability and complexity. A calculus is __decidable__ if it admits an algorithmic representation, that is, if there is an algorithm that, for any given Γ and α, it can determine in a finite amount of time the answer, “Yes” or “No”, to the question “Does Γ ⊨ α?” A calculus may be undecidable in which case one needs to determine which decidable fragment to implement. The time-space __complexity__ of a calculus specifies how efficient its algorithmic representation is. Automated reasoning is made the more challenging because many calculi of interest are not decidable and have poor complexity measures forcing researchers to seek tradeoffs between deductive power versus algorithmic efficiency.

### 2.1 Resolution

Of the many calculi used in the implementation of reasoning programs, the ones based on the __resolution__ principle have been the most popular. Resolution is modeled after the chain rule (of which Modus Ponens is a special case) and essentially states that from *p* ∨ *q* and ~*q* ∨ *r* one can infer *p* ∨ *r*. More formally, let *C* − *l* denote the clause *C* with the literal *l* removed. Assume that *C*1 and *C*2 are ground clauses containing, respectively, a positive literal *l*1 and a negative literal ~*l*2 such that *l*1 and ~*l*2 are complementary. Then, the rule of __ground resolution__ states that, as a result of __resolving__ *C*1 and *C*2, one can infer (*C*1 − *l*1) ∨ (*C*2 − ~*l*2):

> *C*1     *C*2
> 
> (ground resolution)
> 
> (*C*1 − *l*1) ∨ (*C*2 − ~*l*2)

__Herbrand’s theorem__ (Herbrand 1930) assures us that the non-satisfiability of *any* set of clauses, ground or not, can be established by using ground resolution. This is a very significant result for automated deduction since it tells us that if a set Γ is not satisfied by any of the infinitely many interpretations, this fact can be determined in *finitely* many steps. Unfortunately, a direct implementation of ground resolution using Herbrand’s theorem requires the generation of a vast number of ground terms making this approach hopelessly inefficient. This issue was effectively addressed by generalizing the ground resolution rule to __binary resolution__ and by introducing the notion of unification (Robinson 1965a). Unification allows resolution proofs to be “lifted” and be conducted at a more general level; clauses only need to be instantiated at the moment where they are to be resolved. Moreover, the clauses resulting from the instantiation process do not have to be ground instances and may still contain variables. The introduction of binary resolution and unification is considered one of the most important developments in the field of automated reasoning.

#### Unification

A __unifier__ of two expressions—terms or clauses—is a substitution that when applied to the expressions makes them equal. For example, the substitution σ given by

> σ := {*x* ← *b*, *y* ← *b*, *z* ← *f*(*a*,*b*)}

is a unifier for

> *R*(*x*,*f*(*a*,*y*)) and *R*(*b*,*z*)

since when applied to both expressions it makes them equal:

> *R*(*x*,*f*(*a*,*y*))σ
> 
>  
> 
> \=
> 
>  
> 
> *R*(*b*,*f*(*a*,*b*))
> 
>  
> 
>  
> 
> \=
> 
>  
> 
> *R*(*b*,*z*)σ

A __most general unifier__ (mgu) produces the most general instance shared by two unifiable expressions. In the previous example, the substitution {*x* ← *b*, *y* ← *b*, *z* ← *f*(*a*,*b*)} is a unifier but not an mgu; however, {*x* ← *b*, *z* ← *f*(*a*,*y*)} is an mgu. Note that unification attempts to “match” two expressions and this fundamental process has become a central component of most automated deduction programs, resolution-based and otherwise. __Theory-unification__ is an extension of the unification mechanism that includes built-in inference capabilities. For example, the clauses *R*(*g*(*a*,*b*),*x*) and *R*(*g*(*b*,*a*),*d*) do not unify but they AC-unify, where AC-unification is unification with built-in associative and commutative rules such as *g*(*a*,*b*) = *g*(*b*,*a*). Shifting inference capabilities into the unification mechanism adds power but at a price: The existence of an mgu for two unifiable expressions may not be unique (there could actually be infinitely many), and the unification process becomes undecidable in general.

#### Binary resolution

Let *C*1 and *C*2 be two clauses containing, respectively, a positive literal *l*1 and a negative literal ~*l*2 such that *l*1 and *l*2 unify with mgu θ. Then,

> *C*1     *C*2
> 
> (binary resolution)
> 
> (*C*1θ − *l*1θ) ∨ (*C*2θ − ~*l*2θ)

by binary resolution; the clause (*C*1θ − *l*1θ) ∨ (*C*2θ − ~*l*2θ) is called a __binary resolvent__ of *C*1 and *C*2.

#### Factoring

If two or more literals occurring in a clause *C* share an mgu θ then *C*θ is a __factor__ of *C*. For example, in *R*(*x*,*a*) ∨ ~*K*(*f*(*x*),*b*) ∨ *R*(*c*,*y*) the literals *R*(*x*,*a*) and *R*(*c*,*y*) unify with mgu {*x* ← *c*, *y* ← *a*} and, hence, *R*(*c*,*a*) ∨ ~*K*(*f*(*c*),*b*) is a factor of the original clause.

#### The Resolution Principle

Let *C*1and *C*2 be two clauses. Then, a __resolvent__ obtained by __resolution__ from *C*1 and *C*2 is defined as: (a) a binary resolvent of *C*1 and *C*2; (b) a binary resolvent of *C*1 and a factor of *C*2; (c) a binary resolvent of a factor of *C*1 and *C*2; or, (d) a binary resolvent of a factor of *C*1 and a factor of *C*2.

Resolution proofs, more precisely refutations, are constructed by deriving the empty clause \[ \] from Γ ∪ {~α} using resolution; this will always be possible if Γ ∪ {~α} is unsatisfiable since resolution is refutation complete (Robinson 1965a). As an example of a resolution proof, we show that the set {∀*x*(*P*(*x*) ∨ *Q*(*x*)), ∀*x*(*P*(*x*) ⊃ *R*(*x*)),∀*x*(*Q*(*x*) ⊃ *R*(*x*))}, denoted by Γ, entails the formula ∃*x**R*(*x*). The first step is to find the clausal form of Γ ∪ {~∃*x**R*(*x*)}; the resulting clause set, denoted by *S*0, is shown in steps 1 to 4 in the refutation below. The refutation is constructed by using a level-saturation method: Compute all the resolvents of the initial set, *S*0, add them to the set and repeat the process until the empty clause is derived. (This produces the sequence of increasingly larger sets: *S*0, *S*1, *S*2,…) The only constraint that we impose is that we do not resolve the same two clauses more than once.

> *S*0
> 
> 1
> 
> *P*(*x*) ∨ *Q*(*x*)
> 
> Assumption
> 
>  
> 
> 2
> 
> *~P*(*x*) ∨ *R*(*x*)
> 
> Assumption
> 
>  
> 
> 3
> 
> *~Q*(*x*) ∨ *R*(*x*)
> 
> Assumption
> 
>  
> 
> 4
> 
> ~*R*(*a*)
> 
> Negate conclusion
> 
> *S*1
> 
> 5
> 
> *Q*(*x*) ∨ *R*(*x*)
> 
> Res 1 2
> 
>  
> 
> 6
> 
> *P*(*x*) ∨ *R*(*x*)
> 
> Res 1 3
> 
>  
> 
> 7
> 
> ~*P*(*a*)
> 
> Res 2 4
> 
>  
> 
> 8
> 
> ~*Q*(*a*)
> 
> Res 3 4
> 
> *S*2
> 
> 9
> 
> *Q*(*a*)
> 
> Res 1 7
> 
>  
> 
> 10
> 
> *P*(*a*)
> 
> Res 1 8
> 
>  
> 
> 11
> 
> *R*(*x*)
> 
> Res 2 6
> 
>  
> 
> 12
> 
> *R*(*x*)
> 
> Res 3 5
> 
>  
> 
> 13
> 
> *Q*(*a*)
> 
> Res 4 5
> 
>  
> 
> 14
> 
> *P*(*a*)
> 
> Res 4 6
> 
>  
> 
> 15
> 
> *R*(*a*)
> 
> Res 5 8
> 
>  
> 
> 16
> 
> *R*(*a*)
> 
> Res 6 7
> 
> *S*3  
> 
> 17
> 
> *R*(*a*)
> 
> Res 2 10
> 
>  
> 
> 18
> 
> *R*(*a*)
> 
> Res 2 14
> 
>  
> 
> 19
> 
> *R*(*a*)
> 
> Res 3 9
> 
>  
> 
> 20
> 
> *R*(*a*)
> 
> Res 3 13
> 
>  
> 
> 21 
> 
> \[ \]
> 
> Res 4 11

Although the resolution proof is successful in deriving \[ \], it has some significant drawbacks. To start with, the refutation is too long as it takes 21 steps to reach the contradiction, \[ \]. This is due to the naïve brute-force nature of the implementation. The approach not only generates too many formulas but some are clearly redundant. Note how *R*(*a*) is derived six times; also, *R*(*x*) has more “information content” than *R*(*a*) and one should keep the former and disregard the latter. Resolution, like all other automated deduction methods, must be supplemented by strategies aimed at improving the efficiency of the deduction process. The above sample derivation has 21 steps but research-type problems command derivations with thousands or hundreds of thousands of steps.

#### Resolution Strategies

The successful implementation of a deduction calculus in an automated reasoning program requires the integration of search strategies that reduce the search space by pruning unnecessary deduction paths. Some strategies remove redundant clauses or tautologies as soon as they appear in a derivation. Another strategy is to remove more specific clauses in the presence of more general ones by a process known as __subsumption__ (Robinson 1965a). Unrestricted subsumption, however, does not preserve the refutation completeness of resolution and, hence, there is a need to restrict its applicability (Loveland 1978). __Model elimination__ (Loveland 1969) can discard a sentence by showing that it is false in some model of the axioms. The subject of model generation has received much attention as a complementary process to theorem proving. The method has been used successfully by automated reasoning programs to show the independence of axioms sets and to determine the existence of discrete mathematical structures meeting some given criteria.

Instead of removing redundant clauses, some strategies prevent the generation of useless clauses in the first place. The __set-of-support strategy__ (Wos, Carson & Robinson 1965) is one of the most powerful strategies of this kind. A subset *T* of the set *S*, where *S* is initially Γ ∪ {~α}, is called a __set of support__ of *S* iff *S* − *T* is satisfiable. Set-of-support resolution dictates that the resolved clauses are not both from *S* − *T*. The motivation behind set-of-support is that since the set Γ is usually satisfiable it might be wise not to resolve two clauses from Γ against each other. __Hyperresolution__ (Robinson 1965b) reduces the number of intermediate resolvents by combining several resolution steps into a single inference step.

Independently co-discovered, __linear resolution__ (Loveland 1970, Luckham 1970) always resolves a clause against the most recently derived resolvent. This gives the deduction a simple “linear” structure affording a straightforward implementation; yet, linear resolution preserves refutation completeness. Using linear resolution we can derive the empty clause in the above example in only eight steps:

> 1 
> 
> *P*(*x*) ∨ *Q*(*x*)
> 
> Assumption
> 
> 2
> 
> *~P*(*x*) ∨ *R*(*x*)
> 
> Assumption
> 
> 3
> 
> *~Q*(*x*) ∨ *R*(*x*)
> 
> Assumption
> 
> 4
> 
> ~*R*(*a*)
> 
> Negated conclusion
> 
> 5
> 
> ~*P*(*a*)
> 
> Res 2 4
> 
> 6
> 
> *Q*(*a*)
> 
> Res 1 5
> 
> 7
> 
> *R*(*a*)
> 
> Res 3 6
> 
> 8
> 
> \[ \]
> 
> Res 4 7

With the exception of unrestricted subsumption, all the strategies mentioned so far preserve refutation completeness. Efficiency is an important consideration in automated reasoning and one may sometimes be willing to trade completeness for speed. __Unit resolution__ and __input resolution__ are two such refinements of linear resolution. In the former, one of the resolved clauses is always a literal; in the latter, one of the resolved clauses is always selected from the original set to be refuted. Albeit efficient, neither strategy is complete. Ordering strategies impose some form of partial ordering on the predicate symbols, terms, literals, or clauses occurring in the deduction. __Ordered resolution__ treats clauses not as sets of literals but as sequences—linear orders—of literals. Ordered resolution is extremely efficient but, like unit and input resolution, is not refutation complete. To end, it must be noted that some strategies improve certain aspects of the deduction process at the expense of others. For instance, a strategy may reduce the size of the proof search space at the expense of increasing, say, the length of the shortest refutations. A taxonomy and detailed presentation of theorem-proving strategies can be found in (Bonacina 1999).

There are several automated reasoning programs that are based on resolution, or refinements of resolution. Otter (succeeded by Prover4) was a driving force in the development of automated reasoning (Wos, Overbeek, Lusk & Boyle 1984) but it has been superseded by more capable programs like Vampire (Voronkov 1995, Kovács & Voronkov 2013). Resolution also provides the underlying logico-computational mechanism for the popular logic programming language Prolog (Clocksin & Mellish 1981).

### 2.2 Sequent Deduction

Hilbert-style calculi (Hilbert and Ackermann 1928) have been traditionally used to characterize logic systems. These calculi usually consist of a few axiom schemata and a small number of rules that typically include modus ponens and the rule of substitution. Although they meet the required theoretical requisites (soundness, completeness, etc.) the approach at proof construction in these calculi is difficult and does not reflect standard practice. It was Gentzen’s goal “to set up a formalism that reflects as accurately as possible the actual logical reasoning involved in mathematical proofs” (Gentzen 1935). To carry out this task, Gentzen analyzed the proof-construction process and then devised two deduction calculi for classical logic: the natural deduction calculus, __NK__, and the sequent calculus, __LK__. (Gentzen actually designed NK first and then introduced LK to pursue metatheoretical investigations). The calculi met his goal to a large extent while at the same time managing to secure soundness and completeness. Both calculi are characterized by a relatively larger number of deduction rules and a simple axiom schema. Of the two calculi, LK is the one that has been most widely used in implementations of automated reasoning programs, and it is the one that we will discuss first; NK will be discussed in the next section.

Although the application of the LK rules affect logic formulas, the rules are seen as manipulating not logic formulas themselves but sequents. __Sequents__ are expressions of the form Γ → Δ, where both Γ and Δ are (possibly empty) sets of formulas. Γ is the sequent’s __antecedent__ and Δ its __succedent__. Sequents can be interpreted thus: Let I be an interpretation. Then,

> I satisfies the sequent Γ → Δ (written as: I ⊨ Γ→Δ) iff  
> either I ⊭ α (for some α ∈ Γ) or I ⊨ β (for some β ∈ Δ).

In other words,

> I ⊨Γ → Δ iff I ⊨ (α1 & … & α*n*) ⊃ (β1 ∨ … ∨ β*n*), where α1 & … & α*n* is the iterated conjunction of the formulas in Γ and β1 ∨ … ∨ β*n* is the iterated disjunction of those in Δ.

If Γ or Δ are empty then they are respectively valid or unsatisfiable. An __axiom of LK__ is a sequent Γ → Δ where Γ ∩ Δ ≠ ∅. Thus, the requirement that the same formula occurs at each side of the → sign means that the axioms of LK are valid, for no interpretation can then make all the formulas in Γ true and, simultaneously, make all those in Δ false. LK has two rules per logical connective, plus one extra rule: the cut rule.

Axioms

Cut Rule

  

Γ, α → Δ, α

Γ → Δ, α

α, λ → Σ

Γ, λ → Δ, Σ

Antecedent Rules (Θ→)

Succedent Rules (→Θ)

&→

Γ, α, β → Δ

Γ, α & β → Δ

→&

Γ → Δ, α

Γ → Δ, β

Γ → Δ, α & β

∨→

Γ, α → Δ

Γ, β → Δ

Γ, α ∨ β → Δ

→∨

Γ → Δ, α, β

Γ → Δ, α ∨ β

⊃→

Γ → Δ, α

Γ, β → Δ

Γ, α ⊃ β → Δ

→⊃

Γ, α → Δ, β

Γ → Δ, α ⊃ β

⊃≡

Γ, α, β → Δ

Γ → Δ, α, β

Γ, α ≡ β → Δ

≡⊃

Γ, α → Δ, β

Γ, β, → Δ, α

Γ → Δ, α ≡ β

~→

Γ → Δ, α

Γ, ~α → Δ

→~

Γ, α → Δ

Γ → Δ, ~α

∃→

Γ, α(*a*/*x*) → Δ

Γ, ∃*x*α(*x*) → Δ

→∃

Γ → Δ, α(*t*/*x*), ∃*x*α(*x*)

Γ → Δ, ∃*x*α(*x*)

∀→

Γ, α(*t*/*x*), ∀*x*α(*x*) → Δ

Γ, ∀*x*α(*x*) → Δ

→∀

Γ → Δ, α(*a*/*x*)

Γ → Δ, ∀*x*α(*x*)

The sequents above a rule’s line are called the __rule’s premises__ and the sequent below the line is the __rule’s conclusion__. The quantification rules ∃→ and →∀ have an eigenvariable condition that restricts their applicability, namely that *a* must not occur in Γ, Δ or in the quantified sentence. The purpose of this restriction is to ensure that the choice of parameter, *a*, used in the substitution process is completely “arbitrary”.

Proofs in LK are represented as trees where each node in the tree is labeled with a sequent, and where the original sequent sits at the root of the tree. The children of a node are the premises of the rule being applied at that node. The leaves of the tree are labeled with axioms. Here is the LK-proof of ∃*x**R*(*x*) from the set {∀*x*(*P*(*x*) ∨ *Q*(*x*)), ∀*x*(*P*(*x*) ⊃ *R*(*x*)),∀*x*(*Q*(*x*) ⊃ *R*(*x*))}. In the tree below, Γ stands for this set:

Γ,*P*(*a*) → *P*(*a*),*R*(*a*),∃*x**R*(*x*)

Γ,*P*(*a*),*R*(*a*) → *R*(*a*),∃*x**R*(*x*)

Γ,*P*(*a*),*P*(*a*) ⊃ *R*(*a*) → *R*(*a*),∃*x**R*(*x*)

Γ,*P*(*a*) → *R*(*a*),∃*x**R*(*x*)

Γ,*Q*(*a*) → *Q*(*a*),*R*(*a*),∃*x**R*(*x*)

Γ,*Q*(*a*),*R*(*a*) → *R*(*a*),∃*x**R*(*x*)

Γ,*Q*(*a*),*Q*(*a*) ⊃ *R*(*a*) → *R*(*a*),∃*x**R*(*x*)

Γ,*Q*(*a*) → *R*(*a*),∃*x**R*(*x*)

Γ,*P*(*a*) ∨ *Q*(*a*) → *R*(*a*),∃*x**R*(*x*)

Γ → *R*(*a*),∃*x**R*(*x*)

Γ → ∃*x**R*(*x*)

In our example, all the leaves in the proof tree are labeled with axioms. This establishes the validity of Γ → ∃*x**R*(*x*) and, hence, the fact that Γ ⊨ ∃*x**R*(*x*). LK takes an indirect approach at proving the conclusion and this is an important difference between LK and NK. While NK constructs an actual proof (of the conclusion from the given assumptions), LK instead constructs a proof that proves the existence of a proof (of the conclusion from the assumptions). For instance, to prove that α is entailed by Γ, NK constructs a step-by-step proof of α from Γ (assuming that one exists); in contrast, LK first constructs the sequent Γ → α which then attempts to prove valid by showing that it cannot be made false. This is done by searching for a counterexample that makes (all the sentences in) Γ true and makes α false: If the search fails then a counterexample does not exist and the sequent is therefore valid. In this respect, proof trees in LK are actually refutation proofs. Like resolution, LK is refutation complete: If Γ ⊨ α then the sequent Γ → α has a proof tree.

As it stands, LK is unsuitable for automated deduction and there are some obstacles that must be overcome before it can be efficiently implemented. The reason is, of course, that the statement of the completeness of LK only has to assert, for each entailment relation, the existence of a proof tree but a reasoning program has the more difficult task of actually having to construct one. Some of the main obstacles: First, LK does not specify the order in which the rules must be applied in the construction of a proof tree. Second, and as a particular case of the first problem, the premises in the rules ∀→ and →∃ rules inherit the quantificational formula to which the rule is applied, meaning that the rules can be applied repeatedly to the same formula sending the proof search into an endless loop. Third, LK does not indicate which formula must be selected next in the application of a rule. Fourth, the quantifier rules provide no indication as to what terms or free variables must be used in their deployment. Fifth, and as a particular case of the previous problem, the application of a quantifier rule can lead into an infinitely long tree branch because the proper term to be used in the instantiation never gets chosen. Fortunately, as we will hint at below each of these problems can be successfully addressed.

Axiom sequents in LK are valid, and the conclusion of a rule is valid iff its premises are. This fact allows us to apply the LK rules in either direction, forwards from axioms to conclusion, or backwards from conclusion to axioms. Also, with the exception of the cut rule, all the rules’ premises are subformulas of their respective conclusions. For the purposes of automated deduction this is a significant fact and we would want to dispense with the cut rule; fortunately, the cut-free version of LK preserves its refutation completeness (Gentzen 1935). These results provide a strong case for constructing proof trees in a backwards fashion; indeed, by working this way a refutation in cut-free LK gets increasingly simpler as it progresses since subformulas are simpler than their parent formulas. Moreover, and as far as propositional rules go, the new subformulas entered into the tree are completely dictated by the cut-free LK rules. Furthermore, and assuming the proof tree can be brought to completion, branches eventually end up with atoms and the presence of axioms can be quickly determined. Another reason for working backwards is that the truth-functional fragment of cut-free LK is __confluent__ in the sense that the order in which the non-quantifier rules are applied is irrelevant: If there is a proof, regardless of what you do, you will run into it! To bring the quantifier rules into the picture, things can be arranged so that all rules have a fair chance of being deployed: Apply, as far as possible, all the non-quantifier rules before applying any of the quantifier rules. This takes care of the first and second obstacles, and it is no too difficult to see how the third one would now be handled. The fourth and fifth obstacles can be addressed by requiring that the terms to be used in the substitutions be suitably selected from the Herbrand universe (Herbrand 1930).

The use of sequent-type calculi in automated theorem proving was initiated by efforts to mechanize mathematics (Wang 1960). At the time, resolution captured most of the attention of the automated reasoning community but during the 1970s some researchers started to further investigate non-resolution methods (Bledsoe 1977), prompting a frutiful and sustained effort to develop more human-oriented theorem proving systems (Bledsoe 1975, Nevins 1974). Eventually, sequent-type deduction gained momentum again, particularly in its re-incarnation as __analytic tableaux__ (Fitting 1990). The method of deduction used in tableaux is essentially cut-free LK’s with sets used in lieu of sequents.

### 2.3 Natural Deduction

Although LK and NK are both commonly labeled as “natural deduction” systems, it is the latter which better deserves the title due to its more natural, human-like, approach to proof construction. The rules of NK are typically presented as acting on standard logic formulas in an implicitly understood context, but they are also commonly given in the literature as acting more explicitly on “judgements”, that is, expressions of the form Γ ⊢ α where Γ is a set of formulas and α is a formula. This form is typically understood as making the metastatement that there is a proof of α from Γ (Kleene 1962). Following Gentzen 1935 and Prawitz 1965 here we take the former approach. The system NK has no logical axioms and provides two introduction-elimination rules for each logical connective:

Introduction Rules (Θ__I__)

Elimination Rules (Θ__E__)

&I

α

β

α & β

&E

α1 & α2

α*i* (for *i* = 1,2)

∨I

α*i* (for *i* = 1,2)

α1 ∨ α2

∨E

α ∨ β

\[α — γ\]

\[β — γ\]

γ

⊃I

\[α — β\]

α ⊃ β

⊃E

α

α ⊃ β

β

≡I

\[α — β\]

\[β — α\]

α ≡ β

≡E

α*i* (*i* = 0,1)

α0 ≡ α1

α1−*i*

~I

\[α — ⊥\]

~α

~E

\[~α — ⊥\]

α

∃I

α(*t*/*x*)

∃*x*α(*x*)

∃E

∃*x*α(*x*)

\[α(*a*/*x*) — β\]

β

∀I

α(*a*/*x*)

∀*x*α(*x*)

∀E

∀*x*α(*x*)

α(*t*/*x*)

A few remarks: First, the expression \[α — γ\] represents the fact that α is an auxiliary assumption in the proof of γ that eventually gets discharged, i.e. discarded. For example, ∃E tells us that if in the process of constructing a proof one has already derived ∃*x*α(*x*) and also β with α(*a*/*x*) as an auxiliary assumption then the inference to β is allowed. Second, the eigenparameter, *a*, in ∃E and ∀I must be foreign to the premises, undischarged—“active”—assumptions, to the rule’s conclusion and, in the case of ∃E, to ∃*x*α(*x*). Third, ⊥ is shorthand for two contradictory formulas, β and ~β. Finally, NK is complete: If Γ  ⊨  α then there is a proof of α from Γ using the rules of NK.

As in LK, proofs constructed in NK are represented as trees with the proof’s conclusion sitting at the root of the tree, and the problem’s assumptions sitting at the leaves. (Proofs are also typically given as sequences of judgements, Γ ⊢ α, running from the top to the bottom of the printed page.) Here is a natural deduction proof tree of ∃*x**R*(*x*) from ∀*x*(*P*(*x*) ∨ *Q*(*x*)), ∀*x*(*P*(*x*) ⊃ *R*(*x*)) and ∀*x*(*Q*(*x*) ⊃ *R*(*x*)):

As in LK, a forward-chaining strategy for proof construction is not well focused. So, although proofs are *read* forwards, that is, from leaves to root or, logically speaking, from assumptions to conclusion, that is not the way in which they are typically *constructed*. A backward-chaining strategy implemented by applying the rules in reverse order is more effective. Many of the obstacles that were discussed above in the implementation of sequent deduction are applicable to natural deduction as well. These issues can be handled in a similar way, but natural deduction introduces some issues of its own. For example, as suggested by the ⊃-Introduction rule, to prove a goal of the form α ⊃ β one could attempt to prove β on the assumption that α. But note that although the goal α ⊃ β does not match the conclusion of any other introduction rule, it matches the conclusion of all *elimination* rules and the reasoning program would need to consider those routes too. Similarly to forward-chaining, here there is the risk of setting goals that are irrelevant to the proof and that could lead the program astray. To wit: What prevents a program from entering the never-ending process of building, say, larger and larger conjunctions? Or, what is there to prevent an uncontrolled chain of backward applications of, say, ⊃-Elimination? Fortunately, NK enjoys the __subformula property__ in the sense that each formula entering into a natural deduction proof can be restricted to being a subformula of Γ ∪ Δ ∪ {α}, where Δ is the set of auxiliary assumptions made by the ~-Elimination rule. By exploiting the subformula property a natural deduction automated theorem prover can drastically reduce its search space and bring the backward application of the elimination rules under control (Portoraro 1998, Sieg & Byrnes 1996). Further gains can be realized if one is willing to restrict the scope of NK’s logic to its intuitionistic fragment where every proof has a normal form in the sense that no formula is obtained by an introduction rule and then is eliminated by an elimination rule (Prawitz 1965).

Implementations of automated theorem proving systems using NK deduction have been motivated by the desire to have the program reason with precisely the same proof format and methods employed by the human user. This has been particularly true in the area of education where the student is engaged in the interactive construction of formal proofs in an NK-like calculus working under the guidance of a theorem prover ready to provide assistance when needed (Portoraro 1994, Suppes 1981). Other, research-oriented, theorem provers true to the spirit of NK exist (Pelletier 1998) but are rare.

### 2.4 The Matrix Connection Method

The name of the matrix connection method (Bibel 1981) is indicative of the way it operates. The term “matrix” refers to the form in which the set of logic formulas expressing the problem is represented; the term “connection” refers to the way the method operates on these formulas. To illustrate the method at work, we will use an example from propositional logic and show that *R* is entailed by *P* ∨ *Q*, *P* ⊃ *R* and *Q* ⊃ *R*. This is done by establishing that the formula

> (*P* ∨ *Q*) & (*P* ⊃ *R*) & (*Q* ⊃ *R*) & ~*R*

is unsatisfiable. To do this, we begin by transforming it into conjunctive normal form:

> (*P* ∨ *Q*) & (~*P* ∨ *R*) & (~*Q* ∨ *R*) & ~*R*

This formula is then represented as a matrix, one conjunct per row and, within a row, one disjunct per column:

The idea now is to explore all the possible vertical paths running through this matrix. A __vertical path__ is a set of literals selected from each row in the matrix such that each literal comes from a different row. The vertical paths:

*Path 1*

*P*, ~*P*, ~*Q* and ~*R*

*Path 2*

*P*, ~*P*, *R* and ~*R*

*Path 3*

*P*, *R*, ~*Q* and ~*R*

*Path 4*

*P*, *R*, *R* and ~*R*

*Path 5*

*Q*, ~*P*, ~*Q* and ~*R*

*Path 6*

*Q*, ~*P*, *R* and ~*R*

*Path 7*

*Q*, *R*, ~*Q* and ~*R*

*Path 8*

*Q*, *R*, *R* and ~*R*

A path is __complementary__ if it contains two literals which are complementary. For example, Path 2 is complementary since it has both *P* and ~*P* but so is Path 6 since it contains both *R* and ~*R*. Note that as soon as a path includes two complementary literals there is no point in pursuing the path since it has itself become complementary. This typically allows for a large reduction in the number of paths to be inspected. In any event, all the paths in the above matrix are complementary and this fact establishes the unsatisfiability of the original formula. This is the essence of the matrix connection method. The method can be extended to predicate logic but this demands additional logical apparatus: Skolemnization, variable renaming, quantifier duplication, complementarity of paths via unification, and simultaneous substitution across all matrix paths (Bibel 1981, Andrews 1981). Variations of the method have been implemented in reasoning programs in higher-order logic (Andrews 1981) and non-classical logics (Wallen 1990).

### 2.5 Term Rewriting

Equality is an important logical relation whose behavior within automated deduction deserves its own separate treatment. __Equational logic__ and, more generally, __term rewriting__ treat equality-like equations as __rewrite rules__, also known as __reduction__ or __demodulation rules__. An equality statement like *f*(*a*)= *a* allows the simplification of a term like *g*(*c*,*f*(*a*)) to *g*(*c*,*a*). However, the same equation also has the potential to generate an unboundedly large term: *g*(*c*,*f*(*a*)), *g*(*c*,*f*(*f*(*a*))), *g*(*c*,*f*(*f*(*f*(*a*)))), … . What distinguishes term rewriting from equational logic is that in term rewriting equations are used as unidirectional reduction rules as opposed to equality which works in both directions. Rewrite rules have the form *t*1 ⇒ *t*2 and the basic idea is to look for terms *t* occurring in expressions *e* such that *t* unifies with *t*1 with unifier θ so that the occurrence *t*1θ in *e*θ can be replaced by *t*2θ. For example, the rewrite rule *x* + 0 ⇒ *x* allows the rewriting of *succ*(*succ*(0) + 0) as *succ*(*succ*(0)).

To illustrate the main ideas in term rewriting, let us explore an example involving symbolic differentiation (the example and ensuing discussion are adapted from Chapter 1 of Baader & Nipkow 1998). Let *der* denote the derivative respect to *x*, let *y* be a variable different from *x*, and let *u* and *v* be variables ranging over expressions. We define the rewrite system:

R1:

*der*(*x*) ⇒ 1

R2:

*der*(*y*) ⇒ 0

R3:

*der*(*u* + *v*) ⇒ *der*(*u*) + *der*(*v*)

R4:

*der*(*u* × *v*) ⇒ (*u* × *der*(*v*)) + (*der*(*u*) × *v*)

Again, the symbol ⇒ indicates that a term matching the left-hand side of a rewrite rule should be replaced by the rule’s right-hand side. To see the differentiation system at work, let us compute the derivative of *x* × *x* respect to *x*, *der*(*x* × *x*):

*der*(*x* × *x*)

⇒

(*x* × *der*(*x*)) + (*der*(*x*) × *x*)

 

by R4

 

⇒

(*x* × 1) + (*der*(*x*) × *x*)

 

by R1

 

⇒

(*x* × 1) + (1 × *x*)

 

by R1

At this point, since none of the rules (R1)–(R4) applies, no further reduction is possible and the rewriting process ends. The final expression obtained is called a __normal form__, and its existence motivates the following question: Is there an expression whose reduction process will never terminate when applying the rules (R1)–(R4)? Or, more generally: Under what conditions a set of rewrite rules will always stop, for any given expression, at a normal form after finitely many applications of the rules? This fundamental question is called the __termination__ problem of a rewrite system, and we state without proof that the system (R1)–(R4) meets the termination condition.

There is the possibility that when reducing an expression, the set of rules of a rewrite system could be applied in more than one way. This is actually the case in the system (R1)–(R4) where in the reduction of *der*(*x* × *x*) we could have applied R1 first to the second sub-expression in (*x* × *der*(*x*)) + (*der*(*x*) × *x*), as shown below:

*der*(*x* × *x*)

⇒

(*x* × *der*(*x*)) + (*der*(*x*) × *x*)

 

by R4

 

⇒

(*x* × *der*(*x*)) + (1 × *x*)

 

by R1

 

⇒

(*x* × 1) + (1 × *x*)

 

by R1

Following this alternative course of action, the reduction terminates with the same normal form as in the previous case. This fact, however, should not be taken for granted: A rewriting system is said to be __(globally) confluent__ if and only if independently of the order in which its rules are applied every expression always ends up being reduced to its one and only normal form. It can be shown that (R1)–(R4) is confluent and, hence, we are entitled to say: “Compute *the* derivative of an expression” (as opposed to simply “*a*” derivative). Adding more rules to a system in an effort to make it more practical can have undesired consequences. For example, if we add the rule

to (R1)–(R4) then we will be able to further reduce certain expressions but at the price of losing confluency. The following reductions show that *der*(*x* + 0) now has two normal forms: the computation

*der*(*x* + 0)

⇒

*der*(*x*) + *der*(0)

 

by R3

 

⇒

1 + *der*(0)

 

by R1

gives one normal form, and

*der*(*x* + 0)

⇒

*der*(*x*)

 

by R5

 

⇒

1

 

by R1

gives another. Adding the rule

would allow the further reduction of 1 + *der*(0) to 1 + 0 and then, by R5, to 1. Although the presence of this new rule actually increases the number of alternative paths—*der*(*x* + 0) can now be reduced in four possible ways—they all end up with the same normal form, namely 1. This is no coincidence as it can be shown that (R6) actually restores confluency. This motivates another fundamental question: Under what conditions can a non-confluent system be made into an equivalent confluent one? The Knuth-Bendix __completion__ algorithm (Knuth & Bendix 1970) gives a partial answer to this question.

Term rewriting, like any other automated deduction method, needs strategies to direct its application. Rippling (Bundy, Stevens & Harmelen 1993, Basin & Walsh 1996) is a heuristic that has its origins in inductive theorem-proving that uses annotations to selectively restrict the rewriting process. The superposition calculus is a calculus of equational first-order logic that combines notions from first-order resolution and Knuth-Bendix ordering equality. Superposition is refutation complete (Bachmair & Ganzinger 1994) and is at the heart of a number of theorem provers, most notably the E equational theorem prover (Schulz 2004) and Vampire (Voronkov 1995).

### 2.6 Mathematical Induction

Mathematical induction is a very important technique of theorem proving in mathematics and computer science. Problems stated in terms of objects or structures that involve recursive definitions or some form of repetition invariably require mathematical induction for their solving. In particular, reasoning about the correctness of computer systems requires induction and an automated reasoning program that effectively implements induction will have important applications.

To illustrate the need for mathematical induction, assume that a property φ is true of the number zero and also that if true of a number then is true of its successor. Then, with our deductive systems, we can deduce that for any given number *n*, φ is true of it, φ(*n*). But we cannot deduce that φ is true of all numbers, ∀*x*φ(*x*); this inference step requires the rule of mathematical induction:

α(0)     \[α(*n*) — α(*succ*(*n*))\]

(mathematical induction)

∀*x*α(*x*)

In other words, to prove that ∀*x*α(*x*) one proves that α(0) is the case, and that α(*succ*(*n*)) follows from the assumption that α(*n*). The implementation of induction in a reasoning system presents very challenging search control problems. The most important of these is the ability to determine the particular way in which induction will be applied during the proof, that is, finding the appropriate induction schema. Related issues include selecting the proper variable of induction, and recognizing all the possible cases for the base and the inductive steps.

Nqthm (Boyer & Moore 1979) has been one of the most successful implementations of automated inductive theorem proving. In the spirit of Gentzen, Boyer and Moore were interested in how people prove theorems by induction. Their theorem prover is written in the functional programming language Lisp which is also the language in which theorems are represented. For instance, to express the commutativity of addition the user would enter the Lisp expression (EQUAL (PLUS X Y) (PLUS Y X)). Everything defined in the system is a functional term, including its basic “predicates”: T, F, EQUAL X Y, IF X Y Z, AND, NOT, etc. The program operates largely as a black box, that is, the inner working details are hidden from the user; proofs are conducted by rewriting terms that posses recursive definitions, ultimately reducing the conclusion’s statement to the T predicate. The Boyer-Moore theorem prover has been used to check the proofs of some quite deep theorems (Boyer, Kaufmann & Moore 1995). Lemma caching, problem statement generalization, and proof planning are techniques particularly useful in inductive theorem proving (Bundy, Harmelen & Hesketh 1991).

## 3\. Other Logics

### 3.1 Higher-Order Logic

Higher-order logic differs from first-order logic in that quantification over functions and predicates is allowed. The statement “*Any two people are related to each other in one way or another*” can be legally expressed in higher-order logic as ∀*x*∀*y*∃*R**R*(*x*,*y*) but not in first-order logic. Higher-order logic is inherently more expressive than first-order logic and is closer in spirit to actual mathematical reasoning. For example, the notion of set finiteness cannot be expressed as a first-order concept. Due to its richer expressiveness, it should not come as a surprise that implementing an automated theorem prover for higher-order logic is more challenging than for first-order logic. This is largely due to the fact that unification in higher-order logic is more complex than in the first-order case: unifiable terms do not always posess a most general unifier, and higher-order unification is itself undecidable. Finally, given that higher-order logic is incomplete, there are always proofs that will be entirely out of reach for any automated reasoning program.

Methods used to automate first-order deduction can be adapted to higher-order logic. TPS (Andrews *et al*. 1996, Andrews *et al*. 2006) is a theorem proving system for higher-order logic that uses Church’s typed λ-calculus as its logical representation language and is based on a connection-type deduction mechanism that incorporates Huet’s unification algorithm (Huet 1975). As a sample of the capabilities of TPS, the program has proved automatically that a subset of a finite set is finite, the equivalence among several formulations of the Axiom of Choice, and Cantor’s Theorem that a set has more subsets than members. The latter was proved by the program by asserting that there is no onto function from individuals to sets of individuals, with the proof proceeding by a diagonal argument. HOL (Gordon & Melham 1993) is another higher-order proof development system primarily used as an aid in the development of hardware and software safety-critical systems. HOL is based on the LCF approach to interactive theorem proving (Gordon, Milner & Wadsworth 1979), and it is built on the strongly typed functional programming language ML. HOL, like TPS, can operate in automatic and interactive mode. Availability of the latter mode is welcomed since the most useful automated reasoning systems may well be those which place an emphasis on interactive theorem proving (Farmer, Guttman & Thayer 1993) and can be used as assistants operating under human guidance. (Harrison 2000) discusses the verification of floating-point algorithms and the non-trivial mathematical properties that are proved by HOL Light under the guidance of the user. Isabelle (Paulson 1994) is a generic, higher-order, framework for rapid prototyping of deductive systems. Object logics can be formulated within Isabelle’s metalogic by using its many syntactic and deductive tools. Isabelle also provides some ready-made theorem proving environments, including Isabelle/HOL, Isabelle/ZF and Isabelle/FOL, which can be used as starting points for applications and further development by the user (Paulson 1990, Nipkow & Paulson 2002). Isabelle/ZF has been used to prove equivalent formulations of the Axiom of Choice, formulations of the Well-Ordering Principle, as well as the key result about cardinal arithmetic that, for any infinite cardinal κ, κ · κ = κ (Paulson & Grabczewski 1996).

To help prove higher-order theorems and discharge goals arising in interactive proofs, the user can ask Isabelle/HOL to invoke external first-order provers through Sledgehammer (Paulson 2010), a subsystem aimed at combining the complementary capabilities of automated reasoning systems of different types, including SMT solvers (see *4.2 SAT Solvers*, in this article; Blanchette *et al*. 2013). LEO-II (Benzmüller *et al*. 2015) is also a resolution-based automated theorem prover for higher-order logic that has been applied in a wide array of problems, most notably in the automation of Gödel’s ontological proof of God’s existence (see *4.6 Logic and Philosophy*, in this article).

### 3.2 Non-classical Logics

Non-classical logics (Haack 1978) such as modal logics, intuitionsitic logic, multi-valued logics, autoepistemic logics, non-monotonic reasoning, commonsense and default reasoning, relevance logic, paraconsistent logic, and so on, have been increasingly gaining the attention of the automated reasoning community. One of the reasons has been the natural desire to extend automated deduction techniques to new domains of logic. Another reason has been the need to mechanize non-classical logics as an attempt to provide a suitable foundation for artificial intelligence. A third reason has been the desire to attack some problems that are combinatorially too large to be handled by paper and pencil. Indeed, some of the work in automated non-classical logic provides a prime example of automated reasoning programs at work. To illustrate, the Ackerman Constant Problem asks for the number of non-equivalent formulas in the relevance logic R. There are actually 3,088 such formulas (Slaney 1984) and the number was found by “sandwiching” it between a lower and an upper limit, a task that involved constraining a vast universe of 20400 20-element models in search of those models that rejected non-theorems in R. It is safe to say that this result would have been impossible to obtain without the assistance of an automated reasoning program.

There have been three basic approaches to automate the solving of problems in non-classical logic (McRobie 1991). One approach has been, of course, to try to mechanize the non-classical deductive calculi. Another has been to simply provide an equivalent formulation of the problem in first-order logic and let a classical theorem prover handle it. A third approach has been to formulate the semantics of the non-classical logic in a first-order framework where resolution or connection-matrix methods would apply. (Pelletier *et al*. 2017) describes an automated reasoning system for a paraconsistent logic that takes both “indirect” approaches, the translational and the truth-value approach, to prove its theorems.

#### Modal logic

Modal logics find extensive use in computing science as logics of knowledge and belief, logics of programs, and in the specification of distributed and concurrent systems. Thus, a program that automates reasoning in a modal logic such as K, K4, T, S4, or S5 would have important applications. With the exception of S5, these logics share some of the important metatheoretical results of classical logic, such as cut-elimination, and hence cut-free (modal) sequent calculi can be provided for them, along with techniques for their automation. Connection methods (Andrews 1981, Bibel 1981) have played an important role in helping to understand the source of redundancies in the search space induced by these modal sequent calculi and have provided a unifying framework not only for modal logics but also for intuitionistic and classical logic as well (Wallen 1990). Current efforts to automate modal logic reasoning revolve around the translational approach mentioned above, namely to embed modal logic into classical logic and then use an existing automated reasoning system for the latter to prove theorems of the former. (Benzmüller & Paulson 2013) shows how to embed quantified modal logic into simple type theory, proves the soundness and completeness of the embedding, and demonstrates with simple experiments how existing higher-order theorem provers can be used to automate proofs in modal logic. The approach can be extended to higher-order modal logic as well (Benzmüller & Paleo 2015).

#### Intuitionistic logic

There are different ways in which intuitionsitic logic can be automated. One is to directly implement the intuitionistic versions of Gentzen’s sequent and natural deduction calculi, LJ and NJ respectively. This approach inherits the stronger normalization results enjoyed by these calculi allowing for a more compact mechanization than their classical counterparts. Another approach at mechanizing intuitionistic logic is to exploit its semantic similarities with the modal logic S4 and piggy back on an automated implementation of S4. Automating intuitionistic logic has applications in software development since writing a program that meets a specification corresponds to the problem of proving the specification within an intuitionistic logic (Martin-Löf 1982). A system that automated the proof construction process would have important applications in algorithm design but also in constructive mathematics. Nuprl (Constable *et al*. 1986) is a computer system supporting a particular mathematical theory, namely constructive type theory, and whose aim is to provide assistance in the proof development process. The focus is on logic-based tools to support programming and on implementing formal computational mathematics. Over the years the scope of the Nuprl project has expanded from “proofs-as-programs” to “systems-as-theories”. Similar in spirit and based on the Curry-Howard isomorphism, the Coq system formalizes its proofs in the Calculus of Inductive Constructions, a λ-calculus with a rich system of types including dependent types (Coquand & Huet 1988, Coquand & Paulin-Mohring 1988). Like Nuprl, Coq is designed to assist in the development of mathematical proofs as well as computer programs from their formal specifications.

## 4\. Applications

### 4.1 Logic Programming

Logic programming, particularly represented by the language __Prolog__ (Colmerauer *et al*. 1973), is probably the most important and widespread application of automated theorem proving. During the early 1970s, it was discovered that logic could be used as a programming language (Kowalski 1974). What distinguishes logic programming from other traditional forms of programming is that logic programs, in order to solve a problem, do not explicitly state *how* a specific computation is to be performed; instead, a logic program states *what* the problem is and then delegates the task of actually solving it to an underlying theorem prover. In Prolog, the theorem prover is based on a refinement of resolution known as SLD-resolution. __SLD-resolution__ is a variation of linear input resolution that incorporates a special rule for selecting the next literal to be resolved upon; SLD-resolution also takes into consideration the fact that, in the computer’s memory, the literals in a clause are actually ordered, that is, they form a sequence as opposed to a set. A Prolog __program__ consists of clauses stating known facts and rules. For example, the following clauses make some assertions about flight connections:

> flight(toronto, london).  
> flight(london,rome).  
> flight(chicago,london).  
> flight(*X*,*Y*) :– flight(*X*,*Z*) , flight(*Z*,*Y*).

The clause flight(toronto, london) is a fact while flight(*X*,*Y*) :– flight(*X*,*Z*) , flight(*Z*,*Y*) is a rule, written by convention as a reversed conditional (the symbol “:–” means “if”; the comma means “and”; terms starting in uppercase are variables). The former states that there is flight connection between Toronto and London; the latter states that there is a flight between cities *X* and *Y* if, for some city *Z*, there is a flight between *X* and *Z* and one between *Z* and *Y*. Clauses in Prolog programs are a special type of Horn clauses having precisely one positive literal: __Facts__ are program clauses with no negative literals while __rules__ have at least one negative literal. (Note that in standard clause notation the program rule in the previous example would be written as flight(*X*,*Y*) ∨ ~flight(*X*,*Z*) ∨ ~flight(*Z*,*Y*).) The specific form of the program rules is to effectively express statements of the form: “*If these conditions over here are jointly met then this other fact will follow*”. Finally, a __goal__ is a Horn clause with no positive literals. The idea is that, once a Prolog program Π has been written, we can then try to determine if a new clause γ, the goal, is entailed by Π, Π ⊨ γ; the Prolog prover does this by attempting to derive a contradiction from Π ∪ {~γ}. We should remark that program facts and rules alone cannot produce a contradiction; a goal must enter into the process. Like input resolution, SLD-resolution is not refutation complete for first-order logic but it is complete for the Horn logic of Prolog programs. The fundamental theorem: If Π is a Prolog program and γ is the goal clause then Π ⊨ γ iff Π ∪ {~γ} ⊢ \[ \] by SLD-resolution (Lloyd 1984).

For instance, to find out if there is a flight from Toronto to Rome one asks the Prolog prover to see if the clause flight(toronto, rome) follows from the given program. To do this, the prover adds ~flight(toronto,rome) to the program clauses and attempts to derive the empty clause, \[ \], by SLD-resolution:

1

flight(toronto,london)

Program clause

2

flight(london,rome)

Program clause

3

flight(chicago,london)

Program clause

4

flight(*X*,*Y*) ∨ ~flight(*X*,*Z*) ∨ ~flight(*Z*,*Y*)

Program clause

5

~flight(toronto,rome)

Negated conclusion

6

~flight(toronto,*Z*) ∨ ~flight(*Z*,rome)

Res 5 4

7

~flight(london,rome)

Res 6 1

8

\[ \]

Res 7 2

The conditional form of rules in Prolog programs adds to their readability and also allows reasoning about the underlying refutations in a more friendly way: To prove that there is a flight between Toronto and Rome, flight(toronto,rome), unify this clause with the consequent flight(*X*,*Y*) of the fourth clause in the program which itself becomes provable if both flight(toronto,*Z*) and flight(*Z*,rome) can be proved. This can be seen to be the case under the substitution {*Z* ← london} since both flight(toronto,london) and flight(london,rome) are themselves provable. Note that the theorem prover not only establishes that there is a flight between Toronto and Rome but it can also come up with an actual itinerary, Toronto-London-Rome, by extracting it from the unifications used in the proof.

There are at least two broad problems that Prolog must address in order to achieve the ideal of a logic programming language. Logic programs consist of facts and rules describing what is true; anything that is not provable from a program is deemed to be false. In regards to our previous example, *flight*(*toronto*, *boston*) is not true since this literal cannot be deduced from the program. The identification of falsity with non-provability is further exploited in most Prolog implementations by incorporating an operator, __not__, that allows programmers to explicitly express the negation of literals (or even subclauses) within a program. By definition, not *l* succeeds if the literal *l* itself fails to be deduced. This mechanism, known as __negation-by-failure__, has been the target of criticism. Negation-by-failure does not fully capture the standard notion of negation and there are significant logical differences between the two. Standard logic, including Horn logic, is monotonic which means that enlarging an axiom set by adding new axioms simply enlarges the set of theorems derivable from it; negation-by-failure, however, is __non-monotonic__ and the addition of new program clauses to an existing Prolog program may cause some goals to cease from being theorems. A second issue is the __control problem__. Currently, programmers need to provide a fair amount of control information if a program is to achieve acceptable levels of efficiency. For example, a programmer must be careful with the order in which the clauses are listed within a program, or how the literals are ordered within a clause. Failure to do a proper job can result in an inefficient or, worse, non-terminating program. Programmers must also embed hints within the program clauses to prevent the prover from revisiting certain paths in the search space (by using the __cut__ operator) or to prune them altogether (by using __fail__). Last but not least, in order to improve their efficiency, many implementations of Prolog do not implement unification fully and bypass a time-consuming yet critical test—the so-called __occurs-check__—responsible for checking the suitability of the unifiers being computed. This results in an unsound calculus and may cause a goal to be entailed by a Prolog program (from a computational point of view) when in fact it should not (from a logical point of view).

There are variations of Prolog intended to extend its scope. By implementing a model elimination procedure, the Prolog Technology Theorem Prover (PTTP) (Stickel 1992) extends Prolog into full first-order logic. The implementation achieves both soundness and completeness. Moving beyond first-order logic, λProlog (Miller & Nadathur 1988) bases the language on higher-order constructive logic.

### 4.2 SAT Solvers

The problem of determining the satisfiability of logic formulas has received much attention by the automated reasoning community due to its important applicability in industry. A propositional formula is __satisfiable__ if there is an assignment of truth-values to its variables that makes the formula true. For example, the assignment (*P* ← true, *Q* ← true, *R* ← false) does not make (*P* ∨*R*) & ~*Q* true but (*P* ← true, *Q* ← false, *R* ← false) does and, hence, the formula is satisfiable. Determining whether a formula is satisfiable or not is called the Boolean Satisfiability Problem—__SAT__ for short—and for a formula with *n* variables SAT can be settled thus: Inspect each of the 2*n* possible assignments to see if there is at least one assignment that satisfies the formula, i.e. makes it true. This method is clearly complete: If the original formula is satisfiable then we will eventually find one such satisfying assignment; but if the formula is contradictory (i.e. non-satisfiable), we will be able to determine this too. Just as clearly, and particularly in this latter case, this search takes an exponential amount of time, and the desire to conceive more efficient algorithms is well justified particularly because many computing problems of great practical importance such as graph-theoretic problems, network design, storage and retrieval, scheduling, program optimization, and many others (Garey & Johnson 1979) can be expressed as SAT instances, i.e. as the SAT question of some propositional formula representing the problem. Given that SAT is NP-complete (Cook 1971) it is very unlikely that a polynomial algorithm exists for it; however, this does not preclude the existence of sufficiently efficient algorithms for particular cases of SAT problems.

The Davis-Putnam-Logemann-Loveland (__DPLL__) algorithm was one of the first SAT search algorithms (Davis & Putnam 1960; Davis, Logemman & Loveland 1962) and is still considered one of the best complete SAT solvers; many of the complete SAT procedures in existence today can be considered optimizations and generalizations of DPLL. In essence, DPLL search procedures proceed by considering ways in which assignments can be chosen to make the original formula true. For example, consider the formula in CNF

> *P* & ~*Q* & (~*P* ∨ *Q* ∨ *R*) & (*P* ∨ ~*S*)

Since *P* is a conjunct, but also a unit clause, *P* must be true if the entire formula is to be true. Moreover, the value of ~*P* does not contribute to the truth of ~*P* ∨ *Q* ∨ *R* and *P* ∨ ~*S* is true regardless of *S*. Thus, the whole formula reduces to

> ~*Q* & (*Q* ∨ *R*)

Similarly, ~*Q* must be true and the formula further reduces to

> *R*

which forces *R* to be true. From this process we can recover the assignment (*P* ← true, *Q* ← false, *R* ← true, *S* ← false) proving that the original formula is satisfiable. A formula may cause the algorithm to branch; the search through a branch reaches a dead end the moment a clause is deemed false—a __conflicting clause__—and all variations of the assignment that has been partially constructed up to this point can be discarded. To illustrate:

1

*R* & (*P* ∨ *Q*) & (~*P* ∨ *Q*) & (~*P* ∨ ~*Q*)

Given

2

(*P* ∨ *Q*) & (~*P* ∨ *Q*) & (~*P* ∨ ~*Q*)

By letting *R* ← true

3

*Q* & ~*Q*

By letting *P* ← true

4

?

Conflict: *Q* and ~*Q* cannot both be true

5

(*P* ∨ *Q*) & (~*P* ∨ *Q*) & (~*P* ∨ ~*Q*)

Backtrack to (2): *R* ← true still holds

6

~*P*

By letting *Q* ← true

7

true

By letting ~*P* be true, i.e., *P* ← false

Hence, the formula is satisfiable by the existence of (*P* ← false, *Q* ← true, *R* ← true). DPLL algorithms are made more efficient by strategies such as __term indexing__ (ordering of the formula variables in an advantageous way), __chronological backtracking__ (undoing work to a previous branching point if the process leads to a conflicting clause), and __conflict-driven learning__ (determining the information to keep and where to backtrack). The combination of these strategies results in a large prune of the search space; for a more extensive discussion the interested reader is directed to Zhang & Malik 2002.

A quick back-envelope calculation reveals the staggering computing times of (algorithms for) SAT-type problems represented by formulas with as little as, say, 60 variables. To wit: A problem represented as a Boolean formula with 10 variables that affords a linear solution taking one hundredth of a second to complete would take just four hundredths and six hundredths of a second to complete if the formula had instead 40 and 60 variables respectively. In dramatic contrast, if the solution to the problem were exponential (say 2*n*) then the times to complete the job for 10, 40 and 60 variables would be respectively one thousandth of a second, 13 days, and 365 centuries. It is a true testament to the ingenuity of the automated reasoning community and the power of current SAT-based search algorithms that real-world problems with thousands of variables can be handled with reasonable efficency. Küchlin & Sinz 2000 discuss a SAT application in the realm of industrial automotive product data management where 18,000 (elementary) Boolean formulas and 17,000 variables are used to express constraints on orders placed by customers. As another example, Massacci & Marraro 2000 discuss an application in logical cryptanalysis, that is, the verification of properties of cryptographic algorithms expressed as SAT problems. They demonstrate how finding a key with a cryptographic attack is analogous to finding a model—assignment—for a Boolean formula; the formula in their application encodes the commercial version of the U.S Data Encryption Standard (DES) with the encoding requiring 60,000 clauses and 10,000 variables.

Although SAT is conceptually very simple, its inner nature is not well understood—there are no criteria that can be generally applied to answer as to why one SAT problem is harder than another. It should then come as no surprise that algorithms that tend to do well on some SAT instances do not perform so well on others, and efforts are being spent in designing hybrid algorithmic solutions that combine the strength of complementary approaches—see Prasad, Biere & Gupta 2005 for an application of this hybrid approach in the verification of hardware design.

Recent advances in SAT hybrid strategies coupled with supercomputing power has allowed a team of three computing scientists to solve the Boolean Pythagorean Triples Problem, a long-standing open question in Ramsey Theory: Can the set {1, 2,...} of natural numbers be divided into two parts with no part containing a triple (*a*, *b*, *c*) such that *a*2 + *b*2 = *c*2? Heule, Kullmann & Marek 2016 proved that this cannot be done by showing that the set {1, 2, … , *n*} can be so partitioned for *n* = 7824 but that this is impossible for *n* ≥ 7825. Expressing this deceptively simple question as a SAT problem required close to 38,000 clauses and 13,000 variables with about half of these going to represent that the problem is satisfiable when n = 7824 and the other half to represent that it is not when n = 7825; of the two, proving the latter was far more challenging since it demanded a proof of unsatisfiability, i.e. that no such partition exists. A naïve brute-force approach considering all 27825 possible two-part partitions was clearly out of the question and the problem was attacked by using “clever” algorithms within a multi-stage SAT-based framework for solving hard problems in combinatorics, consisting of five phases: *Encode* (encoding the problem as SAT formulas), *Transform* (optimizing the encoding using clause elimination and symmetry breaking techniques), *Split* (dividing the problem effectively into subproblems using splitting heuristics), *Solve* (searching for satisfying assignments or their lack thereof using fast processing), and *Validate* (validating the results of the earlier phases). Of special importance was the application of __cube-and-conquer__, a hybrid SAT strategy particularly effective for hard combinatorial problems. The strategy combines __look-ahead__ with __conflict-driven clause-learning__ (__CDCL__), with the former aiming to construct small binary search trees using global heuristics and the latter aiming to find short refutations using local heuristics.

After splitting the problem into 106 hard subproblems (known as “cubes”), these were handed down to 800 cores working in parallel on a *Stampede* supercomputer which, after 2 days of further splitting and CDCL clause-crunching, settled the question and delivered a 200-terabyte proof validating the work. After deservedly celebrating this significant accomplishment of automated reasoning, and after entertaining all the new applications that the enhanced SAT method would afford (particularly in the areas of hardware and software verification), we should then ask some questions that are of especial importance to mathematicians: Is there a more insightful way to establish this result that would involve more traditional and intellectually satisfying mathematical proof methods? Or, as far as increasing our understanding of a given field (combinatorics in this case), what is the value of settling a question when no human can inspect the proof and hence get no insight from it? Even the team responsible for the result admits that “the proofs of unsatisfiability coming from SAT solvers are, from a human point of view, a giant heap of random information (no direct understanding is involved)”. The conjecture has been settled but we basically have no underlying idea what makes 7825 so special. Perhaps the real value to be drawn from these considerations is that they lead us to think about the deeper question: What is it about the structure of a specific problem that makes it amenable to standard mathematical treatment as opposed to requiring a mindless brute-force approach? While this question is being contemplated, SAT may provide the best line of attack on certain mathematical problems.

The DPLL search procedure has been extended to quantified logic. MACE is a popular program based on the DPLL algorithm that searches for finite models of first-order formulas with equality. As an example (McCune 2001), to show that not all groups are commutative one can direct MACE to look for a model of the group axioms that also falsifies the commutation law or, equivalently, to look for a model of:

> (G1)
> 
> *e* · *x* = *x*
> 
> (left identity)
> 
> (G2)
> 
> *i* (*x*) · *x* = *e*
> 
> (left inverse)
> 
> (G3)
> 
> (*x* · *y*) · *z* = *x* · (*y* · *z*)
> 
> (associativity)
> 
> (DC)
> 
> *a* · *b* ≠ *b* · *a*
> 
> (denial of commutativity)

MACE finds a six-element model of these axioms, where · is defined as:

·

0

1

2

3

4

5

0

0

1

2

3

4

5

1

1

0

4

5

2

3

2

2

3

0

1

5

4

3

3

2

5

4

0

1

4

4

5

1

0

3

2

5

5

4

3

2

1

0

and where *i* are defined as:

*x*

0

1

2

3

4

5

*i*(*x*)

0

1

2

3

4

5

This example also illustrates, once again, the benefits of using an automated deduction system: How long would have taken the human researcher to come up with the above or a similar model? For more challenging problems, the program is being used as a practical complement to the resolution-based theorem prover Prover9 (formerly Otter), with Prover9 searching for proofs and MACE jointly looking for (counter) models. To find such models, MACE converts the first-order problem into a set of "flattened" clauses which, for increasing model sizes, are instantiated into propositional clauses and solved as a SAT problem. The method has been implemented in other automated reasoning systems as well, most notably in the Paradox model finder where the MACE-style approach has been enhanced by four additional techniques resulting in some significant efficiency improvements (Claessen & Sörensson 2003): term definitions (to reduce the number of variables in flattened clauses), static symmetric reduction (to reduce the number of isomorphic models), sort inference (to apply symmetric reduction at a finer level) and incremental SAT (to reuse search information between consecutive model sizes). The strategy of pairing the complementary capabilities of separate automated reasoning systems has been applied to higher-order logic too as exemplified by Nitpick, a counterexample generator for Isabelle/HOL (Blanchette & Nipkow 2010). Brown 2013 describes a theorem proving procedure for higher-order logic that uses SAT-solving to do most of the work; the procedure is a complete, cut-free, ground refutation calculus that incorporates restrictions on instantiations and has been implemented in the Satallax theorem prover (Brown 2012).

An approach of great interest at solving SAT problems in first-order logic is __Satisfiability Modulo Theory__ (__SMT__) where the interpretation of symbols in the problem’s formulation is constrained by a __background theory__. For example, in linear arithmetic the function symbols are restricted to + and −. As another example, in the extensional theory of arrays (McCarthy 1962) the array function *read*(*a*, *i*) returns the value of the array *a* at index *i*, and *write*(*a*, *i*, *x*) returns the array identical to *a* but where the value of *a* at *i* is *x*. More formally,

> ∀*a* : *Array* . ∀*i*,*j* : *Index* . ∀*x* : *Value* . *i* = *j* →  
>   *read*(*write*(*a*, *i*, *x*), *j*) = *x* (read-write axiom 1)
> 
> ∀*a* : *Array* . ∀*i*,*j* : *Index* . ∀*x* : *Value* . *i* ≠ *j* →  
>   *read*(*write*(*a*, *i*, *x*), *j*) = *read*(*a*, *j*) (read-write axiom 2)
> 
> ∀*a*,*b* : *Array* . ∀*i* : *Index* . *a* = *b* → *read*(*a*, *i*) = *read*(*b*, *i*)
> 
> (extensionality)

In the context of these axioms, an SMT solver would attempt to establish the satisfiability (or, dually, the validity) of a given first-order formula, or thousands of formulas for that matter, such as

> *i* − *j* = 1 & *f*(*read*(*write*(*a*, *i*, 2), *j* + 1) = *read*(*write*(*a*, *i*, *f*(*i* − *j* + 1)), *i*)

(Ganzinger *et al*. 2004) discusses an approach to SMT called __DPLL__(__T__) consisting of a general DPLL(X) engine that works in conjunction with a solver *SolverT* for background theory *T*. Bofill *et al*. (2008) present the approach in the setting of the theory of arrays, where the DPLL engine is responsible for enumerating propositional models for the given formula whereas *SolverT* checks whether these models are consistent with the theory of arrays. Their approach is sound and complete, and can be smoothly extended to multidimensional arrays.

SMT is particularly successful in verification applications, most notably software verification. Having improved the efficiency of SAT solvers with SMT, the effort is now on designing more efficient SMT solvers (de Moura 2007).

### 4.3 Deductive Computer Algebra

To prove automatically even the simplest mathematical facts requires a significant amount of domain knowledge. As a rule, automated theorem provers lack such rich knowledge and attempt to construct proofs from first principles by the application of elementary deduction rules. This approach results in very lengthy proofs (assuming a proof is found) with each step being justified at a most basic logical level. Larger inference steps and a significant improvement in mathematical reasoning capability can be obtained, however, by having a theorem prover interact with a computer algebra system, also known as a symbolic computation system. A __computer algebra system__ is a computer program that assists the user with the symbolic manipulation and numeric evaluation of mathematical expressions. For example, when asked to compute the improper integral

a competent computer algebra system would quickly reply with the answer

Essentially, the computer algebra system operates by taking the input expression entered by the user and successively applies to it a series of transformation rules until the result no longer changes (see the section *Term Rewriting* in this article for more details). These transformation rules encode a significant amount of domain (mathematical) knowledge making symbolic systems powerful tools in the hands of applied mathematicians, scientists, and engineers trying to attack problems in a wide variety of fields ranging from calculus and the solving of equations to combinatorics and number theory.

Problem solving in mathematics involves the interplay of deduction and calculation, with decision procedures being a reminder of the fuzzy division between the two; hence, the integration of deductive and symbolic systems, which we coin here as __Deductive Computer Algebra (DCA)__, is bound to be a fruitful combination. Analytica (Bauer, Clarke & Zhao 1998) is a theorem prover built on top of Mathematica, a powerful and popular computer algebra system. Besides supplying the deductive engine, Analytica also extends Mathematica’s capabilities by defining a number of rewrite rules—more precisely, identities about summations and inequalities—that are missing in the system, as well as providing an implementation of Gosper’s algorithm for finding closed forms of indefinite hypergeometric summations. Equipped with this extended knowledge, Analytica can prove semi-automatically some nontrivial theorems from real analysis, including a series of lemmas directly leading to a proof of the Bernstein Approximation Theorem. Here is the statement of the theorem simply to give the reader a sense of the level of the mathematical richness we are dealing with:

> __Bernstein Approximation Theorem__.  
> Let I = \[0, 1\] be the closed unit interval, *f* a real continuous function on I, and *B**n*(*x*,*f*) the *nth* Bernstein polynomial for *f* defined as
> 
> *Bn*(*x*, *f*)
> 
> \=
> 
> *n*  
> ∑  
> *k*\=0
> 
> (
> 
> *n*  
> *k*
> 
> )
> 
> *f*(*k*/*n*)*xk*(1 − *x*)*n*−*k*
> 
> Then, on the interval I, the sequence of Bernstein polynomials for *f* converges uniformly to *f*.

To be frank, the program is supplied with key information to establish the lemmas that lead to this theorem but the amount and type of deductive work done by the program is certainly nontrivial. (Clarke & Zhao 1994) provides examples of fully automated proofs using problems in Chapter 2 of *Ramanujan’s Notebooks* (Berndt 1985) including the following example that the reader is invited to try. Show that:

> *Ar*  
> ∑  
> *k*\=*n*+1
> 
> \=
> 
> *r* + 2
> 
> (
> 
> *r*  
> ∑  
> *k*\=1
> 
> (*r* − *k*)
> 
> (
> 
> *Ak*  
> ∑  
> *j*\=*A**k*−1+1
> 
> )
> 
> )
> 
> \+ 2*r*φ(3,*A*0)

where *A0*\=1, *An+1*\=3*An*+1 and φ(*x*,*n*) is Ramanujan’s abbreviation for

Analytica’s proof of this identity proceeds by simplifying both the left- and right-hand sides of the equality and showing that both sides reduce to the same expression, −*Hn* + *HAr*. The simplification uses the added summation identities mentioned before as well as some elementary properties of the harmonic numbers,

The resulting proof has 28 steps (some of which are nontrivial) taking about 2 minutes to find.

Kerber, Kohlhase & Sorge 1998 use the Ωmega planning system as the overall way to integrate theorem proving and symbolic computation. In Harrison & Théry 1998, we find an example of the integration of a higher-order logic theorem proving system (HOL) with a computer algebra system (Maple).

Their great power notwithstanding, symbolic algebra systems do not enforce the same level of rigor and formality that is the essence of automated deduction systems. In fact, the mathematical semantics of some of the knowledge rules in most algebra systems is not entirely clear and are, in cases, logically unsound (Harrison & Théry 1998). The main reason for this is an over-aggressiveness to provide the user with an answer in a timely fashion at whatever cost, bypassing the checking of required assumptions even if it means sacrificing the soundness of the calculation. (This is strongly reminiscent of most Prolog implementations that bypass the so-called “occurs-check” also abandoning logical soundness in the name of efficiency.) This serious problem opens the opportunity for a deduction system to provide a service to the computer algebra system: Use its deductive capabilities to verify that the computer algebra’s computational steps meet the required assumptions. There is a catch in this, however: For sufficiently large calculation steps, verifying is tantamount to proving and, to check these steps, the deduction system may well need the assistance of the very same system that is in need of verification! The solution to the soundness problem may then well require an extensive modification of the chosen symbolic algebra system to make it sound; an alternative approach is to develop a new system, entirely from scratch, in conjunction with the development of the automated theorem prover. In either case, the resulting combined deductive computer algebra system should display a much improved ability for automated mathematical reasoning.

### 4.4 Formal Verification of Hardware

Automated reasoning has reached the level of maturity where theorem proving systems and techniques are being used for industrial-strength applications. One such application area is the formal verification of hardware and software systems. The cost of defects in hardware can easily run into the millions. In 1994, the Pentium processor was shipped with a defect in its floating-point unit and the subsequent offer by Intel to replace the flawed chip (which was taken up only by a small fraction of all Pentium owners) cost the company close to $500 million. To guard against situations like this, the practice of testing chip designs is now considered insufficient and more formal methods of verification have not only gained large attention in the microprocessor industry but have become a necessity. The idea behind formal verification is to rigorously prove with mathematical certainty that the system functions as specified. Common applications to hardware design include formally establish that the system functions correctly on all inputs, or that two different circuits are functionally equivalent.

Depending on the task at hand, one can draw from a number of automated formal verification techniques, including SAT solvers in propositional logic, symbolic simulation using binary decision diagrams (BDDs), model checking in temporal logic, or conducting proofs in higher-order logic. In the latter case, using an automated theorem prover like HOL—see Section 10—has shown to be invaluable in practice. Proof construction in a system like HOL proceeds semi-automatically with the user providing a fair amount of guidance as to how the proof should proceed: The user tries to find a proof while being assisted by the theorem prover which, on request, can either automatically fill in a proof segment or verify proof steps given to it. Although some of the techniques mentioned above provide decision procedures which higher-order logic lacks, higher-order logic has the advantage of being very expressive. The tradeoff is justified since proving facts about __floating-point arithmetic__ requires the formalization of a large body of real analysis, including many elementary statements such as:

|-

(!x. a <= x /\\ x <= b ==> (f diffl (f' x)) x) /\\

f(a) <= K /\\

f(b) <= K /\\

(!x. a <= x /\\ x <= b /\\ (f'(x) = 0) ==> f(x) <= K) ==>

  (!x. a <= x /\\ x <= b ==> f(x) <= K)

This statement from Harrison 2000 written in HOL says that if a function *f* is differentiable with derivative *f*′ in an interval \[*a*, *b*\] then a sufficient condition for *f*(*x*) ≤ *K* throughout the interval is that *f*(*x*) ≤ *K* at the endpoints *a*, *b* and at all points of zero derivative. The result is used to determine error bounds when approximating transcendental functions by truncated power series. Conducting proofs in such a “painstakingly foundational system” (Harrison 2006) has some significant benefits. First, one achieves a high degree of assurance that the proofs are valid since (admitedly lengthy) they are composed of small error-free deductive steps. Second, the formalization of these elementary statements and intermediate results can be reused in other tasks or projects. For example, a library of formal statements and proven results in floating-point division can be reused when proving other results of floating-point algorithms for square roots or transcendental functions. To further illustrate, different versions of the square root algorithm for the Intel Itanium share many similarities and the proof of correctness for one version of the algorithm can be carried over to another version after minor tweaking of the proof. A third benefit of using a prover like HOL is, of course, that such lengthy proofs are carried out mechanically and are deductively certain; the likelihood of introducing a human error if they were carried out manually would be just as certain.

### 4.5 Formal Verification of Software

Society is becoming increasingly dependent on software systems for critical services such as safety and security. Serious adverse effects of malfunctioning software include loss of human life, threats to security, unauthorized access to sensitive information, large financial losses, denial of critical services, and risk to safety. One way to increase the quality of critical software is to supplement traditional methods of testing and validation with techniques of formal verification. The basic approach to formal verification is to generate a number of conditions that the software must meet and to verify—establish—them by mathematical proof. As with hardware, automated formal verification (simply formal verification, hereafter) is concerned with discharging these proof obligations using an automated theorem prover.

The formal verification of __security protocols__ is an almost ideal application of automated theorem proving in industry. Security protocols are small distributed programs aimed at ensuring that transactions take place securely over public networks. The specification of a security protocol is relatively small and well defined but its verification is certainly non-trivial. We have already mentioned in a previous section the use of SAT-based theorem provers in the verification of the U.S Data Encryption Standard (DES). As another example, the Mondex “electronic purse” is a smart card electronic cash system that was originally developed by National Westminster Bank and subsequently sold to MasterCard International. Schmitt & Tonin 2007 describe a Java Card implementation of the Mondex protocol for which the security properties were reformulated in the Java Modeling Language (JML) following closely the original Z specification. Proof of correctness was conducted using the KeY tool (Beckert, Hanle & Schmitt 2007), an interactive theorem proving environment for first-order dynamic logic that allows the user to prove properties of imperative and object-oriented sequential programs. This application of automated reasoning demonstrates, in the words of the authors, that “it is possible to bridge the gap between specification and implementation ensuring a fully verified result”.

Denney, Fischer & Schumann 2004 describe a system to automate the certification of safety properties of data-analysis __aerospace software__ at NASA. Using Hoare-style program verification techniques, their system generates proof obligations that are then handled by an automated theorem prover. The process is not fully automated, however, since many of the obligations must be simplified first in order to improve the ability of the theorem prover to solve the proof tasks. For example, one such class of obligations makes a statement about a matrix, *r*, that needs to remain symmetric after updates along its diagonal have been made, and has the form:

__Original form__:  
*symm*(*r*) → *symm*(*diag-updates*(*r*))

__Simplified form__ (when *r* is 2x2):

(∀*i*)(∀*j*)(0 ≤ *i*, *j* ≤ 1 → *sel*(*r*, *i*, *j*) = *sel*(*r*, *j*, *i*)) →

(∀*k*)(∀*l*)(0 ≤ *k*, *l* ≤ 1 →

*sel*(*upd*(*upd*(*r*, 1, 1, *r*11), 0, 0, *r*00), *k*, *l*) = *sel*(*upd*(*upd*(*r*, 1, 1, *r*11), 0, 0, *r*00), *l*, *k*)))

Even after the simplification, current theorem provers find the proof task challenging. The task becomes intractable for larger matrices and number of updates (e.g. a 6×6 matrix with 36 updates) and further preprocessing and simplification on the obligation is required before the task eventually falls within the reach of state-of-art theorem provers. But it is worth remarking that proofs are found without using any specific features or configuration parameters of the theorem provers which would improve their chances at completing the proofs. This is important since the everyday application of theorem provers in industry cannot presuppose such deep knowledge of the prover from their users. The formal verification of software remains a demanding task but it is difficult to see how the certification of properties could happen without the assistance of automated deduction when one faces the humanly impossible task of establishing thousands of such obligations.

In the field of __nuclear engineering__, techniques of automated reasoning are deemed mature enough to assist in the formal verification of the safety-critical software responsible for controlling a nuclear power plant’s reactor prevention systems (RPS). The RPS component of the digital control system of the APR-1400 nuclear reactor is specified using NuSCR, a formal specification language customized for nuclear applications (Yoo, Jee & Cha 2009). Model checking in computation tree logic is used to check the specifications for completeness and consistency. After this, nuclear engineers generate function block designs via a process of automatic synthesis and formally verify the designs also using techniques of model checking in linear temporal logic; the techniques are also used to verify the equivalence of the multiple revisions and releases of the design. These model-checking tools were implemented to make their use as easy and intuitive as possible, in a way that did not require a deep knowledge of the techniques, and used notations familiar to nuclear engineers. The use of automated reasoning tools not only helps the design engineers to establish the desired results but it also raises the confidence of the government’s regulatory personnel that need to approve the RPS software before the reactor can be certified for operation.

### 4.6 Logic and Philosophy

In the spirit of Wos, Overbeek, Lusk & Boyle 1992, we pose the question: What do the following statements about different systems of formal logic and exact philosophy have in common?

-   The implicational fragments of the modal logics S4 and S5 have been studied extensively over the years. Posed as an open question, it was eventually shown that there is a single axiom for implicational S4 as well as several new shortest axioms for implicational S5 (Ernst, Fitelson, Harris & Wos 2002).
-   The *L* combinator is defined as (*Lx*)*y* = *x*(*yy*). Although it was known that the *L*\-based combinator *E*12 = ((*L*(*L**L*))(*L*(*L**L*)))((*L*(*L**L*))(*L*(*L**L*))) satisfies *E*12*E*12 = *E*12 the question remained whether a shorter *L*\-based combinator satisfying this property existed. (Glickfeld & Overbeek 1986) showed this to be the case with *E*8 = ((*L**L*)(*L*(*L**L*)))(*L*(*L**L*)).
-   Thirteen shortest single axioms of length eleven for classical equivalence had been discovered, and *XCB* = *e*(*x*, *e*(*e*(*e*(*x*, *y*), *e*(*z*, *y*)), *z*)) was the only remaining formula of that length whose status was undetermined—was it an axiom? For a quarter of a century this question remained open despite intense study by various researchers. It was finally settled that *XCB* is indeed such a single axiom, thus ending the search for shortest single axioms for the equivalential calculus (Wos, Ulrich & Fitelson 2002).
-   Saint Anselm of Canterbury offered in his *Proslogium* a famous argument for the existence of God. But, quite recently, a simpler proof has been discovered in the sense that it is shorter and uses fewer assumptions (Oppenheimer & Zalta 2011). In the same tradition, Gödel produced a proof of God’s existence but (Benzmüller & Paleo 2014) have recently proved the same result using a weaker logic system while simultaneously addressing a major criticism of Gödel’s proof.
-   In the axioms defining a Robbins algebra, the Huntington’s equation −(−(*x* + *y*) + −(*x* + −*y*)) = *x* can be replaced by a simpler one, namely the Robbins equation −(−*x* + *y*) + −(−*x* + −*y*) = *x*. This conjecture went unproved for more than 50 years resisting the attacks of many logicians including Tarski until it was eventually proved in (McCune 1997).

We ask again, what do these results have in common? The answer is that each has been proved with the help of an automated reasoning program. Having disclosed the answer to this question prompts a new one: How much longer would have taken to settle these open problems without the application of such an automated reasoning tool?

The strict implicational fragments of the logical systems S4 and S5 of __modal logic__ are known as C4 and C5, respectively, and their Hilbert-style axiomatizations presuppose condensed detachment as their sole rule of inference. With insight from Kripke’s work, Anderson & Belnap (1962) published the first axiomatization of C4 using the following 3-axiom basis, where the Polish notation ‘*Cpq*’ stands for ‘*p* → *q*’.

(1)

*Cpp*

*CCpqCrCpq*

*CCpCqrCCpqCpr*

A question was posed sometime after: Is there a shorter such axiomatization for C4, using a 2-axiom basis or even a single axiom? Using the automated reasoning program Otter, the authors Ernst, Fitelson, Harris & Wos (2001) settled both questions in the affirmative. In fact, several 2-axiom bases were discovered of which the following turned out to be shortest:

(2)

*CpCqq*

*CCpCqrCCpqCsCpr*

Further rounds of automated reasoning work were rewarded with the discovery of a single axiom for C4; the axiom is 21 symbols long and it was also proved that it is the shortest such axiom:

(3)

*CCpCCqCrrCpsCCstCuCpt*

To show that each of (2) and (3) is necessary and sufficient for (1), a circle of proofs was produced using the automated reasoning tool: (1) ⇒ (3) ⇒ (2) ⇒ (1). As for C5, its axiomatization was originally published in a paper by Lemmon, A. Meredith, D. Meredith, Prior & Thomas (1957) giving several 4-, 3-, 2- and 1-axiom bases for C5, including the following 3-axiom basis:

(4)

*CqCpp*

*CCpqCCqrCpr*

*CCCCpqrCpqCpq*

The publication also included the shortest known 2-axiom bases for C5 (actually two of them, containing 20 symbols each) but the shortest single axiom for C5 was later discovered by (Meredith and Prior 1964) and having 21 symbols:

(5)

*CCCCCppqrCstCCtqCsCsq*

Applying automated reasoning strategies again, Ernst, Fitelson, Harris & Wos 2001) discovered several new bases, including the following 2-axiom basis of length 18 and six 1-axiom bases matching Meredith’s length of 21 (only one of these is given below):

(7)

*CCCCpqrCCuuqCCqtCsCpt*

To show that each of (6) and (7) is necessary and sufficient for (4), a circle of proofs was also produced with the theorem prover: (6) ⇒ (4) ⇒ (7) ⇒ (6).

A charming foray into __combinatory logic__ is presented in Smullyan 1985 and Glickfeld & Overbeek 1986, where we learn about a certain enchanted forest inhabited by talking birds. Given any birds *A* and *B*, if the name of bird *B* is spoken to bird *A* then *A* will respond with the name of some bird in the forest, *A**B*, and this response to *B* from *A* will always be the same. Here are some definitions about enchanted birds:

> __B1__
> 
> A *mockingbird* *M* *mimics* any bird in the sense that *M*’s response to a bird *x* is the same as *x*’s response to itself, *Mx* = *xx*.
> 
> __B2__
> 
> A bird *C* *composes* birds *A* and *B* if *A*(*Bx*) = *Cx*, for any bird *x*. In other words, *C*’s response to *x* is the same as *A*’s response to *B*’s response to *x*.
> 
> __B3__
> 
> A bird *A* is fond of a bird *B* if *A*’s response to *B* is *B*; that is, *AB* = *B*.

And here are two facts about this enchanted forest:

> __F1__
> 
> For any birds *A* and *B* in the forest there is a bird *C* that composes them.
> 
> __F2__
> 
> There is a mockingbird in the forest.

There have been rumors that every bird in the forest is fond of at least one bird, and also that there is at least one bird that is not fond of any bird. The challenge to the reader now is, of course, to settle these rumors using only F1 and F2, and the given definitions (B1)–(B3). Glickfeld & Overbeek 1986 do this in mere seconds with an automated reasoning system using paramodulation, demodulation and subsumption. For a more challenging problem, consider the additional definitions:

> __B4__
> 
> A bird is egocentric if it is fond of itself: *EE* = *E*.
> 
> __B5__
> 
> A bird *L* is a lark if for any birds *x* and *y* the following holds: (*Lx*)*y* = *x*(*yy*).

Smullyan challenges us to prove a most surprising thing about larks: Suppose we are not given any other information except that the forest contains a lark. Then, show that at least one bird in the forest must be egocentric! Below we give the salient steps in the proof found by the automated reasoning system, where ‘*S*(*x*, *y*)’ stands for ‘*xy*’ and where clauses (2) and (3) are, respectively, the definition of a lark and the denial of the theorem; numbers on the right are applications of paramodulation:

> 1
> 
> (x1 = x1)
> 
> 2
> 
> (S(S(L, x1), x2) = S(x1, S(x2, x2)))
> 
> 3
> 
> \-(S(x1, x1) = x1)
> 
> 6
> 
> (S(x1, S(S(L, S(x2, x2)), x2)) = S(S(L, x1), S(x2, x2)))
> 
> 2 2
> 
> 8
> 
> (S(x1, S(S(x2, x2), S(x2, x2))) = S(S(L, S(L, x1)), x2))
> 
> 2 2
> 
> 9
> 
> (S(S(S(L, L), x1), x2) = S(S(x1, x1), S(x2, x2)))
> 
> 2 2
> 
> 18
> 
> \-(S(S(L, S(S(L, S(L, L)), x1)), x1) = S(S(L, S(x1,x1)), x1))
> 
> 6 3 6 9 8 8
> 
> 19
> 
> \[\]
> 
> 18 1

Closer inspection of the left and right hand sides of (18) under the application of unification revealed the discovery of a 10-*L* bird, i.e. a 10-symbol bird expressed solely in terms of larks, which was a strong candidate for egocentricity. This discovery was exciting because the shortest egocentric *L*\-bird known to Smullyan was of length 12. A subsequent run of the automated reasoning system produced a proof of this fact as well as another new significant bird: A possible egocentric 8-*L* bird! A few more runs of the system eventually produced a 22-line proof (with terms with as many as 50 symbols, excluding commas and parentheses) of the fact that ((*LL*)(*L*(*LL*)))(*L*(*LL*)) is indeed egocentric. The natural questions to ask next are, of course, whether there are other 8-*L* egocentric birds and whether there are shorter ones. The reader may want to attempt this with paper and pencil but, given that there are 429 such birds, it may be wiser to try it instead (or in conjunction) with an automated reasoning program; both approaches are explored in Glickfeld & Overbeek 1986. For a more formal, but admittedly less colorful, introduction to combinatory logic and lambda-conversion the reader is referred to Hindley & Seldin 1986.

Formulas in the classical __equivalential calculus__ are written using sentential variables and a two-place function symbol, *e*, for equivalence. The calculus has two rules of inference, detachment (modus ponens) and substitution; the rules can be combined into the single rule of condensed detachment: Obtain *t*θ from *e*(*s*,*t*) and *r* where *s*θ = *r*θ with mgu θ. The calculus can be axiomatized with the formulas:

(E1)

*e*(*x*,*x*)

(reflexivity)

(E2)

*e*(*e*(*x*,*y*),e(*y*,*x*))

(symmetry)

(E3)

*e*(*e*(*x*,*y*),*e*(*e*(*y*,*z*),*e*(*x*,*z*)))

(transitivity)

We can dispense with reflexivity since it is derivable from the other two formulas. This brings the number of axioms down to two and a natural question to ask is whether there is a single axiom for the equivalential calculus. In 1933, Łukasiewicz found three formulas of length eleven that each could act as a single axiom for the calculus—here’s one of them: *e*(*e*(*x*,*y*),*e*(*e*(*z*,*y*),*e*(*x*,*z*)))—and he also showed that no shorter single axiom existed. Over time, other single axioms also of length eleven were found and the list kept growing with additions by Meredith, Kalman and Peterson to a total of 14 formulas of which 13 were known to be single axioms and one formula with a yet undetermined status: the formula *XCB* = *e*(*x*, *e*(*e*(*e*(*x*, *y*), *e*(*z*, *y*)), *z*)). (Actually, the list grew to 18 formulas but Wos, Winker, Veroff, Smith & Henschen 1983 reduced it to 14.) Resisting the intense study of various researchers, it remained as an open question for many years whether the 14th formula, *XCB*, was a single axiom for the equivalential calculus (Peterson 1977). One way to answer the question in the affirmative would be to show that at least one of the 13 known single axioms is derivable from *XCB* alone; another approach would be to derive from *XCB* the 3-axiom set (E1)–(E3). While Wos, Ulrich & Fitelson 2002 take shots at the former, their line of attack concentrates on the latter with the most challenging task being the proving of symmetry. Working with the assistance of a powerful automated reasoning program, Otter, they conducted a concerted, persistent and very aggressive assault on the open question. (Their article sometimes reads like a military briefing from the front lines!) For simpler problems, proofs can be found by the reasoning program automatically; deeper and more challenging ones like the one at hand require the guidance of the user. The relentless application of the reasoning tool involved much guidance in the setting of lemmas as targets and the deployment of an arsenal of strategies, including the set of support, forward and backward subsumption, lemma adjunction, formula complexity, hints strategy, ratio strategy, term avoidance, level saturation, and others. After much effort and CPU time, the open question finally succumbed to the combined effort of man and machine and a 61-step proof of symmetry was found, followed by one for transitivity after 10 more applications of condensed detachment. Subsequent runs of the theorem prover using demodulation blocking and the so-called cramming strategy delivered shorter proofs. Here are the last lines of their 25-step proof which in this case proves transitivity first followed by symmetry:

123

\[hyper,51,106,122\]

P(e(e(e(e(x,y),e(z,y)),z),x)).

124

\[hyper,51,53,123\]

P(e(e(e(e(e(e(e(x,y),e(z,y)),  
z),x),u),e(v,u)),v)).

125

\[hyper,51,124,123\]

P(e(e(e(x,y),x),y)).

127

\[hyper,51,124,108\]

P(e(e(e(e(x,e(e(e(x,y),e(z,y))  
,z)),e(e(e(e(e(u,v),e(w,v)),w),u),  
v6)),v7),e(v6,v7))).

128

\[hyper,51,127,123\]

P(e(e(x,y),e(e(y,z),e(x,z)))).

130

\[hyper,51,128,125\]

P(e(e(x,y),e(e(e(z,x),z),y))).

131

\[hyper,51,128,130\]

P(e(e(e(e(e(x,y),x),z),u),  
e(e(y,z),u))).

132

\[hyper,51,131,123\]

P(e(e(x,y),e(y,x))).

With an effective methodology and a strategy that included the assistance of an automated reasoning program in a crucial way, the search for shortest single axioms for the equivalent calculus came to an end.

Fitelson & Zalta 2007, Oppenheimer & Zalta 2011, and Alama, Oppenheimer, & Zalta 2015 describe several applications of automated reasoning in __computational metaphysics__. By representing formal metaphysical claims as axioms and premises in an automated reasoning environment using programs like Prover9, Mace4, the E-prover system and Paradox, the logical status of metaphysical arguments is investigated. After the suitable formalization of axioms and premises, the model finder program Mace4 is used to help verify their consistency. Then, using Prover9, proofs are automatically generated for a number of theorems of the Theory of Plato’s Forms, twenty five fundamental theorems of the Theory of Possible Worlds, the theorems described in Leibniz’s unpublished paper of 1690 and in his modal metaphysics, and a fully automated construction of Saint Anselm’s Ontological Argument. In the latter application, Saint Anselm is understood in Oppenheimer & Zalta 2011 as having found a way of inferring God’s existence from His mere being as opposed to inferring God’s actuality from His mere possibility. This allows for a formalization that is free of modal operators, involving an underlying logic of descriptions, three non-logical premises, and a definition of God. Here are two key definitions in the formalization, as inputted into Prover9, that helped express the concept of God:

> Definition of none\_greater:
> 
> all x (Object(x) -> (Ex1(none\_greater,x) <->
> 
>  (Ex1(conceivable,x) &
> 
>  -(exists y (Object(y) & Ex2(greater\_than,y,x) &
> 
>  Ex1(conceivable,y)))))).
> 
>  
> 
> Definition of God:
> 
> Is\_the(g,none\_greater).

Part of the challenge when representing in Prover9 these and other statements from axiomatic metaphysics was to circumvent some of the prover’s linguistic limitations. For example, Prover9 does not have definite descriptions so statements of this kind as well as second-order concepts had to be expressed in terms of Prover9’s existing first-order logic. But the return is worth the investment since Prover9 not only delivered a proof of Ex1(e,g)—there is one and only one God—but does so with an added bonus. A close inspection of the output provides yet another example of an automated theorem prover "outreasoning" its users, revealing that some of the logical machinery is actually redundant: The proof can be constructed only using two of the logical theorems of the theory of descriptions (called "Theorem 2" and "Theorem 3" in their article), one of the non-logical premises (called "Premise 2"), and the definition of God. We cannot help but to include here Prover9’s shorter proof, written in the more elegant notation of standard logic (from Oppenheimer & Zalta 2011):

1.

~*E*!ι*x*φ1

Assumption, for *Reductio*

2.

∃*y*(*Gy*ι*x*φ1 & *Cy*)

from (1), by Premise 2 and MP

3.

*Gh*ι*x*φ1 & *Ch*

from (2), by ∃E, ‘*h*’ arbitrary

4.

*Gh*ι*x*φ1

from (3), by &E

5.

∃*y*(*y* = ι*x*φ1)

from (4), by Theory of Descriptions, Theorem 3

6.

*C*ι*x*φ1 & ~∃*y*(*Gy*ι*x*φ1 & *Cy*)

from (5), by Theory of Descriptions, Theorem 2

7.

~∃*y*(*Gy*ι*x*φ1 & *Cy*)

from (6), by &E

8.

*E*!ι*x*φ1

from (1), (2), (7), by *Reductio*

9.

*E*!*g*

from (8), by the definition of ‘*g*’

In the same tradition as St. Anselm’s, Gödel also provided an ontological proof of God’s existence (Gödel 1970, Scott 1972). An important difference between the two is Gödel’s use of modal operators to represent metaphysical possibility and necessity and, of course, his use of symbolic logic for added reasoning precision. In his proof, Gödel begins by framing the concept of “positive property” using two axioms, and he introduces a definition stating that “A God-like being possesses all positive properties”. This is enough logical machinery to prove as a theorem the possibility of God’s existence, ◊∃*x**G*(*x*); three more axioms and two additional definitions allow Gödel to further his proof to establish not only that God exists, ∃*x**G*(*x*), but that this is so by necessity, □∃*x**G*(*x*). Gödel’s proof is in the formalism of higher-order modal logic (HOML) using modal operators and quantification over properties. Gödel never published his proof but he shared it with Dana Scott who produced the version presented below, which is taken from (Benzmüller & Paleo 2014) along with its English annotation to aid the reader with its intended interpretation:

> Axiom A1  
> ∀*ϕ*\[*P*(~*ϕ*) ≡ ~*P*(*ϕ*)\]  
>   *Either a property or its negation is positive, but not both*)
> 
> Axiom A2  
> ∀*ϕ*∀*ψ*\[(*P*(*ϕ*) ∧ □∀*x*\[*ϕ*(*x*) → *ψ*(*x*)\]) ⊃ *P*(*ψ*)\]  
>   *A property necessarily implied by a positive property is positive*
> 
> Theorem T1  
> ∀*ϕ*\[*P*(*ϕ*) ⊃ ◊∃*x**ϕ*(*x*)\]  
>   *Positive properties are possibly exemplified*
> 
> Definition D1  
> *G*(*x*) ≡ ∀*ϕ*\[*P*(*ϕ*) ⊃ *ϕ*(*x*)\]  
>   *A God-like being possesses all positive properties*
> 
> Axiom A3  
> *P*(*G*)  
>   *The property of being God-like is positive*
> 
> Corollary C  
> ◊∃*x**G*(*x*)  
>   *Possibly, God exists*
> 
> Axiom A4  
> ∀*ϕ*\[*P*(*ϕ*) ⊃ □*P*(*ϕ*)\]  
>   *Positive properties are necessarily positive*
> 
> Definition D2  
> *ϕ ess x*  ≡  *ϕ*(*x*) ∧ ∀*ψ*(*ψ*(*x*) ⊃ □∀*y*(*ϕ*(*y*) ⊃ *ψ*(*y*)))  
>   *An essence of an individual is a property possessed by it and  
>   necessarily implying any of its properties*
> 
> Theorem T2  
> ∀*x*\[*G*(*x*) ⊃ *G ess x*\]  
>   *Being God-like is an essence of any God-like being*
> 
> Definition D3  
> *NE*(*x*) ≡ ∀*ϕ*\[*ϕ ess x* ⊃ □∃*yϕ*(*y*)\]  
>   *Necessary existence of an individual is the necessary  
>    exemplification of all its essences*
> 
> Axiom A5  
> *P*(*NE*)  
>   *Necessary existence is a positive property*
> 
> Theorem T3  
> □∃*x**G*(*x*)  
>   *Necessarily, God exists*

The proof has recently been analysed to an unprecedented degree of detail and precision by Benzmüller & Paleo 2014 with the help of automated theorem provers. A major challenge faced by these authors was the lack of a HOML-based theorem prover that could carry out the work but this was circumvented by embedding the logic into the classical higher-order logic (HOL) already offered by existing theorem provers like LEO-II, Satallax and the countermodel finder Nitpick. Details of the syntactic and semantic embedding are given in their paper and it consists of encoding HOML formulas as HOL predicates via mappings, expansions, and *βη*\-conversions. The mapping associates HOML types *α*, terms *sα*, and logical operators θ with corresponding HOL “raised” types ⌈*α*⌉, type-raised terms ⌈*sα*⌉, and type-raised logical operators θ•. If *μ* and *ο* are, respectively, the types of individuals and Booleans then ⌈*μ*⌉ = *μ* and ⌈*ο*⌉ = *σ* where *σ* is shorthand for *ι* → *ο* with *ι* as the type of possible worlds; as for function types, ⌈*β*→*γ*⌉ = ⌈*β*⌉→⌈*γ*⌉. For type-raised terms, ⌈*s**α*⌉ is defined inductively on the structure of *s**α* as the following example illustrates:

⌈∃(*μ*→*ο*)→*ο* *X**μ* . *g**μ*→*ο* *X*⌉

\= ⌈∃(*μ*→*ο*)→*ο*⌉⌈ *X**μ* . *g**μ*→*ο* *X*⌉

\= ⌈∃(*μ*→*ο*)→*ο*⌉⌈ *X**μ*⌉ . ⌈*g**μ*→*ο*⌉ ⌈*X*⌉

\= ∃•⌈(*μ*→*ο*)→*ο*⌉ *X*⌈*μ*⌉ . *g*⌈*μ*→*ο*⌉ *X*

\= ∃•(*μ*→*σ*)→*σ* *X**μ* . *g**μ*→*σ* *X*

Type-raised logical connectives, θ•, are defined below where *r* is a new constant symbol in HOL associated with the accessibility relation of HOML:

~•*σ*→*σ*

 =  

*λs**σ* *λw**ι* ~(*sw*)

∨•*σ*→*σ*→*σ*

 =  

*λs**σ* *λt**σ* *λw**ι* (*sw* ∨ *tw*)

∀•(*α*→*σ*)→*σ*

 =  

*λs**α*→*σ* *λw**ι*∀*x**α* *sxw*

□•*σ*→*σ*

 =  

*λs**σ* *λw**ι*∀*u**ι* . ~(**r**ι*→*ι*→*o*wu*) ∨ *su*

The other connectives can be defined in the usual way. Validity is expressed as a *λ*\-term, *λs**ι*→*ο*∀*w*ι *sw*, that when applied to a term *s*σ we write as \[*s*σ\]. For example, under the embedding, proving in HOML the possibility of God’s existence, ◊*ο*→*ο*∃(*μ*→*ο*)→*ο* *X**μ* . *g**μ*→*ο* *X*, is tantamount to proving its validity in HOL: \[◊•*σ*→*σ*∃•(*μ*→*σ*)→*σ* *X**μ* . *g**μ*→*σ* *X*\]*μ*→*ο*. To prove so, the type-raised HOL expression \[◊•∃•*X**μ* . *g**μ*→*σ* *X*\] is then encoded in the so-called THF0 syntax (Sutcliffe & Benzmüller 2010) prior to being fed, along with the above set of equality rules, to the provers that were used in completing the proof:

thf(corC, conjecture,

   (v

      @(mdia

         @(mexists\_ind

           @^\[X: mu\] :

               (g @ X)))))).

The proof in Benzmüller & Paleo 2014 is presented here, including the axioms and definitions as well as the derivation of its four main results—T1, C, T2, T3—all written in the type-decorated type-raised higher-order logic notation resulting from the embedding. The proof steps are not fully expanded—note the presence of type-raised connectives—and the inferential moves are not broken down to lower levels of detail. Borrowing a phrase from Bertrand Russell (Urquhart 1994), this was done to spare the reader of the “kind of nausea” that the fully detailed automated proof would cause:

A1

\[∀•*ϕ**μ*→*σ* . *p*(*μ*→*σ*)→*σ* (λ*X**μ* . ~•(*ϕX*)) ≡• ~•(*pϕ*)\]

Axiom

A2

\[∀•*ϕ**μ*→*σ* .∀•*ψ**μ*→*σ* . (*p*(*μ*→*σ*)→*σ* *ϕ* ∧• □•∀•*X**μ* . (*ϕX* ⊃• *ψX*)) ⊃• *pψ*\]

Axiom

T1

\[∀•*ϕ**μ*→*σ* . *p*(*μ*→*σ*)→*σ* *ϕ* ⊃• ◊•∃•*X**μ* . *ϕX*\]

A1, A2 (in K)

D1

*g**μ*→*σ* = *λX**μ* .∀•*ϕ**μ*→*σ* *. p*(*μ*→*σ*)→*σ* *ϕ* ⊃• *ϕX*

Definition

A3

\[*p*(*μ*→*σ*)→*σ* *g**μ*→*σ*\]

Axiom

C

\[◊•∃•*X**μ* . *g**μ*→*σ* *X*\]

T1, D1, A3 (in K)

A4

\[∀•*ϕ**μ*→*σ* . *p*(*μ*→*σ*)→*σ* *ϕ* ⊃• □•*pϕ*\]

Axiom

D2

ess(*μ*→*σ*)→*μ*→*σ* = λ*ϕ**μ*→*σ* . λ*X**μ* . *ϕX* ∧∀•*ψ**μ*→*σ* . (*ψX* ⊃• □•∀•*Y**μ* . (*ϕY* ⊃• *ψY*))

Definition

T2

\[∀•*X**μ* . *g**μ*→*σ* *X* ⊃• ess(*μ*→*σ*)→*μ*→*σ* *gX*\]

A1, D1, A4, D2 (in K)

D3

NE*μ*→*σ* = λ*X**μ* .∀•*ϕ**μ*→*σ* . (ess *ϕX* ⊃• □•∃•*Y**μ* . *ϕY*)

Definition

A5

\[*p*(*μ*→*σ*)→*σ* NE*μ*→*σ*\]

Axiom

T3

\[□•∃*X**μ* . *g**μ*→*σ* *X*\]

D1, C, T2, D3, A5 (in KB)

Besides helping in the completion of the proof, the automated theorem provers were also very instrumental in the finding of some novel results. First, Gödel’s set of original assumptions was shown to be inconsistent by LEO-II by proving that self-difference becomes an essential property of every entity; a re-formulation of the definition of essence due to Dana Scott—this involved the addition of a missing conjunct, *ϕX*, in the definition—was shown by Nitpick to be consistent. Second, LEO-II and Satallax managed to prove C, T1 and T2 using only the logic system K and, moreover, Nitpick found a counter-model for T3 in K thus showing that more logical power is required to complete the rest of the proof. Third, using LEO-II and Satallax, it is shown that the logic system KB (system K with the Brouwer axiom) is sufficient to establish the necessity of God’s existence, □•∃•*X**μ* . *g**μ*→*σ* *X*, which is a double-win for automated reasoning: a gain in logical economy, and the deeper philosophical result of having effectively dismissed a major criticism against Gödel’s proof, namely his use of the stronger logic system S5. Fourth, the authors also prove in KB that:

> ∀•*ϕ**μ*→*σ* .∀•*X**μ* . (*g**μ*→*σ* *X* ⊃• (~•(*p*(*μ*→*σ*)→*σ* *ϕ*) ⊃• ~•(*ϕX*)))

as well as:

> ∀•*X**μ* .∀•*Y**μ* . (*g**μ*→*σ* *X* ⊃• (*g**μ*→*σ* *Y* ⊃• *X* =• *Y*)),

that is, that God is flawless and that monotheism holds, respectively. At this point, it would be fair to say that any of these results would be enough to vindicate the application of automated reasoning in exact philosophy. Now, for the bad news followed by good news: Fifth, the formula *s**σ* ⊃• □•*s**σ* can also be formally derived which is unfortunate since it implies that there are no contingent truths and that everything is determined, i.e. there is no free will. However, the issue has been addressed by follow-up work based on Fitting’s and Anderson’s variants of the ontological argument (Fuenmayor & Benzmüller 2017, Fitting 2002, Anderson 1990).

Leibniz’s dream was to have a *charateristica universalis* and *calculus ratiocinator* that would allow us to reason in metaphysics and morals in much the same way as we do in geometry and analysis; that is to say, to settle disputes between philosophers as accountants do: “To take pen in hand, sit down at the abacus and, having called in a friend if they want, say to each other: Let us calculate!” From the above applications of automated reasoning, one would agree with the researchers when they imply that these results achieve, to some extent, Leibniz’s goal of a computational metaphysics (Fitelson & Zalta 2007, Benzmüller & Paleo 2014).

A nonmonotonic theorem prover can provide the basis for a “computational laboratory” in which to explore and experiment with different models of artificial rationality; the theorem prover can be used to equip an artificial rational agent with an inference engine to reason and gain information about the world. In such __procedural epistemology__, a rational agent is defeasible (i.e. nonmonotonic) in the sense that new reasoning leads to the acceptance of new beliefs but also to the retraction of previously held beliefs in the presence of new information. At any given point in time, the agent holds a set of justified beliefs but this set is open to revision and is in a continuous set of flux as further reasoning is conducted. This model better reflects our accepted notion of rationality than a model in which all the beliefs are warranted, i.e. beliefs that once are attained are never retracted. Actually, a set of warranted beliefs can be seen as justified beliefs “in the limit”, that is, as the ultimate epistemic goal in the agent’s search for true knowledge about its world. (Pollock 1995) offers the following definition:

A set is defeasible enumerable iff there is an effective computable function *f* such that for each *n*, *f*(*n*) is a recursive set and the following two conditions hold

1.

(∀*x*)(*x* ∈ *A* → (∃*n*)(∀*m* > *n*) *x* ∈ *f*(*m*))

2.

(∀*x*)(*x* ∉ *A* → (∃*n*)(∀*m* > *n*) *x* ∉ *f*(*m*))

To compare the concepts, if *A* is recursively enumerable then there is a sequence of recursive sets *A*i such that each *A*i is a subset of *A* with each *A*i growing monotonically, approaching *A* in the limit. But if *A* is only defeasibly enumerable then the *A*i’s still approach *A* in the limit but may not be subsets of *A* and approach *A* intermittently from above and below. The goal of the OSCAR Project (Pollock 1989) is to construct a general theory of rationality and implement it in an artificial computer-based rational agent. As such, the system uses a defeasible automated reasoner that operates according to the maxim that the set of warranted beliefs should be defeasible enumerable. OSCAR has been in the making for some time and the application of automated nonmonotonic reasoning has also been used to extend its capabilities to reason defeasibly about perception and time, causation, and decision-theoretic planning (Pollock 2006).

### 4.7 Mathematics

One of the main goals of automated reasoning has been the automation of mathematics. An early attempt at this was Automath (de Bruijn 1968) which was the first computer system used to check the correctness of proofs and whole books of mathematics, including Landau’s *Grundlagen der Analysis* (van Benthem Jutting 1977). Automath has been superseded by more modern and capable systems, most notably Mizar. The Mizar system (Trybulec 1979, Muzalewski 1993) is based on Tarski-Grothendieck set theory and, like Automath, consists of a formal language which is used to write mathematical theorems and their proofs. Once a proof is written in the language, it can be checked automatically by Mizar for correctness. Mizar proofs are formal but quite readable, can refer to definitions and previously proved theorems and, once formally checked, can be added to the growing Mizar Mathematical Library (MML) (Bancerek & Rudnicki 2003, Bancerek *et al*. 2018). As of June 2018, MML contained about 12,000 definitions and 59,000 theorems. The Mizar language is a subset of standard English as used in mathematical texts and is highly structured to ensure the production of rigorous and semantically unambiguous texts. Here’s a sample proof in Mizar of the existence of a rational number *xy* where *x* and *y* are irrational:

theorem T2:

  ex x, y st x is irrational & y is irrational & x.^.y is rational

proof

  set w = √2;

  H1: w is irrational by INT\_2:44,T1;

  w>0 by AXIOMS:22,SQUARE\_1:84;

  then (w.^.w).^.w = w.^.(w•w) by POWER:38

    .= w.^.(w2) by SQUARE\_1:58

    .= w.^.2 by SQUARE\_1:88

    .= w2 by POWER:53

    .= 2 by SQUARE\_1:88;

  then H2: (w.^.w).^.w is rational by RAT\_1:8;

  per cases;

  suppose H3: w.^.w is rational;

    take w, w;

    thus thesis by H1,H3;

  suppose H4: w.^.w is irrational;

    take w.^.w, w;

    thus thesis by H1,H2,H4;

end;

Examples of proofs that have been checked by Mizar include the Hahn-Banach theorem, the Brouwer fixed-point theorem, Kőnig’s lemma, the Jordan curve theorem, and Gödel’s completeness theorem. Rudnicki (2004) discusses the challenges of formalizing Witt’s proof of the Wedderburn theorem: Every finite division ring is commutative. The theorem was formulated easily using the existing formalizations available in MML but the proof demanded further entries into the library to formalize notions and facts from algebra, complex numbers, integers, roots of unity, cyclotomic polynomials, and polynomials in general. It took several months of effort to supply the missing material to the MML library but, once in place, the proof was formalized and checked correct in a matter of days. Clearly, a repository of formalized mathematical facts and definitions is a prerequisite for more advanced applications. The QED Manifesto (Boyer *et al*. 1994, Wiedijk 2007) has such aim in mind and there is much work to do: Mizar has the largest such repository but even after 30 years of work “it is minuscule with respect to the body of established mathematics” (Rudnicki 2004). This last remark should be construed as a call to increase the effort toward this important aspect in the automation of mathematics.

Mizar’s goal is to assist the practitioner in the formalization of proofs and to help check their correctness; other systems aim at finding the proofs themselves. Geometry has been a target of early automated proof-finding efforts. Chou (1987) proves over 500 geometry theorems using the algebraic approach offered by Wu’s method and the Gröbner basis method by representing hypotheses and conclusions as polynomial equations. Quaife (1992) provides another early effort to find proofs in first-order mathematics: over 400 theorems in Neumann-Bernays-Gödel set theory, over 1,000 theorems in arithmetic, a number of theorems in Euclidian geometry, and Gödel’s incompleteness theorems. The approach is best described as semi-automatic or “interactive” with the user providing a significant amount of input to guide the theorem-proving effort. This is no surprise since, as one applies automated reasoning systems into richer areas of mathematics, the systems take more on the role of proof assistants than theorem provers. This is because in richer mathematical domains the systems need to reason about theories and higher-order objects which in general takes them deeper into the undecidable. __Interactive theorem proving__ is arguably the “killer” application of automated reasoning in mathematics and much effort is being expended in the building of increasingly capable reasoning systems that can act as assistants to professional mathematicians. The proof assistant Isabelle/HOL provides the user with an environment in which to conduct proofs expressed in a structured, yet human-readable, higher-order logic language and which incorporates a number of facilities that increase the user’s productivity, automates proof-verification and proof-finding tasks, and provides a modular way for the user to build and manage theory hierarchies (Ballarin 2014).

Different proof assistants offer different capabilities measured by their power at automating reasoning tasks, supported logic, object typing, size of mathematical library, and readability of input and output. A “canonical” proof which is not too trivial but not too complex either can be used as a baseline for system comparison, as done in (Wiedijk 2006) where the authors of seventeen reasoning systems are tasked with establishing the irrationality of √2. The systems discussed are certainly more capable than this and some have been used to assist in the formalization of far more advanced proofs such as Erdös-Selberg’s proof of the Prime Number Theorem (about 30,000 lines in Isabelle), the formalization of the Four Color Theorem (60,000 lines in Coq), and the Jordan Curve Theorem (75,000 lines in HOL Light). A milestone in interactive theorem proving was reached in 2012 when, after six-years of effort and using the Coq proof assistant, George Gonthier and his team completed the formal verification of the 255-page proof of the Feit-Thompson theorem, also known as the Odd Order Theorem, a major step in the classification of finite simple groups.

The above notwithstanding, automated reasoning has had a small impact on the practice of doing mathematics and there is a number of reasons given for this. One reason is that automated theorem provers are not sufficiently powerful to attempt the kind of problems mathematicians typically deal with; that their current power is, at best, at the level of first-year undergraduate mathematics and still far from leading edge mathematical research. While it is true that current systems cannot prove completely on their own problems at this level of difficulty we should remember that the goal is to build reasoning systems so that “eventually machines are to be an aid to mathematical research and not a substitute for it” (Wang 1960). With this in mind, and while the automated reasoning community continues to try to meet the grand challenge of building increasingly powerful theorem provers, mathematicians can draw now some of the benefits offered by current systems, including assistance in completing proof gaps or formalizing and checking the correctness of proposed proofs. Indeed, the latter may be an application that could help address some real issues currently being faced by the mathematical community. Consider the announcement by Daniel Goldston and Cem Yildrim of a proof of the Twin Prime Conjecture where, although experts initially agreed that the proof was correct, an insurmountable error was found shortly after. Or, think about the case of Hales’ proof of the Kepler Conjecture which asserts that no packing of congruent balls in Euclidean 3-space has density greater than the face-centered cubic packing. Hales’ proof consists of about 300 pages of text and a large number of computer calculations. After four years of hard work, the 12-person panel assigned by *Annals of Mathematics* to the task of verifying the proof still had genuine doubts about its correctness. Thomas Hales, for one, took upon himself to formalize his proof and have it checked by an automated proof assistant with the aim of convincing others of its correctness (Hales 2005b, in Other Internet Resources). His task was admittedly heavy but the outcome is potentially very significant to both the mathematical and automated reasoning communities. All eyes were on Hales and his formal proof as he announced the completion of the *Flyspeck* project (Hales 2014, in Other Internet Resources; Hales 2015) having constructed a formal proof of the conjecture using the Isabelle and HOL Light automated proof assistants: “In truth, my motivations for the project are far more complex than a simple hope of removing residual doubt from the minds of few referees. Indeed, I see formal methods as fundamental to the long-term growth of mathematics.” (Hales 2006).

Church 1936a, 1936b and Turing 1936 imply the existence of theorems whose shortest proof is very large, and the proof of the Four Color Theorem in (Appel & Haken 1977), the Classification of Simple Groups in (Gorenstein 1982), and the proof of the Kepler Conjecture in (Hales 2005a) may well be just samples of what is yet to come. As (Bundy 2011) puts it: “As important theorems requiring larger and larger proofs emerge, mathematics faces a dilemma: either these theorems must be ignored or computers must be used to assist with their proofs.”

The above remarks also counter another argument given for not using automated theorem provers: Mathematicians enjoy proving theorems, so why let machines take away the fun? The answer to this is, of course, that mathematicians can have even more fun by letting the machine do the more tedious and menial tasks: “It is unworthy of excellent men to lose hours like slaves in the labour of calculation which could safely be relegated to anyone else if machines were used” (G. W. Leibniz, *New Essays Concerning Human Understanding*). If still not convinced, just consider the sobering prospect of having to manually check the 23,000 inequalities used in Hales’ proof!

Another reason that is given for the weak acceptance of automated reasoning by the mathematical community is that the programs are not to be trusted since they may contain bugs—software defects—and hence may produce erroneous results. Formally verifying automated reasoning programs will help ameliorate this, particularly in the case of proof checkers. Proving programs correct is no easy task but the same is true about proving theorems in advanced mathematics: Gonthier proved correct the programs used in the formalization of his proof of the Four Color Theorem, but he spent far more effort formalizing all the graph theory that was part of the proof. So ironically enough, it turns out that at least in this case, and surely there are others, “it is actually easier to verify the correctness of the program than to verify the correctness of the pen-and-paper mathematics” (Wiedijk 2006). For theorem provers and model finders, a complementary strategy would be to verify the programs’ results as opposed to the programs themselves. Paraphrasing (Slaney 1994): It does not matter to the mathematician how many defects a program may have as long as the proof (or model) it outputs is correct. So, the onus is in the verification of results, whether produced by machine or man, and checking them by independent parties (where of course the effort may well use automated checkers) should increase the confidence on the validity of the proofs.

It is often argued that automated proofs are too long and detailed. That a proof can be expressed in more elementary steps is in principle very beneficial since this allows a mathematician to request a proof assistant justify its steps in terms of simpler ones. But proof assistants should also allow the opposite, namely to abstract detail and present results and their justifications using the higher-level concepts, language, and notation mathematicians are accustomed to. Exploiting the hierarchical structure of proofs as done in (Denney 2006) is a step in this direction but more work along these lines is needed. Having the proof assistant work at the desired level of granularity provides more opportunity for insight during the proof discovery process. This is an important consideration since mathematicians are equally interested in gaining understanding from their proofs as in establishing facts.

(Bundy 2011) alludes to a deadlock that is preventing the wider adoption of theorem provers by the mathematical community: On the one hand, the mathematicians need to use the proof assistants to build a large formal library of mathematical results. But, on the other hand, they do not want to use the provers since there is no such library of previously proved results they can build upon. To break the impasse, a number of applications are proposed of which assisting the mathematician in the search of previously proved theorems is of particular promise. During its history, mathematics has accumulated a huge number of theorems and the number of mathematical results continues to grow dramatically. In 2010, *Zentralblatt MATH* covered about 120,000 new publications (Wegner 2011). Clearly, no individual researcher can be acquainted with all this mathematical knowledge and it will be increasingly difficult to cope with one’s ever-growing area of specialty unless assisted with automated theorem-proving tools that can search in intelligent ways for previously proved results of interest. An alternative approach to this problem is for mathematicians to tap into each other’s knowledge as enabled in computational social systems like *polymath* and *mathoverflow*. The integration of automated reasoning tools into such social systems would increase the effectiveness of their collective intelligence by supporting “the combination of precise formal deductions and the more informal loose interaction seen in mathematical practice” (Martin & Pease 2013, in Other Internet Resources).

Due to real pressing needs from industry, some applications of automated reasoning in pure and applied mathematics are more of necessity than choice. After having worked on the formalization of some elementary real analysis to verify hardware-based floating point trigonometric functions, (Harrison 2006, Harrison 2000) mentions the further need to formalize *more* pure mathematics—italics are his—to extend his formalization to power series for trigonometric functions and basic theorems about Diophantine approximations. Harrison finds it surprising that “such extensive mathematical developments are used simply to verify that a floating point tangent function satisfies a certain error bound” and, from this remark, one would expect there are other industrial applications that will demand more extensive formalizations.

Albeit not at the rate originally anticipated, automated reasoning is finding applications in mathematics. Of these, formal verification of proofs is of special significance since it not only provides a viable mechanism to check proofs that humans alone could not but it also has, as a side effect, the potential to redefine what it would take for a proof to be accepted as such. As the use of automated reasoning assistants becomes more widespread one can envision their use following a certain methodical order: First, automated reasoning tools are used for theory exploration and discovery. Then, having identified some target problem, the practitioner works interactively with an automated assistant to find proofs and establish facts. Finally, an automated proof checker is used to check the correctness of all final proofs prior to being submitted for publication and being made available to the rest of the mathematical community via the creation of new entries in a repository of formalized mathematics. It is indeed a matter of time before the application of automated proof assistants becomes an everyday affair in the life of the mathematician; it is the grand challenge of the automated reasoning community to make it happen sooner than later.

### 4.8 Artificial Intelligence

Since its inception, the field of automated theorem proving has had important applications in the larger field of artificial intelligence (AI). Automated deduction is at the heart of AI applications like logic programming (see section *4.1 Logic Programming*, in this article) where computation is equated with deduction; robotics and problem solving (Green 1969) where the steps to achieve goals are steps extracted from proofs; deductive databases (Minker *et al*. 2014) where factual knowledge is expressed as atomic clauses and inference rules, and new facts are inferred by deduction; expert systems (Giarratano & Riley 2004) where human expertise in a given domain (e.g. blood infections) is captured as a collection of IF-THEN deduction rules and where conclusions (e.g. diagnoses) are obtained by the application of the inference rules; and many others. An application of automated reasoning in AI which is bound to have deep philosophical implications is the increased use of BDI computational logics for describing the beliefs, desires, and intentions of intelligent agents and multi-agent systems (Meyer 2014) and, in particular, endowing future intelligent systems, such as decision-support systems or robots, with legal and ethical behaviour. Deontic logic can be automated for the task (Furbach *et al*. 2014) but given that there is no agreement on a universal system of deontic logic, ethics “code designers” need a way to experiment with the different deontic systems (i.e., to lay out axioms and see what conclusions follow from them) to help them identify the desired ethic code for the specific application at hand; (Benzmüller *et al*. 2018) discusses an environment for this. If actual, physical, robots were to be used in these experiments, the term “deontic laboratory” would be quite descriptive albeit somewhat eerie.

Restricting the proof search space has always been a key consideration in the implementation of automated deduction, and traditional AI-approaches to search have been an integral part of theorem provers. The main idea is to prevent the prover from pursuing unfruitful reasoning paths. A dual aspect of search is to try to look for a previously proved result that could be useful in the completion of the current proof. Automatically identifying those results is no easy task and it becomes less easy as the size of the problem domain, and the number of already established results, grows. This is not a happy situation particularly in light of the growing trend to build large libraries of theorems such as the Mizar Problems for Theorem Proving (MPTP) (Urban *et al*. 2010, Bancerek & Rudnicki 2003) or the Isabelle/HOL mathematical library (Meng & Paulson 2008), so developing techniques for the discovery, evaluation, and selection of existing suitable definitions, premises and lemmas in large libraries of formal mathematics as discussed in (Kühlwein *et al*. 2012) is an important line of research.

Among many other methods, and in stark contrast to automated provers, mathematicians combine induction heuristics with deductive techniques when attacking a problem. The former helps them guide the proof-finding effort while the latter allows them to close proof gaps. And of course all this happens in the presence of the very large body of knowledge that the human possesses. For an automated prover, the analogous counterpart to the mathematician’s body of knowledge is a large library like MPTP. An analogous approach to using inductive heuristics would be to endow the theorem prover with inductive, data-driven, machine learning abilities. Urban & Vyskocil 2012 run a number of experiments to determine any gains that may result from such an approach. For this, they use MPTP and theorem provers like E and SPASS enhanced with symbol-based machine learning mechanisms. A detailed presentation and statistical results can be found in the above reference but in summary, and quoting the authors, “this experiment demonstrates a very real and quite unique benefit of large formal mathematical libraries for conducting novel integration of AI methods. As the machine learner is trained on previous proofs, it recommends relevant premises from the large library that (according to the past experience) should be useful for proving new conjectures.” Urban 2007 discusses MaLARea (a Machine Learner for Automated Reasoning), a meta-system that also combines inductive and deductive reasoning methods. MaLARea is intended to be used in large theories, i.e. problems with a large number of symbols, definitions, premises, lemmas, and theorems. The system works in cycles where results proved deductively in a given iteration are then used by the inductive machine-learning component to place restrictions in the search space for the next theorem-proving cycle. Albeit simple in design, the first version of MaLARea solved 142 problems out of 252 in the MPTP Challenge, outperforming the more seasoned provers E (89 problems solved) and SPASS (81 problems solved).

Besides using large mathematical libraries, tapping into web-based semantic ontologies is another possible source of knowledge. Pease & Sutcliffe 2007 discuss ways for making the SUMO ontology suitable for first-order theorem proving, and describes work on translating SUMO into TPTP. An added benefit of successfully reasoning over large semantic ontologies is that this promotes the application of automated reasoning into other fields of science. Tapping into its full potential, however, will require a closer alignment of methods from automated reasoning and artificial intelligence.

## 5\. Conclusion

Automated reasoning is a growing field that provides a healthy interplay between basic research and application. Automated deduction is being conducted using a multiplicity of theorem-proving methods, including resolution, sequent calculi, natural deduction, matrix connection methods, term rewriting, mathematical induction, and others. These methods are implemented using a variety of logic formalisms such as first-order logic, type theory and higher-order logic, clause and Horn logic, non-classical logics, and so on. Automated reasoning programs are being applied to solve a growing number of problems in formal logic, mathematics and computer science, logic programming, software and hardware verification, circuit design, exact philosophy, and many others. One of the results of this variety of formalisms and automated deduction methods has been the proliferation of a large number of theorem proving programs. To test the capabilities of these different programs, selections of problems have been proposed against which their performance can be measured (McCharen, Overbeek & Wos 1976, Pelletier 1986). The TPTP (Sutcliffe & Suttner 1998) is a library of such problems that is updated on a regular basis. There is also a competition among automated theorem provers held regularly at the CADE conference (Pelletier, Sutcliffe & Suttner 2002; Sutcliffe 2016, in Other Internet Resources); the problems for the competition are selected from the TPTP library. There is a similar library and competition for SMT solvers (Barret *et al*. 2013).

Initially, computers were used to aid scientists with their complex and often tedious numerical calculations. The power of the machines was then extended from the numeric into the symbolic domain where infinite-precision computations performed by computer algebra programs have become an everyday affair. The goal of automated reasoning has been to further extend the machine’s reach into the realm of deduction where they can be used as reasoning assistants in helping their users establish truth through proof.
