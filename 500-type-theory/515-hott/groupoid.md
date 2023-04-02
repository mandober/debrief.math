# Groupoid

https://en.wikipedia.org/wiki/Groupoid

In mathematics, especially in category theory and homotopy theory, a **groupoid** (less often *Brandt groupoid* or *virtual group*) generalises the notion of group in several equivalent ways.

A groupoid can be seen as
- a group with a partial function replacing the binary operation.
- a category in which every morphism is invertible.

A category in which every morphism is invertible can be viewed as augmented with a unary operation on the morphisms, called inverse (by analogy with group theory). A groupoid where there is only one object is a usual group.

Under dependent typing, a category in general can be viewed as a *typed monoid*, and similarly, a groupoid can be viewed as a *typed group*. Then the morphisms map one object to another, forming a dependent family of types; thus, morphisms might be typed `g : A → B` and `h : B → C`. The composition is then a total function, `(∘) : (B → C) → (A → B) → A → C`, such that `h ∘ g : A → C`.

Special cases include:
- *Setoids*: sets that come with an equivalence relation
- *G-sets*: sets equipped with an action of a group `G`

Groupoids are often used to reason about geometrical objects such as manifolds. Heinrich Brandt (1927) introduced groupoids implicitly via Brandt semigroups.

## Contents

- Definitions
  - Algebraic
  - Category theoretic
  - Comparing the definitions
  - Vertex groups and orbits
  - Subgroupoids and morphisms
- Examples
  - Topology
  - Equivalence relation
    - Examples
  - Čech groupoid
  - Group action
    - Finite set
    - Quotient variety
  - Fiber product of groupoids
  - Homological algebra
  - Puzzles
  - Mathieu groupoid
- Relation to groups
- Category of groupoids
  - Relation to Cat
  - Relation to sSet
  - Groupoids in Grpd
- Groupoids with geometric structures


## Definitions

A groupoid is an algebraic structure `(G,*)` consisting of a non-empty set `G` and a binary partial function `*` defined on `G`.

### Algebraic

A groupoid is a set `G` 
with a unary operation `⁻¹ : G → G`, 
and a partial function `* : G ⨯ G ⇀ G`.

Here, `*` is not a binary operation because it is not necessarily defined for all pairs of elements of `G` (precise conditions under which `*` is defined vary by situation).

The operations `*` and `⁻¹` have the following axiomatic properties, `∀abc ∈ G`
1. *associativity*: 
  if `a * b` and `b * c` are defined, 
  then `(a * b) * c` and `a * (b * c)` are defined 
  and  `(a * b) * c = a * (b * c)`.
  Conversely, 
  if one of `(a * b) * c` and `a * (b * c)` is defined, 
  then so are both `a * b` and `b * c`, 
  and also `(a * b) * c = a * (b * c)`.
2. *inverse*: 
  `a⁻¹ * a` and `a * a⁻¹` are always defined.
3. *identity*: 
  if `a * b` is defined, 
  then `a * b * b⁻¹ = a`, 
  and  `a⁻¹ * a * b = b` 

(The last two axioms already show that these exps are defined and unambiguous)

Two easy and convenient properties follow from these axioms:
4. `(a⁻¹)⁻¹ = a`
5. if `a * b` is defined, then `(a * b)⁻¹ = b⁻¹ * a⁻¹`

* Proof of first property (4): 

```hs
-- from (2) and (3) we obtain 

 a⁻¹    =  a⁻¹    * a   *  a⁻¹     -- and
(a⁻¹)⁻¹ = (a⁻¹)⁻¹ * a⁻¹ * (a⁻¹)⁻¹

-- Substituting the first into the second and applying (3) two more times yields

  (a⁻¹)⁻¹
= (a⁻¹)⁻¹ * a⁻¹ * a * a⁻¹ * (a⁻¹)⁻¹
= (a⁻¹)⁻¹ * a⁻¹ * a
= a
✓
```


* Proof of property (5): 
since `a * b` is defined, so is `(a * b)⁻¹ * a * b`. 
Therefore `(a * b)⁻¹ * a * b * b⁻¹ = (a * b)⁻¹ * a` is also defined. 
Moreover since `a * b` is defined, so is `a * b * b⁻¹ = a`. 
Therefore `a * b * b⁻¹ * a⁻¹` is also defined. 
From (3) we obtain    
`(a * b)⁻¹ = (a * b)⁻¹ * a * a⁻¹ = (a * b)⁻¹ * a * b * b⁻¹ * a⁻¹ = b⁻¹ * a⁻¹`.
✓





### Category theoretic

A groupoid is a small category in which every morphism is an isomorphism, i.e. every morphism is invertible. More explicitly, a groupoid `G` is:
- a set `G₀` of objects
- for each pair of objects `x,y ∈ G₀` there exists a possibly empty set `G(x,y)` of morphisms from `x` to `y`. We write `f : x → y` to indicate that `f` is an element of `G(x,y)`
- for every object `x`, a designated element `idₓ` of `G(x,x)`
- for each triple of objects `x`, `y`, `z`, a function    
  `compˣʸᶻ : G(y,z) × G(x,y) → G(x,z) : (g,f) ↦ gf`
- for each pair of objects `x`, `y`, 
  a function `inv : G(x,y) → G(y,x) : f ↦ f⁻¹`

satisfying, for any `f : x → y`, `g : y → z`, `h : z → w`
- `f idₓ = f` and `idʸ f = f`
- `(hg)f = h(gf)`
- `f f⁻¹ = idʸ` and `f⁻¹ f = idₓ`

If `f` is an element of `G(x,y)` then `x` is called the source of `f`, written `s(f)`, and `y` is called the target of `f`, written `t(f)`.

A groupoid `G` is sometimes denoted as `G₁ ⇉ G₀`, where `G₁` is the set of all morphisms, and the two arrows `G₁ → G₀` represent the source and the target.

More generally, one can consider a groupoid object in an arbitrary category admitting *finite fiber products*.


### Comparing the definitions

The algebraic and category-theoretic definitions are equivalent, as we now show.


### Vertex groups and orbits
### Subgroupoids and morphisms

## Examples
### Topology
### Equivalence relation
### Examples
### Čech groupoid
### Group action
### Finite set
### Quotient variety
### Fiber product of groupoids
### Homological algebra
### Puzzles
### Mathieu groupoid

## Relation to groups

## Category of groupoids
### Relation to Cat
### Relation to sSet
### Groupoids in Grpd

## Groupoids with geometric structures








## Refs

https://en.wikipedia.org/wiki/Groupoid
https://en.wikipedia.org/wiki/Groupoid_object
https://en.wikipedia.org/wiki/Groupoid_algebra
https://en.wikipedia.org/wiki/%E2%88%9E-groupoid
https://en.wikipedia.org/wiki/Double_groupoid
https://en.wikipedia.org/wiki/Fundamental_groupoid
https://en.wikipedia.org/wiki/Lie_groupoid
https://en.wikipedia.org/wiki/Magma_(algebra)
https://en.wikipedia.org/wiki/Mathieu_groupoid
https://en.wikipedia.org/wiki/Monodromy
https://en.wikipedia.org/wiki/Partial_groupoid
https://en.wikipedia.org/wiki/Quantum_groupoid

https://en.wikipedia.org/wiki/Path_(topology)
https://en.wikipedia.org/wiki/Automata_theory
https://en.wikipedia.org/wiki/Fibred_category
https://en.wikipedia.org/wiki/Isotropy
https://en.wikipedia.org/wiki/Stack_(mathematics)
https://en.wikipedia.org/wiki/Equivalence_relation
https://en.wikipedia.org/wiki/Algebraic_topology
