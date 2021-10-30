# Membership Relation

**Membership relations** associate an object and a set, indicating whether the object belongs to the set or not.

This implies there are two possible membership relations:
1. An object `a` that belongs to a set `A` is denoted by `a ∈ A`
2. An object `b` that doesn't belong to a set `A` is denoted by `b ∉ A`

By default, the two relations are indicated by the symbols `∈` and `∉`, which require that an object (potential set member) is placed on the left with a set on the right. As a convenince, two additional symbols, `∋` and `∌`, are available when this default placement is reversed.

```
x,y : Obj
A : Set
(the ':' can be considered as is-a property)

x ∈ A
y ∉ A
A ∋ x
A ∌ y
```


Every object wants to have a meaningful sense of belonging to some set, the blissful period in an object's life when a young objects transitions from objecthood to *elementhood*, becoming a hooded member.

A membership relation is unlike an inclusion relation; the latter associates one set to another set, establishing by how much is one knee-deep in the other.

Membership relation is *reflexive* and *anti-transitive*. In this regard it is unlike inclusion relation, which is transitive.

Inclusion relations
* subset
  - reflexive:  `A ⊆ A`
  - transitive: `(A ⊆ B ⋀ B ⊆ C) => A ⊆ C`
* proper subset
  - irreflexive:`A /⊂ A`


A_𝓡_B
a𝓡b

(A,A) ∈ 𝓡
(A,B) ∈ 𝓡


a ∈ A
R = a ~ A

∧ b ∈ B

if `a ∈ A` ∧ `b ∈ B` then it is `a ∈ C`


If the predicate `Φ` means "belongs to a set `A`", then the fact that `a ∈ A` can also be stated as `Φ(a)`. We can express something about all elements of a set `A` by begining the formula with `∀a.Φ(a).`
