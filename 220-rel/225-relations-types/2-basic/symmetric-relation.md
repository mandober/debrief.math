# Symmetric relation

https://en.wikipedia.org/wiki/Symmetric_relation

A relation `R` on a set `A`, with any two elements `a` and `b` in `A`, is a **symmetric relation** if, whenever `a` and `b` are related in one direction, they are also related in the other direction, `aRb ⟺ bRa`.

So, if `(1,2) ∈ R` then the opposite pair `(2,1)` must be in `R` as well for `R` to be a symmetric relation.

There's no need to say anything about the case when `a = b` since the reverse pair is automatically included, `(1,1) ∈ R` then `(1,1) ∈ R`.

Vacuous truth: *the empty relation is a symmetric relation*. Since it has no elements (no ordered pairs), all the requirements are satisfied vacuously (it is only when elements exists that we need to pay attention to the requirements).

Unlike a reflexive relation which insists that all elements of `A` participate in a reflexive relation, a symmetric relation doesn't insist on the attendence of every domain member. Actually, even if it does initially mark the entire domain with `∀a,b ∈ A`, it then immediately shrinks it down with the conditional, `∀a∀b((a ∈ A ⋀ b ∈ A) -> (aRb ⟺ bRa))`



 

A binary relation `R` over a set `A` is a **symmetric relation** (for all elements `a` and `b` in `A`) if `a` is related to `b`, then `b` is also related to `a`.

For any two elements a,b in A, `R` is a symmetric relation iff `aRb ⇔ bRa`.


Despite `∀ab ∈ A`, symmetric relation DOES NOT FORCE all elemens in `A` to participate in `R` (that formula qualifies elements as belonging to A; it does engage all elements in A, but gets immediately restricted, so in fact, not all elems need to take part in R).


## Equivalences

- `R` is symmetric iff it is identical to its converse, `R = Rᵀ`

R | a  b  c
--|---------
a | 1  1  1
b | 0  1  1
c | 0  0  1


## Representations

- A graph depicting a symmetric relation has undirected edges.
- A tabular (adjacency matrix) presentation of a symmetric relation

R | a  b  c
--|---------
a | 1  1  1
b | 1  1  1
c | 1  1  1

refl + sym + trans





Symmetry, along with reflexivity and transitivity, are the three defining properties of an equivalence relation.


## Examples

An example is the symmetric relation is the equals relation (`=`) 
because if `a=b` is true, then `b=a` is also true.
