# Complemented lattice

https://en.wikipedia.org/wiki/Complemented_lattice

## Complementation

The goal of lattice theory is to axiomize Set algebra and Boolean logic.

On the way toward Boolean algebra (BA) we have started with semilattices (assoc, comm, idempotence), then defined lattices (assoc, comm, idempotence, absorption), but there is still a concept that is missing to arrive at BA - that of **complementation**.

- In set algebra, the subset `A ⊆ X` has a set complement `X ∖ A`.
- In Boolean algebra, a boolean variable `p` can be negated to get `¬p`.

If `(B, ∨, ∧)` is a bounded distributive lattice. Let `()' : B → B` be a unary operation, called **complementation**. Then `(B, ∨, ∧')` is a Boolean algebra if the following additional axiom is satisfied by the operations:

7. Complements:

    ∀x ∈ B. x ∨ x' = 1
    ∀x ∈ B. x ∧ x' = 0

That is, an elem and its complement give the *identity* wrt to the binop 
(id of ∨ is 0, id of ∧ is 1). Complements are similar to inverses.


As alluded to earlier, set algebras and Boolean logic are Boolean algebras. 

*Divisor lattices* `[n]` are Boolean algebra iff `n` is *square-free*, in which case `d' = n/d`.

In the case where `n` is not square-free, let `p` be a *repeated prime*. Two elements will have a gcd of 1 only if they are coprime. But if a divisor of `n` is divisible by `p`, but not the maximal power of `p`, then lcm with this element and something coprime to it will NOT give n.

For example, n=24 has only two divisors coprime to d=2, namely e = 1,3, but neither lcm(2,3)=6 ≠ 24 ≠ 2 = lcm(2,1). Thus, 2 has no complement in `[n]`.
