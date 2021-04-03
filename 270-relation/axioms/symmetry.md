# Symmetry

## Symmetric relation

`∀xy ∈ S. (x,y) ∈ R <-> (y,x) ∈ R`

A binary relation `R` over a set `S` is symmetric if it holds for all `x` and `y` in `S` that `x` is R-related to `y` iff `y` is related to `x`.

* Is a relation symmetric judging only the relation set (of ordered pairs), or wrt the co/domain **and** rel set?! That is, does symmetry **forces** elements of co/domain into the relation?! For example, if the set is S={1,2,3} and the relation is on S², but the relation is empty - is it symmetric?! What about if R = {(1,2),(2,1)} -- is it symmetric then?! Or is it only symmetric if is R = {(1,2),(2,1), (1,3),(3,1), (2,3),(3,2)} ?! That is, total \ reflexive closure?!

* No, I think rel dosn't force it. It's just: if the rel set of ord pairs has (a,b) then it better have (b,a); but it's still symmetric if it has neither.


Example
- the empty set is vacuously symeetric
- the relation R={(1,2),(2,1),(3,2),(2,3)} on set A={1,2,3} is symmetric.
- is-blood-relative-of is a symmetric relation, because x is a blood relative of y iff y is a blood relative of x.

To determine any property of some relation, we need to know:
- the domain set
- the codomain set
- the set of ordered pairs that constitutes the relation

Knowing just the relation set (the set of ord pairs) doesn't mean much unless we know the domain and codomain. For example, the empty relation can be established between any two sets at all. To determine if the relation is symmetric, we need to consider each element (x,y) and check if its opposite (y,x) is also an element in the relation set; but, if the symmetric relation doesn't mean that every element in the domain must be the first component of the ord pairs in relation set, e.g. the relation R={(1,2),(2,1)} on set A={1,2,3} is symmetric even though not all elements are negaged in the relation.

The axioms just says that if there is an element (a,b) then there must also be an element (b,a), or the relation is not symmetric. So, if (a,b) and (b,a) coudld be the elements of a relation but both are not, that relation can still be symmetric; the empty relation is symmetric regardless of the domain and codomain sets.

* If Rᵗ represents the converse of R, then R is symmetric iff R = Rᵗ


## Asymmetric

`(x,y) ∈ R ∧ (y,x) ∈ R <-> x ≠ y`

A relation is asymmetric if and only if it is both anti-symmetric and irreflexive. For example, > is asymmetric, but >= is not.


## Antisymmetry

`(x,y) ∈ R ∧ (y,x) ∈ R <-> x = y`

* A relation R ⊆ X² is antisymmetric iff whenever both Rxy and Ryx, then x = y.
For example, >= is anti-symmetric;
so is >, but vacuously (the condition is always false).

* A relation R on set A is called Anti-Symmetric if xRy and yRx implies x = y ∀x ∈ A and ∀y ∈ A.

Example
- The relation R={(x,y) → N | x≤y } is anti-symmetric since x≤y and y≤x implies x=y.
