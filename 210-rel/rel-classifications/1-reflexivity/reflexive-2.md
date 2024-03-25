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

Properties
- reflexive
- non-reflexive
- irreflexive (anti-reflexive)
- non-irreflexive
- coreflexive
- non-coreflexive
- quasi-refexive

2. Let $$X=\{1,2,3,4\}$$. For relation $$R$$ to be reflefive, it must contain all the identity pairs, $$R=\{(1,1), (2,2), (3,3), (4,4)\}$$ of the set $$X^2$$. It can additionally contain any extra pairs, but missing a single id pair will make this relation __non-reflexive__. If the relation contains **only** id pairs then this is **identity** relation.
