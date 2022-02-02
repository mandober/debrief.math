# Natural Deduction

https://en.wikipedia.org/wiki/Natural_deduction

1. Motivation
2. Judgments and propositions
3. Introduction and elimination
4. Hypothetical derivations
5. Consistency, completeness, and normal forms
6. First and higher-order extensions
7. Different presentations of natural deduction
  7.1. Tree-like presentations
  7.2. Sequential presentations
8. Proofs and type theory
  8.1. Example: Dependent Type Theory
9. Classical and modal logics
10. Comparison with other foundational approaches
  10.1. Sequent calculus
11. References


Natural deduction is a kind of proof calculus in which logical reasoning is expressed by inference rules closely related to the "natural" way of reasoning. This contrasts with Hilbert-style systems, which instead use axioms as much as possible to express the logical laws of deductive reasoning.

Natural deduction is a technique for deducing valid sequents from other valid sequents, by applying precisely defined proof rules, each of which are either axioms or derived from other valid sequents, by a technique called logical inference.

In natural deduction, a conclusion is deduced from a set of initial premises (assumptions) by repeatedly applying inference rules.

Natural deduction is a framework for deriving proofs and the proof derivation may be performed using some kind of notationa system, like the Fitch-style diagrams.

The rules of inference dictate the conditions for formation, introduction and elimination of logical connectives.

## Motivation

Natural deduction grew out of dissatisfaction with the axiomatizations of deductive reasoning common to the systems of Hilbert, Frege and Russell. Such axiomatizations were most famously used by Russell and Whitehead in "Principia Mathematica". Spurred on by a series of seminars in Poland in 1926 by Łukasiewicz that advocated a more natural treatment of logic, Jaśkowski made the earliest attempts at defining a more natural deduction system. His proposals led to different notations such as Fitch-style calculusan and Suppes' method for which Lemmon gave a variant called system L.

Natural deduction in its modern form was independently proposed by the German mathematician Gerhard Gentzen in 1934. The term natural deduction (`natürliches Schließen`) was coined by Gentzen as "calculus of natural deduction". Gentzen was motivated by desire to establish the consistency of number theory. He was unable to prove the main result required for the consistency result, *the cut elimination theorem* (i.e. the `Hauptsatz`) directly for natural deduction. For this reason he introduced his alternative system, the *sequent calculus*, for which he proved the Hauptsatz both for classical and intuitionistic logic.

In a series of seminars in 1961 and 1962 Prawitz gave a comprehensive summary of natural deduction calculi, and transported much of Gentzen's work with sequent calculi into *the natural deduction framework*. His 1965 monograph "Natural deduction: a proof-theoretical study" was to become a reference work on natural deduction, and included applications for modal and second-order logic.

The system presented here is a minor variation of Gentzen's or Prawitz's formulation, but with a closer adherence to Martin-Löf's description of logical judgments and connectives.

## Judgments and propositions

A judgment is something that is knowable, that is, it is an object of knowledge. It is evident if one in fact knows it.

Thus "it is raining" is a judgment, which is evident for the person who knows that it is actually raining; in this case you may readily find evidence for this judgment by looking outside.

In mathematical logic, however, the evidence is often not as directly observable, but rather deduced from more basic evident judgments. *The process of deduction is what constitutes a proof*; in other words, *a judgment is evident if one has a proof for it*.

In logic, the most important judgments are of the form "`A` is true". The letter `A` stands for any expression representing a proposition; the truth judgments thus require a more primitive judgment: "`A` is a proposition".

Many other judgments have been studied; for example, "A is false" (classical logic), "A is true at time t" (temporal logic), "A is necessarily true" or "A is possibly true" (modal logic), "the program M has type τ" (programming languages and type theory), "A is achievable from the available resources" (linear logic), and many others.

To start with, we shall concern ourselves with the simplest two judgments "A is a proposition" and "A is true", abbreviated as `A prop` and `A true`.

## Formation rules

We first discuss the `A prop` judgment.

The judgment `A prop` defines the structure of valid proofs of `A`, which in turn defines the structure of propositions. For this reason, the inference rules for this judgment are sometimes known as **formation rules**.

To illustrate, if we have two propositions `A` and `B`, i.e. if the judgments `A prop` and `B prop` are evident, then we can form the compound proposition `A` and `B`, written symbolically as `A ⋀ B`. We can write this in the form of an inference rule - the inference rule is schematic since `A` and `B` can be instantiated with any expression.

```
A prop   B prop
--------------- ⋀F
  (A ⋀ B) prop

usually without parenthesis:

A prop   B prop
--------------- ⋀F
  A ⋀ B prop
```

