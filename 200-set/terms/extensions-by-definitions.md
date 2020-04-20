# Extensions by definitions

extensions-by-definitions.md

**Extensions by definitions** formalize the introduction of new symbols by means of a definition.

For example, it is common in naive set theory to introduce a symbol $$\varnothing$$ for the set which has no member i.e. empty set.

In the formal setting of first-order theories, this can be done by adding to the theory a new constant $$\varnothing$$ and the new axiom $$\forall x(x\notin \varnothing)$$, meaning "for all x, x is not a member of $$\varnothing$$". Doing this adds essentially nothing to the old theory, as should be expected from a definition - more precisely, the new theory is a conservative extension of the old one.
