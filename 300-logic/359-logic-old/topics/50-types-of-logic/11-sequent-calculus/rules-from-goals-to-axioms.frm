# From theorems to axioms, Th2Ax

- Rules for bottom-up deduction, from the goal (theorem) to axioms, `Th2Ax`
- These rules are for deconstructing sequents
- they decompose a complex formula to its atomic parts
- that, hopefully, end in the axiom, thereby proving the sequent
- All the rules go from 0 (`Ax`) or 1 sequent to 1 or 2 sequents
- The rules that produce 2 sequents: `R∧`, `L∨`, `L→`

```hs
-- LEFT LOGICAL RULES                  RIGHT LOGICAL RULES

Γ,¬A ⊢ Δ                               Γ ⊢ ¬A, Δ
--------- L¬                           ----------- R¬
Γ ⊢ A, Δ                               Γ, A ⊢ Δ


Γ, A ∧ B ⊢ Δ                           Γ ⊢ A ∧ B, Δ
-------------- L∧                      --------------------- R∧
Γ, A, B ⊢ Δ                            Γ ⊢ A, Δ    Γ ⊢ B, Δ


Γ, A ∨ B ⊢ Δ                           Γ ⊢ A ∨ B, Δ
--------------------- L∨               -------------- R∨
Γ, A ⊢ Δ    Γ, B ⊢ Δ                   Γ ⊢ A, B, Δ


Γ, A → B ⊢ Δ                           Γ ⊢ A → B, Δ
--------------------- L→               -------------- R→
Γ ⊢ A, Δ    Γ, B ⊢ Δ                   Γ, A ⊢ B, Δ


------------ Ax
Γ, A ⊢ A, Δ
```

These rules are for deconstructing the initial sequent, called the goal. The rules are repeatedly applied, first to the consequent, and then to the antecedents, until all the formulas are decomposed into their atomic parts. At that time, we attempt to apply the Axiom I to all the produced sequents (there may be many branches), and if it can be successfully applied, we have proved the initial sequent. The Axiom I is successfully applied if there is a variable on both sides of a sequent, e.g. `Γ, p ⊢ p, Δ` would do.

## Example: p → q, q → r ⊢ p → r

For example, to prove `p → q, q → r ⊢ p → r`, we start with that theorem as the bottom sequent and work our way upwards, toward the axioms.

```hs
----------- (r) ----------- (p,r) ------------ (q) -------------- (p)
q, r, p ⊢ r     r, p ⊢ r, p        q, p ⊢ r, q       p ⊢ r, q, p
---------------------------- L→   ------------------------------- L→
     p → q, r, p ⊢ r                       p → q, p ⊢ r, q
----------------------------------------------------------------- L→
                      p → q, q → r, p ⊢ r
                   ------------------------ R→
                     p → q, q → r ⊢ p → r


-- or less noisy by skipping the redundant axioms for p and r (p,r):

                       ------------ Ax (q) ------------ Ax (p)
                       q, p ⊢ r, q         p ⊢ r, q, p
--------------- Ax (r) -------------------------------- L→
p → q, r, p ⊢ r        p → q, p ⊢ r, q
----------------------------------------- L→
p → q, q → r, p ⊢ r
------------------------ R→
p → q, q → r ⊢ p → r
```

How would we go about deconstructing this sequent? Here, we only have implications, and the thing to note is that an implication on the left branches into 2 sequents, while an implication on the right does not, i.e. it returns one sequent. It doesn't matter what side we deconstruct first, but in order to minimize noise, we should first deal with right side.

An implication on the right-side, `⊢ A → B`, is (classically) just `⊢ ¬A ∨ B`, so when we move `¬A` to the other side we get a neat sequent `A ⊢ B`. This shows that the `R→` rule is practically redundant (in a classical setting).

An implication on the left-side, `A → B ⊢`, is more complicated. If rewriten as `¬A ∨ B ⊢`, we get a disjunction on the left, conjunction-friendly, side. This means we cannot move parts of this disjunction, we have to treat this formula as a whole.

Semantically, a disjunction, `A ∨ B ⊢ C`, means that, in order to prove `C`, we have to do two subproofs: one where we assume `A` and try to get a `C`, and another where we assume `B` and try to get a `C`. If we manage to show `C` in both subproofs, then we can derive `C` from the disjunction `A ∨ B`.

```hs
          [A]    [B]
           ⫶       ⫶
A ∨ B      C      C
--------------------- ∨E
        C
```

This implies that an implication `Γ, A → B ⊢ Δ` in the antecedent branches into two sequents, as the rule indeed states. Both subsequents retain the same contexts (`Γ` and `Δ`), with the premise, `A`, and the conclusion, `B`, split among them: the premise `A` changes the side, going from the conjunctive (left) to the disjunctive (right) side of the sequent, `Γ ⊢ A, Δ`, while the conclusion `B` remains on the left side, `Γ, B ⊢ Δ`.

The premise `A` flips the side because (classically) the implication on the left is `¬A ∨ B`, so the natural deduction treatment of a disjunction requiring two subproofs is actually:

```hs
          [¬A]    [B]
            ⫶       ⫶
¬A ∨ B      C      C
--------------------- ∨E
        C
```

So we split the sequent with the disjunction on the left into two subsequents, 
`Γ, ¬A ⊢ Δ` and `Γ, B ⊢ Δ`, and then we eliminate the nagation by moving `A` to the other side, thereby getting these two sequents `Γ ⊢ A, Δ`, and `Γ, B ⊢ Δ`.

In brief, the disjunction on the left (conjunctive) side splits the sequent in two as does the conjunction on the right (disjunctive) side. And we can consider an implication on the left in terms of disjunction (on the left). These then give exactly the 3 rules which cause branching, `R∧`, `L∨`, `L→`.
