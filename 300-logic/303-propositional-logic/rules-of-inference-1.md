# Rules of inference

Rules of inference for propositional (and syllogistic) logic
- Modus Ponens (MP)
- Modus Tollens (MT)
- Hypothetical Syllogism (HS)
- Disjunctive Syllogism (DS)
- Constructive Dilemma (CD)
- Destructive Dilemma (DD)
- Simplification (SIMP)
- Conjunction (CONJ)
- Addition (ADD)

>can be applied only to whole lines of a proof

```hs
1. Modus Ponens (MP)

p → q
p
------
∴ q

2. Modus Tollens (MT)

p → q
¬q
------
∴ ¬p

3. Hypothetical Syllogism (HS)

p → q
q → r
--------
∴ p → r

4. Disjunctive Syllogism (DS)

p ∨ q
¬p
-----
∴ q

5. Constructive Dilemma (CD)

(p → q) ∧ (r → s)
p ∨ r
-----------------
∴ q ∨ s

6. Destructive Dilemma (DD)

(p → q) ∧ (r → s)
¬q ∨ ¬s
-----------------
∴ ¬p ∨ ¬r

7. Simplification (Simp)

p ∧ q
------
∴ p

8. Conjunction (Conj)

p
q
--------
∴ p ∧ q

9. Addition (Add)

p
--------
∴ p ∨ q
```
