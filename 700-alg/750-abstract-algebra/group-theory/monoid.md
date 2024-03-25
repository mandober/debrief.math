# Monoid

https://en.wikipedia.org/wiki/Monoid

In abstract algebra, a **monoid** is an algebraic structure, `M = (S, ε, •)`, consisting of a carrier (underlying) set that has a single distinguished element `ϵ` (aka the identity or unit element), endowed with an associative binary operation that is closed over the set `S`.

Thus, monoids satisfy the axioms of closure, associativity and identity. A magma is an algebraic structure that satisfies the closure axiom. A semigroup is an associative magma, and a monoid is a semigroup with identity.

The new property that monoids bring to the table is the *identity* or *unit* or *neutral* element and the corresponding axiom of identity. The identity `ε` is the unique, distinguished element of the carrier set `S` that acts as a unit with regard to the binary operation. The corresponding axiom of identity states that combining any element `a` with `ε` on either side, yields back `a`, i.e. `ε` acts as a neutral element - it has no effect on other elements. This is expressed by:

>∃!ϵ ∈ S. ∀a ∈ S. ϵ • a = a = a • ϵ

that is, there exists a unique element `ϵ` in `S`, such that for all elements `a` in `S`, combining `a` with `ϵ` - either on the left or on the right side - yields back `a` unchanged.

Note that the formula starts with the (unique) existential quantification in scope of which is the universal quantification, meaning that the identity element `ϵ` is the same with regards to all elements `a` (as opposed to each element `a` having its own id element - forshadowing the inverse elements in groups).



A monoid is an algebraic structure M = (S, •, ε)
closed under
- a single *associative* binary operation and
- an *identity* element


For example,
the *functions* from a set into itself form a monoid with respect to *function composition*.

More generally, in category theory, the morphisms of an object to itself form a monoid, and, conversely, a monoid may be viewed as a *category with a single object*.

The set of strings built from a given set of characters is a **free monoid**.

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


# Monoid

In abstract algebra, a monoid is an algebraic structure with a single associative binary operation and an identity element.

Algebraic structures
  - Monoid:
    - one binary operation
    - associativity
    - totality (closure)
    - identity


Monoid is a semigroup with an identity.

For example, collection of all functions from a set into itself, form a monoid with respect to function composition. Function composition is the associative, total, binary operation: function composition is always associative; it is total as it produces new elements that are (still) functions, i.e. new elements remain of the same type, that is, the composition of two functions gives the new function (element) that is also a function (an element in that same set).

More generally, in category theory, the morphisms of an object to itself form a monoid, and, conversely, a monoid may be viewed as a category with a single object.


In CS, the set of strings built from a given set of characters is a **free monoid**.

*Transition monoids* and *syntactic monoids* are used in describing finite-state machines. *Trace monoids* and *history monoids* provide a foundation for process calculi and concurrent computing. In theoretical CS, the study of monoids is fundamental for automata theory (Krohn–Rhodes theory), and formal language theory (star height problem).



## Ref

https://en.wikipedia.org/wiki/Monoid
https://en.wikipedia.org/wiki/Identity_element
https://en.wikipedia.org/wiki/Binary_operation
https://en.wikipedia.org/wiki/Associative
https://en.wikipedia.org/wiki/Associative_property
https://en.wikipedia.org/wiki/monoid%20factorisation
https://en.wikipedia.org/wiki/Monoid_(category_theory)

https://en.wikipedia.org/wiki/Free_monoid
https://en.wikipedia.org/wiki/Trace_monoid (process calculi)
https://en.wikipedia.org/wiki/History_monoid (process calculi) (aka free partially commutative monoid)
https://en.wikipedia.org/wiki/Syntactic_monoid

https://en.wikipedia.org/wiki/Semigroup_action
https://en.wikipedia.org/wiki/Prefix_sum

https://www.youtube.com/watch?v=qOoQOJcjD2E&list=PLg8ZEeSiXsjgoQJzRcq60GjK0UrkMsA3-

free-monoid.md