The general form of an inference rule is:

```js
J₀ prop   J₁ prop  …   Jₙ prop
------------------------------ NAME
          J prop
```

where each `Jᵢ` is a judgment and the inference rule is named "NAME". The judgments above the line are known as *premises*, and those below the line are *conclusions*.

[Formation rules of inference](./natural-deduction-formation-rules.md) in natural deduction for logical connectives (conjunction, disjunction, implication, negation) and logical constants (true, false).

## Introduction rules

Now we discuss the `A true` judgment.

Inference rules that introduce a logical connective *in the conclusion* are known as **introduction rules**.

For example, to introduce conjunctions, i.e. to conclude that "`A` and `B` true", for some propositions `A` and `B`, one requires the evidence that both `A true` and `B true`. As an inference rule:

```
A true   B true
--------------- ∧I
  (A ⋀ B) true
```

It must be understood that in such rules the objects are propositions; that is, the above rule is really an abbreviation for:

```
A prop   B prop   A true   B true
---------------------------------- ∧I
          (A ⋀ B) true
```

This can also be written:

```
A ⋀ B prop   A true   B true
------------------------------ ∧I
        (A ⋀ B) true
```

In the last form, the first premise, `A ⋀ B prop`, can be satisfied by the formation rule for conjunction, `∧F`, giving the first two premises of the previous form.

```
   A ⋀ B prop       A true   B true
-------------------------------------- ∧F
A prop   B prop     A true   B true
-------------------------------------- ∧I
           (A ⋀ B) true
```

In this article we shall elide the "prop" judgments where they are understood.

In the nullary case for truth, one can derive truth from no premises. However, in the nullary case for falsehood, there are no introduction rules: you can never infer falsehood from simpler judgments.

If the truth of a proposition can be established in more than one way, the corresponding connective will have multiple introduction rules, usually "left" and "right" versions of the rule (e.g. disjunction introduction).

## Elimination rules

Dual to introduction rules are elimination rules to describe how to *deconstruct* information about a compound proposition into information about its constituents. For example, from "A ⋀ B true", we can conclude "A true" and "B true".

As an example of the use of inference rules, consider commutativity of conjunction: if `A ⋀ B` is true, then `B ⋀ A` is true.

```
A ⋀ B true        A ⋀ B true
---------- ∧Eʟ    ------------ ∧Eʀ
  A true             B true
------------------------------ ∧I
          B ⋀ A true
```

This and other derivations can be drawn by composing inference rules in such a fashion that premises of a lower inference match the conclusion of the next higher inference.

## Hypothetical derivation

To state the rules of implication introduction or disjunction elimination we need a more general notion of *hypothetical derivation*.

A pervasive operation in mathematical logic is reasoning from assumptions. In logic, one says "assuming `A` is true, we show that `B` is true"; in other words, the judgment "B true" depends on the assumed judgment "A true".

```
 [A]¹ true
  ⫶
  B true
------------ →𝐈¹
A -> B true
```

The intended interpretation is that `B true` is derivable from `A true` and we call these hypothetical derivations.

The general form of a hypothetical derivation is:

```js
D₀ prop   D₁ prop  …   Dₙ prop
              ⫶
           J prop
```

Each hypothetical derivation has a collection of antecedent derivations, `Dᵢ`, written above the line, and a succedent judgment, `J`, written below the line.

Each of the premises may itself be a hypothetical derivation. For simplicity, we treat a judgment as a premise that itself is not a derivation.

The notion of hypothetical judgment is internalised as the logical connective of implication. The introduction and elimination rules of implication are:

```
  -------- AS¹
   A true
     ⫶
   B true
------------ →I¹
A -> B true


A true   A -> B true
--------------------- →E
      B true
```

In the rule for implication introduction (→I), we have first made an assumption `A` and label it with `1`. We then derive the conclusion `B`, and which time we can discharge the antecedent (i.e. assumption) labelled `1`.

This is a mechanism for delimiting the scope of a hypothesis: its sole reason for existence is to establish "B true"; it cannot be used for any other purpose, and in particular, it cannot be used below the introduction, after it is discharged. In fact, after it is discharged only the implication formula remains and it can be used in the main proof body.

For example, the derivation of `A ⟶ (B ⟶ (A ⋀ B)) true` is:

```
------- AS¹   ------- AS²
A true         B true
------------------------- ⋀I
      A ⋀ B true
------------------------- →I¹
    B ⟶ (A ⋀ B) true
------------------------- →I²
A ⟶ (B ⟶ (A ⋀ B)) true
```

