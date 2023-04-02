# Refinement logic

Gentzen systems permits the conseqnt to host multiple conclusions, which can sometimes lead to confusing proofs where the evidence for the validity of the formula is not obvious. Refinement logic is modification of the Gentzen systems obtained by restricting the consequent to a single conclusion.

Refinement logic has many properties that are interesting for computer use, because it catches the notion of the proof construction in a natural way and can be used to automate the development of formal proofs. Refinement logic is the logic underlying the Nuprl system. Refinement logic is best suited for interactive proof development, constructive reasoning, and can be extended to FOL and HOL and computational type theory.

Refinement logic is a proof calculus that leads to entirely constructive proofs. Refinement logic results from resolving the issues with the Gentzen system. That is, we restrict consequents to a single formula, introduce the constant `⊥` (botton, falsity), and redifine negation as `¬A := A → ⊥` (as a consequence we can also discard the left and right negation rules, which we don't yet do).

Refinement logic calculus is simpler and more focused, but it also shrinks the set of formulas that we can prove.

We can derive the inference rules of refinement logic by dropping the right-hand side context from each sequent that appears as a "right" rule.

For most rules this transformation is straightforward, but there are some which should be mentioned.

In the `→L` rule, we drop `G` from the first subgoal, `H ⊢ A, G`, which then becomes `H ⊢ A`; the second subgoal, `H, B ⊢ G`, stays the same.

```hs
-- AFTER                  -- BEFORE

H, A → B ⊢   G            H, A → B ⊢    G
--------------- →l        ---------------- →L
H        ⊢ A              H        ⊢ A, G
H, B     ⊢   G            H, B     ⊢    G


H, ¬A    ⊢    G           H, ¬A    ⊢    G
--------------- ¬l        ---------------- ¬L
H        ⊢ A              H        ⊢ A, G


```
 