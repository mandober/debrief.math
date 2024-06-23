# Monotonicity of entailment

https://en.wikipedia.org/wiki/Monotonicity_of_entailment

**Monotonicity of entailment** means that adding a new premise to the argument does not affect the already derived conclusion. That is, hypotheses of any derived fact may be freely extended with additional assumptions without pruning the set of already derived facts.

Monotonicity is a property of the *entailment relation* of a logical system. In sequent calculus, this property is captured by the inference rule called *weakening* or *thinning*. We say that the entailment relation is monotone iff this rule is admissible. Logical systems with this property are called *monotonic logics*, as opposed to *non-monotonic logics*.

## Weakening

In sequent calculus form of natural deduction, the rule of weakening is:

```hs
   Γ ⊢ C
------------
Γ, A ⊢ C
```

To illustrate the rule of weakening consider this sequent in natural deduction: `Γ ⊢ C`. That is, on the basis of a list of assumptions `Γ`, one can prove `C`. Weakening, by adding an assumption `A`, allows one to conclude: `Γ, A ⊢ C`.

For example, the syllogism "All men are mortal. Socrates is a man. Therefore Socrates is mortal" can be weakened by adding a premise: "All men are mortal. Socrates is a man. Cows produce milk. Therefore Socrates is mortal". The validity of the original conclusion is not changed by the added premises.

## Non-monotonic logics

Main article: Non-monotonic logic
https://en.wikipedia.org/wiki/Non-monotonic_logic

In most logics, weakening is either an inference rule or a metatheorem if the logic doesn't have an explicit rule. Notable exceptions are:
- *Strict logic* or *relevant logic*, where every hypothesis is necessary for the conclusion.
- *Linear logic* which disallows arbitrary *Idempotency of entailment*.



---

When a sequent `p |- p` is joined with a sequent `q |- q` under `∧I`, their antecedents will be merged (set union), while the resulting consequent becomes the conjunction of `p ⋀ q`, thus producing the resulting sequent `p,q |- p ⋀ q`.

Now, if we immediately eliminate the right conjunct `q` from that sequent, the new sequent's conclusion will contain just `p` but its antecedent will still contain `q` as a premise, `p, q |- p`.

```js
------ AS¹   -------- AS²
p |- p        q |- q
--------------------- ∧I
    p, q |- p ∧ q
--------------------- ∧Eʟ
    p, q |- p
```
