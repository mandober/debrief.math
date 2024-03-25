# Binary relation

https://en.wikipedia.org/wiki/Binary_relation

## Contents

- Definitions
- Overview
- Notation
- Operations
  - Union
  - Intersection
  - Composition
  - Converse
  - Complement
  - Restriction
- Representations
  - Graph
  - Matrix representation
  - Table
- Examples
- Special types of binary relations
- Sets versus classes
- Homogeneous relation
- Heterogeneous relation
- Calculus of relations
- Induced concept lattice
- Particular relations
  - Difunctional
  - Ferrers type
  - Contact
- Preorder R\R
- Fringe of a relation
- Mathematical heaps


## Definitions

A *binary relation* or a *correspondence* `R` between sets `A` and `B` is a subset of their Cartesian product `A×B`, i.e. `R ⊆ A×B`. This implies that any possible relation from `A` to `B` is an element of the powerset of their Cartesian product, `R ∈ 𝒫(A×B)`. In fact, the number of possible relations from A to B is `2ⁿᵐ`, where `n = |A|` and `m = |B|`.

A binary relation is a set of ordered pairs, `{ (a,b) | a ∈ A, b ∈ B }`, with each element (ordered pair) representing an association that an element in `A` has with an element in `B`.

An order pair, `(a,b)`, encodes the concept of a relation `R`: an element `a ∈ A` is related to an element `b ∈ B` iff the ordered pair `(a,b)` belongs to the set of ordered pairs that defines the relation.

An order pair, `(a,b)`, consists of two components (elements): the first component `a` comes from the source set `A`, and the second from the taget set `B`, which encodes the directionality of the relation since an ordered pair (a,b) is different from an ordered pair (b,a).

Set `A` is called the domain or the *source* set, and set `B` is the codomain or the *target* set. However, in a relation `{ (a,b) | a ∈ A, b ∈ B }`, the set of all `a`'s constitutes a set called the *domain of the relation* and it may not be exactly the same as `A` but an `A`'s subset. Similarly, the set of all `b`'s constitutes a set called the *codomain of the relation* and it may not be exactly the same as `B` but a `B`'s subset. With functions, all elements of the source set `A` are "engaged", so the domain is unambiguously identified, but relations do not require all elements of `A` to participate. On the other hand, the situation with codomain is the same with fucntions and relations, i.e. not every element in the target set B need have an element in A to which it is associated to. With fucntions, this means there is a *codomain*, i.e. the target set `B`, and there is a *range*, i.e. a subset of `B` consisting only of those `b`'s that are associated to some `a` from `A`. The *field of the relation* is the union of the domain and codomain set of the relation.

This terms also appear:
* The **domain of definition** or **active domain** of `R` is the set of all `x` such that `xRy` for at least one `y`.
* The **codomain of definition**, **active codomain**, **image** or **range** of `R` is the set of all `y` such that `xRy` for at least one `x`.
* The **field** of `R` is the union of its domain of definition and its codomain of definition.

When X=Y, a binary relation is called a *homogeneous relation* (endorelation). To emphasize the fact that X and Y are allowed to be different, a binary relation is also called a *heterogeneous relation*.

In a binary relation, the order of the elements is important; if `x≠y` then `yRx` can be true or false independently of `xRy`; e.g. 3 divides 9, but 9 does not divide 3.


R ⊆ A×B, R = { (a,b) | a ∈ A, b ∈ B }
- A is called the source, domain, set of departure of `R`
- B is called the target, codomain, set of destination of `R`
- { a | (a,b) ∈ R } is the *domain of the relation*
- { b | (a,b) ∈ R } is the *codomain of the relation*
- { x | x = a ∨ x = b, (a,b) ∈ R } is the *field of the relation*
- directionality is from A to B
- all possible relations from A to B: `2ⁿᵐ`, where `n = |A|`, `m = |B|`
- `R` is sometimes called the *graph of the relation*, while the entire relation is a triple `(A, R, B)`. This is because specifying the source and target set is sometimes critical fro identifying a relation (e.g. empty relation). There is a similar problem with functions - sometimes it is necessary to explicitly specify the codomain set of a function for it to be unambiguously defined; e.g. two functions with the same domain and graph sets, but with different codomain sets are distinct functions.



