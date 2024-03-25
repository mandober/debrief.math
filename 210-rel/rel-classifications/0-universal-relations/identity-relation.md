# Identity relation

- properties
  - endorelation
  - homogeneous
  - ubiquitous
  - uniqueness
  - serves as the (left and right) identity element of some operations
- definition
  - loose vs strict definition

## Summary

Identity relation on set A: `(∀x ∈ A. x R x) ⋀ (∀x∀y ∈ A. x R y ⇒ x = y)`

There are 2 requirements that the definition of the identity relation must meet:
1. All elements of the source set A must participate in the relation
2. The graph of the relation must only contain the id pairs and nothing else

All pairs in the identity relation on set `A` must be of the form `(x, x)` for all `x ∈ A`. That is, all elements must be *identity pairs*.


## Description

The identity relation, unlike the other two *ubiquotuous relations* (total and empty) is only possible on a set (on a same set). This means the identity is an *endorelation* (from a set to itself), and it is a *homogeneous* relation (relation involving a single set).

Practically, there is no difference between endorelations and homogeneous relation. Perphaps there is some sense that endorelations are always binary relations from a single set back to itself, while a homogeneous relation could mean an n-place relation but still on a single set.

The identity relation is usually denoted by `I`. 
The identity relation on a set `A` is unambiguously denoted by `Iᴀ`. 

Being one of the 3 ubiquotuous relations (along with the total and the empty relation) means it is possible to define the identity relation on any set. This certainly holds for *non-empty sets*, in which case all 3 ubiquotuous relations are easily determined and distinct. In case of *an empty set*, the 3 relations coincide.

The identity relation, like any relation (on a set `A`), is a subset of the Cartesian product of `A` with itself, thus `I ⊆ A²`. However, it is not just any old subset but a precisely defined one: the identity relation on set `A` associates each and every element of `A` with itself. Thus, the graph of the relation is the set whose elements have the form `(a, a)`, for all `a` in `A`.

If variables `x` and `y` range over source set `A`, then `x` being related to `y` means that `x` and `y` are the same object.

    I = { (x, y) ∈ I | xIy ⇒ x = y }

but this definition fails to enforce the requirement that all elements of A must participate in the relation (see below).


A relation R on a set A is not reflexive (non-reflexive) if there is an element x ∈ A but (x, x) ∉ R. Missing even a single id pair is sufficient for reflexivity to fail.

An identity relation is a special case of a reflexive relation that contains no additional pairs. The identity relation on a set is the "smallest" reflexive relation on a given set. That is, the identity relation on a set A is the *intersection of all reflexive relations* on A.


## Definition

A common definiton of the identity relation says something like:

  Let `A` be any set. Then a relation `R = { (x, x) | x ∈ A }` on `A` is called the identity relation on `A`.

However this definition is lacking as it doesn't exclude the presence of other pairs.

There are 2 requirements that the definition of the identity relation must meet:
1. All elements of the source set must participate in the relation
2. The set of relation must only contain id pairs and nothing else

Loose definitions, like the one above, are usually expressed using the set-builder notation, and although this notation is implicit about the universal quantification of all mentioned variables, the definition above fails to enforce the second requirement nevertheless.

The definition of coreflexivity, `∀x∀y ∈ A. x R y ⇒ x = y`, hints on how to solve this. This time, the definition enforces the second requirement, but not the first, so we should combine the two definitions to get the final definition of the identity relation:

```hs
  (∀x ∈ A. x R x)                            -- engage all source elems
+ (∀x∀y ∈ A. x R y ⇒ x = y)                   -- restrict to id pairs only
= (∀x ∈ A. x R x) ⋀ (∀x∀y ∈ A. x R y ⇒ x = y)  -- the identity relation ✔
```

>The identity relation on set `A` is defined by:
`(∀x ∈ A. x R x) ⋀ (∀x∀y ∈ A. x R y ⇒ x = y)`

### Compressing the definition

This is a fine, well-defined formula, but there is still a nagging feeling that it could be distilled into a more elegant formula.

