# Relations :: Reflexivity-based relations :: Reflexive relation

Reflexivity-wise relations
- reflexive relation
  - non-reflexive relation
- irreflexive relation
  - non-irreflexive relation
- coreflexive relation
  - non-coreflexive relation
- quasireflexive relation
  - non-quasireflexive relation


## Summary

- reflexive:       `∀x ∈ A(x ~ x)`
- non-reflexive:   `∃x ∈ A(x ≁ x)` ≡ `¬∀x ∈ A(x ~ x)`
- irreflexive:     `∀x ∈ A(x ≁ x)` ≡ `¬∃x ∈ A(x ~ x)`
- non-irreflexive: `∃x ∈ A(x ~ x)`


## Reflexivity-wise relation

- reflexive relation   vs non-reflexive relation
- irreflexive relation vs non-irreflexive relation

A relation `~` on a set `A` is called **reflexive** iff every element of `A` is related to itself, `∀x(x ∈ A ⇒ x ~ x)`, abbreviated as `∀x ∈ A. x ~ x`.

A **reflexive relation** is said to have the **reflexive property**, or is said to possess **reflexivity**.

A reflexive relation is only possible on a single set - it is an endorelation.

Unlike many other relations, reflexive relation requires that *all elements of a set are engaged* in the relation (antecedent), besides the usual requirement that some predicate is satisfied (consequent), `∀(x ∈ A ⇒ x ~ x)`.

Regarding `R` as a subset of `A×A`, `R` is reflexive if it contains the *diagonal or identity relation*, `Δ = { (a,a) | a ∈ A }`.


Negation of the formula for reflexive relation does not give the formula for irreflexive relation but the formula for non-reflexive relation:

```
∀x ∈ A(x ~ x)             refl
∀x(x ∈ A ⇒ x ~ x)         refl expanded
¬(∀x(x ∈ A ⇒ x ~ x))      refl negated
∃x(¬(x ∈ A ⇒ x ~ x))      negating ∀ gives ∃, pull in negation
∃x(¬((x ∈ A) ⇒ (x ~ x)))  merely bracketing subexp
∃x(¬(¬(x ∈ A) ∨ (x ~ x)))  material impl to disjunction
∃x(¬¬(x ∈ A) ∧ ¬(x ~ x))   DeMorgan
∃x(x ∈ A ∧ x ≁ x)          DN, prettifying
∃x ∈ A(x ≁ x)              abbreviating
```

>A **non-reflexive relation** is specified by: `∃x ∈ A(x ≁ x)`.

>A **non-irreflexive relation** is specified by: `∃x ∈ A(x ~ x)`.


By the equality of quantifiers, `∀x(φx)  ≡ ¬∀x(¬φx)`, 
a reflexive relation `∀x ∈ A(x ~ x)` 
can be expressed as `¬∀x ∈ A(x ≁ x)`. 

Reflexive relation is closely related to non-reflexive, irreflexive and non-irreflexive relations     (≡ by the equivalence of quantifiers):
- `∀x ∈ A(x ~ x)` refl         ≡ ¬∃x ∈ A(x ≁ x), negated non-refl
- `∀x ∈ A(x ≁ x)` irrefl       ≡ ¬∃x ∈ A(x ~ x), negated non-irrefl
- `∃x ∈ A(x ≁ x)` non-refl     ≡ ¬∀x ∈ A(x ~ x), negated refl
- `∃x ∈ A(x ~ x)` non-irrefl   ≡ ¬∀x ∈ A(x ≁ x), negated irrefl


It would seem that reflexive, non-reflexive, irreflexive, non-irreflexive relations are all distinct, but they are not. Negating the formula for reflexive relation, we get the formula for non-irreflexive relation. Negating the formula for irreflexive relation, we get the formula for non-reflexive relation.
- `¬refl = non-irrefl`
- `¬irrefl = non-refl`

Non-reflexive and non-irreflexive relations use existential quantifier, so these two cannot be defined on an empty set (although we can always convert an existential quantifier into a universal one…).

Examples of reflexive relations are equality (c.f. equality axioms), equivalence relations, order.

## Invariants

