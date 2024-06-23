# 1. Introduction to Logic
(Type Theory and Functional Programming, Simon Thompson, 1999)

Logic is the science of argument. The purposes of formalization of logical systems are manifold. The formalization gives a clear characterisation of the valid proofs in the system, against which we can judge individual arguments, so sharpening our understanding of informal reasoning. If the arguments are themselves about formal systems, as is the case when we verify the correctness of computer programs, the argument itself should be written in a form which can be checked for correctness. This can only be done if the argument is formalized, and correctness can be checked mechanically. As well as looking at the correctness or otherwise of individual proofs in a formal theory, we can study its properties as a whole. We can investigate its expressive strength, relative to other theories, or to some sort of meaning or semantics for it. This work, which is predominantly mathematical in nature, is called mathematical logic. Our aim is to provide a formal system in which arguments for the validity of particular sentences can be expressed. There are a number of different styles of logical system, but we look at natural deduction systems for propositional and predicate logic.

## 1.1 Propositional Logic

Propositional logic formalises arguments which involve the connectives (∧∨⇒¬). Using these connectives we build *complex propositions* starting from the *propositional variables* or *atomic propositions*.

The syntax is given formally by stating that a formula is either
- a *propositional variable* x,y,z,…
- a *compound formula* of the form (where `A` and `B` are metavariables):   
  `A ∧ B`, `A ∨ B`, `A ⇒ B`, `A ⇔ B`, `¬A`, `⊥`

There are two parts to the description of a logical system. We have just introduced the language in which the assertions or propositions are written, we must now describe what are the valid arguments. The *valid arguments* are called the *proofs* or *derivations* of the system. The general form of an *argument* is to infer a conclusion on the basis of some (possibly none) *assumptions*. Larger derivations are built inductively from the smaller ones by the application of *deduction rules*.

The simplest derivations are introduced by **the rule of assumption**, which states that any formula `A` can be derived from the assumption of `A` itself.

Deduction rules (i.e. rules of inference)
- Assumption rule, ASS
- ∧ Introduction, ∧I
- ∧ Elimination, ∧E₁, ∧E₂
- ⇒ Introduction, ⇒I
- ⇒ Elimination, ⇒E
- ∨ Introduction, ∨I₁, ∨I₂
- ∨ Elimination, ∨E
- ⊥Elimination, ⊥E
+ negation is defined by          `¬A  ≝  A ⇒ ⊥`
+ biconditional is defined by `A ⇔ B  ≝  A ⇒ B ⋀ B ⇒ A`


The system introduced above is *intuitionistic* or *constructive*. Such systems form the main focus of this book, but it is worth remarking on the means by which we extend the system to a classical one.

Classical logic is based on a truth-functional theory of meaning, in which every proposition is considered to be either true or false.

This means that it is a general truth that for every proposition `A`, `A ∨ ¬A` is true, i.e. *the law of the excluded middle* is admitted. We can put it in the form of a rule with no hypotheses:

```
------- (LEM)
A ∨ ¬A
```

Alternative rules which characterise classical logic (as an extension of the intuitionistic logic above) are *the rule of double negation*,

```
¬¬A
------- (DN)
A
```

and the (classical) rule of *proof by contradiction*:

```
[¬A]   [¬A]
  ⋮      ⋮
  B     ¬B
------------ (CC)
     A
```


## 1.2 Predicate Logic




### 1.2.1 Variables and substitution


### 1.2.2 Quantifier rules
