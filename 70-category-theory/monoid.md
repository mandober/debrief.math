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
