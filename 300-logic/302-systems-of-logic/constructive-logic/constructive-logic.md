# Logic :: Constructive Logic

## Introduction

- Basic concepts
- Constructive reasoning and programming
- Automatic verification
- Properties of logical systems

In *"Basic concepts"* we establish the basic vocabulary and systematically study propositions and proofs, mostly from a philosophical perspective. The treatment will be formal in order to permit an easy transition into computational applications. We will also discuss some properties of the logical systems we develop and strategies for proof search. We aim at a systematic account for the usual forms of logical expression, providing us with a flexible and thorough foundation.

In "*Constructive reasoning and programming*" we consider only proofs that describe algorithms. This turns out to be quite natural in the framework we have previously established. It may come as a surprising that many proofs in mathematics today are not constructive. Concretely, we find that for a certain fragment of logic, constructive proofs correspond to functional programs and vice versa. More generally, we can extract functional programs from constructive proofs of their specifications. We often refer to constructive reasoning as intuitionistic, while non-constrctive reasoning is classical. We further explore the connection between proofs and programs, and between theorem proving and programming.

In "*Automatic verification*" we study fragments of logic for which the question whether a proposition is true of false can be effectively decided by an algorithm. Such fragments can be used to specify some aspects of the behavior of software or hardware and then automatically verify them. A key technique here is model-checking that exhaustively explores the truth of a proposition over a finite state space. Model-checking and related methods are routinely used in industry, for example, to support hardware design by detecting design flaws at an early stage in the development cycle.

In "*Properties of logical systems*" we look more deeply at properties of logical system that we have developed previously. Among the questions we consider is the relation between intuitionistic and classical reasoning, and the soundness and completeness of various algorithms for proof search.

There are several related goals of this exposition.

The first goal is to gain familiarity with constructive logic and its relation to computation. This includes the translation of informally specified problems to logical language, the ability to recognize correct proofs and construct them. The skills further include writing and inductively proving the correctness of recursive programs.

The second goal concerns the transfer of this knowledge to other kinds of reasoning. We try to illuminate logic and the underlying philosophical and mathematical principles from various points of view. This is important, since there are many different kinds of logics for reasoning in different domains or about different phenomena (classical, intuitionistic, modal, second-order, temporal, belief, nonmonotonic, linear, relevance, authentication, etc.), but there are relatively few underlying  philosophical and mathematical principles. We need to internalize these principles so that we can apply them in different domains where rigorous reasoning is required.

The third goal relates to specific, important applications of logic in the practice of computer science. Examples are the design of type systems for programming languages, specification languages, or verification tools for finite-state systems.

## Propositional Logic

Two principal notions of logic are propositions and proofs.

There is no universal agreement about the proper foundations for these notions ,but one approach, which has been particularly successful for applications in computer science, is to understand the meaning of a proposition by understanding its proofs. In the words of Martin-Löf:

>The meaning of a proposition is determined by what counts as its verification.

Martin-Löf's approach follows a rich philosophical tradition to explain the basic propositional connectives. We see later that universal and existential quantifiers and types such as natural numbers, lists, or trees naturally fit into the same framework.

### Judgements and Propositions

The cornerstone of Martin-Löf's foundation of logic is a clear separation of the notions of judgement and proposition.

- judgement is something we may know, it is an object of knowledge.
- judgement is evident if we in fact know it.
- judgement is evident if we have a proof for it.

A **judgement** is something we may know, that is, an object of knowledge. A judgement is evident if we in fact know it. We make a judgement because we have evidence for it. In everyday life, such evidence is often immediate. In logic, we are concerned with situations where the evidence is indirect: we deduce the judgement by making correct inferences from other evident judgements. In other words, a judgement is evident if we have a proof for it.

The most important **judgment form** in logic is _"A is true"_, where _A_ is a proposition. In order to reason correctly, we therefore need another form of judgment: _"A is a proposition"_.

These two are important for our purposes, but there are many other forms of judgements that have been studied extensively; e.g. "A is false", "A is true at time t" (from temporal logic), "A is necessarily true" (from modal logic), "program M has type τ" (from programming languages), etc.

