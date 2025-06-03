# Function theory ∷ Summary

- A relation `R` between sets `A` and `B` is denoted by `R ⊆ A ⨯ B`
- A function `f` from set `A` to set `B` is denoted by `f : A -> B`
- A relation is right-unique

A ⨯ B = { (a,b) | ∀a ∈ A, ∀b ∈ B }
R ⊆ A ⨯ B
R = { (a,b) | a ∈ A, b ∈ B }

(x,y) ∈ R ===   xRy
(x,y) ∉ R === ¬(xRy) == ¬xRy == x¬Ry 

𝓟(A⨯B) = { S | ∀S ⊆ A⨯B }
R ∈ 𝓟(A⨯B)

f : A -> B
f ⊆ A ⨯ B  restictions apply
f ∈ 𝓟(A⨯B) restictions apply

xRy₁ ⋀ xRy₂ --> y₁ = y₂     right-uniqueness of a relation


- right-uniqueness (relation): `xRy₁ ⋀ xRy₂ --> y₁ = y₂`
- right-uniqueness (function): `f(x) = y₁ ⋀ f(x) = y₂ --> y₁ = y₂`


* Functions are specializations of relations (relations are generalizations of functions). Functions are relations with certain restrictions.

* A right-unique relation is a partial function. In a right-unique relation, no domain element is associated with more than one codomain element; for each domain element: either it is not associated at all, but if it is, it must be associated with exactly one codomain element. In other words, each domain element must be associated to AT MOST ONE codomain element.

it may be associated with none or exactly one codomain element).


* A right-unique and left-total relation is a total function.

* The essential property that characterizes *partial functions* is that a relation is **functional** (univalent, right-unique or right-definite). This makes sure that no domain element is associated with more than one codomain element, `xRy₁ ⋀ xRy₂ --> y₁ = y₂`

`f(x) = y₁ ⋀ f(x) = y₂ --> y₁ = y₂`


* The other important property that characterizes total functions is that a relation is *serial* (aka left-total).

* Partial functions are right-unique relations.
* Total functions are right-unique and left-total relations.


* Functional or right-unique (or right-definite, or univalent)
  - partial function, `∀x ∈ X. ∀y,z ∈ Y. xRy ⋀ xRz -> y = z`
  - such a binary relation is called a partial function
  - for such a relation, `X` is called a primary key of `R`
