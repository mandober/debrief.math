# Relations :: Classifications :: Reflexivity-wise relations

## Overview

Reflexivity-based relations is an unfortunate name for the class of relations and their opposites (negations) based around the property of reflexivity that incude:
- reflexive relation
  - non-reflexive relation
- irreflexive relation
  - non-irreflexive relation
- coreflexive relation
  - non-coreflexive relation
- quasireflexive
  - non-quasireflexive
- left quasireflexive
  - non-left quasireflexive
- right quasireflexive
  - non-right quasireflexive
- reflexive closure
- identity relation
  - compliment of identity relation


## Definitions

A binary relation on a set A is
- identity               : `∀x. x ∈ X -> xIx`
- reflexive              : `∀x. x ∈ X -> xRx`
- irreflexive            : `∀x. x ∈ X -> ¬xR̶x`
- quasi-reflexive        : `∀xy ∈ X. ⟨x,y⟩ ∈ R -> ⦗ ⟨x,x⟩ ∈ R ∧ ⟨y,y⟩ ∈ R ⦘`
- left quasi-reflexivity : `∀ xy ∈ X. ⟨x,y⟩ ∈ R -> ⟨x,x⟩ ∈ R`
- right quasi-reflexivity: `∀ xy ∈ X. ⟨x,y⟩ ∈ R -> ⟨y,y⟩ ∈ R`
- coreflexive            : `∀ xy ∈ X. ⟨x,y⟩ ∈ R -> x  =  y`


## Reflexivity and irreflexivity

Reflexivity, irreflexivity and their negations
- reflexive:       `∀x ∈ A(x ~ x)`
- non-reflexive:   `∃x ∈ A(x ≁ x)` ≡ `¬∀x ∈ A(x ~ x)`
- irreflexive:     `∀x ∈ A(x ≁ x)` ≡ `¬∃x ∈ A(x ~ x)`
- non-irreflexive: `∃x ∈ A(x ~ x)`

Properties
- all id pairs make a relation
  - reflexive,       `∀x ∈ A(x ~ x)`
  - non-irreflexive, `∃x ∈ A(x ~ x)`
- even one missing id pair makes reflexivity fail,        `¬∀x ∈ A(x ~ x)`
- even one missing id pair makes a relation non-reflexive, `∃x ∈ A(x ≁ x)`
- even one missing id pair demotes a reflexive to non-reflexive relation
- even one present id pair makes irreflexivity fail
- even one present id pair a relation non-irreflexive
- all id pairs make a relation reflexive and non-irreflexive
- no id pairs make a relation irreflexive and non-reflexive
- some id pairs make a relation non-reflexive and non-irreflexive
- non-reflexive and non-irreflexive are compatible: both imply that some (but not all) id pairs are present
- at least one missing id pair makes a relation non-reflexive   ✔
- at least one present id pair makes a relation non-irreflexive ✔


Relation has
- all id pairs:               refl, non-irrefl
- some but not all id pairs:  non-refl, non-irrefl
- no id pairs:                irrefl, non-refl



## Refs

https://en.wikipedia.org/wiki/Reflexive_relation
https://en.wikipedia.org/wiki/Irreflexive_relation
https://en.wikipedia.org/wiki/Coreflexive_relation
https://en.wikipedia.org/wiki/Left_quasi-reflexive
https://en.wikipedia.org/wiki/Right_quasi-reflexive
https://en.wikipedia.org/wiki/Quasi-reflexive_relation
https://en.wikipedia.org/wiki/Reflexive_closure
https://en.wikipedia.org/wiki/Homogeneous_relation
https://en.wikipedia.org/wiki/Binary_relation
