# Structural rule

https://en.wikipedia.org/wiki/Structural_rule

<!-- TOC -->

- [Structural rules](#structural-rules)
- [Sequent calculus](#sequent-calculus)
- [Weakening](#weakening)
- [Contraction](#contraction)
- [Exchange](#exchange)
- [The cut rule](#the-cut-rule)
- [Substructural type systems](#substructural-type-systems)
- [Refs](#refs)

<!-- /TOC -->

## Structural rules

In proof theory, a **structural rule** is an inference rule that doesn't refer to any logical content (proposition, connective, etc.), but instead operates on the structure of the proof and deduction system, directly manipulating judgments or sequents. Structural rules often mimic intended meta-theoretic properties of the logic.

Common structural rules include
- exchange    (EXC)
- contraction (CNT)
- weakening   (WEA)
- identity    (IDE)
- cut rule    (CUT)

Logics that place restrictions on structural rules are called substructural logics. These include:
- linear logic: each proposition must be used exactly once (= 1)
- affine logic: each proposition may be used at most once  (< 1)
- relevant logic (relevance logic)
- strict logic
- separation logic
- bunched logic
- ordered logic


## Sequent calculus

Structural rules are usually expressed in the framework of sequent calculus. Sequent calculus consists of any number of formulas, on both sides, that are separated with the turnstile. The turnstile signifies entailment, meaning that all of left-hand side formulas need to hold in order for at least one of the right-hand side formulas to be true.

```js
A, B, C |- P, Q, R
// means
(A ⋀ B ⋀ C) --> (P ⋁ Q ⋁ R)
```

Both sides consists of a comma-separated list of formulas, but the commas on the left side are to be interpreted as conjunctions, while the commas on the right side as disjunctions.

`Γ |- Δ`

The left-hand side of a sequent is called the *antecedent*, and the list of hypothesis therein may be abbreviated by `Γ` (called a context), which will usually accumulate some amount of formulas according to the inference rules.

The right-hand side of a sequent is called the *conseqent*, and it contains the list of conclusions abbreviated by `Δ`. Either side may be called a *cedent*, and the whole thing is a *sequent*.

```js
// a sequent
A, B, C |- P, Q, R

// abbreviated by contexts
Γ |- Δ

// so that e.g.
Γ, A |- Δ, Q
// or
C ∈ Γ, P ∈ Δ
```

In the structural rules to follow, `Γ` stands for an arbitrary list of hypothesis, while the context `Δ` represents an arbitrary list of conclusion. Pointing out an existing formula as well as extending the context with a new formula may be indicated by, e.g. `Γ, A |- Δ`.

The sequant calculus also has the interpretation under natural deduction which allows only a single formula on the right-hand side, i.e. only a single conclusion.

In the setting of sequent calculus, there are numerous rules of inference that state the logical rules on how to introduce and eliminate connectives, but there are also a few structural rules, which are the rules that operate structurally on the sequents themselves.


## Weakening

Weakening, or thinning, is a structural rule that allows the hypotheses or conclusions of a sequent to be extended with additional members.

```js
Γ    ⊢ Δ             Γ ⊢ Δ
--------- WEA₁       --------- WEA₂
Γ, A ⊢ Δ             Γ ⊢ Δ, Q
```

This allows you to introduce a new premise out of the blue, making the proof stronger, but its derivation harder. That new assumption must necessaily hold; it does participates very much because it is AND'ed with others premises.

If you swing the other way, you can also slap in an extra conclusion to make that extra point known (another OR'd conclusion doesn't hurt after all).

*Monotonicity of entailment* is a property of many logical systems in that the hypotheses of any derived fact may be freely extended with additional assumptions. In sequent calculi, the entailment is monotone iff the weakening rule is admissible.

In sequent calculus, under the natural deduction setting (which allows only one formula in the consequent), on the basis of `Γ`, one can prove the conclusion; however, this may be weakened by adding an addition assumption.

Logical systems with this property are occasionally called *monotonic logics* in order to differentiate them from non-monotonic logics.

For example, the syllogism about mortality can be weakened by adding an additional premise that may not even participate toward deriving a conclusion.

However, the validity of the original conclusion is not changed by the addition of a new premise.

```
All men are mortal.
Socrates is a man.
Cows produce milk.
---------------------
∴ Socrates is mortal.
```

In most logics, weakening is either an inference rule or a metatheorem if the logic doesn't admit it as an explicit rule.

Some *non-monotonic logics* include
- linear logic disallows contraction and weakening.
- in relevant and strict logic every hypothesis is necessary for the conclusion.
- bunched implications restrict weakening to additive composition.
- various types of default reasoning
- abductive reasoning derives the most likely explanations acc. to known facts.
- reasoning about knowledge has knowledge retraction as the facts are obtained


[Another-interpretation] of the addition of an extra premise: make it stronk?!

```js
  A ⊢ Q
---------
A, B ⊢ Q
```

The first sequent, `A ⊢ Q`, lets us conclude `Q` provided the hypothesis `A` holds. The second sequent, `A,B ⊢ Q`, lets us derive the same old conclusion `Q` as before, but this time, besides `A`, we need to show that another premise, `B`, holds as well. Therefore, the second sequent is more demanding on us than the first. Because more demand is less easily met, it would seem that the second sequent is, generally, less applicable compared to the first. This might provoke someone to declare that the second sequent is *weaker* than the first. If we have a toolbox of sequents that we use for constructing proofs, we are allowed to force ourselves to use a more demanding sequent.

We are not allowed to replace a weaker sequent with a stronger one (because we'd have to prove why the stronger one holds), but replacing a stronger sequent with a weaker one is allowed. [a.n] Sure, but the issue remains why call the second "weaker", when it is less general, thus more specific, thus sharper, thus very stonk, no? Does "applicable in more situations" entails strenght or weakness?! I tend to align with later… although it could go either way, seemingly.


## Contraction

The rule of contraction states that two equal (or unifiable) members on the same side of a sequent may be replaced by a single member (or common instance). In automated theorem proving systems using resolution, it is known as factoring.

```js
Γ, A, A ⊢ Δ             Γ ⊢ Δ, Q, Q
------------ CNT₁       ------------ CNT₂
Γ, A    ⊢ Δ             Γ ⊢ Δ, Q
```

*Idempotency of entailment* is a property of logical systems that allow you to derive the same conclusion using either one or many instances of the hypothesis. This property is captured by the contraction rule. In systems that admit contraction the entailment is idempotent.

In classical, intuitionistic and constructive logic, the contraction rule allows duplication and deduplication of formulas.


## Exchange

The rule of exchange (permutation, interchange) allows flipping two formulas within the same cedent.

```js
Γ, A, B ⊢ Δ             Γ ⊢ Δ, Q, R
------------ EXC₁       ------------ EXC₂
Γ, B, A ⊢ Δ             Γ ⊢ Δ, R, Q
```

In classical, intuitionistic and constructive logic, weakening allows introducing assumptions from out of nowhere, and contraction allows dropping them.

A logic without any of the above structural rules would interpret the sides of a sequent as pure sequences; with exchange, they are multisets; and with both contraction and exchange they are sets.

## The cut rule

These are not the only possible structural rules. A famous structural rule is known as cut. Considerable effort is spent by proof theorists in showing that cut rules are superfluous in various logics. More precisely, what is shown is that cut is only (in a sense) a tool for abbreviating proofs, and does not add to the theorems that can be proved. The successful 'removal' of cut rules, known as *cut elimination*, is directly related to the *philosophy of computation as normalization* (Curry-Howard correspondence); it often gives a good indication of the complexity of deciding a given logic.

## Substructural type systems

If clauses of a sequent are understood as variables, then we can come up with type systems that are analogous to the above substructural logics:

Affine type systems disallow contraction, which means that variables can be used at most once. In an affine type system, functions such as 
x
⇒
1
 and 
x
⇒
x
 are typable, while functions such as 
x
⇒
x
+
x
 are untypable.
Relevant type systems disallow weakening, which means that variables must be used at least once. In a relevant type system, functions such as 
x
⇒
x
 and 
x
⇒
x
+
x
 are typable, while functions such as 
x
⇒
1
 are untypable.
Linear type systems disallow both contraction and weakening, which means that variables must be used exactly once. In a linear type system, functions such as 
x
⇒
x
 and 
x
⇒
x
+
1
 are typable, while functions such as 
x
⇒
1
 or 
x
⇒
x
+
x
 are untypable.
Ordered type systems disallow contraction, weakening, and exchange. Variables must be used exactly once, and in the order they were declared in.

Affine logic disallows contraction, which means that we cannot add more occurrences of a clause than we already had.
Relevant logic disallows weakening, which means that we cannot leave any clauses unused.
Linear logic disallows contraction and weakening, which means we can neither add more occurrences of a clause than we already had, nor leave any clauses unused.
Ordered logic disallows all three structural rules - contraction, weakening and exchange. We cannot add more occurrences of a clause, we cannot leave a clause unused, and we can't change their order.




## Refs

https://plato.stanford.edu/entries/logic-substructural/

https://ncatlab.org/nlab/show/substructural+logic
https://ncatlab.org/nlab/show/weakening+rule
https://ncatlab.org/nlab/show/contraction+rule
https://ncatlab.org/nlab/show/exchange+rule
https://ncatlab.org/nlab/show/cut+rule

https://en.wikipedia.org/wiki/Structural_proof_theory
https://en.wikipedia.org/wiki/Cut-elimination
https://en.wikipedia.org/wiki/Natural_deduction
https://en.wikipedia.org/wiki/Analytic_proof
https://en.wikipedia.org/wiki/Logical_harmony
https://en.wikipedia.org/wiki/Hypersequent
https://en.wikipedia.org/wiki/Calculus_of_structures
https://en.wikipedia.org/wiki/Nested_sequent_calculus
https://en.wikipedia.org/wiki/Monotonicity_of_entailment
https://en.wikipedia.org/wiki/Substructural_logic


https://en.wikipedia.org/wiki/Linear_logic
https://en.wikipedia.org/wiki/Structural_rule
https://en.wikipedia.org/wiki/Substructural_logic
https://en.wikipedia.org/wiki/Idempotency_of_entailment
https://en.wikipedia.org/wiki/Affine_logic
https://en.wikipedia.org/wiki/Noncommutative_logic
https://en.wikipedia.org/wiki/Cut_rule

* Foundations of Programming Languages:
Linear Logic with Paul Downen at OPLSS 2018
https://www.youtube.com/watch?v=ff-RX6ICKWg

* 2017-03-06 Applications of substructural typing
https://blog.tchatzigiannakis.com/applications-of-substructural-typing/

* 2017-02-06 Structural rules and substructural logics
https://blog.tchatzigiannakis.com/structural-rules-and-substructural-logics/

* blog
https://blog.tchatzigiannakis.com/tags/substructural-types/