We write `A prop` for the judgment "A is a proposition", and `A true` for the judgment "A is true" (which presupposes that `A prop`).

The meaning of conjunction: given propositions `A` and `B`, we want to form the compound proposition "A and B", written more formally as `A ∧ B`. We express this with the inference rule **conjunction formation**:

```
A prop   B prop
---------------- ∧F
    A ∧ B prop
```

This rule allows us to conclude that `A ∧ B prop` if we already know that `A prop` and `B prop`. In this inference rule, _A_ and _B_ are schematic variables, and _∧F_ is the name of the rule (short for conjunction formation).

The general form of an inference rule:

```
J₁ … Jₙ
-------
  J
```

where judgments `Jᵢ` are *premises* and judgment `J` is *conclusion*.

Once the rule of conjunction formation has been specified, we know that `A ∧ B` is a proposition, if A and B are. But we haven't specified what it means, i.e. what counts as a verification of `A ∧ B`, which is what the inference rule of **conjunction introduction** accomplishes:

```
A true   B true
---------------- ∧I
  A ∧ B true
```

We take this as specifying the meaning of `A ∧ B` completely.

What can we deduce if we know that `A ∧ B` is true? By the above rule, to have a verification for `A ∧ B` means to have verifications for each `A` and `B`. Hence, these two rules of **conjunction elimination** are justified:

```
A ∧ B true         A ∧ B true
----------- ∧E₁   ----------- ∧E₂
  A true             B true
```

As another example, we consider the proposition "truth" written as `⊤`. **Truth formation** rule says that `⊤ prop` always holds so the rule has no premises. And since truth is always true, **truth introduction** rule has no premises as well:

```
------- ⊤F    ------- ⊤I
⊤ prop        ⊤ true
```

Consequently, we gain no information if we know `⊤ true`, so there is no elimination rule.

A conjunction of 2 propositions is characterized by 1 introduction rule with 2 premises, and 2 corresponding elimination rules. We may think of *truth* as a conjunction of 0 propositions. By analogy, it should have 1 introduction rule with 0 premises, and 0 elimination rules.

conjunction
- 2 premises in F rule
- 2 premises in I rule
- 2 E rules

truth (as conjunction of 0 propositions)
- 0 premises in F rule
- 0 premises in I rule
- 0 E rules

### Hypothetical Judgments

Consider the following derivation, for some arbitrary propositions A, B, C:

```
A ∧ (B ∧ C) true
------------------ ∧E₁
B ∧ C true
------------------ ∧E₂
B true
```

We see that all inferences are correct, but the first judgment `A ∧ (B ∧ C)` has not been justified. We can extract the following knowledge: From the assumption that `A ∧ (B ∧ C)` is true, we deduce that `B` must be true.

This is an example of a **hypothetical judgment**, and the figure above is an **hypothetical derivation**.

In general, we may have more than one assumption, so a hypothetical derivation has the form:

```
J₁ … Jₙ
   ⁞
   J
```

where the judgments `Jᵢ` are unproven assumptions, and the judgment `J` is the conclusion. Note that we can always substitute a proof for any hypothesis `Jᵢ` to eliminate the assumption. We call this the *substitution principle for hypotheses*.

Many mistakes in reasoning arise because dependencies on some hidden assumptions are ignored. When we need to be explicit, we write

    J₁, …, Jₙ ⊢ J

for the hypothetical judgment which is established by the hypothetical derivation above. We may refer to `Jᵢ` as the *antecedents* and `J` as the *succedent* of the hypothetical judgment.

We need to remember that hypotheses may be used more than once, or not at all.

With hypothetical judgments, we can now explain the meaning of implication "A implies B", formally `A ⇒ B`. First the **implication formation** rule:

```
A prop   B prop
---------------- ⇒F
A ⇒ B prop
```

The **implication introduction** rule states that `A ⊃ B` is true, if `B` is true under the assumption that `A` is true.

```
  ------ ᵘ
  A true
     ⁞
  B true
----------- ⇒Iᵘ
A ⇒ B true
```

