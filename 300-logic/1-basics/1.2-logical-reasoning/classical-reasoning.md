# Classical reasoning

*Classical logic* is the name for the *systems of logic* that are based on classical reasoning.

Classical reasoning is distinguished by admitting a certain set of inter-related properties, such as the notion of truth, the admitted laws and principles of logic, and rules of inference.

Aristotele was the first to study logic in a comprehensive manner, yielding the system of *syllogistic logic* (aka, Aristotelian logic, term logic). In doing so, Aristotele tried to identify the general laws of thought, the laws that are fundamental to *logical reasoning*, especially to *deductive reasoning*, which Aristotele held in higher regard to *inductive reasoning*.

The fundamental principles of predication:
- The Law of Non-Contradiction (LNC), `¬(p ∧ ¬p)`
- The Law of Excluded Middle   (LEM), `p ∨ ¬p`
- The Law of Identity          (LID), `p → p`
- The Principle of Bivalence   (POB)
- The Principle of Explosion   (EFQ), i.e. Ex Falsum Quidlibet
- Idempotency of entailment
- Monotonicity of entailment
- Material conditional
- behavior of negation and double negation
- inference rule
- structural rules (of inference)
- Double negation elimination, `Γ ⊢ ¬¬A` ⇒ `Γ ⊢ A`
- existential import


- Law of excluded middle
  - Double negative
  - Reductio ad absurdum
- Law of noncontradiction
  - The principle of explosion (ex falso quodlibet)
- Monotonicity of entailment (weakening)
- Idempotency of entailment (contraction)
- Commutativity of conjunction
- De Morgan duality: every logical operator is dual to another
- Principle of bivalence (either true orfalse, not both, not neither)
- The law of identity

## The laws of thought

Aristotele had identified three principles which are today called the laws of thought (due to Boole): LNC, LID and LEM.

Besides these 3, the set of principles recognized in classical logic is extended with additional laws, some of which are inter-derivable from the others. The principles that are always admitted in classical logic also include the Principle of Bivalence (POB) and the Principle of Explosion, aka Ex Falsum Quidlibet (EFQ).

To showcase the point about inter-derivability, consider the LNC, which is stated as `¬(p ∧ ¬p)`, i.e. it is not (it can never be) the case that `p` is both true and false (at the same time). By distributing the negation, we get to the LEM, `p ∨ ¬p`, which states that a proposition `p` is either true or false, permitting no other (middle) option. But in classical logic, the formula for the LEM, `¬p ∨ p` (disjunction is commutive), is logically equivalent to the LID, `p → p`, which states that any proposition implies itself. Therefore, the formulae for LNC, LEM and LID are logically equivalent.

```hs
1 p → p           LID
2 p ∨ ¬p
3 ¬p ∨ p          LEM
4 ¬(¬¬p ∧ ¬p)
5 ¬(p ∧ ¬p)       LNC
```

The law of identity (LID) states that any proposition is always equal to itself, `p = p`, but momentarily lacking the definition of equality, we can instead express this by saying that any proposition always implies itself, i.e. it is always true that `p → p` (1).

In classical logic, `p → q` expresses *material implication*, which is, classically, defined as `¬p ∨ q`. Thus, from LID, `p → p`, we get LEM, `¬p ∨ p` which is commonly expressed as `p ∨ ¬p` (although it means the same), which can be obtained due to the commutativity of disjunction, `p ∨ q ≡ q ∨ p`.

Material implication `p → q` is logically equivalent to its *contraposition*, `¬q → ¬p`, but its *inverse*, `q → p` and *converse*, `¬p → ¬q`, are not. However, the inverse and converse are logically equivalent, `q → p ≡ ¬p → ¬q`, in the same way `p → q ≡ ¬q → ¬p` are.



---

* classical tautology about material conditional (negated conditionals)
  **what exactly justifies** `p → q ≡ ¬p ∨ q`


All the laws are principles of classical logic are examined extensively in their respecive sections, but for now know that each one has been challenged, leading to the new kinds of logic.

