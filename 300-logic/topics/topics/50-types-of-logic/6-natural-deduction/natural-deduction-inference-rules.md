# Natural deduction inference rules

## Overview

Formation, introduction and elimination rules in natural deduction for logical connectives (conjunction, disjunction, implication, negation), logical constants (true, false), quantifiers (universal, existential).

Connective  | Formation | Introduction | Elimination
------------|-----------|--------------|-------------
Conjunction | ∧         | ∧I           | ∧E₁ ∧E₂
Disjunction | ∨         | ∨I₁ ∨I₂      | ∨E
Implication | →         | →I           | →E
Negation    | ¬         | ¬I           | ¬E
True        | ⊤         | ⊤I           | -
False       | ⊥         | -            | ⊥E
Forall      | ∀         | ∀I           | ∀E
Exists      | ∃         | ∃I           | ∃E, ∄


## Formation rules

The judgment `A prop` defines the structure of valid proofs of `A`, which in turn defines the structure of propositions. For this reason, the inference rules for this judgment are known as *formation rules*.

## Introduction rules

Now we discuss the `A true` judgment. Inference rules that introduce a logical connective *in the conclusion* are known as introduction rules.

For example, to introduce a conjunction, i.e. to conclude that "A and B true", for some propositions A and B, one requires the evidence that both "A true" and "B true".

In the nullary case for truth (`⟙`), one can derive truth from no premises. However, in the nullary case for falsehood (`⟘`), there are no introduction rules: you can never infer falsehood from simpler judgments.

## Elimination rules

Elimination rules describe how to deconstruct information about a compound proposition into information about its constituents.
