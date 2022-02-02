# Skolem normal form

https://en.wikipedia.org/wiki/Skolem_normal_form

In mathematical logic, a FOL formula is in Skolem normal form if it is in *prenex normal form* with only *universal first-order quantifiers*.

Every first-order formula may be converted into Skolem normal form while not changing its *satisfiability* via the process of Skolemization. The resulting formula is not necessarily equivalent to the original one, but is *equisatisfiable* with it: it is satisfiable iff the original is.

Reduction to Skolem normal form is a method for removing existential quantifiers from formal logic statements, often performed as the first step in an automated theorem prover.

## Skolemization

The simplest form of *Skolemization* is for existentially quantified variables that are not inside the scope of a universal quantifier. Such variable may be substituted with a newly created constant. For example, `∃x.P(x)` may be changed to `P(c)`, with `c` as a fresh constant symbol.

∃x.P(x) ~~> P(c) if c ∉ FV(x)
