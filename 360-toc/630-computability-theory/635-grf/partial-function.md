# Partial function

https://en.wikipedia.org/wiki/Partial_function

A **partial function** is a function that is not defined over its entire domain. Some elements in the domain are not associated to any elements in the codomain.

Total functions (or just functions) are characterized by the two properties of which the first one is the most fundamental and unbreakable: an element of the domain must be associated to at most one element of the codomain. In fact, for total functions, the two properties are rolled into this requirement: each element of the domain must be associated to exactly one element of the codomain.

For total functions:
1. *All* domain elements must participate in the relation.
2. Each domain element must be associated to *exactly one* codomain element.

For partial functions:
1. *Most* domain elements must participate in the relation.
2. Each domain element must be associated to *at most one* codomain element.

By order of importance, the second requirement, *uniquness* (or *functional* property), is the essential one; it is the one that's required for a relation is to be called a function. It guarantees that a domain element (if it participates in the relation) cannot be associated to more then one codomain element as that would absolutely break the function contract. The other requirement, *the serial property* that forces all domain elements to participate in the relation, when relaxed, gives rise to partial functions in which some domain elements are relieved from that obligation. In order to cover both total and partial possibilities, we say that *each domain element* must be associated to *at most one* codomain element; this permits domain elements to be associated with either one or zero codomain elements.

In another view of partiality, a partial function from a set `X` to a set `Y`, `f : X -> Y`, induces a total function from a subset, `S ⊆ X`, such that `S` contains all the domain elements for which `f` is defined, `f' : S -> Y`.

The subset `S` (domain of `f'`) is called **the domain of definition** of the original, partial, function `f`.

If a function's domain is equal to its domain of definition then the function is total. If `S` equals `X`, then `f` is actually a total function (and `f=f'`).


In terms of relations, a partial function is a binary relation over two sets that associates every element of the domain to *at most one* element of the codomain; it is thus a *functional binary relation*. It generalizes the concept of a total function by not requiring every element of domain to participate in the relation (by being associated to exactly one element of the codomain).

A partial function is often used when its exact *domain of definition* is not known or difficult to specify. This is the case in calculus, where, for example, the quotient of two functions is a partial function whose domain of definition cannot contain the zeros of the denominator. For this reason, in calculus, and more generally in mathematical analysis, a partial function is generally called simply a function. In computability theory, General Recursive Functions are partial functions over ℕ; for many of them no algorithm can exist for deciding whether they are in fact total.
