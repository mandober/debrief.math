# Relational Algebra

## Set-theoretic Relations and Relational Algebra

If X and Y are sets, then a subset R of the Cartesian product X×Y is called a relation with domain X and range Y.

We denote the set (in this context also called type) of all relations with domain X and range Y by [X ↔ Y ] and write `R : X ↔ Y` instead of `R ∈ [X ↔ Y]`.

If X and Y are finite sets of size `m` respectively `n`, then we may consider a relation `R : X ↔ Y` as a Boolean matrix with `m` rows and `n` columns.

We write `xRy` instead of (x, y) ∈ R.

Using matrix notation for element relationships, the basic operations on relations may be introduced as follows: given 
`Q : X ↔ Y`, 
`R : X ↔ Y`, and 
`S : Y ↔ Z`, we define 
- join       `Q ∪ R : X ↔ Y` by `x(Q ∪ R)y ⇔ xQy ∨ xRy`
- meet       `Q ∩ R : X ↔ Y` by `x(Q ∩ R)y ⇔ xQy ∧ xRy`
- composition   `QS : X ↔ Z` by    `x(QS)z ⇔ ∃y. xQy ∧ ySz`
- negation       `Q̅ : X ↔ Y` by       `xQy ⇔ ¬xQy`
- transposition `Qᵀ : Y ↔ X` by      `xQᵀy ⇔ yQx`

For each type `[X ↔ Y]` we denote
- the empty relation by `𝓞`
- the universal relation by `𝓛`
- the identity relation by `𝓘`

In Boolean matrix notation we have
- x𝓞y ⇔ 0
- x𝓛y ⇔ 1
- x𝓘y ⇔ x=y

The identity relation `𝓘` is the object-level (i.e. relation-level) description of the meta-level symbol `=`.

The *inclusion of relations* is introduced as follows: given 2 relations 
`R : X ↔ Y` and `S : X ↔ Y`, then `R ⊆ S ⇔ ∀xy. xRy ⇒ xSy`.

Some well-known laws concerning relations:
- `Rᶜᶜ = R`
- `Rᵀᵀ = R`
- `Rᵀᶜ = Rᶜᵀ` where Rᶜ = R̅
- `(R S)ᵀ = Sᵀ Rᵀ`
- `(R ∩ S)ᵀ = Rᵀ ∩ Sᵀ`

The theoretical framework for all these rules (and many others) to hold is that of {axiomatic, typed} relational algebra. For each type (respectively pair or triple of types) we have those of the set-theoretic relations as constants and operations of this algebraic structure.

**The axioms of a relational algebra**:
- Axioms of a complete Boolean lattice for
  - join
  - meet
  - negation
  - inclusion
  - the empty relation, `𝓞`
  - the universal relation, `𝓛`
- Axioms of a monoid for
  - composition
  - the identity relation, `𝓘`
- *Schröder equivalences*
  `Q R ⊆ S` ⇔ `QᵀSᶜ ⊆ Rᶜ` ⇔ `SᶜRᵀ ⊆ Qᶜ`       (1)
- *Tarski rule*
  `R ≠ 𝓞 ⇔ 𝓛 R 𝓛 = 𝓛`                           (2)

Frequently, in the Tarski rule only the `⇒` direction is demanded. As a consequence of our version, we avoid the degenerate case `𝓞 = 𝓛`. This implies that domain X and range Y of each relation `R : X ↔ Y` are non-empty, which agrees exactly with the practical use of relations.

## Some specific classes of relations and further operations

The above basic operations and constants are very helpful for defining properties and further operations on relations in a point-free (component-free) manner (i.e. without the use of element relationships).

Let R be a homogeneous relation. 
Then R is
- reflexive     if `I ⊆ R`
- irreflexive   if `R ⊆ I̅`
- transitive    if `RR ⊆ R`
- asymmetric    if `R ∩ Rᵀ = ∅`
- antisymmetric if `R ∩ Rᵀ ⊆ I`
- symmetric     if `R = Rᵀ`

Irreflexivity of a composition can be shown by `RS = ∅ ==> SR ⊆ I`   (3)

- quasi-order is reflexive and transitive relation
- partial order is reflexive, transitive and antisymmetric relation

By `R ∩ I` we denote the irreflexive part of a relation `R`.

If R is a partial order, then `R ∩ I` is irreflexive (respectively asymmetric) and transitive, i.e. a strict-order.


Let R be an heterogeneous relation.
Then R is
- univalent if `RᵀR ⊆ I` (right-unique, functional, right-definite)
- total     if `R𝓛 = 𝓛`  (left-total, serial)
- if univalent and total, then R is a function
- relation R is *injective* if `Rᵀ` is univalent
- relation R is *surjective* if `Rᵀ` is total

>If `R`, `S` are injective, then `S;Rᵀ = ∅ ⇒ R ∪ S` is injective     (4)
