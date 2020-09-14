# Disjunction introduction

https://en.wikipedia.org/wiki/Disjunction_introduction

**Disjunction introduction** or **addition** is a *rule of inference* of propositional logic and almost every other deduction system that makes it possible to introduce disjunctions to logical proofs.

┌─────────────────────────┐
│    p           q        │
│  ----- ∨IL   ----- ∨IR  │
│  p ∨ q       p ∨ q      │
└─────────────────────────┘

It is the inference that if P is true, then P or Q must be true. It codifies the fact that, if we know that a proposition is true, then we can put it in disjuntion with anything at all, and the resulting formula will still be true (becasue a disjunction is true whenever at least one of its two operands is true).



An example in English:

```
Socrates is a man (p)
Therefore, Socrates is a man (p)
OR
pigs are flying in formation over the English Channel (q)
```

Disjunction introduction is formally expressed as:

    p           q
------- ∨IL -------- ∨IR
∴ p ∨ q     ∴ p ∨ q

the rule says that whenever instances of `p` appear on lines of a proof, `p ∨ q` can be placed on a subsequent line.

Disjunction has two introduction rules becasue there are two disjuncts: `∧IL` marks the OR-introduction of the new operand such that the original operand is the left disjunct. Similarly with `∨IR`. This is an example of a strict rigor that doesn't rely on the commutativity of disjunction (it stands to be proved), but explicitly indicates which place should the original variable take in the newly formed disjunction.

The disjunction introduction rule may be written in sequent notation:    
`P |- P ∨ Q`

where the turnstile is a metalogical symbol meaning that (P ∨ Q) is a syntactic consequence of P in logical system that recognize this rule.

Expressed as a *truth-functional tautology* or theorem of propositional logic:    
`P → (P ∨ Q)`

where P and Q are propositions expressed in some formal system.




More generally, disjunction introduction is also a simple valid *argument form*. This is becasue any rule of inference should also provide for an immediate inference, as it has a single proposition in its premises; so if the premise is true, then the conclusion is also true.

Disjunction introduction is not a rule in some paraconsistent logics because in combination with other rules of logic, it leads to explosion, i.e. everything becomes provable.
