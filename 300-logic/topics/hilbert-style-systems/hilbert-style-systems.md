# Hilbert-style systems

Hilbert-style formalism of a logic system yields a system with axioms preferred over the rules of inference.

One such system has 3 axioms and 1 rule of inference:
- K-axiom, A → (B → A)
- S-axiom, (A → B → C) → (A → B) → A → C
- CP-axiom (contraposition), (¬B → ¬A) → (A → B)
- Modus Ponens rule of inference

## A pool of axioms

Hilbert's Positive Propositional Logic
- A → (B → A)                           (PL1)
- (A → B → C) → (A → B) → A → C         (PL2)
- (A ∧ B) → A                           (PL3)
- (A ∧ B) → B                           (PL4)
- A → (B → (A ∧ B))                     (PL5)
- A → (A ∨ B)                           (PL6)
- B → (A ∨ B)                           (PL7)
- (A → C) → (B → C) → ((A ∨ B) → C)     (PL8) Distributivity
- (A → C) ∧ (B → C) → ((A ∨ B) → C)
- ((A → B) → A) → A                           Pierce's law
- (A ⇔ B) → (A → B)                    (PL9)
- (A ⇔ B) → (B → A)                    (PL10)
- ((A → B) ∧ (B → A)) → (A ⇔ B)        (PL11)
- (A → B) → ((B → A) → (A ⇔ B))               Curryied PL11

Standard PC
- (¬B → ¬A) → (A → B)                   (PC1)

Intuitionist PC
- (P → ¬P) → ¬P                         (IP1)
- ¬P → (P → Q)                          (IP2)

Russell and Whitehead basis for PC
- (P ∧ Q) → P                           (R1)
- Q → (P ∨ Q)                           (R2)
- (P ∨ Q) → (Q ∨ P)                     (R3)
- (Q → R) → ((P ∨ Q) → (P ∨ R))         (R4)


Heyting's actual Intuitionist PC
- HA1: p → (p ∧ p)
- HA2: (p ∧ q) → (q ∧ p)
- HA3: `(p → q) → ((p ∧ r) → (q ∧ r))`
- HA4: `(p → q) → ((q → r) → (p → r))`
       `((p → q) ∧ (q → r)) → (p → r)`
- HA5: q → (p → q)                        (axiom PL1 in disguise)
- HA6: (p ∧ (p → q)) → q
- HA7: p → (p ∨ q)
- HA8: (p ∨ q) → (q ∨ p)
- HA9: `((p → r) ∧ (q → r)) → ((p ∨ q) → r)`
- HA10: `¬p → (p → q)`
- HA11: `((p → q) ∧ (p → ¬q)) → ¬p`

Fitch Calculus
- F1: ¬p → (p → q)            (Same as IP2)
- F2: p ⇔ ¬¬p                (Double Negation)
- F3: ¬(p ∨ q) ⇔ ¬p ∧ ¬q     (DeMorgan)
- F4: ¬(p ∧ q) ⇔ ¬p ∨ ¬q     (DeMorgan)

Johansson Minimal Calculus
- (p → q) → (¬q → ¬p)      (J1)
- ¬(p ∧ ¬p)                   (J2)

Misc axioms
- Axioms of quantification
  QD: ∀x(p → P(x)) → (p → ∀x.P(x))
  Spec: ∀x.P(x) → P(y)
- Peirce's law, ((p → q) → p) → p



## Deriving the complete set of axioms

In a Hilbert-style formalism, a chosen set of axioms is complete, in that it can represent all formulas of (classical) logic, so it begs the question of how would someone go about determining which axioms exactly to pick. For the particular system above, it is evident that the axioms `K` and `S` probably stem from combinatory logic, which remarkably can encode all formulas expresable in lambda calculus using only the `K` and `S` combinators (which are functions that look exactly like the axiom above).

On the other hand, how this set of axioms was originally found was likely a mixture of trial and error, adapting earlier work, and optimizing for the minimal number of axioms. We could try deriving it by first rewriting the K and S as:

A → (Γ → A)

(Γ → A → B) → (Γ → A) → Γ → B

If we ignore the context `Γ`, we get `A → A`, and `(A → B) → (A → B)`, which can be uncurryied into `(A → B) ∧ (A → B)`, i.e. `(A → B) ∧ A → B`. We can think of these as internalizations of the Identity and MP (or Cut) rules:

```hs
------ ID
A ⊢ A

A ⊢ B   ⊢ A
------------ MP
    ⊢ B
```

Adding the context back, gives us internalizations of the above rules with a context:

```hs
--------- ID
Γ, A ⊢ A

Γ, A ⊢ B    Γ ⊢ A
------------------ MP
      Γ ⊢ B
```

The upshot is that we can *encode hypothetical reasoning* by encoding `Γ ⊢ A` as `Γ → A` and then manipulating these with the internal identity and cut "rules". Sure enough, axioms K and S are what is necessary to prove the Deduction Theorem. As a proof relevant perspective on this, axioms K and S correspond to K and S of combinatory logic, and the *Deduction Theorem* corresponds to bracket abstraction (assumption introduction).

If we stop here, we have *positive implicational logic*. If we continue on and keep using our idea of encoding hypothetical reasoning `Γ ⊢ A` by `Γ → A`, then we should look at the rules for `¬`. In the sequent calculus they are:

```hs
Γ, ¬A ⊢ Δ         Γ ⊢ ¬A, Δ
---------- ¬L     ---------- ¬R
Γ ⊢ A, Δ          Γ, A ⊢ Δ
```

Using both of these rules we get

```hs
Γ, ¬B ⊢ ¬A, Δ
-------------- SWAP
Γ, A ⊢ B, Δ
```

This rule has the benefit of not changing the number of conclusions. We can roughly get the original rules by choosing `A` to be something that's provable or `B` something that is refutable.

The first rule for `¬` suggests that we can represent the extra conclusions, `Δ`, via extra negated assumptions in `Γ`.

The third axiom (CP) then doesn't need to deal with the assumptions, since the Deduction Theorem based on the other two axioms means we can add them when we want.

The handwaving done here is whether a rule like SWAP is strong enough as the only rule for negation to derive all classical results (in a context where we also have rules for implication).

We could, for example, take `¬¬A → A` as an axiom instead, but this turns out to be too weak on its own. That this might be the case, you could see by viewing it as an encoding of a rule as we've been doing. That (encoded) rule doesn't give us any way of dealing with singly negated hypotheses or (single) negations in conclusions.

In general, a lot of axioms in Hilbert style systems can be understood as viewing them as **encodings of rules**.

For example, one axiom for disjunction is `(A → C) → (B → C) → (A ∨ B → C)` which we can view as an encoding of the rule

```hs
A ⊢ C   B ⊢ C
--------------- ∨
  A ∨ B ⊢ C
```

The encoding represents `⊢` (entailment), meta-implication (inferece line), and `→` (implication) as a single connective, `→`.

For example, above I said the second axiom encoded the Cut rule, but I could just as well have said it encoded a modus-ponens-with-contexts rule.

https://math.stackexchange.com/questions/2922932/why-do-hilbert-logic-systems-use-the-axioms-that-they-do
