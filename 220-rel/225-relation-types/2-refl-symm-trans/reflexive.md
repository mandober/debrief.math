# Reflexive relation

https://en.wikipedia.org/wiki/Reflexive_relation

## Definition

A binary relation `R` on a nonempty set `A` is reflexive if
1. every element in `A` is participates in the relation
2. each element `a` in `A` is related with itself, `aRa`, and as such is in the relation, `(a,a) ∈ R`

> A reflexive relation `R` on a set `A` requires that each element `a` in `A` be a component of an ordered pair `(a,a)` in `R`.


Being a reflexive relation is an *extrinsic property*: it connects the relation with an external set. On the other hand, being symmetric and transitive are *intrinsic properties* that depend only on the ordered pairs in the relation.

* relation R = {(1,1)} on a set {1} is reflexive

## Details

A relation `R` on a set `A` is **reflexive** if each element `a` in `A` is related to itself, `aRa`. Thus, for all `a`: if `a` is in `A` then `aRa`:    
`∀a((a ∈ A) -> (a,a) ∈ R)`

In other words, if `A` is a nonempty set, then a reflexive relation on `A` MUST (AT THE MINIMUM) contain all the order pairs of the form `(a,a)` where `a ∈ A`.

If `A` is a finite set with cardinality `n`, a reflexive relation on `A` must have `n` elements (ordered pairs) MINIMUM, with at least `n` of them having the form `(a,a)`.

| R | 1 | 2 | 3 | 4 | 5 |
|---|---|---|---|---|---|
| 1 | ✓ | ∙ | ∙ | ∙ | ∙ |
| 2 | ∙ | ✓ | ∙ | ∙ | ∙ |
| 3 | ∙ | ∙ | ✓ | ∙ | ∙ |
| 4 | ∙ | ∙ | ∙ | ✓ | ∙ |
| 5 | ∙ | ∙ | ∙ | ∙ | ✓ |

- `✓` these ordered pairs must be present in `R`
- `∙` the presence of these pairs has no bearing on the reflexivity of `R`

A relation `R` is a reflexive relation on a set `{1,2,3,4,5}` since, for all `a ∈ A`, `aRa`.

> Unlike symmetric and transitive relation, a reflexive relation requires the paricipation of each and every element in `A`.

* The empty relation `E` on a nonempty set `A` is NOT REFLEXIVE.
* The empty relation `E` on the empty set `A` is vacuously REFLEXIVE.

Thus, for all elements `a` in `A`, there must be an ordered pair `(a,a)` in `R`. Moreover, reflexivity DOES NOT CARE if `R` contains some other additinal pairs as long as `R` contains these required pairs.



A reflexive relation on a nonempty set cannot be
- irreflexive
- asymmetric      (aRb -> ¬bRa)
- antitransitive  (aRb ⋀ bRc -> ¬aRc)
