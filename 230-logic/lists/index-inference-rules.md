# Rules of Inference: Index

Rules of inference (ROI):
- Conjunction
  - ∧I
  - ∧EL
  - ∧ER
- Disjunction
  - ∨I
  - ∨E
  - ∨E
- Implication
  - →I
  - →E (MP)




p   q       p ∧ q        p ∧ q
----- ∧I    ----- ∧ER    ----- ∧E
p ∧ q         p            q


                                [p][i]   [q][i]
p             q          p ∧ q   r        r
----- ∨IL   ----- ∨IR    ---------------------- ∨E[i]
p ∨ q       p ∨ q                  r


 [p]
  ⫶
  q             p   p → q
----- →I        --------- →E (MP)
p → q               q


  p          False          ¬p ⊢ False
----- ID     ----- CTR      ---------- RAA
  p            p                p


¬α = α -> F
- - - - - -
¬F = F -> F
 T = F -> F = (T -> F) -> F

¬T = T -> F
 F = T -> F = (F -> F) -> F  (RAA)

p -> q -> p
p -> q -> q
