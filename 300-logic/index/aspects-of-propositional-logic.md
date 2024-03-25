# Aspects of propositional logic

- inference rules
- replacement rules
  - identities
- laws and principles
  - bivalence
  - LNC
  - LEM
- proofs
  - direct proof
  - indirect proof
- properties
  - consistency
  - soundness
  - completeness

## Inference rules

- Modus Ponens (MP)
p → q, p ⊢ q
Modus Tolens (MT)
p → q, ¬q ⊢ ¬p
Constructive Dilemma (CD)
p → q, r → s, p ∨ r ⊢ q ∨ s
Destructive Dilemma (DD)
p → q, r → s, ¬q ∨ ¬s ⊢ ¬p ∨ ¬r
Disjunctive Syllogism (DS)
p ∨ q, ¬p ⊢ q
Hypothetical Syllogism (HS)
p → q, q → r ⊢ p → r
Conjunction (Conj)
p, q ⊢ p ∧ q
Simplification (Simp)
p ∨ q ⊢ p
Addition (Add)
p ⊢ p ∨ q
