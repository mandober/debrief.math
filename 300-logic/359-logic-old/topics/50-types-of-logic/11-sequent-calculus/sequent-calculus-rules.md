# Sequent calculus :: Rules

## I Axiom

The rule of assumption says that any formula implies itself, `A → A`, which in the context of sequent calculus is represented by the I axiom which states that any formula entails (proves) itself, `A ⊢ A`. When doing proofs by going from axioms to theorems, the I axiom is stated as an inference rule without the additional contexts - as the initial rule in a proof, the left (`Γ`) and right (`Δ`) contexts do not exists yet (or we may as well write them, knowing they are empty). It is only when doing the proofs in the other direction, from theorems to axioms, that the I axiom is stated with the contexts, which may contain additional formulas accumulated along the way.

```hs
------ Ax (Ax2Th)    OR     ------------- Ax (Th2Ax)
A ⊢ A                        Γ, A ⊢ A, Δ
```

The meta-variable `A` in the axiom may be instantiated as any formula, so a proof may begin with atomic variables, e.g. with `A` instantiated to `p`, or more complex formulas, e.g. with with `A` instantiated to `p → (q → p)`, etc.

```hs
------ Ax       ------------- Ax     ------------------------- Ax
p ⊢ p           p → q ⊢ p → q        p → (q → p) ⊢ p → (q → p)



p, q ⊢ q    p, q ⊢ p, q
------------------------ →R
p, p → q ⊢ q
-------------- →L
p → q ⊢ p → q
-------------- →L
p, p → q ⊢ q





------ Ax  ------ Ax
a ⊢ a      b ⊢ b
-----------------
a → b ⊢ a, b



a, b ⊢ a, b

```
