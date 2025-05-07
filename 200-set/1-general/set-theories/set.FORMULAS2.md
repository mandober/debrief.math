# Set theory ∷ Formulae

- if S is the predicate set-exists, then ∃xSx, i.e. sets exists
- there are sets, ∃xSx
- there is the empty set, `∅` = `∃x ∀y ¬(x ∈ y)`

- Russell's paradox, `𝑼 = { x | x ∈ 𝑼 ⟺ x ∉ 𝑼 }`
- Russell's paradox, `𝑼 = { x | x ∈ 𝑼 ⟺ x ∉ 𝑼 }`
- the set of all sets, `x = { x | ∀x(x ∈ x ⟺ x ∉ x) }`

Russell's paradox
- if `𝓡` is the set of all sets
- and `A ⊆ 𝓡` is defined by `A = { x | ∃x(x ∈ 𝓡 ⋀ x ∉ x) }` 
  then the set `A` would have the property `A ∈ A ⟺ A ∉ A`

Set comprehension
- sets may be defined with set comprehension, which is a notation that uses predicates to restrict potential set members.
- the most general form of set comprehension notation is `{ x |  P(x) }`.
- the simplest form uses a single predicate and a universally quantified variable `x` that ranges over all individuals in the domain of discorse (DoD); if left unspecified, DoD defaults to the class of all sets, so `x` ranges over all sets. Then `∀xP(x)` is true if, for `P(x)` holds from all sets `x`. If the DoD is not directly specified, it may be indirectly restricted within a formula such as `S = { x |  ∀x(x ∈ ℕ -> P(x)) }`. Here, the part `x ∈ ℕ` indirectly restricts what `x` ranges over to be the set of the natural numbers; to qualify as a member of the set `S`, `x` must be in ℕ and the predicate `P` must hold of any such `x`.

S = { x |  ∀x (Nx -> (Px ⋁ Cx)) }



S = { x |  ∀x(x ∈ ℕ -> (Px ⋁ Cx)) }

T = { x |  ∃x(x ∈ ℕ ⋀ P(x)) }


objects from becoming the set members.

by using one or more predicates

potential set members by using one or more predicates that constrain the eligability of an object to become a set element.

{ x | ∀x P(x) }

If the predicate P holds for some object x, i.e. if P(x) is true, then x is a member of the set being defined; otherwise, if P(x) does not hold, then x is not a member of that set. For example, the set of the rational numbers is defined by `ℚ = { (p,q) | ∀p(p ∈ ℤ -> ∃q(q ∈ ℕ ⋀ q ≠ 0)) }`.


R = { x |  ∀x ((Px ⋁ Qx) -> Sx) }


let R be a predicate meaning "a set that is a member of itself"
so R(x) holds if set x is a member of itself


Zermelo-Fraenkel (ZF) set theory
- the axiom of the empty set, `∃x ∀y ¬(x ∈ y)`
- the axiom of the power set, 
