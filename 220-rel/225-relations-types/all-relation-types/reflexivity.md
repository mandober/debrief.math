# Reflexivity

* Reflexivity
  * positive
    - reflexive relation
    - irreflexive relation
    - coreflexive relation
    - quasi-reflexive relation
  * negative
    - non-reflexive relation
    - non-irreflexive relation


Binary relation `⟨x,y⟩ ∈ R`
- Reflexive              : `∀x. x ∈ X -> ⟨x,x⟩ ∈ R`
- Irreflexive            : `∀x. x ∈ X -> ⟨x,x⟩ ∉ R`
- Quasi-reflexive        : `∀xy ∈ X. ⟨x,y⟩ ∈ R -> ⦗ ⟨x,x⟩ ∈ R ∧ ⟨y,y⟩ ∈ R ⦘`
- Left quasi-reflexivity : `∀ xy ∈ X. ⟨x,y⟩ ∈ R -> ⟨x,x⟩ ∈ R`
- Right quasi-reflexivity: `∀ xy ∈ X. ⟨x,y⟩ ∈ R -> ⟨y,y⟩ ∈ R`
- Coreflexive            : `∀ xy ∈ X. ⟨x,y⟩ ∈ R -> x  =  y`

binary relation `~`
* reflexive           : `∀x. x ∈ X -> x ~ x`
* irreflexive         : `∀x. x ∈ X -> x ≁ x`
* quasireflexive      : `∀x∀y ∈ X. (x ~ y -> x ~ x ∧ y ~ y)`
* left quasireflexive : `∀ x,y ∈ X. x ~ y -> x ~ x`
* right quasireflexive: `∀ x,y ∈ X. x ~ y -> y ~ y`
* coreflexive         : `∀ x,y ∈ X. x ~ y -> x  =  y`






## Reflexivity

https://en.wikipedia.org/wiki/Reflexive_relation

In mathematics, a binary relation R over a set X is reflexive if it relates every element of X to itself.

I ⊆ R where I is the identity relation on X.

An example of a reflexive relation is the relation "is equal to" on the set of real numbers, since every real number is equal to itself. A reflexive relation is said to have the reflexive property or is said to possess reflexivity. Along with symmetry and transitivity, reflexivity is one of three properties defining equivalence relations.

Properties
- reflexive
- non-reflexive
- irreflexive (anti-reflexive)
- non-irreflexive
- coreflexive
- non-coreflexive
- quasi-refexive


Examples

1. Relation "is equal to", i.e. `=`, on the set of real numbers is reflexive since every real number is equal to itself. Replacing $$R$$ with `=` we see that $$xRx$$ becomes $$x=x$$, which holds for any $$x$$.

2. Let $$X=\{1,2,3,4\}$$. For relation $$R$$ to be reflefive, it must contain all the identity pairs, $$R=\{(1,1), (2,2), (3,3), (4,4)\}$$ of the set $$X^2$$. It can additionally contain any extra pairs, but missing a single id pair will make this relation __non-reflexive__. If the relation contains **only** id pairs then this is **identity** relation.
