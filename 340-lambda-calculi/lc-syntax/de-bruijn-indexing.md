# De Bruijn index

https://en.wikipedia.org/wiki/De_Bruijn_index
https://en.wikipedia.org/wiki/De_Bruijn_notation

**De Bruijn indexing** is a method for avoiding naming bound variables in lambda calculus.

The *de Bruijn index* is a methadology, invented by the Dutch mathematician Nicolaas Govert de Bruijn, for representing variables in lambda terms with integers, called *de Bruijn indices*, thus avoiding many complications around their renaming (which must be done to avoid name captures).

Instead of giving arbitrary names to formal parameters, variables are represented using integers. The usual, proliferant, CS convention is to start counting from zero, although some implementation use 1 as the smallest de Bruijn index.


Terms written using these indices are invariant with respect to α-conversion, so the check for α-equivalence is the same as that for syntactic equality.

Each de Bruijn index is a natural number that represents an occurrence of a variable in a λ-term, and denotes the number of binders that are in scope between that occurrence and its corresponding binder.

Examples:
* λx. λy. x ≡ (λ λ 2)
* λx. λy. λz. x z (y z) ≡ λ λ λ 3 1 (2 1)
* λz. (λy. y (λx. x)) (λx. z x) ≡ λ (λ 1 (λ 1)) (λ 2 1)
