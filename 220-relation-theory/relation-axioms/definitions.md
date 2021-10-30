# Definitions

## Cartesian Product

If S and T are sets 
then the Cartesian product S×T of S and T 
is the set of ordered pairs (x,y) 
with x ∈ S and y ∈ T, 
denoted by 
S×T = { (x,y) | x ∈ S ∧ y ∈ T }

Alternatively:
(x,y) ∈ S×T ⟺ ∀x∀y. x ∈ S, y ∈ T

More specifically:
∀p . p ∈ S×T ⟺ ∃x∃y. x ∈ S ∧ y ∈ T ∧ p = (x,y)

My:
S×T = { (x,y) | ∀x∀y. x ∈ S ∧ y ∈ T }


> If S and T are sets, then the **Cartesian product** S×T of S and T is the set of all the ordered pairs (x,y) with x in S and y in T.

> In a Cartesian product S×T, the sets S and T are called the **factors** of S×T.

> The power set of a set S is the set defined and denoted as: P(S) = {∀A.A ⊆ S}. That is, the set whose elements are all of the subsets of S.


𝒰 = { x | ∀x. x ∈ 𝒰 }
E = { ∀x ∈ 𝒰. ¬∃x ∈ E } = ∅
S ⋃ T = { ∀x. x ∈ S ∨ x ∈ T }
S ⋂ T = { ∀x. x ∈ S ∧ x ∈ T }
S \ T = { ∀x. x ∈ S ∧ x ∉ T }
S' = { x | ∀x. x ∈ 𝒰 ∧ x ∉ S } = 𝒰 ⋂ S

∀S. 𝒰 ⊇ S
∀S. 𝒰 ⋃ S = 𝒰
∀S. 𝒰 ⋂ S = S'
∀S. ∅ ⊆ S
∀S. ∅ ⋃ S = S
∀S. ∅ ⋂ S = ∅

𝓟(𝒰) = ∀S. S is a set
𝓟(S) = { ∅, ..., {S} }

𝓟(∅) = {∅} The empty set ∅ has no elements but it does have one subset, ∅.