## Overview

A binary relation over sets `X` and `Y` is a new set - a set of ordered pairs `(x, y)` where `x` comes from `X` and `y` from `Y`.

A binary relation is a generalization of the more widely understood idea of a unary function.

A binary relation encodes the common concept of relation: an element x is related to an element y, if and only if the pair (x, y) belongs to the set of ordered pairs that defines the binary relation.

A binary relation is the most studied special case n = 2 of an n-ary relation over sets `X₁, …, Xₙ`, which is a subset of the Cartesian product `X₁ × ⋯ × Xₙ`.

The arity signifies the number of places in the ordered pairs that make up the relation. An n-ary relation over `n` many sets, indexed by the integer `i`, so that `1 <= i <= n`, is denoted by `A₁, …, Aₙ`; an arbitrary set in this sequence is denoted by `Aᵢ`.

## Notation

- R ⊆ A×B
- R ∈ 𝒫(A×B)
- R = { (a,b) | a ∈ A, b ∈ B }
- `(a,b) ∈ R` or `aRb` iff `a` is associated to `b`.
  it is read: `x` is `R`-related to `y`
- `(a,b) ∉ R` or `a¬Rb` or `¬aRb` iff `a` is not associated to `b`.
  it is read: `x` is not `R`-related to `y`
- Cartesian product, A×B = { (a,b) | ∀ab. a ∈ A, b ∈ B }
- The universal (total) relation is the Cartesian product
- The null (empty) relation from A to B is the empty set
- All other relations from A to B are in between the null and universal relation

If A and B are the same set, then a relation is on a set A, R ⊆ A². There are 3 easily identifiable relations on any set A:
- The universal (total) relation, R = A×A = { (a,a) | ∀a. a ∈ A }
- The null (empty) relation, R = ∅
- The identity relation, R = Iᴀ = { (a,a) | ∀a. a ∈ A }

A *unary function* may be defined as a binary relation. A unary function `f` takes an element `a` from the domain set `A` to an element `b` from the codomain set, denoted `f(a) = b`. But function `f` is also a relation and thus a set - a set consisting of ordered pairs of the form `(a, b)` i.e. `(a, f(a))`.



## Operations

### Union

- A union of two relations is the union of their corresponding sets.
- The identity element is the empty relation, `R ∪ ∅ = R`

If R and S are binary relations over sets X and Y then 
`R ∪ S = {(x,y) | xRy ∨ xSy }` 
is the union relation of relations R and S over sets X and Y.

Examples
- (≤) = (<) ∪ (=)
- (≥) = (>) ∪ (=)
- (⊆) = (⊂) ∪ (=)

### Intersection

- Intersection of relations is the intersection of their corresponding sets.
- The identity element is the universal relation, `R ∩ 𝒰 = R`

If R and S are binary relations over sets X and Y then 
`R ∩ S = {(x,y) | xRy ∧ xSy }` 
is the intersection relation of relations R and S over sets X and Y.

Examples:
- relation "is divisible by 6" is the intersection of the relations "is divisible by 3" and "is divisible by 2", `6|x = 2|x ∩ 3|x`

### Composition


If R is a binary relation over sets X and Y, 
and S is a binary relation over sets Y and Z then 
`S ∘ R = {(x,z) | ∃y ∈ Y. xRy ∧ ySz}`
is the composition relation of R and S over X and Z, 
denoted by `S ∘ R`, sometimes by `R; S`.

If X=Y, the identity element is the identity relation, `R ∘ Iᴀ = R`.