```hs
  (∀x ∈ A. x R x)                            -- engage all source elems
+ (∀x∀y ∈ A. x R y ⇒ x = y)                   -- restrict to id pairs only
= (∀x ∈ A. x R x) ⋀ (∀x∀y ∈ A. x R y ⇒ x = y)  -- the identity relation ✔
```

∀x(x ∈ A ⇒ xRx) ⋀ ∀x∀y(x,y ∈ A ⇒ x R y ⇒ x = y)


∀x((x ∈ A ⇒ xRx) ∧ ∀y(y ∈ A ⇒ x R y ⇒ x = y))


∀x((x ∈ A ⇒ xRx)) ∧ ∀y(y ∈ A ⇒ (x R y ⇒ x = y))

x R y ⇒ x = y
∀x∀y ∈ A. x R y ⇒ x = y

I = { (x, x) ∈ I | xIxʹ ⇒ x = xʹ }


## Properties

- All elements of the source set must participate in the identity relation
- In an identity relation every element is related only to itself
- Identity relations are only possible on the same set
- Identity relations are endorelations
- Identity relations are homogeneous

- Identity relations are reflexive
- Identity relations are antisymmetric

- Identity relation is the smallest reflexive relation
- Identity relation is a subset of any reflexive relation
- Identity relation is the intersection of all reflexive relations on a set

- Identity rel is id element of rel. composition, `I∘R=R=R∘I`, or `I;R=R=R;I`





## Oporations

### Compliment

The complement of the identity relation `Iᴀ` on a set `A`, relative to the Cartesian product `A²`, yields the set `A² ∖ Iᴀ`.

`I̅ = Iᶜ = A² ∖ Iᴀ`

Every irreflexive relation on A is a subset of `I̅`.

### Transposition

Transposition of the identity relation `I` is `I` still, i.e. `Iᵀ = I`.

### Composition

Identity relation is *left and right identity element* of relational composition, `I ∘ R = R = R ∘ I`, or `R;I = R = I;R`.

Any relation on a set `A` composed before or after the identity relation `Iᴀ` remains unchanged.

Note: `R ∘ S` is functional or LTR composition, while `S;R` is RTL composition.

### Union and intersection

Union of some relation R on set A with Iᴀ may act as the reflexive closure - making the relation R reflexive - which may yield some interesting relations:
- `<` ∪ `Iᴀ` = `≤`
- `>` ∪ `Iᴀ` = `≥`
- `⊂` ∪ `Iᴀ` = `⊆`

Identity relation is the intersection of all reflexive relations (wrt the same set).

Properties of union
- Iᴀ ∪ A² = A²
- Iᴀ ∪ ∅ = Iᴀ
- Iᴀ ∪ I̅ = A²

Properties of intersection
- Iᴀ ∩ A² = Iᴀ
- Iᴀ ∩ ∅ = ∅
- Iᴀ ∩ I̅ = ∅



## Related relations

Relations related to identity relation
- reflexive
- non-reflexive (negation of reflexivity)
- irreflexive
- non-irrreflexive (negation of irreflexivity)
- coreflexive
- quasireflexive
- left quasireflexive
- right quasireflexive
- equality relation
- equivalence relation

## Representations

As a graph, the identity relation is a *disconnected digraph*, with as many separated vertices as there are elements in set A, with each vertex having a looping arrow. No other arrows but the self-looping arrows are present in the graph.

```hs
⮎a      ⮎b      ⮎c      ⮎d
```

As a matrix, the identity relation is an *identity Boolean matrix* - a square Boolean matrix with the number of rows equal to the cardinality of set `A` that has 0's everywhere except on the main diagonal which is filled with 1's. Any matrix multiplied by a (compatible) identity matrix remains unchanged.

```hs
I a b c d
a 1 0 0 0
b 0 1 0 0
c 0 0 1 0
d 0 0 0 1
```


## Refs

https://en.wikipedia.org/wiki/Identity_relation
