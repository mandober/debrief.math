# Natural deduction

https://en.wikipedia.org/wiki/Natural_deduction

In mathematical logic and proof theory, natural deduction is a kind of *proof calculus* in which logical reasoning is expressed by the rules of inference.

In natural deduction, a proposition is deduced from a collection of premises by applying inference rules repeatedly. 

In natural deduction, a proof is derived through a sequence of steps, each of which is deduced from a set of premises by applying an appropriate rule from the set of inference rules.


Natural deduction, here presented using the *Fitch-style diagrams*, is a framework for deriving proofs, based on a set of initial premises or on a set of assumptions, using a specific set of inference rules.

The *rules of inference* dictate the conditions needed for introduction or elimination of logical connectives. Each logical connective in IL, that is, its introduction or elimination, has a corresponding function in Haskell.



[Fitch diagrams](https://en.wikipedia.org/wiki/Fitch_notation) is a notational system for constructing formal proofs. A Fitch-style proof arranges the sequence of propositions that make up the proof into numbered rows, with assumptions indented for easier identification.

There are many schematic systems for representing natural deduction proofs, but Fitch's notation seems the most mealable for ASCII presentation.

In a Fitch diagram, a proof is presented as a sequence of steps, with each step justified by stating what rule of inference was applied to which lines.

------------------------------------------------------------------------------

## Natural deduction

from: `Automated Theorem Proving` by Frank Pfenning, 2004, lecture notes

We explore ways to define logics, or, which comes to the same thing, ways to give meaning to logical connectives. Our fundamental notion is that of a *judgment* based on evidence. For example, we might make the judgment "It is raining" based on visual evidence. Or we might make the judgment "A -> A is true for any proposition A" based on a derivation.

The use of the notion of a judgment as conceptual prior to the notion of proposition has been advocated by Martin-Lof. Certain forms of judgments frequently recur and have therefore been investigated in their own right, prior to logical considerations.

Two that we will use are hypothetical judgments and parametric judgments, the latter of which sometimes called *general judgments* or *schematic judgments*.

A **hypothetical judgment** has the form `B under hypothesis A`. We consider this judgment evident if we are prepared to make the judgment `B` once provided with evidence for `A`.

Formal evidence for a hypothetical judgment is a *hypothetical derivation* where we can freely use the hypothesis `A` in the derivation of `B`. Note that hypotheses need not be used, and could be used more than once.

```
  [A]¹
   ⁝
   B
-------
A -> B
```

A **parametric judgment** has the form `J for any a` where `a` is a parameter which may occur in `J`. We make this judgment if we are prepared to make the judgment `[O/a]J` for arbitrary objects `O` of the right category. Here `[O/a]J` is the notation for substituting the object `O` for parameter `a` in the judgment `J`.

Formal evidence for a parametric judgment `J` is a *parametric derivation* with free occurrences of the parameter `a`.


In a *Hilbert-style axiomatization of logic*, we define a judgment 'A is true' without the use of hypothetical judgments. Hilbert-style systems rely on many axioms, while they have a few inference rules. When we make proof structure explicit in such an axiomatization, we arrive at *combinatory logic*.

A *categorical logic* arises when the basic judgment is not truth, but entailment, `A |- B`. Once again, presentations are highly economical and do not need to seek recourse in complex judgment forms. But derivations often require many hypotheses, which means that we need to lean rather heavily on conjunction here. Proofs are realized by morphisms which are an integral part of the machinery of category theory.

While these are interesting and in many ways useful approaches to logic specification, neither of them comes particularly close to capturing the  practice of mathematical reasoning. This was Gentzen's point of departure for the design of a **system of natural deduction**.

From our point of view, this system is based on the simple judgment `A is true`, but relies critically on hypothetical and parametric judgments. In addition to being extremely elegant, it has the great advantage that one can define all logical connectives without reference to any other connective. This principle of modularity extends to the meta-theoretic study of natural deduction and simplifies considering fragments and extension of logics.

Since we will consider many fragments and extension, this orthogonality of the logical connectives is a critical consideration. There is another advantage to natural deduction, namely that its proofs are isomorphic to the terms in a λ-calculus via the Curry-Howard isomorphism, which establishes many connections to functional programming.

Finally, we arrive at the **sequent calculus** (also introduced by Gentzen in his seminal paper) when we split the single judgment of truth into two: `A is an assumption` and `A is true`. While we still employ the machinery of parametric and hypothetical judgments, we now need an explicit rule to state that `A is an assumption` is sufficient evidence for `A is a true`. The reverse, namely, that if `A is true` then `A may be used as an assumption` is the **Cut rule** which he proved to be redundant in his *Hauptsatz*.

For Gentzen, the sequent calculus was primarily a technical device to prove consistency of his system of natural deduction, but it exposes many details of the fine structure of proofs in such a clear manner that many logic presentations employ sequent calculi. The laws governing the structure of proofs, however, are more complicated than the CHI for natural deduction might suggest and are still the subject of study. We choose natural deduction as our definitional formalism as the purest and most widely applicable. Later we justify the sequent calculus as a calculus of proof search for natural deduction and explicitly relate the two forms of presentation.

## Intuitionistic Natural Deduction

The system of natural deduction we describe is basically Gentzen's system **NJ**. The calculus of natural deduction was devised by Gentzen in the 1930's out of a dissatisfaction with axiomatic systems in the Hilbert tradition. Instead of a number of axioms and a small set of inference rules, valid deductions are described through inference rules only, which at the same time explain the meaning of the logical quantifiers and connectives in terms of their proof rules.


A language of first-order *terms* is built up from variables (`x`,`y`), function
symbols (`f`,`g`), each with a unique arity, and parameters (`a`,`b`).

```
terms, t         := vars | params | function symbols
vars             := x, y, z, …
params           := a, b, c, …
function symbols := f(t₁, …, tₙ)
```

- A constant `c` is a nullary function symbol, written `c`, instead of `c()`
- We use `t` and `s` to range over terms

The language of *propositions* is built up from predicate symbols and terms:

```
proposition, A := predicate symbol | term
                | P(t₁, …, tₙ)
                | A ∧ A
                | A ∨ A
                | A → A
                | ¬A
                | ⟙
                | ⟘
                | ∀x.A
                | ∃x.A

predicate symbol := P, Q, …
```

- A propositional constant `P` is a nullary predicate symbol, written `P`
- We use `A`, `B`, `C` to range over propositions
- the variable `x` is *bound* in propositions of the form `∀x.A` and `∃x.A`
- (∧) and (∨) bind more tightly than (->)
- It is convenient to assume that propositions have no free individual variables; we use parameters instead where necessary

The notation for substitution is `[t/x]A` for the result of substituting the term `t` for the variable `x` in `A`. Because of the restriction on occurrences of free variables, we can assume that `t` is free of individual variables, and thus capturing cannot occur.

The main judgment of natural deduction is `C is true` written as `C true`, from hypotheses `A1 true, ..., An true`. We'll model this as a hypothetical judgment, which means that certain structural properties of derivations are tacitly assumed, independently of any logical inferences.

* **Hypothesis**: If we have a hypothesis `A true` than we can conclude `A true`
* **Weakening**: Hypotheses need not be used
* **Duplication**: Hypotheses can be used more than once
* **Exchange**: The order in which hypotheses are introduced is irrelevant


*Introduction and elimination inference rules* must match in a certain way in order to guarantee that the rules are meaningful and the overall system can be seen as capturing mathematical reasoning.

1. The first is a **local soundness property**: if we introduce a connective and then immediately eliminate it, we should be able to erase this detour and find a more direct derivation of the conclusion without using the connective. If this property fails, the elimination rules are too strong - they allow us to conclude more than we should be able to know.

2. The second is a **local completeness property**: we can eliminate a connective in a way which retains sufficient information to reconstitute it by an introduction rule. If this property fails, the elimination rules are too weak - they do not allow us to conclude everything we should be able to know.

We provide evidence for local soundness and completeness of the rules by means of *local reduction and expansion judgments*, which relate proofs of the same proposition.

One of the important principles of natural deduction is that each connective should be defined only in terms of inference rules without reference to other logical connectives or quantifiers. We refer to this as **orthogonality of the connectives**. It means that we can understand a logical system as a whole by understanding each connective separately.


### Rules of Inference for Intuitionistic Natural Deduction

* Conjunction
  - introduction, ∧I
  - elimination
    - left,  ∧E₁
    - right, ∧E₂
* Disjunction
  - introduction
    - left,  ∨I₁
    - right, ∨I₂
  - elimination, ∨E
* Implication
  - introduction, →I
  - elimination, →E (MP)
* Negation
  - introduction, ¬I
  - elimination, ¬E
* Truth
  - introduction, TI
* Falsum
  - elimination, ⟘E
* Universal quantification
  - introduction, ∀I
  - elimination,  ∀E
* Existential quantification
  - introduction, ∃I
  - elimination,  ∃E


```js
CONJUNCTION

A true   B true       A ∧ B true       A ∧ B true
--------------- ∧I    ---------- ∧E₁   ---------- ∧E₂
   A ∧ B true           A true           B true


DISJUNCTION
                                               [A]ⁱ true  [B]ʲ true
                                                ⫶           ⫶
  A true           B true          A ∨ B true   C true     C true
---------- ∨I₁   ---------- ∨I₂    ---------------------------------- ∨Eᵢⱼ
A ∨ B true       A ∨ B true                    C true



IMPLICATION

 [A]¹ true
  ⫶
  B true            A true   A → B true
----------- →I¹    --------------------- MP
A → B true                B true



NEGATION

 [A]¹ true
  ⫶
  p true            A true    ¬A true
----------- ¬I¹     ------------------ ¬E
 ¬A true                  C true



TRUTH                        FALSE

                             ⟘ true
-------- ⟙I                 ------- ⟘E
⟙ true                       C true


UNIVERSAL QUANTIFICATION

[a/x]A true               ∀x. A true
------------ ∀Iᵃ          ------------ ∀E
  ∀x.A true               [t/x]A true



EXISTENTIAL QUANTIFICATION

                                       [[a/x]A true]
                                             ⫶
[t/x]A true              ∃x.A true        C true
------------ ∃I          ----------------------------- ∃Eᵃ
  ∃x.A true                        C true

```

### Conjunction, Disjunction and Implication

These 3 have the usual inference rules.

### Negation

In order to derive `¬A`, we assume `A` and try to derive a contradiction, `⟘`.

Thus, it seems that negation requires falsehood, and, in most literature on constructive logic, `¬A` is seen as an abbreviation of `A → ⟘`.

In order to give a self-contained explanation of negation by an introduction rule, we employ a judgment that is parametric in a propositional parameter `p`: if we can derive *any `p`* from the hypothesis `A` we conclude `¬A`.

The elimination rule follows from this view: if we know `¬A true` and `A true`, then we can conclude any formula `C true`. This is *Ex Falsum Quodlibet* or *the explosion principle*: anything follows from a contradiction (falsum).

`EFQ: (A ∧ ¬A) -> C`


### Truth

There is only the introduction rule for `⟙`. Since we put no information into the proof of `⟙`, we know nothing new if we have an assumption `⟙` and therefore we have no elimination rule and no local reduction.

It may also be helpful to think of `⟙` as a nullary conjunction: the introduction rule has 0 premisses instead of 2 and we correspondingly have 0 elimination rules instead of 2.

The local expansion allows the replacement of any derivation of `⟙` by ⟙I.


### Falsehood

Since we should not be able to derive falsehood, there is no introduction rule for `⟘`. Therefore, if we can derive falsehood, we can derive everything.

Note that there is no local reduction rule for `⟘E`. It may be helpful to think of `⟘` as a nullary disjunction: we have 0 instead of 2 introduction rules and we correspondingly have to consider 0 cases instead of 2 in the elimination rule.

Even though we postulated that falsehood should not be derivable, falsehood could clearly be a consequence of contradictory assumption. For example, `(A ∧ ¬A) -> ⟘ true` is derivable.


### Universal Quantification

The circumstances in which we consider `∀x.A` to be true depend on the domain of quantification.

For example, if `x` ranges over ℕ, then we can conclude `∀x.A`, if we can prove that the proposition `A` holds for all ℕ, `[0/x]A`, `[1/x]A`, `[2/x]A`, etc. With infinitely many premisses, such a rule would not be effective; thus, one usually retreats to rules such as *induction*.

However, in a general treatment of predicate logic we would like to prove statements which are true for all domains of quantification. Therefore, we can only say that `∀x.A` is provable if `[a/x]A` is provable, for a new parameter `a` about which we can make no assumption; we instantiate `∀x.A` with an new parameter, an object `a`, `[a/x]A`. The label `a` on the ∀-introduction rule is a reminder the parameter `a` must be fresh, that is, it may not occur in any undischarged assumption in the proof of `[a/x]A` or in `∀x.A` itself. In other words, *the derivation of the premis must be parametric in `a`*.

Conversely, if we know `∀x.A`, we know that `[t/x]A` for any term `t`. That is, if a proposition `A` holds for all terms `x`, then it surely holds for a term `t`.


### Existential Quantification

We conclude that `∃x.A` is true when there is a term `t` such that `[t/x]A` is true.

When we have an assumption `∃x.A` we do not know for which `t` it is the case that `[t/x]A` holds. We can only assume that `[a/x]A` holds for some parameter `a` about which we know nothing else. Thus the elimination rule resembles the one for disjunction.


## Context

`Contexts Γ := · | Γ,u:A`

- `·` represents the empty context
- `Γ,u:A` means adding the hypothesis `A true`, labelled `u`, to `Γ`
- each label must occurs at most once in a context to avoid ambiguities

The main judgment can then be written as `Γ |- A` which can be expanded to a conjunction of hypothesis, `u:B, v:C, ... |- A`.

With these additional definitions, we get the familiar version of the rules of inference with contexts, such as Γ, Δ, etc.

We also have a new rule for hypotheses which was an implicit property of the hypothetical judgments before.

```
-------------- u
Γ,u:A, Δ |- A
```


## Structural Properties of Hypotheses

The following properties hold for intuitionistic natural deduction:

```hs
Γ¹,u:A,  Γ²,v:B,  Γ³   |- C
----------------------------- EXCHANGE
Γ¹,v:B,  Γ²,u:A,  Γ³   |- C


Γ¹,     Γ²   |- C
----------------------------- WEAKENING
Γ¹,u:A, Γ²   |- C


Γ¹,u₁:A, Γ²,u₂:A, Γ³   |- C
----------------------------- CONTRACTION
Γ¹,u:A,  Γ²,      Γ³   |- C


Γ¹,u:A, Γ² |- C     Γ¹ |- A
----------------------------- SUBSTITUTION
Γ¹, Γ²     |- C

```

## Proof Terms

The basic judgment of the system of natural deduction is the *derivability* of a formula `A`, written as `|- A`.

As has been noted by Howard (CHI), there is a strong correspondence between intuitionistic derivations and λ-terms. The formulas `A` then act as types classifying λ-terms. In the propositional case, this correspondence is an isomorphism: formulas are isomorphic to types and derivations are isomorphic to simply-typed λ-terms. These isomorphisms are also called programs-as-proofs and propositions-as-types.

The notation for derivations in natural deduction system: for example, if `M` represents a proof of `A` and `N` represents a proof of `B`, then the pair `(M,N)` represents the proof of `A ∧ B` by ∧I. We write `Γ |- M : A` to express that the judgment `M` is a *proof term* for `A` under hypotheses `Γ`.

We also repeat the local reductions and expansions from the previous section in the new notation. For local expansion we state the proposition whose truth must established by the proof term on the left-hand side. This expresses restrictions on the application of the expansion rules.

### Conjunction

The proof term for a conjunction is the pair of proofs of the premises.

```
Γ |- M : A     Γ |- N : B
------------------------- ∧I
    Γ |- (M,N) : A ∧ B

Γ |- M : A     Δ |- N : B
-------------------------- ∧I
  Γ,Δ |- (M,N) : A ∧ B



Γ |- M : A ∧ B
----------------------- ∧Eʟ
Γ |- fst M : A


Γ |- M : A ∧ B
----------------------- ∧Eʀ
Γ |- snd M : B

```