In fact, the identity relation is the left and right identity element of composition: `Iᴀ ∘ R = R = R ∘ Iᴀ` (as usual).


```
X = {1,2,3}
Y = {1,2,3,4}

X          Y             X          Y               X          Y
     R                        S                        S ∘ R
1 -------> 2             2 -------> 3               1 -------> 3
1 -------> 1             1 -------> 2               1 -------> 2
2 -------> 1             1 - - - -> 2               2 -------> 2
2 -------> 3             3 -------> 4               2 -------> 4



X          X             X          X               X          X
     R                        Iₓ                       Iₓ ∘ R
1 -------> 2             2 -------> 2               1 -------> 2
1 -------> 1             1 -------> 1               1 -------> 1
2 -------> 1             1 -------> 1               2 -------> 1
2 -------> 3             3 -------> 3               2 -------> 3

                                                     Iₓ ∘ R = R


X          X             X          X               X          X
     Iₓ                        R                       R ∘ Iₓ
1 -------> 1             1 -------> 2               1 -------> 2
1 -------> 1             1 -------> 1               1 -------> 1
2 -------> 2             2 -------> 1               2 -------> 1
2 -------> 2             2 -------> 3               2 -------> 3

                                                     R ∘ Iₓ = R
```


The order of R and S in the notation `S ∘ R` agrees with the standard notational order for composition of functions. For example, the composition `(is parent of) ∘ (is mother of)` yields `(is maternal grandparent of)`, while the composition `(is mother of) ∘ (is parent of)` yields `(is grandmother of)`. For the former case, if x is the parent of y and y is the mother of z, then x is the maternal grandparent of z.

### Converse

If R is a binary relation over sets X and Y then 
`Rᵀ = {(y,x) | xRy}` 
is the converse relation of R over Y and X.

For example, 
- `=` is the converse of itself
- `≠` is the converse of itself
- `<` and `>` are each other's converses
- `≤` and `≥` are each other's converses

>A binary relation is equal to its converse if and only if it is symmetric.


### Complement

If R is a binary relation over sets X and Y then 
`Rᶜ = {(x,y): ¬xRy}` 
is the complementary relation of R over X and Y.

For example, 
- `=` and `≠` are each other's complements
- `⊆` and `⊈` are each other's complements
- `⊇` and `⊉` are each other's complements
- `∈` and `∉` are each other's complements

for total orders, also
- `<` and `≥` are each other's complements
- `>` and `≤` are each other's complements


The complement of the converse relation `Rᵀ` is the converse of the complement: `(Rᵀ)ᶜ = (Rᶜ)ᵀ`


If X=Y, the complement has the following properties:
- if a relation is symmetric, then so is the complement.
- complement of a reflexive relation is irreflexive, and vice versa.
- complement of a strict weak order is a total preorder, and vice versa.


### Restriction

If R is a binary homogeneous relation over a set X, 
and S is a subset of X, `S ⊆ X`, then
`R|ₛ = {(x,y) | xRy ∧ x ∈ S ∧ y ∈ S}` 
is the **restriction relation** of R to S over X.

If R is a binary relation over sets X and Y 
and if S is a subset of X, `S ⊆ X`, then
`R|ₛ = {(x,y) | xRy and x ∈ S}` 
is the **left-restriction relation** of R to S over X and Y.

If R is a binary relation over sets X and Y 
and if S is a subset of Y, `S ⊆ Y`, then
`R|ˢ = {(x,y) | xRy and y ∈ S}` 
is the **right-restriction relation** of R to S over X and Y.

If a relation is reflexive, irreflexive, symmetric, antisymmetric, asymmetric, transitive, total, trichotomous, a partial order, total order, strict weak order, total preorder (weak order), or an equivalence relation, then so too are its restrictions.

However, the transitive closure of a restriction is a subset of the restriction of the transitive closure, i.e., in general not equal. For example, restricting the relation "x is parent of y" to females yields the relation "x is mother of the woman y"; its transitive closure does not relate a woman with her paternal grandmother. On the other hand, the transitive closure of "is parent of" is "is ancestor of"; its restriction to females does relate a woman with her paternal grandmother.

