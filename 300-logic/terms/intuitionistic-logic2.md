# Intuitionistic logic

The version of intuitionistic logic presented here is based on natural deduction, and specially emphasises the *contraction* and *weakening* rules, which are the key to understanding linear logic.

A *proposition* is built up from propositional constants using the combining forms implies (->), and (⨉), or (+). Let `A,B,C` range over propositions, and `X` range over propositional constants, then the grammar of propositions is as follows:

> A,B,C := X | A -> B | A ⨉ B | A + B

An *assumption* is a sequence of zero or more propositions. Let `Γ, ∆, Θ` range over assumptions.

A *judgement* has the form `Γ |- A`, meaning that from assumptions `Γ` one can conclude proposition `A`.

An *inference rule* consists of zero or more judgements written above a line, and one judgement written below. If all the judgements above the line are derivable, then the judgement below is also derivable.

Therefore, there are 3 different levels of implication: `->` in a proposition, `|-` in a judgement, and the horizontal line in an inference rule.

```
------ Id
A ⊢ A


Γ, ∆ ⊢ A               Γ, A, A ⊢ B                   Γ ⊢ B
---------- Exchange    ------------ Contraction     -------- Weakening
∆, Γ ⊢ A                 Γ, A ⊢ B                   Γ, A ⊢ B


Γ, A ⊢ B            Γ ⊢ A -> B     ∆ ⊢ A
----------- ->I    ---------------------- ->E
Γ ⊢ A -> B                Γ, ∆ ⊢ B


Γ ⊢ A     ∆ ⊢ B          Γ ⊢ A ⨉ B     ∆, A, B ⊢ C
----------------- ⨉I    -------------------------- ⨉E
  Γ, ∆ ⊢ A ⨉ B                   Γ, ∆ ⊢ C


  Γ ⊢ A             Γ ⊢ B           Γ ⊢ A + B   ∆, A ⊢ C   ∆, B ⊢ C
---------- +I₁   ---------- +I₂     ------------------------------- +E
Γ ⊢ A + B         Γ ⊢ A + B                     Γ, ∆ ⊢ C
```

Groups of inference rules:
* *Axioms*
  - `Id` is the only rule with no judgements above the line. This rule expresses tautology: from hypotheses `A` one can deduce conclusion `A`
* *Structural rules*
  - Exchange expresses that the order of hypotheses is irrelevant
  - Contraction expresses that any hypothesis may be duplicated
  - Weakening expresses that any hypothesis may be discarded
* *Logical rules*
  - introduction and elimination pairs
  - introduction (->I), a judgement ending in a proposition formed with -> appears below the line
  - elimination rule (->E), a judgment ending in a proposition formed with -> appears above the line
  - Similarly for the other logical connectives, ⨉ and +


## Alternative rules for conjunction

```
Γ ⊢ A    Γ ⊢ B          Γ ⊢ A ⨉ B         Γ ⊢ A ⨉ B
---------------- ⨉I    ----------- ⨉E₁   ----------- ⨉E₂
   Γ ⊢ A ⨉ B              Γ ⊢ A              Γ ⊢ B
```

These alt conjunction rules may be derived from the ones above, plus Weakening and Contraction. Furthermore, the old rules may be derived from the new, plus Weakening, Contraction, ->I, and ->E.
