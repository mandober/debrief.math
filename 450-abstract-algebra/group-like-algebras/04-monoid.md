# Monoid

https://en.wikipedia.org/wiki/Monoid

A monoid is an algebraic structure closed under
- a single *associative* binary operation and
- an *identity* element


For example,
the *functions* from a set into itself form a monoid with respect to *function composition*. More generally, in category theory, the morphisms of an object to itself form a monoid, and, conversely, a monoid may be viewed as a *category with a single object*. The set of strings built from a given set of characters is a **free monoid**.

*Transition monoids* and *syntactic monoids* are used in describing finite-state machines. *Trace monoids* and *history monoids* provide a foundation for process calculi and concurrent computing. In theoretical CS, the study of monoids is fundamental for automata theory and formal language theory.


## Definition

If star is a binary operation on a `S` set: $$\star: S \times S \to S$$, then `S` with `⋆` is a monoid if it satisfies the axioms of associativity and identity.

Associativity: 
$$\forall a,b,c \in S\ .\ (a \star b) \star c = a \star (b \star c)$$

Identity: 
$$!\exists e, \forall a\in S\ .\ e \star a = a \star e = a$$

- The monoid is specified by the triple: $$(S,\star,e)$$.
- Its identity element is unique and thus a constant (nullary) operation.
- A monoid is a semigroup with an identity element.
- A monoid is a magma with associativity and identity.
- A monoid in which each element has an inverse is a group.
