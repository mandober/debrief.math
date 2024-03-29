---
downloaded:       2021-12-25
page-url:         https://plato.stanford.edu/entries/logic-substructural/
page-title:       Substructural Logics (Stanford Encyclopedia of Philosophy)
article-title:    Substructural Logics
---
# Substructural Logics (Stanford Encyclopedia of Philosophy)

Substructural logics are non-classical logics weaker
than classical logic, notable for the absence of structural
rules present in classical logic. These logics are motivated by
considerations from philosophy (relevant logics), linguistics (the
Lambek calculus) and computing (linear logic). In addition, techniques
from substructural logics are useful in the study of traditional
logics such as classical and intuitionistic logic. This article
provides a brief overview of the field of substructural logic. For a
more detailed introduction, complete with theorems, proofs and
examples, the reader can consult the books and articles in the
Bibliography.
*Substructural logics* are non-classical logics *weaker* than classical logic, notable for the absence of *structural rules* present in classical logic. These logics are motivated by considerations from philosophy (relevant logics), linguistics (the Lambek calculus) and computing (linear logic). In addition, techniques from substructural logics are useful in the study of traditional logics such as classical and intuitionistic logic. This article provides a brief overview of the field of substructural logic. For a more detailed introduction, complete with theorems, proofs and examples, the reader can consult the books and articles in the Bibliography.

## 1\. Residuation

Logic is about *logical consequence*. As a result, the *conditional* is a central notion in logic because of its intimate connection with logical consequence. This connection is neatly expressed in the *residuation condition* (also known as the *deduction theorem*):

p,q⊢r if and only if p⊢q→r

p,q⊢r if and only if p⊢q→r

It says that rr follows from pp together with qq just when q→rq→r follows from pp alone. The validity of the transition from qq to rr (given p)p) is recorded by the conditional q→rq→r.

This connection between the conditional and consequence is called *residuation* by analogy with the case in mathematics. Consider the connection between addition and substraction. a+b\=ca+b\=c if and only if a\=c−ba\=c−b. The resulting aa (which is c−b)c−b) is the *residual*, what is left of cc when bb is taken away. Another name for this connection is the *deduction theorem*.

However, there the connection between consequence and the conditional contains one extra factor. Not only is there the turnstile, for logical consequence, and the conditional, encoding consequence inside the language of propositions, there is also the *comma*, indicating the *combination* of premises. We have read “p,q⊢rp,q⊢r” as “rr follows from pp *together with* qq”. To combine premises is to have a way to take them *together*. But how can we take them together? It turns out that there are different ways to do so, and so, different substructural logics. The behaviour of premise combination varies as the behaviour of the conditional varies. In this introduction we will consider some examples of this.

### 1.1 Weakening

It is one thing for pp to be true. It is another for the conditional q→pq→p to be true. Yet, if ‘→→’ is a material conditional, q→pq→p follows from pp. For many different reasons, we may wish to understand how a conditional might work in the *absence* of this inference. This is tied to the behaviour of premise combination, as can be shown by this demonstration.

p⊢pp,q⊢pp⊢q→p

p⊢pp,q⊢pp⊢q→p

From the axiomatic p⊢pp⊢p (anything follows from *itself*) we deduce that pp follows from pp together with qq, and then by residuation, p⊢q→pp⊢q→p. If we wish to reject the inference from pp to q→pq→p, then we either reject residuation, or reject the identity axiom at the start of the proof, or we reject the first step of the proof. It is illuminating to consider what is involved in this last option. Here, we are to deny that pp follows from p,qp,q. In general, we are to reject the inference rule that has this form:

X⊢AX,Y⊢A

X⊢AX,Y⊢A

This is called the rule of *weakening*. The rule steps from a stronger statement, that AA follows from XX to a possibly weaker one, that AA follows from XX together with YY.

People have offered different reasons for rejecting the rule of weakening, depending on the interpretation of consequence and premise combination. One of the early motivating examples comes from a concern for relevance. If the logic is *relevant* (if to say that pp entails qq is true is to say, at least, that qq truly *depends* on p)p) then the comma need not not satisfy weakening. We may indeed have AA following from XX, without AA following from X,YX,Y, for it need not be the case that AA depends on XX and YY together.

In relevant logics the rule of weakening fails on the *other* side too, in that we wish *this* argument to be invalid too:

q⊢qp,q⊢qp⊢q→q

q⊢qp,q⊢qp⊢q→q