Challenging LEM has led to the development of *intuitionistic logic* (which also rejects double negation elimination and some forms of de Morgan's dualities).

Rejecting LNC has led to to the development of *paraconsistent logics* that can handle contradition.

Even the law of identity (LID) was challenged, leading to the development of *Shrödinger logic*.

Challenging the *structural rules* of inference has lead to *substructural logics* (linear, affine, relevance logic).

Idempotency of entailment can be understood as the fact that a conclusion proven by a set of premises is still valid if that set is extended by additional premises. Challenging idempotency of entailment has lead to the development of

*non-monotonic logics*, where messing with the set of premises messes with the conclusion.

Monotonicity of entailment

Challenging idempotency of entailment

Even the non-logical laws, like the law of associativity and commutativity have been challenged.




---

 (reverse implication)

is not logically equivalent, and neither is its *converse*, `¬p → ¬q`. 


Material implication expresses the sufficient and necessary conditions:
- `p` is a *sufficient condition* for `q`.
- `q` is a *necessary condition* for `p`.

This means that having `p` is *sufficient* to have `q`, 
but having `q` does not imply anything about `p`.

On the other hand, having no `q` does imply that we have no `p`. Since `q` is a necessary condition for `p`, it means that without `q`, there is no `p`, expressed as `¬q → ¬p`. 

For example, "if a shape is a square, then it is an equilateral" means that being a square is a *sufficient condition* for a shape to be an equilateral, but a shape may as well be an equilateral (e.g. a rectangle) without being a square. On the other hand, if a shape is not an equilateral, then it couldn't possibly be a square. Being an equilateral is a *necessary condition* for a shape to be a square.

Thus, it is somewhat strange that necessity works in the negative direction only; `p → q` means that `p` guarantees `q` and `¬q` guarantees `¬p`, but `q` does not imply `p`, nor does `¬p` imply `¬q`.

To make a jump from `p → q` to `¬p ∨ q`, consider that "if a shape is a square, (p), then it is an equilateral (q)", can also be expressed as "a shape is not a square (¬p), or it is an equilateral (q)". Hmm, granted, this is not a very persuasive argument, but that's it for now - material implication will be explored later, extensively. For now, we just need to register that classical reasoning allows these kinds of equivalences.



distinguished by 



       commutativity of disjunction yields:


  distributivity of negation (de Moragan's laws) yields

## The Law of non-contradiction

*The Law of Non-Contradiction* (LNC) has been posited by Aristotle who held (quite reasonably) that a predicate either holds of a thing or it does not. A thing either exists or it does not exists. A thing either has some property or it does not. Two oppositing predicates cannot both hold at the same time for the same thing. Two oppositing predicates that hold of a thing at the same time are *contradictory*, and even a single contradiction renders a system of logic *inconsistent*, and results in explosion.


The law that Aristotele recognized as the most fundamental was **the law of non-contradiction** (LNC) which stated that a thing either has some property or it doesn't. The same predicate cannot both hold of a thing and not hold of a thing at the same time.

The second law Aristotele identified as fundamental was **the law of identity** (LID), which stated that 










or *traditional logic* are in fact many deductive systems of logic based on a certain set of inter-related properties such as the notion of truth, the admitted laws and rules of inference.

Based on their atomic parts, the 3 main systems of classical logic are
- term logic
- sentential logic
- predicate logic

*Term logic* (Aristotelian logic, syllogistic logic) uses terms, i.e. subject and predicate, as its atoms. *Sentential logic* (propositional logic) uses entire sentences (propositions) as its atoms. *Predicate logic* (quantified logic) is the most granular: its atoms are individual terms (subject), but the predicates are relations that allow us to express more complex associations between terms; it also has constants, variables and quantifiers that can be combined in many ways allowing us to talk about specific individuals, groups of individuals (some), and all the individuals (all) and to express many intricate relationships beteween them. Quantifiers quantify variables, which in *first-order logic* range over individuals, in *second-order logic* also range over sets of individuals, in *third-order logic* range over sets of sets, and so on in *higher-order logics*.

The essentail properties of classical logic can be specified as the particular laws or principles it adheres to.

The fundamental principles of predication:
- The Principle of Bivalence, `POB`
- The Law of non-contradiction, `LNC`
- The Law of excluded middle, `LEM`
- The Law of Identity, `LID`
- The Principle of Explosion, `EFQ` (ex falsum quidlibet)

## Classical reasoning

## The Principle of Bivalence

Classical logic is *bivalent*. *Bivalence* is the property of logics that have two truth values. Such logics are called *bivalent logic* or *two-valued logics*. The two truth values are the familiar 'true' and 'false', commonly symbolized by 0 and 1. The set that has these two values as elements is called *Boolean set* or *Boolean domain*, `𝔹 = {true, false}` or `𝔹 = {1, 0}`.

Having two truth values may seem obvious but it need not be the case - *multi-valued logics* have more. Specifically, *3-valued logics* have 3 truth values ('true', 'false', 'unknown'). *4-valued logics* have 4 truth values ('true', 'false', 'both', 'none'). *Fuzzy logic* has an uncountable infinity of truth values in the interval from 0 to 1, where 0 means absolute falsity, and `0 < values < 0.5` represent diffferent levels of falsity; and similarly for the levels of veracity, from `0.5 < values < 1`.


## The Principle of Explosion (EFQ)

In classical logic, encountering a contradiction is disasterous because anything follows from contradiction due to *the explosion principle*, in Latin "ex falsum quidlibet" (EFQ), i.e. anything follows from falsity.

One way to show why any proposition, `q`, can be derived from a contradiction, `p ∧  ¬p`, is:

```hs
1  p ∧  ¬p            -- assumption
2  p                 -- conjunction simplification left, 1
3  p ∨ q             -- disjunction introduction (addition), 2
4  ¬p                -- simplification right, 1
5  q                 -- disjunctive syllogism, 3,4
```

Starting with the assumption that `p ∧  ¬p` is true: a conjuction is true iff both conjuncts are true. Thus, we can simplify this formula to extract the first conjunct, `p` (on line 2), as well as the second conjunct, `¬p` (on line 4). On line 3, we introduce disjunction by adjoining `q` to `p`; we can add any proposition (true or not) as a disjunct, whenever we have a true disjunct, like `p` is here. Since `p` is true, `p ∨ q` is still true. On line 4, we have `¬p`, which indicates that the truth of `p ∨ q` is not due to `p` - since we have `¬p` - but due to `q`. And since we know that the disjunction `p ∨ q` is true AND that `¬p`, therefore `q` must be true (this rule is called *disjunctive syllogism*), which we assert on line 5.

This shows the disasterous effect a contradiction has in a formal system - a contradictory proposition (that is both true and false) lets us derive any proposition whatsoever, which renders the notions of truth and falsity trivial. Such a system is said to be *inconsistent*.

Most systems of logic are classical, so they have to take their consistency concerns very seriously. However, there are logics that are designed to handle contradictions safely.

One such logic is *4-valued logic* (with truth values 'true', 'false', 'both', 'none') that is used to model systems that aggregates facts from different sources, so it can happen that a proposition turns out both true and false (such propositons are assigned the truth value 'both'). The rules of interaction between logical connectives are specified in a partuclar way so that the system remain consistent and capable of answering queries; e.g. `both ∧ none = false`, `both ∨ none = true` (where 'none' denotes the fact that no sources exists to determine the proposition's truth value).

While 4-valued logic handles inconsistency by adding more truth values and then also redesigning the truth tables for logical connectives, there is a general approach in phylosophy of logic, called *dialetheism*, that acknowledges and handles contradictions in a consistent manner by using alternative inference rules.

*Paraconsistent logics* are systems of logic based on dialetheism, and they may be bivalent or multi-valued. These systems may handle contradiction by dissallowing, e.g. addition (disjunct introduction) or the rule of disjunctive syllogism of classical logic, while introducing some alternative rules of inference.

https://en.wikipedia.org/wiki/Paraconsistent_logic

Paraconsistent logic is especially useful to model some aspects of human rasoning, where a person can hold two constradictory views at the same time. Paraconsistent logic is also useful in computer science where it can be used to model computer systems that are resilent to data corruption. It has uses is quantum computing as well.

## The Law of Excluded Middle

*The Law of Excluded Middle* (LEM) is a strict binary view of the world: propositions are either true or false; a property is either present or absent. LEM insists that there are only ever two options and that no other (middle) option exists.

>In classical logic, a proposition can either be true or false, not both and not neither.

The principle of bivalence, LEM and LNC together imply something very important: every proposition has exactly one of the two truth value: it is either true or false, **not both, nor neither**.

Due to bivalence, there are two truth values, but due to LEM, any proposition must have a truth value, immediately! This is a much stronger requirement. It implies that the truth value of any proposition is always known - we may or may not discover it eventually, but it already exists. If no one else, God knows what it is.

## Identities

Due to all this, classical logic has many *logical equivalences*.
- `¬(p ∧ ¬p)` LNC
- `p ∨ ¬p`    LEM
- `p ≡ p`     LID
- `⊥ → p`     EFQ

Due to LEM, these are the logical equivalences that hold between truth values in relation to negation:
- `true ≡ ¬false`
- `false ≡ ¬true`
- `true ≡ ¬¬true`
- `false ≡ ¬¬false`
- Double negation introduction (DNI), `p ≡ ¬¬p`
- Double negation elimination (DNE), `¬¬p ≡ p`

(Later, when we cover logical connectives, we'll see more identities)


## Classic laws of thought

### The principle of excluded middle

https://formulasearchengine.com/wiki/Law_of_excluded_middle

The *principle of excluded middle*, along with its complement, the *law of contradiction* (the second of the three classic laws of thought), are correlates of the *law of identity* (the first of these laws). 

Because the LID intellectually partitions the Universe into exactly two parts - self and other - it creates a dichotomy wherein the two parts are *mutually exclusive* and *jointly exhaustive*.

The principle of contradiction is merely an expression of the mutually exclusive aspect of that dichotomy, and the LEM is an expression of its jointly exhaustive aspect.

For example, if P is the proposition:
- Socrates is mortal.

then the law of excluded middle holds that the logical disjunction:
- Either Socrates is mortal, or it is not the case that Socrates is mortal.

is true by virtue of its form alone. That is, the "middle" position, that Socrates is neither mortal nor not-mortal, is excluded by logic, and therefore either the first possibility (Socrates is mortal) or its negation (it is not the case that Socrates is mortal) must be true.

In general, *intuitionists* allow the use of the law of excluded middle when it is confined to discourse over finite collections (sets), but not when it is used in discourse over infinite sets (e.g. the natural numbers). Thus intuitionists absolutely disallow the blanket assertion: "For all propositions `P` concerning infinite sets `D`: `P or ¬P`"

Aristotle's assertion that "it is not possible for the same thing to be and not to be" can be written in propositional logic as `¬(P ∧ ¬P)` and it is called the law of (non) contradiction. By distributing the negation, we get `P ∨ ¬P`, which is equivalent to Aristotle's assertion, and called LEM. However, the former claims that no statement is *both true and false*, while the latter requires that any statement is *either true or false*. And the *principle of bivalence* - that there are only 2 truth values - is a semantic property.

#### Bertrand Russell and Principia Mathematica

Bertrand Russell asserts a distinction between the LEM and the LNC. In "The Problems of Philosophy", he cites 3 laws of thought as more-less self-evident or a priori in the sense of Aristotle:
1. Law of identity: "Whatever is, is."
2. Law of noncontradiction: "Nothing can both be and not be."
3. Law of excluded middle: "Everything must either be or not be."

It is correct, at least for bivalent logic (i.e. it can be seen with a Karnaugh map) that Russell's Law (2) removes "the middle" of the *inclusive-or* used in his law (3). And this is the point of Reichenbach's demonstration that some believe the *exclusive-or* should take the place of the *inclusive-or*.

About this issue Reichenbach observes:

* The LEM, `∀x(Fx ∨ ¬Fx)`, is not exhaustive in its major terms and is therefore an inflated formula. This fact may perhaps explain why some people consider it unreasonable to write it with the inclusive-or, and want to have it written with the sign of the exclusive-or, as `∀x(Fx ⊕ ¬Fx)`; in this form, it would be fully exhaustive and therefore *nomological* in the narrower sense.

---

## Axioms of logic

A Discovery about Basic Logic
November 6, 2018
https://writings.stephenwolfram.com/2018/11/logic-explainability-and-the-future-of-understanding/

This one little axiom, the *Wolfram's Axiom*, is enough to generate all of logic:

`((p • q) • r) • (p • ((p • r) • p)) = r`

where `•` is some logical connective.


* Proof of Wolfram's Axiom for Boolean Algebra
https://datarepository.wolframcloud.com/resources/Proof-of-Wolframs-Axiom-for-Boolean-Algebra

Steps in an automated proof of the correctness of Wolfram's Axiom. The goal is to prove as theorems the 3 standard *Sheffer axioms* of Boolean algebra from Wolfram's single axiom. Each step states what is being proved, then gives a list of the steps required for a proof. The result is a proof that Wolfram's Axiom is a *complete axiom for Boolean algebra*. It is the simplest possible one.

The proof was first given in very small type on pages 810 and 811 of "A New Kind of Science".

Each individual step in the proof is performed by inserting the specified axiom or lemma, essentially using pattern matching, but with substitutions and rearrangements for variables being made.
