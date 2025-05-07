# Distributive lattice

https://en.wikipedia.org/wiki/Distributive_lattice

https://www.youtube.com/watch?v=AEe9Bv3Nx4I&list=PLz7t89zv8Lp0bhatsw5J9eHeQhNdY81kK&index=1

## Distributivity

The goal of lattice theory is to axiomize Set algebra and Boolean logic.

On the way toward Boolean algebra (BA) we have started with semilattices (assoc, comm, idempotence), then defined lattices (assoc, comm, idempotence, absorption), but there is still a concept that is missing to arrive at BA - that of **distributivity**.

We know that `∪` and `∩` distribute in set algebra, so we should also have distributivity here.

A lattice `L` is a **distributive lattice** if the following additional
axiom is satisfied by the binops (in addition to the other axioms):

6. Distributivity

    ∀xyz ∈ L. x ∨ (y ∧ z) = (x ∨ y) ∧ (x ∨ z)
    ∀xyz ∈ L. x ∧ (y ∨ z) = (x ∧ y) ∨ (x ∧ z)

Because of commutativity, it suffices to assume one distributive law (either left-distribution, like above, or right-distribution).

Set algebras, Boolean logic, and divisor lattices are always distributive.

### Example of a non-distributive lattice

Since: a ∧ (b ∨ c) = a ∧ 1 = a ≠ 0 = 0 ∨ 0 = (a ∧ b) ∨ (a ∧ c)

```
      1
    ⟋ │ ⟍
  ⟋   │   ⟍
a     b     c
  ⟍   │   ⟋
    ⟍ │ ⟋
      0

     b ∨ c = 1
a ∧ (b ∨ c) = a ∧ 1 = a

 a ∧ b = 0
           a ∧ c = 0
(a ∧ b) ∨ (a ∧ c) = 0 ∨ 0 = 0

thus
          0 = (a ∧ b) ∨ (a ∧ c)
a ∧ (b ∨ c) ≠ (a ∧ b) ∨ (a ∧ c)
a ∧ (b ∨ c) = a
          0 ≠ a
```

A lattice `L` is *distributive* iff 

    ∀xyz ∈ L. x ∨ (y ∧ z) = (x ∨ y) ∧ (x ∨ z)
    ∀xyz ∈ L. x ∧ (y ∨ z) = (x ∧ y) ∨ (x ∧ z)