The **implication elimination** rule: by only the introduction rule, having a proof of `A ⊃ B true` means that we have a hypothetical proof of `B true` from `A true`. By the substitution principle, if we also have a proof of `A true` then we get a proof of `B true`.


```
A ⇒ B true   A true
--------------------- ⇒E
        B true
```

### Disjunction

The disjunction "A or B", written `A ∨ B`, is more difficult, but does not require any new judgment forms. Note that **disjunction formation** rule has the same form as conjunction formation rule.

```
A prop   B prop
---------------- ∨F
  A ∨ B prop
```

Disjunction is characterized by two **disjunction introduction** rules: `A ∨ B` is true if either `A` or `B` is true:

```
  A true           B true
---------- ∨I₁   ---------- ∨I₂
A ∨ B true       A ∨ B true
```

**Disjunction elimination** rule says that if we know that `A ∨ B` is true, we must consider two cases: case `A true` and case `B true`. If we can prove a conclusion `C true` in both cases, then `C` must be true:

```
              ------ ᵘ  ------ ʷ
              A true    B true
                 ⁞         ⁞
A ∨ B true    C true    C true
-------------------------------- ∨Eᵘʷ
              C true
```

Note that this uses the mechanism of hypothetical judgments. In the proof of the second premise we may use the assumption `A true` labeled `u`; and in the proof of the third premise we may use the assumption `B true` labeled `w`. Both assumptions are discharged in the conclusion of disjunction elimination rule.

Let us justify the conclusion of this rule more explicitly:
- by the first premise we know `A ∨ B true`
- premises of the two introduction rules are `A true` and `B true`
- in case `A true`, we can conclude `C true` by the substitution principle and the second premise: we substitute the proof of `A true` for any use of the assumption labeled `u` in the hypothetical derivation.
- the case for `B true` is symmetric, using the hypothetical derivation in the third premise.


The disjunction elimination can be elaborated as:

```
                 ------ ᵘ           ------ ʷ
                 A true             B true
                    ⁞                  ⁞
                 C true             C true
              ----------- ⇒Iᵘ    ----------- ⇒Iʷ
A ∨ B true    A ⇒ C true         B ⇒ C true
------------------------------------------------- ∨E
                     C true
```

So, if we have the 3 assumptions: `A ∨ B true`, `A ⇒ C true` and `B ⇒ C true`, we can conclude `C true`.

Alternatively, we can express the disjunction elimination rule succinctly as:

```
A ∨ B true   A ⇒ C true   B ⇒ C true
-------------------------------------- ∨E
               C true
```

### Falsity

Falsity or falsehood, written as `⊥`, and sometimes also called absurdity, is a proposition that should have no proof. Therefore, there are no introduction rules, but we have the **falsity formation** rule.

```
                  ⊥ true
------- ⊥F        -------- ⊥E
⊥ prop            C true
```

The **falsity elimination** rule is justified because there cannot exist a proof of `⊥ true`. It is sound to conclude the truth of any arbitrary proposition `C` if we know `⊥ true`.

We can think of falsehood as a disjunction of 0 propositions. By analogy with disjunction, there are 0 introduction rules, and 1 elimination rule in which we need to consider 0 cases (there is only 1 instead of 3 premises).

From this is might seem that falsehood it useless: we can never prove it. This is correct, except that we might reason from contradictory hypotheses. We'll see some examples when we discuss negation, since we may think of the proposition "not A" (`¬A`) as `A ⊃ ⊥`. In other words, `¬A` is true precisely if the assumption `A true` is contradictory, because we could derive `⊥ true`.

### Notational Definition

The judgments, propositions, and inference rules we have defined so far collectively form a system of *natural deduction*. It is a minor variant of a system introduced by Gentzen in 1935. One of his main motivations for the develpment of natural deduction was to devise a system of logic that could model mathematical reasoning as directly as possible.

So far the meaning of any logical connective has been defined by its introduction rules, from which we derived its elimination rules. The definitions for all the connectives are orthogonal: the rules for any connective do not depend on any other connective, only on the basic judgmental concepts.