This full derivation has no unsatisfied premises; however, sub-derivations are hypothetical. For instance, the derivation of `B -> (A ∧ B) true` is hypothetical with antecedent `A true`.

This same proof derivation in Fitch notation looks as follows:

```
1 assume a                      AS 1
2   assume b                    AS 2
3     a ⋀ b                     ⋀I 1,2
4   thus b -> (a ⋀ b)           →I 2-3
5 thus a -> (b -> (a ⋀ b))      →I 1-4
```

With hypothetical derivations, we can now write the elimination rule for disjunction:

```
            [A]ⁱ true  [B]ʲ true
             ⫶           ⫶
A ⋁ B true   C true     C true
--------------------------------- ∨Eⁱʲ
            C true
```

So, if `A ∨ B` is true, and we can derive `C true` both from `A true` and from `B true`, then `C` is indeed true. Note that this rule does not commit to either "A true" or "B true", it must analyze them both, which is the reason it is also called case analysis.

In the nullary case, for falsehood, we obtain the following elimination rule:

```
⟘ true
------- ⟘E (EFQ)
C true
```

which means "if falsehood is true, then any proposition C is true". This is called "ex falsum quiblibet" or the principle of explosion. It refers to the fact that if false is true, then anything is true, i.e. we lost it completely and exploded.


The rules for negation are similar to implication.

```js

-------- u
 A true
    ⫶
∀p.p true
--------- ¬Iᵘᵖ (p ∉ A)
¬A true


    ⫶         ⫶
A true   ¬A true
----------------- ¬E (RAA)
    C true
```

The rule for negation introduction discharges both the assumption (the named hypothesis `u`) and the succedent `p`; the proposition p must not occur in the conclusion A, `p ∉ A`. Since these rules are schematic, the interpretation of the introduction rule is: if from `A true` we can derive, for every proposition `p`, that `p true`, then `A` must be false i.e. `¬A true` (not A true).

For the elimination, if both `A` and `¬A` are shown to be true, then there is a contradiction, in which case every proposition `C` is true.

Because the rules for implication and negation are so similar, it should be fairly easy to see that `not A` and `A -> ⟘` are equivalent, i.e. interderivable.

## Consistency, completeness and normal forms

A theory is said to be **consistent** if falsehood is not provable (from no assumptions).

A theory is said to be **complete** if every theorem or its negation is provable using the inference rules of the logic.

These are statements about the entire logic, and are usually tied to some notion of a model. However, there are local notions of consistency and completeness that are purely syntactic checks on the inference rules, and require no appeals to models.

The first of these is **local consistency (local reducibility)**, which says that any derivation containing an introduction of a connective followed immediately by its elimination can be turned into an equivalent derivation without this detour. It is a check on the strength of elimination rules: they must not be so strong that they include knowledge not already contained in their premises. As an example, consider conjunctions.

```
------ u   ------ w
A true     B true
------------------ ∧I    ==>  ------- u
    A ⋀ B true                 A true
    ---------- ∧E1
      A true
```

Dually, **local completeness** says that the elimination rules are strong enough to decompose a connective into the forms suitable for its introduction rule. Again for conjunctions:

```
                        ---------- u    ---------- u
                        A ⋀ B true      A ⋀ B true
---------- u    ==>     ---------- ∧E1  ---------- ∧E2
A ⋀ B true                A true          B true
                        -------------------------- ∧I
                                  A ⋀ B true
```

These notions correspond exactly to `β-reduction` and `η-conversion` in the lambda calculus, using the Curry-Howard isomorphism.

By local completeness, we see that every derivation can be converted to an equivalent derivation where the principal connective is introduced.

In fact, if the entire derivation obeys this ordering of eliminations followed by introductions, then it is said to be **normal derivation**. In a normal derivation all eliminations happen above introductions. 

In most logics, every derivation has an equivalent normal derivation, called a **normal form**. The existence of normal forms is generally hard to prove using natural deduction alone, though such accounts exist in the literature (most notably by Dag Prawitz in 1961). It is much easier to show this indirectly by means of a cut-free sequent calculus presentation.

## First and higher-order extensions

The logic of the earlier section is an example of a single-sorted logic, i.e., a logic with a single kind of object: propositions (e.g. propositional logic).

We now extend it with a second sort of individuals or terms. More precisely, we will add a new kind of judgment, "t is a term" (or `t term`) where `t` is schematic. We shall fix a countable set `V` of variables, another countable set `F` of function symbols, and construct terms with the following *formation rules*:

```js

v ∈ V
------- var-F
v term


f ∈ F    t₁ term   t₂ term   …   tₙ term
----------------------------------------- app-F
      f(t₁, t₂, …, tₙ) term
```