Also, the various concepts of *completeness* (not to be confused with being "total") do not carry over to restrictions. For example, over the real numbers a property of the relation ≤ is that every non-empty subset S ⊆ R with an upper bound in ℝ has a least upper bound (also called supremum) in ℝ. However, for the rational numbers this supremum is not necessarily rational, so the same property does not hold on the restriction of the relation ≤ to the rational numbers.

A binary relation R over sets X and Y is said to be **contained** in a relation S over X and Y, written `R ⊆ S`, if R is a subset of S, 
i.e. `∀x ∈ X. ∀y ∈ Y. xRy ⇒ xSy`.

If R is contained in S and S is contained in R, then R and S are called **equal** written `R = S`. 

If R is contained in S but S is not contained in R, then R is said to be **smaller** than S, written `R ⊊ S`. 

For example, on the rational numbers, the relation `>` is smaller than `≥`, and equal to the composition `> ∘ >`.


## Representations

- Matrix representation
- Graph
- Table

### Matrix representation

Binary relations over sets X and Y can be represented algebraically by logical matrices indexed by X and Y with entries in the Boolean semiring (addition corresponds to OR and multiplication to AND) where matrix addition corresponds to union of relations, matrix multiplication corresponds to composition of relations (of a relation over X and Y and a relation over Y and Z), the Hadamard product corresponds to intersection of relations, the zero matrix corresponds to the empty relation, and the matrix of ones corresponds to the universal relation. Homogeneous relations (when X = Y) form a matrix semiring (indeed, a matrix semialgebra over the Boolean semiring) where the identity matrix corresponds to the identity relation.

```
    R                 S             R ∖ S

≤ a b c d         = a b c d       < a b c d
a 1 1 1 1         a 1             a   1 1 1
b   1 1 1         b   1           b     1 1
c     1 1         c     1         c       1
d       1         d       1       d        
```


## Special types of binary relations

If relations over proper classes are allowed:

**Set-like relation** or **local relation**
- `∀x ∈ X`, the class of all `y` such that `yRx` is a set.
- This makes sense only if relations over proper classes are allowed.
- e.g the usual ordering < over the class of ordinal numbers is a set-like relation, while its inverse > is not.

### Uniqueness properties

left-unique
injective


**Injective** or **left-unique**
- `∀xz ∈ X. ∀y ∈ Y. xRy ⋀ zRy -> x = z`
- for such a relation, `{Y}` is called a primary key of `R`

**Functional** or **right-unique** or **right-definite** or **univalent**
- partial function, `∀x ∈ X. ∀y,z ∈ Y. xRy ⋀ xRz -> y = z`
- such a binary relation is called a partial function
- for such a relation, `X` is called a primary key of `R`

- One-to-one:       functional and     injective
- One-to-many:  not functional and     injective
- Many-to-one:      functional and not injective
- Many-to-many: not functional and not injective


### Totality properties

Totality properties (definable if both co/domain specified):
* *Serial* (left-total)
* *Surjective* (right-total, onto)

### Uniqueness and totality properties

Uniqueness and totality properties (definable if both co/domain specified):
* *function*: a binary relation that is functional and serial
* *injection*: a function that is injective
* *surjection*: a function that is surjective
* *bijection*: a function that is injective and surjective





## Refs

https://en.wikipedia.org/wiki/Binary_relation
https://en.wikipedia.org/wiki/Homogeneous_relation

https://en.wikipedia.org/wiki/Composition_of_relations
https://en.wikipedia.org/wiki/Converse_relation
https://en.wikipedia.org/wiki/Duality_(order_theory)
https://en.wikipedia.org/wiki/Complement_(set_theory)#Complementary_relation
https://en.wikipedia.org/wiki/Restriction_(mathematics)