Hence the meaning of a compound proposition depends only on the meaning of its constituent propositions. From the point of view of understanding logical connectives this is a critical property: to understand, e.g. disjunction, we only need to understand the introduction rules and not any other connectives.

In classical logic, the introduction rule for "not A" (`¬A`) is:

```
 ------ ᵘ
 A true
    ⁞
 ⊥ true
--------- ¬Iᵘ
¬A true
```

that is, `¬A` is true if the assumption that `A` is true leads to a contradiction.

However, this is not a satisfactory introduction rule, since the premise relies on the meaning of `⊥`, violating the principle of orthogonality among the connectives. There are several approaches to removing this dependency. One is to introduce a new judgment, "A is false", and reason explicitly about truth and falsehood. Another employs schematic judgments, which we'll consider when we introduce universal and existential quantification.

However, we'll pursue a third alternative: for arbitrary proposition `A`, we can think of `¬A` as a syntactic abbreviation for `A ⇒ ⊥`. This is a *notational definition* we write as `¬A := A ⇒ ⊥`.

This notational definition is schematic in the proposition `A`. Implicit here is the **negation formation** rule:

```
 A prop
-------- ¬F
¬A prop
```

We can prove that `A` and `¬A` cannot be true simultaneously, i.e.

```
¬(A ∧ ¬A)
= (A ∧ ¬A) ⇒ ⊥
= (A ∧ (A ⇒ ⊥)) ⇒ ⊥
```

We can also prove that `A ⇒ ¬¬A`, i.e.

```
A ⇒ ¬¬A
A ⇒ ¬A ⇒ ⊥
A ⇒ (A ⇒ ⊥) ⇒ ⊥
```

#### Law of excluded middle

Next we consider `A ∨ ¬A`, the law of excluded middle (LEM) which claims that every proposition is either true or false.

This, however, contradicts our definition of disjunction: we may have evidence neither for the truth of `A`, nor for the falsehood of `A`. Therefore, we cannot expect `A ∨ ¬A` to be true, unless we have more information about `A`.

One has to be careful how to interpret LEM, however. There are many propositions `A` for which it is indeed the case that we know `A ∨ ¬A`. For example, `⊤ ∨ ¬⊤` is clearly true because `⊤ true`. Similarly, `⊥ ∨ ¬⊥` is true because `¬⊥` is true.

At present we do not have the tools to show formally that `A ∨ ¬A` should not be true for arbitrary `A`. A proof attempt with our generic proof strategy (reason from the bottom up with introduction rules, and from the top down with elimination rules) fails quickly, no matter which introduction rule for disjunction we start with. We'll see that this failure is in fact sufficient evidence to know that `A ∨ ¬A` is not true for arbitrary `A`.

### Derived Rules of Inference

One popular device for shortening derivations is to introduce derived rules of
inference. For example, this is a derived rule of inference:

```
A ⊃ B true   B ⊃ C true
-----------------------
     A ⊃ C true
```

A derived rule of inference is nothing but an evident hypothetical judgment; its justification is a hypothetical derivation. We can freely use derived rules in proofs, since any occurrence of such a rule can be expanded by replacing it with its justification.

Another notational definition is logical equivalence "A if and only if B", written `A ⇔ B`, defined as `(A ⇔ B) := (A ⊃ B) ∧ (B ⊃ A)`.

That is, two propositions A and B are logically equivalent if A implies B and B implies A. Under this definition, the following become derived rules of inference. They can also be seen as introduction and elimination rules for logical equivalence (whence their names).

```hs
------ ᵘ   ------ ʷ
A true     B true
   ⁞        ⁞
B true     A true
------------------ ⇔Iᵘʷ
    A ⇔ B true


A ⇔ B true    A true          A ⇔ B true    B true
-------------------- ⇔E₁      -------------------- ⇔E₂
       B true                        A true
```

### Logical Equivalences

- *Associativity*: ∧ and ∨ are associative, ⇒ is not.
  - `A ∧ (B ∧ C) ≡ (A ∧ B) ∧ C`
  - `A ∨ (B ∨ C) ≡ (A ∨ B) ∨ C`
  - `A → (B → C) ≢ (A → B) → C`
  - `A ⇔ (B ⇔ C) ≢ (A ⇔ B) ⇔ C`