Refl and irrefl wrt identity relation
- R reflexive   ⇔ ∀x ∈ V. (x, x) ∈ R ⇔ I ⊆ R
- R irreflexive ⇔ ∀x ∈ V. (x, x) ∉ R ⇔ R ⊆ Iᶜ

* A reflexive relation is a superset of the identity relation. That is, a reflexive relation must contain all identity pairs but it may also contain additional pairs. Reflexive relations span "between" the identity relation (which is the minimal reflexive relation) and the universal relation.

* An irreflexive relation is a subset of the inverse of the identity relation. 

>The empty relation on the empty set is the only relation that is both reflexive and irreflexive (because the predicate is satisfied vacuously).

## Quadrant

```
REFL          ∀x ∈ A(x ~ x)   🄰    🄸   ∀x ∈ A(x ≁ x)    IRREFL
              ↑                        ↑
              |                        |
              |                        |
NON-IRREFL    ∃x ∈ A(x ~ x)   🄴    🄾   ∃x ∈ A(x ≁ x)    NON-REFL
```


- reflexive:       `∀x ∈ A(x ~ x)` ,   ∀x ∈ A(x ~ x)
- non-reflexive:   `∃x ∈ A(x ≁ x)` ≡ `¬∀x ∈ A(x ~ x)`
- irreflexive:     `∀x ∈ A(x ≁ x)` ≡ `¬∃x ∈ A(x ~ x)`
- non-irreflexive: `∃x ∈ A(x ~ x)` ,   ∃x ∈ A(x ~ x)


A non-empty relation on a non-empty set, wrt id pairs may be
- reflexive
- irreflexive
- non-reflexive and non-irreflexive, i.e. neither reflexive nor irreflexive

>That is, a relation on a non-empty set is either reflexive (if it contains all id pairs), irreflexive (if it contains no id pairs), or neither reflexive nor irreflexive (if it contains some but, not all, id pairs).


There is compatibility between
- non-reflexive and non-irreflexive (practically the same)
- reflexive (∀) implies non-irreflexive (∃)
- irreflexive (∀) implies non-reflexive (∃)

>**Non-reflexivity** (negation of refl) is about *there not being an id pair* in a relation, so the relation is definitely not reflexive, but possibly irreflexive if all id pairs are missing.

>**Non-irreflexivity** (negation of irrefl) is about *there being an id pair* in a relation, so the relation is definitely not irreflexive, but possibly reflexive if all id pairs are present.


- If a relation is reflexive
  + *it has all id pairs*
  - it cannot be non-reflexive ✘
  - it cannot be irreflexive   ✘
  - it is non-irreflexive      ✔
- If a relation is irreflexive
  + *it has no id pairs*
  + it is not the case that it contains even one id pair
  - it cannot be non-irreflexive ✘
  - it cannot be reflexive       ✘
  - it is non-reflexive          ✔
- If a relation is non-reflexive
  + it is not the case that it has all id pairs
  + *at least one id pair is missing*
- If a relation is non-irreflexive
  + *it has at least one id pair*





Between a relation including all (or none) of the id pairs:
- if it misses even one id pair, it cannot be reflexive
- if it includes even one id pair, it cannot be irreflexive
- if it has some (but not all) id pairs, it is non-refl and non-irrefl
- if it is reflexive, it cannot be irreflexive

- if a rel is reflexive, it may also be...
  - non-refl? NO
  - irrefl? NO
  - non-irrefl? NO


- if it is irreflexive, it cannot be reflexive
- if it is reflexive, can it be
  - non-refl?
  - irrefl?
  - non-irrefl?


A rel is reflexive,   `∀x ∈ A(x ~ x)`, if it contains ALL id pairs.

A rel is irreflexive, `∀x ∈ A(x ≁ x)`, if it DOES NOT contain ALL id pairs. 
Or, a rel is irrefl, `¬∃x ∈ A(x ~ x)`, if it is not the case that it contains at least one id pair.

A rel is non-reflexive, `∃x ∈ A(x ≁ x)`, if it does not contain some id pairs. 
Or, a rel is non-refl, `¬∀x ∈ A(x ~ x)`, if it is not the case that it contains ALL id pairs.

A rel is non-irrefl, `∃x ∈ A(x ~ x)`, if it does not contain some id pairs.

>A **non-irreflexive relation** is specified by: `∃x ∈ A(x ~ x)`.
