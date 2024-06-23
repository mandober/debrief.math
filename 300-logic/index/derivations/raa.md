# Derivations

## Negation introduction
https://en.wikipedia.org/wiki/Negation_introduction

(P → Q) ∧ (P → ¬Q) → ¬P

```
Step  Proposition             Derivation
1     (P → Q) ∧ (P → ¬Q)      Given
2     (¬P ∨ Q) ∧ (¬P ∨ ¬Q)    Material implication
3     ¬P ∨ (Q ∧ ¬Q)           Distributivity
4     ¬P ∨ F                  Law of non-contradiction
5     ¬P                      Disjunctive syllogism (3,4)
```


## Proof by contradiction

https://en.wikipedia.org/wiki/Proof_by_contradiction

The principle may be formally expressed as the propositional formula `¬¬P ⇒ P`, equivalently `(¬P ⇒ ⊥) ⇒ P`, which reads: if assuming P to be false implies falsehood (bottom, contradiction), then P (must be) is true.

```hs
-- in IL, negation is defined by
¬P := P → ⊥
-- show ¬P by constructing the function P → ⊥
-- ⊥ is the canonical uninhabited type
-- ⊤ is the unit type (paradigm of inhabitation, it has a single term, ⋆ : ⊤)

¬¬P = (P → ⊥) → ⊥
-- = ¬¬P ⇒ P
((P → ⊥) → ⊥) → P


¬¬P ⇒ P
-- assuming ¬P then deriving ⊥, thus P:
(¬P ⇒ ⊥) ⇒ P
-- what about assuming P then deriving ⊥, thus ¬P:
(P ⇒ ⊥) ⇒ ¬P


[¬P]         [P]
  ⁝            ⁝
  ⊥           ⊥
-----       -----
  P          ¬P
```


In *natural deduction*, the principle takes the form of the rule of inference
```
⊢ ¬¬P
-----
⊢ P
```
which reads: if `¬¬P` is proved, then `P` may be concluded.


In *sequent calculus* the principle is expressed by the sequent `Γ,¬¬P ⊢ P, Δ`, which reads: hypotheses `Γ` and `¬¬P` entail the conclusion `P` or `Δ`.

In classical *sequent calculus LK* proof by contradiction is derivable from the inference rules for negation:

```
-------------------- (I)
Γ,   P ⊢      P, Δ
-------------------- (¬R)
Γ      ⊢ ¬P,  P, Δ
-------------------- (¬L)
Γ, ¬¬P ⊢      P, Δ
```


https://en.wikipedia.org/wiki/Contradiction
https://en.wikipedia.org/wiki/Double_negation
https://en.wikipedia.org/wiki/Exportation_(logic)
https://en.wikipedia.org/wiki/Frege%27s_theorem
https://en.wikipedia.org/wiki/Import%E2%80%93export_(logic)
https://en.wikipedia.org/wiki/Law_of_excluded_middle
https://en.wikipedia.org/wiki/Law_of_noncontradiction
https://en.wikipedia.org/wiki/Material_implication_(rule_of_inference)
https://en.wikipedia.org/wiki/Metalogic
https://en.wikipedia.org/wiki/Modus_non_excipiens
https://en.wikipedia.org/wiki/Monotonicity_of_entailment
https://en.wikipedia.org/wiki/Nicod%27s_axiom
https://en.wikipedia.org/wiki/Principle_of_explosion
https://en.wikipedia.org/wiki/Proof_by_contradiction
https://en.wikipedia.org/wiki/Propositional_calculus
https://en.wikipedia.org/wiki/Rule_of_inference
https://en.wikipedia.org/wiki/Rule_of_replacement
https://en.wikipedia.org/wiki/Sequent_calculus
https://en.wikipedia.org/wiki/Transposition_(logic)
