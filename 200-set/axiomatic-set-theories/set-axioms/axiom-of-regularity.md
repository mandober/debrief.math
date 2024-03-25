# Axiom of Regularity

https://www.wikiwand.com/en/Axiom_of_regularity

The Axiom Of Regularity, or Axiom Of Foundation, is an axiom of ZF set theory (Zermelo-Fraenkel) that states that every non-empty set `x` contains an element `y` that is disjoint from `x`.

In first-order logic, the axiom reads: 

`∀x(x ≠ ∅ -> ∃y([y ∈ x] ⋀ [y ⋂ x = ∅]))`

For all sets `x` which are nonempty, `x ≠ ∅`, 
there is a set `y`, their memeber, 
such that `y ⋂ x = ∅`.

The axiom of regularity, together with the axiom of pairing, implies that no set is an element of itself.

The axiom of regularity also implies that there is no infinite sequence, `aₙ`, such that `aᵢ﹢₁` is an element of `aᵢ` for all `i`, `∀i(aᵢ﹢₁ ∈ aᵢ)`. That is, there is no infinite sequence such that `a₀ ∋ a₁ ∋ a₂ ∋ a₃ ∋ …`, or put in another way, such that `… a₃ ∈ a₂ ∈ a₁ ∈ a₀`.

Thus, there is no infinite sequence such that the previous element contains the next one. This takes care of disallowing infinite hierarchies of sets, where the previous ("smaller") set conains the next ("bigger") set.

With set-theoretic representation of the natural numbers, do they conform to the Axiom of Regularity, i.e. is `3 ∈ 2`? `2 ∈ 1`? `1 ∈ 0`? Or, as an infinite sequence, doe sit hold that `… ∈ 3 ∈ 2 ∈ 1 ∈ 0`? In fact, the natural numbers do admit the AxReg because their sequence is actually `0 ∈ 1 ∈ 2 ∈ 3 ∈ …`.

```
a₀ = 0 = {}        =   {}
a₁ = 1 = {0}       = { {} }
a₂ = 2 = {0, 1}    = { {} , {{}} }
a₃ = 3 = {0, 1, 2} = { {} , {{}} , {{}, {{}}} }
…
aₙ = n = {0, 1, …, n - 1}

a₃ = a₂ ⋃ a₁ ⋃ a₀
3 = 2 ⋃ 1 ⋃ 0
------------------ ∴ ------------------
0 ∈ 3, 1 ∈ 2, 1 ∈ 3, 2 ∈ 3
0 ∈ 1 ∈ 2 ∈ 3 ∈ …
------------------ ∴ ------------------
0 ∈ 1 --> a₀ ∈ a₁
0 ∈ 1 --> a₁ ∉ a₀
```


With the *Axiom Of Dependent Choice* (AxDC), which is a weakened form of the *Axiom of Choice* (AxC), this result can be reversed: if there are no such infinite sequences, then the Axiom of Regularity is true.

Hence, in this context the Axiom Of Regularity is equivalent to the sentence that there are no downward infinite membership chains.

The axiom was introduced by von Neumann in 1925; it was adopted in a formulation closer to the one found in contemporary textbooks by Zermelo in 1930. Virtually all results in the branches of mathematics based on set theory, hold even in the absence of regularity. However, regularity makes some properties of ordinals easier to prove; and it not only allows induction to be done on well-ordered sets, but also on proper classes that are well-founded relational structures such as the lexicographical ordering on    
`{ (n,α) | n ∈ ω ⋀ α is an ordinal }`.

Given the other axioms of Zermelo-Fraenkel set theory, the Axiom Of Regularity is equivalent to the Axiom Of Induction.

The *Axiom Of Induction* (AxInd) tends to be used in place of the Axiom Of Regularity in intuitionistic theories (no LEM), in which the two axioms are not equivalent.

In addition to omitting the Axiom Of Regularity, non-standard set theories have postulated the existence of sets that are elements of themselves.

## Elementary implications of regularity

* *No set is an element of itself*.   
  Let `A` be a set, and apply the axiom of regularity to `{A}`, which is a set by the Axiom Of Pairing. We see that there must be an element of `{A}` which is disjoint from it. Since the only element of `{A}` is `A`, it must be that `A` is disjoint from `{A}`. So, since `A ⋂ {A} = ∅`, we cannot have `A ∈ A` by the definition of disjoint.
* *No infinite descending sequence of sets exists*.
* *Simpler set-theoretic definition of the ordered pair*.
* *Every set has an ordinal rank*.
* *For every two sets, only one can be an element of the other*.   
  Let `X` and `Y` be sets. Then apply the axiom of regularity to the set `{X,Y}`, which exists by the Axiom Of Pairing. We see there must be an element of `{X,Y}` which is disjoint from it; and such element must be either `X` or `Y`. By the definition of disjoint, we must have that either `Y ∉ X` or `X ∉ Y`.


* The axiom of dependent choice and no infinite descending sequence of sets implies regularity


## Regularity and the rest of ZF(C) axioms
(...)

## Regularity and Russell's paradox
(...)

## Regularity, the cumulative hierarchy, and types
(...)

## History
(...)

## Regularity in the presence of urelements

**Urelements** are objects that are not sets, and they may be elements of sets. So, these are the atomic, non-set, objects (God knows which are these, esp. at the inception of a FOM theory).

In ZF set theory, there are no urelements, but in some other set theories such as ZFA, there are. In these theories, the axiom of regularity must be modified. The statement `x ≠ ∅` needs to be replaced with a statement that `x` is not empty and is not an urelement. One suitable replacement is `∃y(y ∈ x)`, which states that `x` is inhabited (nonempty).