For propositions, we consider a third countable set `P` of predicates, and define atomic predicates over terms with the following formation rule:

```js
φ ∈ F    t₁ term   t₂ term   …   tₙ term
----------------------------------------- pred-F
      φ(t₁, t₂, …, tₙ) prop
```

The first two rules of formation provide a definition of a term that is effectively the same as that defined in term algebra and model theory, although the focus of those fields of study is quite different from natural deduction.

The third rule of formation effectively defines an atomic formula, as in first-order logic (and in model theory).

To these are added a pair of *formation rules*, defining the notation for quantified propositions for universal (∀) and existential (∃) quantification:

```js

x ∈ V    A prop
---------------- ∀F
    ∀x.A prop


x ∈ V    A prop
---------------- ∃F
    ∃x.A prop
```

The universal quantifier has the introduction and elimination rules:

```js
     ------ u
     a term
        ⫶
[a ↦ x]A true
--------------- ∀𝓘(u,a)
    ∀x.A true


∀x.A   t true
-------------- ∀𝓔
[t ↦ x]A true
```


The existential quantifier has the introduction and elimination rules:

```js

[t ↦ x]A true
--------------- ∃𝓘
  ∃x.A true


            ------ u  -------------- v
            a term    [a ↦ x]A true
                    ⫶
∃x.A true       C true
------------------------------------- ∃𝓔(a,u,v)
                C true
```

The notation `[t ↦ x]A` stands for the substitution of `t` for every (visible) instance of `x` in `A`, avoiding capture.

As before the superscripts on the name stand for the components that are discharged: the term `a` cannot occur in the conclusion of `∀I` (such terms are known as *eigenvariables* or parameters), and the hypotheses named `u` and `v` in `∃E` are localised to the second premise in a hypothetical derivation.

Although the propositional logic of earlier sections was decidable, adding the quantifiers makes the logic undecidable.

So far, the quantified extensions are first-order: they distinguish propositions from the kinds of objects quantified over.

Higher-order logic takes a different approach and has only a single sort of propositions. The quantifiers have, as the domain of quantification, the very same sort of propositions, as reflected in the formation rules:

```js
------ u
p prop
   ⫶
A prop
---------- ∀F(u)
∀p.A prop


------ u
p prop
   ⫶
A prop
---------- ∃F(u)
∃p.A prop
```

It is possible to be in-between first-order and higher-order logics. For example, second-order logic has two kinds of propositions, one kind quantifying over terms, and the second kind quantifying over propositions of the first kind.


## Presentations of natural deduction

- Tree-like presentations
- Sequential presentations


*Tree-like presentations*: Gentzen's discharging annotations used to internalise that hypothetical judgments can be avoided by representing proofs as a tree of sequents `Γ ⊢ A` instead of a tree of `A true` judgments.

*Sequential presentations*   
Jaśkowski's representations of natural deduction led to different notations such as *Fitch-style calculus* (or Fitch's diagrams) or *Suppes' method*, of which Lemmon gave a variant called *system L*. Such presentation systems, which are more accurately described as tabular, include the following.

**Tabular presentations**
- 1940: In a textbook, *Quine* indicated antecedent dependencies by line numbers in square brackets, anticipating Suppes' 1957 line-number notation.
- 1950: In a textbook, *Quine* demonstrated a method of using one or more asterisks to the left of each line of proof to indicate dependencies. This is equivalent to Kleene's vertical bars.
- 1957: An introduction to practical logic theorem proving in a textbook by *Suppes*. This indicated dependencies (i.e. antecedent propositions) by line numbers at the left of each line.
- 1963: *Stoll* uses sets of line numbers to indicate antecedent dependencies of the lines of sequential logical arguments based on natural deduction inference rules.
- 1965: The entire textbook by *Lemmon* is an introduction to logic proofs using a method based on that of Suppes.
- 1967: In a textbook, *Kleene* briefly demonstrated two kinds of practical logic proofs, one system using explicit quotations of antecedent propositions on the left of each line, the other system using vertical bar-lines on the left to indicate dependencies

## Proofs and type theory

The presentation of natural deduction so far has concentrated on the nature of propositions without giving a formal definition of a proof. To formalise the notion of proof, we alter the presentation of hypothetical derivations slightly. We label the antecedents with proof variables (from some countable set V of variables), and decorate the succedent with the actual proof. The antecedents or hypotheses are separated from the succedent by means of a turnstile (⊢). This modification sometimes goes under the name of localised hypotheses. The following diagram summarises the change.
