# Monotonicity of entailment

https://en.wikipedia.org/wiki/Monotonicity_of_entailment

**Monotonicity of entailment** is a property of many logical systems that states that the hypotheses of any derived fact may be freely extended with additional assumptions.

In sequent calculi this property can be captured by an inference rule called *weakening* (or thinning), and in such systems one may say that entailment is monotone iff the rule is admissible.

Logical systems with this property are occasionally called monotonic logics in order to differentiate them from non-monotonic logics.

## Weakening rule

To illustrate, consider the natural deduction sequent, `Γ ⊢ C`. That is, on the basis of a list of assumptions `Γ`, one can prove `C`. Weakening, by adding an assumption `A`, allows one to conclude `Γ, A ⊢ C`.

```js
// original argument
All men are mortal.
Socrates is a man.
---------------------
∴ Socrates is mortal.

// weakened argument
All men are mortal.
+ Cows produce milk.
Socrates is a man.
---------------------
∴ Socrates is mortal.
```

For example, the syllogism "All men are mortal. Socrates is a man. Therefore Socrates is mortal" can be weakened by adding an extra premise, e.g. "Cows produce milk". The validity of the original conclusion is not changed by the added premise.

## Non-monotonic logics

In most logics, weakening is either an inference rule or a metatheorem if the logic doesn't have an explicit rule. Notable exceptions are:
- Relevant (strict) logic where every hypothesis is necessary for the conclusion
- Linear logic which disallows arbitrary idempotency of entailment.


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