- *Commutativity*: ∧ and ∨ are commutative, ⇒ is not.
- *Idempotence*: ∧ and ∨ are idempotent, self-implication reduces to truth
  - `A ∧ A ≡ A`
  - `A ∨ A ≡ A`
  - `A → A ≡ ⊤`

```
p q | ⊥ ↓ ⇍ p | ⇏ q ⊕ ↑| ∧ ≡ q̅ → | p̅ ← ∨ ⊤
0 0 | 0 0 0 0 | 0 0 0 0 | 1 1 1 1 | 1 1 1 1
0 1 | 0 0 0 0 | 1 1 1 1 | 0 0 0 0 | 1 1 1 1
1 0 | 0 0 1 1 | 0 0 1 1 | 0 0 1 1 | 0 0 1 1
1 1 | 0 1 0 1 | 0 1 0 1 | 0 1 0 1 | 0 1 0 1

0000 A ⟘ A ≡ ⊥    1000 A ∧ A ≡ A
0001 A ↓ A ≡ ¬A   1001 A ≡ A ≡ A
0010 A ⇍ A ≡ ⊥    1010 A q̅ A ≡ ¬A
0011 A p A ≡ A    1011 A → A ≡ A

0100 A ⇏ A ≡ ⊥    1100 A p̅ A ≡ ¬A
0101 A q A ≡ A     1101 A ← A ≡ ⊤
0110 A ⊕ A ≡ ¬A   1110 A ∨ A ≡ A
0111 A ↑ A ≡ ¬A    1111 A ⟙ A ≡ ⊤
```

- *Interaction Laws*: these involve two interacting connectives. In principle, there are left and right interaction laws, but because conjunction and disjunction are commutative, some coincide and are not repeated here.
  - (L1)  A ∧ (B ∧ C)    ≡  (A ∧ B) ∧ C true           (assoc)
  - (L2)  A ∧ ⊤          ≡  A true                     (id)
  - (L3) (A ∧ (B ⊃ C))   →  ((A ∧ B) ⇒ (A ∧ C))        [one-sided]
  - (L4)  A ∧ (B ∨ C)    ≡  (A ∧ B) ∨ (A ∧ C) true     (distr)
  - (L5)  A ∧ ⊥          ≡  ⊥ true                     (dominance)
  - (L6)  A ∨ (B ∧ C)    ≡  (A ∨ B) ∧ (A ∨ C) true     (distr)
  - (L7)  A ∨ ⊤          ≡  ⊤ true                     (dominance)
  - (L8)  A ∨ (B ⊃ C)    ≡  (A ∨ B) ⇒ (A ∨ C)          [distr]
  - (L9)  A ∨ (B ∨ C)    ≡  (A ∨ B) ∨ C true           (assoc)
  - (L10) A ∨ ⊥          ≡  A true                     (id)
  - (L11) A ⊃ (B ∧ C)    ≡  (A ⊃ B) ∧ (A ⊃ C) true     (distr)
  - (L12) A ⊃ ⊤          ≡  ⊤ true                     (dominance)
  - (L13) A ⊃ (B ⊃ C)    ≡  (A ∧ B) ⊃ C true           (currying)
  - (L14) (A ⊃ (B ∨ C))  ≡  ((A ⊃ B) ∨ (A ⊃ C))        [distr]
  - (L15) A ⊃ ⊥             (do not interact)          [negation]
  - (L16) (A ∧ B) ⊃ C    ≡  A ⊃ (B ⊃ C) true           (distr)
  - (L17) ⊤ ⊃ C          ≡  C true                     (id)
  - (L18) ((A → B) → C)  →  ((A → C) → (B → C))        [one-sided]
  - (L19) (A ∨ B) ⊃ C    ≡  (A ⊃ C) ∧ (B ⊃ C) true     (distr)
  - (L20) ⊥ ⊃ C          ≡  ⊤ true                     (dominance)
