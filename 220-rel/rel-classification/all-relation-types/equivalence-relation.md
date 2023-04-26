# Equivalence relation

https://en.wikipedia.org/wiki/Equivalence_relation

An equivalence relation on a set `A` is a binary relation `∼` that is
- reflexive,  `∀a ∈ A. a∼a`
- symmetric,  `∀ab ∈ A. a∼b ⇔ b∼a`
- transitive, `∀abc ∈ A. a∼b ∧ b∼c ⇒ a∼c`

>An equivalence relation is a *binary relation* that is *reflexive*, *symmetric* and *transitive*.

An equivalence relation is necessarily homogeneous, i.e. it can only be on a set (as opposed to being between sets, aka heterogeneous) since it must be reflexive, and reflexivity is a homogeneous relation (endorelation, i.e. it relates a set with itself).

* A set equipped with a reflexive relation has the property of reflexivity.

* Reflexivity is an endorelation, thus equivalence relation is an endorelation.

* A relation `R` on any nonempty set `A` is reflexive not only if all elements `x ∈ A` participate in the relation `R`, but also only if each element is related to itself under `R`, i.e. if `(x,x) ∈ R` for all `x ∈ A`.
* Unlike reflexivity, symmetry does not require all domain elements to participate in a relation for it to be symmetric.
* Unlike reflexivity, transitivity does not require all domain elements to participate in a relation for it to be transitive.

* Identity relation on a nonempty set is the smallest reflexive relation on it.
* Any relation on the empty set is reflexive, vacuuosly, even the null relation
* Identity relation on any set is the smallest reflexive relation on it.
* Any relation on the empty set is reflexive, sym and trans, vacuuosly.
* The null relation on a nonempty set cannot be reflexive.
* The universal relation on a set is reflexive.
* The universal relation on a set is refl, sym and trans.

* Symmetry may "degenerate" to reflexivity: 
  `a∼b -> b∼a`, but if `a = b` then `a∼a -> a∼a`.
* Transitivity may "degenerate" to symmetry: 
  `a∼b ∧ b∼c -> a∼c`, but if `a = c` then `a∼b ∧ b∼a -> a∼a`.
* Transitivity may "degenerate" to reflexivity: 
  `a∼b ∧ b∼c -> a∼c`, but if `a = b = c` then `a∼a ∧ a∼a -> a∼a`.

* Transitivities (if ∼ symmetric)
  - `a∼b ∧ b∼c -> a∼c`
  - `a∼a ∧ a∼b -> a∼b`
  - `a∼b ∧ b∼b -> a∼b`
  - `a∼a ∧ a∼a -> a∼a`
  - `a∼b ∧ a∼c -> b∼c`
  - `b∼a ∧ a∼c -> b∼c`
  - `a∼c ∧ b∼c -> a∼b`
  - `a∼c ∧ c∼b -> a∼b`


>An equivalence relation is a binary relation that is at the same time reflexive, symmetric and transitive.



A canonical example of an equivalence relation is the equality (EQUAL TO or EQ) denoted by `=`.

Each equivalence relation partitions the underlying set into disjoint **equivalence classes**. Two elements of a given set are equivalent to each other iff they belong to the same equivalence class.

A given binary relation `∼` on a set `X` is said to be an equivalence relation iff it is reflexive, symmetric and transitive. A set `X` together with an equivalence relation `∼` is called a **setoid**.

The equivalence class of `a ∈ X` under an equivalence relation `∼`, denoted [a], is defined as `[a] = { ∀x ∈ X | a ∼ x }`.

For example, if `X` is the set of all cars, and `∼` is the equivalence relation "has the same color as", then one particular equivalence class consists of all green cars.



## The relation is-equal-to

The relation *is-equal-to* (=), is the canonical example of an equivalence relation, where $$\forall a, b, c$$:
* reflexivity: $$a = a$$
* symmetry: if $$a = b$$ then $$b = a$$
* transitivity: if $$a = b$$ and $$b = c$$ then $$a = c$$


## Example #1

The relation $$R$$ is defined by the set of the ordered pairs,   
$$R=\{(1,1),(2,2),(3,3),(1,2),(2,1),(2,3),(3,2),(1,3),(3,1)\}$$,    
on the set $$A=\{1,2,3\}$$.    
Is $$R$$ an equivalence relation?

Reflexivity:
- $$a \sim a$$
- it needs to have 3 ordered pairs $$(x,x)$$ to be reflexive, which it does:
- $$\{(1,1),(2,2),(3,3)\}$$

Symmetry:
- if $$a \sim b$$ then $$b \sim a$$
- if it has a pair $$(x,y)$$ then it must also have a pair $$(x,y)$$
- $$\{(1,2),(2,1)\}$$
- $$\{(2,3),(3,2)\}$$
- $$\{(1,3),(3,1)\}$$

Transitivity:
- if $$a \sim b$$ and $$b \sim c$$ then $$a \sim c$$
- if there's a pair $$(x,y)$$ and $$(y,z)$$ then there must be $$(x,z)$$
- if $$\{(1,2),(2,3)\}$$ then $$\{(1,3)\}$$: it does have it

All 3 properties hold so $$R$$ an equivalence relation.
