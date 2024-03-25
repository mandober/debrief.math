# Connex relation

https://en.wikipedia.org/wiki/Connex_relation
https://en.wikipedia.org/wiki/Connected_relation

A relation `R` on a set `A` is called **connected or total** if it relates (or "compares") *all distinct pairs* of elements of the set in one direction or the other.

A relation `R` on a set `A` is called **strongly connected** if it relates *all pairs* of elements.


Note: the terminology for these two properties is not uniform. This notion of "total" should not be confused with that of a total (serial) relation in the sense that for all x ∈ X there is a y ∈ X so that xRy.

Connectedness features prominently in the definition of total orders:
- a total (linear) order is a partial order in which any two elements are comparable; that is, the order relation is connected.
- a relation is a *total order* iff it is both a partial order and strongly connected.
- a *strict partial order* that is connected is a strict total order.
- a relation is a *strict total order* iff it is a strict partial order and (just) connected.
- a *strict total order* can never be strongly connected (except if domain empty)

that is
-        total order   =        partial order +          connected
-        total order   =        partial order + strongly connected
- strict partial order =   strict total order +          connected
- strict total   order = strict partial order +          connected



Connexity

Connected (total) relation: `∀ab ∈ A. a ≠ b -> (aRb ⋁ bRa)`   
or, equivalently, `∀ab ∈ A. aRb ⋁ bRa ⋁ a ≠ b`

Strongly-connected relation: `∀ab ∈ A. aRb ⋁ bRa`
