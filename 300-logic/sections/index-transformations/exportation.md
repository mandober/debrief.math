# Exportation

https://en.wikipedia.org/wiki/Exportation_(logic)

Exportation is a valid *rule of replacement* in propositional logic. The rule allows conditional statements having conjunctive antecedents to be replaced by statements having conditional consequents and vice versa in logical proofs.

    (p ∧ q) → r ⇔ p → (q → r)

where ⇔ is a metalogical symbol representing "can-be-replaced-with" relation.

* Exportation is associated with **currying** via the *Curry-Howard correspondence*.

The logical conjunction, `a ∧ b`, is translated to to the type theory as product type, and the canonical form of product types is a pair or 2-tuple, i.e. `(a, b)`. In the set theory, this is represented by the Carthesian product between two sets, `A×B`.


```
logic       sets        types
a ∧ b       A×B         (a, b)
a → b                   a -> b

(a ∧ b) -> c <=> a -> (b -> c)
  A × B -> C <=> A -> B -> C
 (a, b) -> c <=> a -> b -> c

f :: (a, b) -> c
g :: a -> b -> c
```


* The exportation rule may be written in sequent notation where the symbol `⊣⊢` replaces `⇔` from above. The symbol `⊣⊢` is a metalogical symbol meaning that the LHS is a syntactic equivalent of the RHS in some logical system.

* The exportation rule may be written in rule form:
```
(p ∧ q) → r            p → (q → r)
-----------            -----------
p → (q → r)            (p ∧ q) → r
```
where the rule is that wherever an instance of one appears on a line of proof, it may be replaced by the instance of the other, and vice versa.

* The exportation rule may be written as the statement of a truth-functional tautology or theorem of propositional logic:   
(p ∧ q) → r ↔ p → (q → r)    
where P, Q, R are propositions expressed in some logical system.


At any time, if `P → Q` is true, it can be replaced by `P → (P ∧ Q)`
- One possible case is when both `P`and `Q` are true; thus `P ∧ Q` is also true, and `P → (P ∧ Q)` is true.
- Another possibility is when P=false and Q=true, then `P ∧ Q` is false and 
`P → (P ∧ Q)` is false, which means the overall expr is true.
- The last case is when both P and Q are false; so, `P ∧ Q` is false and 
`P → (P ∧ Q)` is true.


## Proof

p → (q → r) ==> (p ∧ q) → r

Proposition   | Derivation
--------------|--------------------------------------
p → (q → r)   | Given proposition
¬p ∨ (q → r)  | Material implication, φ → ψ ≡ ¬φ ∨ ψ
¬p ∨ (¬q ∨ r) | Material implication, φ → ψ ≡ ¬φ ∨ ψ
¬p ∨ ¬q ∨ r   | Associativity of ∨
¬(p ∧ q) ∨ r  | De Morgan's law, ¬φ ∨ ¬ψ ≡ ¬(φ ∧ ψ)
(p ∧ q) → r   | Material implication, ¬φ ∨ ψ ≡ φ → ψ
