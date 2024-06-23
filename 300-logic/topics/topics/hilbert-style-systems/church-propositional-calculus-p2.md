# Church's Propositional Calculus P₂

Here is Church's well known Hilbert-style system for propositional logic. It is in the axiomatic style of Euclid as made rigorous by Hilbert.

Rules of Inference:

```hs
A  A → B
-------- MP
   B

   A
-------- Substitution
A[B/x]

------- propositional variable
   x
```

Axioms:
1. p → (q → p)
2. (s → (p → q)) → ((s → p) → (s → q))
3. (¬p → ¬q) → (q → p)



A **proof** is a finite sequence of formulas `F1, F2, ..., Fn` such that each `Fi` is an axiom or follows from previous formulas by a rule of inference.
