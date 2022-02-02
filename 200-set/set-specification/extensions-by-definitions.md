# Extensions by definitions

https://en.wikipedia.org/wiki/Extension_by_definitions

In mathematical logic, particularly in the proof theory of first-order theories, **extensions by definitions** formalize the introduction of new symbols by means of a definition.

For example, it is common in a naive set theory to introduce the symbol `∅` for the empty set. In the formal setting of first-order theories, this can be done by adding to the theory a new constant `∅` and a new axiom `∀x(x ∉ ∅)`, meaning "for all objects `x`, `x` is not a member of `∅`". However, it can then be proved that doing so adds essentially nothing to the old theory, as should be expected from a definition; more precisely, the new theory is a *conservative extension* of the old one.
