# Examples of categories

* Digraphs   
A *directed graph* is a category iff it has the *closure property*, i.e. if there's an arrow as the result of composition of any two composable arrows, and if each node has the identity arrow. If this holds, the composition of arrows is indeed associative and the id arrows serve as the units of composition.

* Monoidal categories   
Algebraically, a *monoid* is an algebraic structure, `(S, ϵ, ⊙)`, consisting of a carrier set `S` that has a distinguished element `ϵ` (the identity), and with a single, associative, binary operation closed over `S`. So, a monoid satisfies the axioms of closure, associativity and identity, which means that many monoids (but not all?[^¹]) form a category.

A monoidal category has a single object - the carrier set `S` becomes an abstract object (in a category represented by a dot), 


, and many (endo)morphisms.

For example, the monoid `(ℕ, 0, +)` that encompasses the addition of naturals with the number `0` as the identity, does form a category.

---

In abstract algebra, a monoid is a set equipped with an associative binary operation and an identity element. Examples:
- ℕ with 0 as the identity form a monoid under `+`
- ℕ with 1 as the identity form a monoid under `*`
- ℕ with ∞ as the identity form a monoid under `max`
- ℕ with 0 as the identity form a monoid under `min`
- 𝔹 with 'true' as the unit form a monoid under `∧`
- 𝔹 with 'false' as the unit form a monoid under `∨`
- Lists, with the empty list as the unit form a monoid under concatenation
- Functions, with the identity function as the unit, form a monoid under composition, `∘`.



The functions on a set form a monoid with respect to function composition. More generally, in category theory, the endomorphisms on an object form a monoid; conversely, a monoid may be viewed as a category with a single object.




---

[^¹]: hmmm… why not? If the binop is necessarily associative, then the triplet `(ℕ,1,^)` (naturals with 1 as the identity of exponentiation - which is a non-associative operation) is not actually a monoid, let alone a category. Ahhh, associativity is not the problem! A category requires the associativity of composition of arrows.


For example, a monoid `(ℕ, 0, binop)` forms a category when the `binop` is associative. There's no need to worry about composition - all arrows are composable since they all originate and end at the only object `ℕ`. The identity element, denoted by `0`, is categorically represented as an arrow from a terminal object (or a singleton category) `𝟙` to the monoidal caegory (this arrow, or a functor, picks the identity object).
