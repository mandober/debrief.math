# Logical equivalences

```

Conjunction
-------------
 p ∧ 0 = 0
 p ∧ 1 = p
-------------
¬p ∧ p = 
¬p ∧ p = 
¬p ∧ 0 = 


Disjunction
-------------
¬p ∨ p = 1
¬p ∨ p = 1






Implication
-------------
 p ⇒ 0 ≡ ¬p
¬p ⇒ 0 ≡  p
 p ⇒ 1 ≡  1
¬p ⇒ 1 ≡  1   redundant
 _ ⇒ 1 ≡  1
-------------
1 ⇒ q ≡ q
0 ⇒ q ≡ 1
0 ⇒ _ ≡ 1
-------------
 p ⇒  p ≡  1
¬p ⇒  p ≡  p
 p ⇒ ¬p ≡ ¬p
¬p ⇒ ¬p ≡  1
-------------------
p ⇒ (q ⇒ p) ≡ p
-------------------
p ⇒ (p ⇒ p) ≡ p

-------------------
p ⇒ p ≡ 1
p ⇒ (p ∨ q) ≡ p              another assumption doesn't change the conclusion
p ⇒ (p ∨ q) ≡ p ⇒ p ⋁ p ⇒ q

p ⇒ (p ∧ q) ≡ p
-------------------




¬p ⇔ p
¬p ⊕ p



¬¬p ≡ p             DNe (classical logic only)
p ≡ ¬¬p             DNi


p → q ≡ ¬p ∨ q
p → q ≡ ¬q → ¬p

¬(p → q) ≡ p ∧ ¬q


¬p → q ≡ p ∨ q

p → ¬q ≡ ¬p ∨ ¬q

p → ¬q ≡ ¬(p ∧ q)

¬(p ∧ q) ≡ ¬p ∨ ¬q
¬(p ∨ q) ≡ ¬p ∧ ¬q

¬¬p ∧ ¬¬q ≡ ¬(¬p ∨ ¬q)

p ∧ q ≡ ¬(¬p ∨ ¬q)

p ∨ q ≡ ¬(p ∧ q)
```
