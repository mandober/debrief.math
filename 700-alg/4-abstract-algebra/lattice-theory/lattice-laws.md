# Lattice laws

`(L, ∨)` is a *semilattice* if the binary op satisfies these 3 axioms:
1. Associativity: ∀xyz ∈ L. x ∨ (y ∨ z) = (x ∨ y) ∨ z
2. Commutativity:  ∀xy ∈ L. x ∨ y = y ∨ x
3. Idempotency:     ∀x ∈ L. x ∨ x = x

`(L, ∨, ∧)` is a *lattice*  if the binary op satisfies these 4 axioms:
1. Associativity:
   - ∀xyz ∈ L. x ∨ (y ∨ z) = (x ∨ y) ∨ z
   - ∀xyz ∈ L. x ∧ (y ∧ z) = (x ∧ y) ∧ z
2. Commutativity:
   - ∀xy ∈ L. x ∨ y = y ∨ x
   - ∀xy ∈ L. x ∧ y = y ∧ x
3. Idempotency:
   - ∀x ∈ L. x ∨ x = x
   - ∀x ∈ L. x ∧ x = x
4. Absorption:
   - ∀xy ∈ L. x ∨ (x ∧ y) = x
   - ∀xy ∈ L. x ∧ (x ∨ y) = x