Again, qq may follow from qq, but this does not mean that it follows from pp *together with* qq, provided that “together with” is meant in an appropriately strong sense. So, in relevant logics, the inference from an arbitrary premise to a logical truth such as q→qq→q may well fail.

### 1.2 Commutativity

If the mode of premise combination is commutative (if anything which follows from X,YX,Y also follows from Y,X)Y,X) then we can reason as follows, using just the identity axiom and residuation:

p→q⊢p→qp→q,p⊢qp,p→q⊢qp⊢(p→q)→q

p→q⊢p→qp→q,p⊢qp,p→q⊢qp⊢(p→q)→q

In the absence of commutativity of premise combination, this proof is not available. This is another simple example of the connection between the behaviour of premise combination and that of deductions involving the conditional.

There are many kinds of conditional for which this inference fails. If “→→” has *modal* force (if it expresses a kind of entailment, in which p→qp→q is true when in every related circumstance in which pp holds, qq does too), and if “⊢⊢” expresses local consequence (p⊢q(p⊢q if and only if any model, at any circumstance at which pp holds, so does q)q) it fails. It may be true that Greg is a logician (p)(p) and it is true that Greg’s being a logician entails Greg’s being a philosopher (p→q(p→q – in related circunstances in which Greg is a logician, he is a philosopher) but this does not *entail* that Greg is a philosopher. (There are many circumstances in which the entailment (p→q)(p→q) is true but qq is not.) So we a circumstance in which pp is true but (p→q)→q(p→q)→q is not. The argument is invalid.

This counterexample can also be understood in terms of behaviour of premise combination. Here when we say X,A⊢BX,A⊢B is true, we are not just saying that BB holds in any circumstance in which XX and AA both hold. If we are after a genuine *entailment* *A → B*, then we want B to be true in any (related) circumstance in which A is true. So, X,A⊢B says that in *any* possibility in which A is true, so is B. These possibilities might not satisfy all of X. (In classical theories of entailment, the possibilities are those in which all that is taken as *necessary* in X are true.)

If premise combination is not commutative, then residuation can go in *two* ways. In addition to the residuation condition giving the behaviour of →, we may wish to define a new arrow ← as follows:

p,q⊢r if and only if q⊢r←p

For the left-to-right arrow we have *modus ponens* in this direction:

p→q,p⊢q

For the right-to-left arrow, *modus ponens* is provable with the premises in the opposite order:

p,q←p⊢q

This is a characteristic of substructural logics. When we pay attention to what happens when we don’t have the full complement of structural rules, then new possibilities open up. We uncover *two* conditionals underneath what was previously one (in intuitionistic or classical logic).

In the next section we will see [another example][1] motivating non-commutative premise combination and these two different conditionals.

### 1.3 Associativity

Here is another way that structural rules influence proof. The associativity of premise combination provides the following proof:

r→p,r⊢p   p→q,p⊢qp→q,(r→p,r)⊢q(p→q,r→p),r⊢qp→q,r→p⊢r→qp→q⊢(r→p)→(r→q)

This proof uses the *cut* rule at the topmost step. The idea is that inferences can be combined. If X⊢A and Y(A)⊢B (where Y(A) is a structure of premises possibly including A one or more times) then Y(X)⊢B too (where Y(X) is that structure of premises with those instances of A replaced by X). In this proof, we replace the p in p→q,p⊢q by r→p,r on the basis of the validity of r→p,r⊢p.

### 1.4 Contraction

A final important example is the rule of *contraction* which dictates how premises may be reused. Contraction is crucial in the inference of p→q from p→(p→q)

p→(p→q)⊢p→(p→q)p→(p→q),p⊢p→qp→q⊢p→qp→q,p⊢q(p→(p→q),p),p⊢qp→(p→q),p⊢qp→(p→q)⊢p→q

These different examples give you a taste of what can be done by structural rules. Not only do structural rules influence the conditional, but they also have their effects on other connectives, such as conjunction and disjunction (as we shall see below) and negation (Dunn 1993; Restall 2000).

### 1.5 Structure on the right of the turnstile

Since the introduction of Gentzen’s sequent calculus (Gentzen 1935), we have known that the difference between *classical* logic and *intuitionistic* logic can also be understood as a difference of structural rules. Instead of considering sequents of the form X⊢A, in which we have a collection of antecedents and a single consequent, for classical logic it is fruitful to consider sequents of the form

X⊢Y

where both X and Y are collections of statements. The intended interpretation is that from *all* of the X it follows that *some* of the Y. In other words, we cannot have all of the X and none of the Y obtaining.

Allowing sequents with multiple consequents and translating the rules into this expanded context, we are able to derive classical tautologies. For example, the derivation

p⊢pp⊢q,p⊢p→q,p

shows that either p→q or p must hold. This is classically valid (if p fails, p is *false*, and conditionals with false antecedents are true), but invalid in intuitionistic logic. The difference between classical and intuitionistic logic, then, can be understood formally as a difference between the kinds of structural rules permitted, and the kinds of structures appropriate to use in the analysis of logical consequence.

## 2\. Logics in the Family

There are many different formal systems in the family of substructural logics. These logics can be motivated in different ways.

### 2.1 Relevant Logics

Many people have wanted to give an account of logical validity which pays some attention to conditions of *relevance*. If X,A⊢B holds, then X must somehow be *relevant* to A. Premise combination is restricted in the following way. We may have X⊢A without also having X,Y⊢A . The new material Y might not be relevant to the deduction. In the 1950s, Moh (1950), Church (1951) and Ackermann (1956) all gave accounts of what a ‘relevant’ logic could be. The ideas have been developed by a stream of workers centred around Anderson and Belnap, their students Dunn and Meyer, and many others. The canonical references for the area are Anderson, Belnap and Dunn’s two-volume *Entailment* (1975 and 1992). Other introductions can be found in Read’s *Relevant Logic*, Dunn and Restall’s *Relevance Logic* (2002), and Mares’ *Relevant Logic*: *a philosophical interpretation* (2004).

### 2.2 Resource Consciousness

This is not the only way to restrict premise combination. Girard (1987) introduced *linear logic* as a model for processes and resource use. The idea in this account of deduction is that resources must be used (so premise combination satisfies the relevance criterion) and they do not extend *indefinitely*. Premises cannot be re\-used. So, I might have X,X⊢A, which says that I can use X twice to get A. I might not have X⊢A, which says that I can use X once alone to get A. A helpful introduction to linear logic is given in Troelstra’s *Lectures on Linear Logic* (1992). There are other formal logics in which the *contraction rule* (from X,X⊢A to X⊢A) is absent. Most famous among these are Łukasiewicz’s many-valued logics. There has been a sustained interest in logics without this rule because of Curry’s paradox (Curry 1977, Geach 1995; see also Restall 1994 in Other Internet Resources).

### 3\. Order

Independently of either of these traditions, Joachim Lambek considered mathematical models of language and syntax (Lambek 1958, 1961). The idea here is that premise combination corresponds to composition of strings or other linguistic units. Here X,X differs in content from X, but in addition, X,Y differs from *Y,X*. Not only does the *number* of premises used count but so does their *order*. Good introductions to the Lambek calculus (also called *categorial grammar*) can be found in books by Moortgat (1988) and Morrill (1994).

## 3\. Proof Systems

We have already seen a fragment of one way to present substructural logics, in terms of proofs. We have used the residuation condition, which can be understood as including two rules for the conditional, one to *introduce* a conditional

X,A⊢BX⊢A→B

and another to *eliminate* it.

X⊢A→B   Y⊢AX,Y⊢B

Rules like these form the cornerstone of a natural deduction system, and these systems are available for the wide sweep of substructural logics. But proof theory can be done in other ways. *Gentzen* systems operate not by introducing and eliminating connectives, but by introducing them both on the left and the right of the turnstile of logical consequence. We keep the introduction rule above, and replace the elimination rule by one introducing the conditional on the left:

X⊢A   Y(B)⊢CY(A→B,X)⊢C

This rule is more complex, but it has the same effect as the arrow elimination rule: It says that if X suffices for A, and if you use B (in some context Y) to prove C then you could just as well have used A→B together with X (in that same context Y) to prove C, since A→B together with X gives you B.

Gentzen systems, with their introduction rules on the left and the right, have very special properties which are useful in studying logics. Since connectives are always *introduced* in a proof (read from top to bottom) proofs never *lose* structure. If a connective does not appear in the conclusion of a proof, it will not appear in the proof at all, since connectives cannot be eliminated.

In certain substructural logics, such as linear logic and the Lambek calculus, and in the fragment of the relevant logic R without disjunction, a Gentzen system can be used to show that the logic is *decidable*, in that an algorithm can be found to determine whether or not an argument X⊢A is valid. This is done by searching for proofs of X⊢A in a Gentzen system. Since premises of this conclusion must feature no language not in this conclusion, and they have no greater complexity (in these systems), there are only a finite number of possible premises. An algorithm can check if these satisfy the rules of the system, and proceed to look for premises for these, or to quit if we hit an axiom. In this way, decidability of some substructural logics is assured.

However, not all substructural logics are decidable in this sense. Most famously, the relevant logic R is not decidable. This is partly because its proof theory is more complex than that of other substructural logics. R differs from linear logic and the Lambek calculus in having a straightforward treatment of conjunction and disjunction. In particular, conjunction and disjunction satisfy the rule of *distribution*:

p&(q∨r)⊢(p&q)∨(p&r)

The natural proof of distribution in any proof system uses both weakening and contraction, so it is not available in the relevant logic R, which does not contain weakening. As a result, proof theories for R either contain distribution as a primitive rule, or contain a second form of premise combination (so called *extensional* combination, as opposed to the *intensional* premise combination we have seen) which satisfies weakening and contraction.

In recent years, a great deal of work has been done on the proof theory of *classical logic*, inspired and informed by research into substructural logics. Classical logic has the full complement of structural rules, and is historically prior to more recent systems of substructural logics. However, when it comes to attempting to understand the deep structure of *classical* proof systems (and in particular, when two derivations that differ in some superficial syntactic way are *really* different ways to represent the one underlying ‘proof’) it is enlightening to think of classical logic as formed by a basic substructural logic, in which extra structural rules are imposed as additions. In particular, it has become clear that what distinguishes classical proof from its siblings is the presence of the structural rules of contraction and weakening in their complete generality (see, for example, Bellin *et al.* 2006 and the literature cited therein).

## 4\. Model Theory

While the relevant logic R has a proof system more complex than the substructural logics such as linear logic, which lack distribution of (extensional) conjunction over disjunction, its *model theory* is altogether more simple. A Routley-Meyer *model* for the relevant logic R is comprised of a set of *points* P with a three-place relation R on P. A conditional A→B is evaluated at a world as follows:

A→B is true at x if and only if for each y and z where Rxyz, if A is true at y,B is true at z.

An argument is *valid* in a model just when in any point at which the premises are true, so is the conclusion. The argument A⊢B→B is invalid because we may have a point x at which A is true, but at which B→B is not. We can have B→B fail to be true at x simply by having Rxyz where B is true at y but not at z.

The three place relation R follows closely the behaviour of the mode of premise combination in the proof theory for a substructural logic. For different logics, different conditions can be placed on R. For example, if premise combination is commutative, we place a *symmetry* condition on R like this: Rxyz if and only if Ryxz. Ternary relational semantics gives us great facility to *model* the behaviour of substructural logics. (The extent of the correspondence between the proof theory and algebra of substructural logics and the semantics is charted in Dunn’s work on *Gaggle Theory* (1991) and is summarised in Restall’s *Introduction to Substructural Logics* (2000).)

Furthermore, if conjunction and disjunction satisfy the distribution axiom mentioned in the previous section, they can be modelled straightforwardly too: a conjunction is true at a point just when both conjuncts are true at that point, and a disjunction is true at a point just when at least one disjunct is true there. For logics, such as linear logic, *without* the distribution axiom, the semantics must be more complex, with a different clause for disjunction required to invalidate the inference of distribution.

It is one thing to use a semantics as a formal device to model a logic. It is another to use a semantics as an *interpretive* device to *apply* a logic. The literature on substructural logics provides us with a number of different ways that the ternary relational semantics can be applied to describe the logical structure of some phenomena in which the traditional structural rules do not apply.

For logics like the Lambek calculus, the interpretation of the semantics is straightforward. We can take the points to be linguistic items, and the ternary relation to be the relation of concatenation (Rxyz if and only if x concatenated with y results in z). In these models, the structural rules of contraction, weakening and permutation all fail, but premise combination is associative.

The contemporary literature on linguistic classification extends the basic Lambek Calculus with richer forms of combination, in which more syntactic features can be modelled (see Moortgat 1995).

Another application of these models is in the treatment of the semantics of *function application*. We can think of the points in a model structure as both *functions* and *data*, and hold that Rxyz if and only if x (considered as a function) applied to y (considered as data) is z. Traditional accounts of functions do not encourage this dual use, since functions are taken to be of a ‘higher’ than their inputs or outputs (on the traditional set-theoretic model of functions, a function is the set of its *input-output* pairs, and so, it can never take *itself* as an input, since sets cannot contain themselves as members). However, systems of functions modelled by the untyped λ\-calculus, for example, allow for self-application. Given this reading of points in a model, a point is of type A→B just if whenever it takes inputs of type A, it takes outputs of type B. The inference rules of this system are then principles governing types of functions: the sequent

(A→B)&(A→C)⊢A→(B&C)

tells us that whenever a function takes As to Bs and As to Cs, then it takes As to things that are both B and C.

This example gives us a model in which the appropriate substructural logic is extremely weak. *None* of the usual structural rules (not even associativity) are satisfied in this model. This example of a ternary relational model is discussed in (Restall 2000, Chapter 11).

For the relevant logic R and its interpretation of natural language conditionals, more work must be done in identifying what features of reality the formal semantics models. This has been a matter of some controversy, since not only is the ternary relation unfamiliar to those whose exposure is primarily to modal logics with a simpler *binary* accessibility relation between possible worlds, but also because of the novelty of the treatment of *negation* in models for relevant logics. It is not our place to discuss this debate in much detail here, Some of this work is reported in the article on [relevant logic][2] in this Encyclopedia, and a book-length treatment of relevant logic in this light is Mares’ *Relevant Logic*: *a philosophical interpretation* (2004).

## 5\. Quantifiers

The treatment of quantifiers in models for substructural logics has proved to be quite difficult, but advances have been made in the early 2000s. The difficulty came in what seemed to be a mismatch between the proof theory and model theory for quantifiers. Appropriate axioms or rules for the quantifiers are relatively straightforward. The universal quantifier elimination axiom ∀xA→A\[t/x\]

states that an instance follows (in the relevant sense) from its universal generalisation. The introduction rule ⊢A→B⊢A→∀xB

(where the proviso that x is not free in A holds) tells us that if we can prove an instance of the generalisation ∀xB, as a matter of logic, from some assumption which makes no particular claim about that instance, we can also prove the generalisation from that assumption. This axiom and rule seems to fit nicely with any interpretation of the first-order quantifiers in a range of substructural logics, from the weakest systems, to strong systems like R.

While the proof theory for quantifiers seems well behaved, the generalisation to model theory for substructural logics has proved difficult. Richard Routley (1980) showed that adding the rules for the quantifiers to a very weak system of substructural logic B fits appropriately with the ternary relational semantics, where quantifiers are interpreted as ranging over a domain of objects, constant across all of the points in the model. This fact does *not* apply for stronger logics, in particular, the relevant logic R. Kit Fine (1989) showed that there exists a complex formula which holds in all constant domain frame models for R but which is not derivable from the axioms. The details of Fine’s argument are not important for our purposes, but the underlying cause for the mismatch is relatively straightforward to explain. In the constant domain semantics, the universal generalisation ∀xFx has exactly the same truth conditions—at every point in the model—as the family of instances Fx1, Fx2, Fx3,…, Fxλ,…, where the objects of the domains are enumerated by the values of the terms xi. So, the quantified expression ∀xFx is semantically indistinguishable from the (possibly infinite) conjunction Fx1∧Fx2∧Fx3∧⋯. However, no conjunction of instances (even an infinite one) could be *relevantly* equivalent to the universally quantified claim ∀xFx, because the instances could be true in a circumstance (or could be made true by a circumstance) without also making true the generalisation—if there had been more things than those. So, constant domain models seem ill-suited to the project of a relevant theory of quantification.

Recent work by Goldblatt and Mares (2006) has shown that there is an alternative, and it turns out to be elegant and relatively straightforward. The crucial idea is to modify the ternary relational semantics just a little, so that not every set of points need count as a ‘proposition’. That is, not every set of points is the possible semantic value for a sentence. So, while there is a set of worlds determined by the infinite conjunction of instances of ∀xFx: Fx1∧Fx2∧Fx3∧⋯, that precise set of worlds may not count as a proposition. (Perhaps there is no way to single out those particular objects in such a way as to draw them together in the one judgement.) What we *can* say is the generalisation ∀xFx and that is a proposition that entails each of the instances (that is the universal quantifier elimination axiom), and if a proposition entails each instance, it entails the generalisation (that is the introduction rule), so the proposition expressed by ∀xFx is the *semantically weakest* proposition that entails each instance *Fa*. This is precisely the modelling condition for the universal quantifier in Goldblatt & Mares’ models, and it matches the axioms exactly.

[1]: https://plato.stanford.edu/entries/logic-substructural/#ord
[2]: https://plato.stanford.edu/entries/logic-relevance/
