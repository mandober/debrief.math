# Set Theory :: DEFINITIONS


## Set relations
- membership relation, `x ∈ y`


## Membership relation

The symbol `∈` denotes the elemetary relation on sets, the *membership relation*, which is usually understood as a relation between an object, `x`, and set, `y`, although in set theories where everything is a set, it is actually a relation between two sets, `x` and `y`.

The proposition `x ∈ y` means that `x` belongs to a `y`, and since it is a proposition it may or may not hold. Intuitively, `x` is usually understood to be an *object* and `y` a *set* which contains it.

Normally, propositions like this appear in a context which makes it clear what the variables `x` and `y` range over. That is, both `x` and `y` range over the elements of the *domain of discourse* (DoD), since *first-order logic* (FOL) is the de facto language of sets.

In FOL, variables can only range over individuals (basic elements), as opposed to ranging over sets of individuals as in second-order logic, or over sets of sets of individuals like in third-order logic, and so on in higher-order logics. Because of this restriction of FOL, some axioms of set theories must be expressed as *axiom schemas*, which are collections of axioms where each axiom instance must be instantiated with a particular *predicate*. In higher-order logic, this would require only a single axiom because variables there can range over predicates.

For example, the Axiom Schema of Specification allows us to select a number of elements (i.e. a subset of elements) from some specific set `A`. In general, the subset of a set `A` satisfying a predicate `P` may be written in set-builder notation as `B = {x ∈ A | P(x)}`, meaning we are considering only objects that are already elements of set `A` for membership in a new set `B`; and for any element `x` of `A` to qualify, the predicate `P(x)` must hold. The same set `B` can be expressed in FOL by `∀A ∃B(∀x(x ∈ B ⇔ x ∈ A ∧ P(x))`. Both set specifications express the same thing: given any set `A`, we can create a new set `B` by selecting just those elements in `A` that satisfy the predicate `P`. The important thing to note though, is that the symbol `P` is actually unqualified (unquantified). The axiom wants to state some things *for any predicate* `P` - in HOL, `P` would be universally quantified, `∀P …`, a the beginning of the previous formula, but we cannot quantified over predicates in FOL. Preferring to remain in the less complex land of FOL, the scheming mathematicians have schemingly worked out a cunning scheme: instead of it being a single axiom, it will be an *axiom schema*! An infinity of axioms posing as one. An axiom schema is *instantiated* with a particular predicate, becomming a plain old FOL formula. When an axiom schema is *instantiated* with a particular predicate, we get back a single, plain ol' FOL-compliant formula. Because the number of predicates in infinite, the number of instances of a particular axiom schema is infinite as well. ZF set theory has 






And in FOL, the DoD consists of elements, which in the context of many set theories, and even in naive approaches to sets, consists of sets. 


In many set theories, they both range over the 



The object on the left can be any mathematical object 

 (whatever it may be, but it is often called an object, even when it is a set)


Relates a set `y` and an object `x`: `x ∈ y` means `∈(x,y)`, 
  which forms a proposition which a certain truth value.
  However, writing `x ∈ y` often means that the proposition holds, 
  that object `x` is indeed a element on set `y`, while the form 
  `x ∉ y` is used to denote the opposite.
   i.e. `¬(x ∈ y)` i.e. `∉(x,y)`

- can be introduced as a primitive in naive set theory
- Definitions
  - or defined as: any set S is a member of the universe U, `S ∈ U`
  - `∉` ≝ (S ∉ x) ≡ ¬(x ∈ S)
  - `∋` ≝ (S ∋ x) ≡  (x ∈ S)
  - `∌` ≝ (S ∌ x) ≡ ¬(x ∈ S)
- Relational properties
  - Reflexivity:   ∀x(x ∈ x)                      [✘] not in general
  - Irreflexivity: ∀x(¬(x ∈ x))  ==  ∀x(x ∉ x)    [✘] yes in general
  - Symmetry:      ∀x∀y(x ∈ y ⇒ y ∈ x)            [✘] not in general
  - Asymmetry:     ∀x∀y(x ∈ y ⇒ y ∉ x)            [✘] yes in general
  - Antisymmetry:  ∀x∀y(x ∈ y ⋀ y ∈ x ⇒ x = y)    [✘] not in general
    - [?] A = {B},  B = {A},    thus A ∈ B ⋀ B ∈ A `⇏` A = B     [✘]
      - A = {B} = {{A}} = {{{B}}} = …
      - B = {A} = {{B}} = {{{A}}} = …
    - [?] A = {A,B}, B = {B,A}, thus A ∈ B ⋀ B ∈ A `⇒` A = B     [✔]
      - A = {A, B} = {{A,B}, {B,A}}   …parallel substitution
                    = {{A,B}, {A,B}}
                    = {{A,B}}
                    = {{{A,B}, {A,B}}}
                    = {{{A,B}}}
                    = {{{{A,B}, {A,B}}}}
                    = {{{{A,B}}}}
      - A = {A, B} = {A, {B, A}}  …one elem at the time substitution
                    = {A, {B, {A,B}}}
                    = {A, {B, {A, {B,A}}}}
                    ≡ {A, {B, {A, {A,B}}}}
                    = {A, {B, {A, {A, {B,A}}}}}
                    ≡ {A, {B, {A, {A, {A,B}}}}}  …now other subst
                    ≡ {A, {B, {A, {{A,B}, {A,B}}}}}
                    ≡ {A, {B, {A, {{A,B}}}}}
                    ≡ {{A,B}, {{A,B}, {{A,B}, {{A,B}}}}}
                    ≡ { {A,B}, {{A,B}, { {A,B}, {{A,B}} } } }
                    = ???
    - [?] A = {A,B}, B = {B,A}, thus A ∈ B ⋀ B ∈ A ⇒ A = B  [✔]
    - [?] A = {A}, B = {B}, thus A ∈ A ⋀ B ∈ B ⇒ what [?]
    - [?] A = {A,B}, B = {B,A}, thus (A ∈ B ⋀ A ∈ A) ⋀ (B ∈ B ⋀ B ∈ A) ⇒ [?]




## Set operations



## Questions to pursue

- Does being an element of a set imply being its subset? `x ∈ S ⇒ x ⊆ S`?
- Does being a subset of a set imply being its element?, `x ⊆ S ⇒ x ∈ S`?
- Does a set contain all elements of its elements (is it transitive)?
- Does a set contain all subsets of its elements (is it swollen)?
- Is a set transitive, swolen, supercomplete?
- Is a set a member of itself? `x ∈ x`? Or not a member of itself, `x ∉ x`?
- Is a set a subset of itself? `x ⊆ x` ✔ always
- What is the union of set `x` with
  - itself?    `x ⋃ x = x` ✔ always
  - empty set? `x ⋃ ∅ = x` ✔ always, `∅ ≡ ⊥`
  - universe,  `x ⋃ 𝒰 = 𝒰` ✔ always, `𝒰 ≡ ⊤`
- What is the intersection of set `x` with
  - itself?    `x ⋂ x = x` ✔ always
  - empty set? `x ⋂ ∅ = ∅` ✔ always
  - universe,  `x ⋂ 𝒰 = x` ✔ always
- What is the relative difference of set `x` with
  - itself?    `x Δ x = ∅` ✔ always
  - empty set? `x Δ ∅ = x` ✔ always
  - universe,  `x Δ 𝒰 = 𝒰` ✔ always
- What is the complement of set `x`
  - `x̅ = 𝒰 ∖ x`
- Disjoint sets `x` and `y`
  - x and y are disjoint if x ⋂ y = ∅
  - union of disjoint sets `x ⋃ y = 𝒰 ∖ (x ⋃ y)`
  - disjoint union of disjoint sets `|x ⊌ y| = |x ∪ y|`
- Overlapping sets `x` and `y`
- Set `x` contained in set `y`
  - x ⊆ y, but they may also be equal
  - x ⊂ y, x ⊆ y but x ≠ y
  - `x ⊆ y ⋁ y ⊆ x ⋁ x = y`  …trichotomy
  - `x ⊆ y ⋀ y ⊆ x ⇒ x = y`  …antisymmetry
  - `∀x(x ⊆ x)`              …reflexivity
    - `x ⊆ y ⇒ x = y`        …coreflexivity?
  - `x ⊆ y ⇒ y ⊆ x`          …asymmetry



## Subset, powerset, membership
- x ⊆ A ⇔ x ∈ 𝒫(A)
- x ⊆ A ⇒ x ∈ A ⋁ x ∉ A
- ∀x(x ∈ 𝒫(x))
- ∀x(x ⊆ 𝒫(x))

## Axiom of Union

- `∀𝓕 ∃A (∀x(x ∈ A ⇔ ∃Y(Y ∈ 𝓕 ⋀ x ∈ Y)))`
- N-ary union
  - *x ∈ ⋃𝓕  ⇔  ∃Y(Y ∈ 𝓕 ⋀ x ∈ Y)*
  - `∃ : ⋃ : ⋁`, ∃ generalizes ⋁ (Y₀ ∨ Y₁ ∨ Y₂ ∨ … ∨ Yₙ)
- N-ary intersection
  - *x ∈ ⋂𝓕  ⇔  ∀Y(Y ∈ 𝓕 ⋀ x ∈ Y)*
  - `∀ : ⋂ : ⋀`, ∀ generalizes ⋀ (Y₀ ∧ Y₁ ∧ Y₂ ∧ … ∧ Yₙ)
- e.g.
  - 𝓕 = {{1,2}, {2}, {2,3,4}} = {Y₀, Y₁, Y₂}  ∀Y vs ∃Y
    - ⋂𝓕 = {1,2,3,4}
    - ⋂𝓕 = {2}
- Identities
  - ∀x∀y(x ≤ y ⇔ (x ⋃ y = x))
  - ∀x∀y(x ≤ y ⇔ (x ⋂ y = x))
  - ∀x∀y(x ≤ y ⇔ (x ∧ y = x)) lattices, ∧ is meet

## Axiom of Infinity

- `∃I(∅ ∈ I ⋀ ∀x(x ∈ I ⇒ x⋃{x} ∈ I))`
- i.e. there is a set `ω` that behaves like ℕ; in fact, `ω = ℕ`
- inductive set
  - 0 := ∅, S(n) := n ⋃ {n}, i.e. set that has 0 and S is an inductive set
  - `ω` is a minimal inductive set
- Identities
  - ∀n ∈ ω. `n = {0, 1, 2, …, n-1}`, i.e. `n` is an n-element set
  - ∀x∀y ∈ ω(x ≤ y ⇔ x ⊆ y)
  - ∀x∀y ∈ ω(x ≤ y ⇔ x ∈ y)
    - e.g. 1 ≤ 2 ⇒ 1 ∈ 2 ⋀ 1 ⊆ 2
  - ∀x∀y ∈ ω(x ≤ y ⇔ (x ⋃ y = x))
  - ∀x∀y ∈ ω(x ≤ y ⇔ (x ⋂ y = x))
    - e.g. 1 ≤ 2 ⇒ (1 ⋃ 2 = 2) ⋀ (1 ⋂ 2 = 1)
  - Lattices
    - ∀x∀y ∈ ω(x ≤ y ⇔ x ∧ y = x)  …∧ is meet
    - ∀x∀y ∈ ω(x ≤ y ⇔ x ∨ y = y)  …∨ is join
- Supercomplete set
  - A is transitive  if all elements of each element of A are also in A
  - A is swollen set if all subsets  of each element of A are also in A
  - supercomplete set = transitive + swollen
  - `ω` is transitive and swollen set
  - `ω` is supercomplete set

## Set operations
  - union, `A ⋃ B`
  - intersection, `A ⋂ B`
  - relative differences, `A ∖ B`, `B ∖ A`
  - absolute difference, `A Δ B`
  - complement (inverse): `A' = A⁻¹`
  - disjoint union, `A ⊌ B`
  - Set complement, `A̅`
  - Cartesian product, `A ⨯ B`
  - Set partitioning
  - Set covering
  - Relations between the universal and empty set
    - `𝓤 ⋃ ∅ = 𝓤`, `𝓤 ⋂ ∅ = ∅`, `𝓤 ∖ ∅ = 𝓤`, `𝓤' = ∅`, `∅' = 𝓤`
  - Relations between the universal and any set
    - `𝓤 ⋃ A = 𝓤`, `𝓤 ⋂ A = A`, `𝓤 ∖ A = A'`, `𝓤 = A ⋃ A'`

## Set elements
- the empty set, `∃S (∀x (x ∉ S) → S = ∅)`
- nonempty set,  `∃S (∃x (x ∈ S) ⋀ S ≠ ∅)`
- in constructive math:
  - `A empty -------> ∀x(x ∉ A)`
  - `A nonempty --> ¬(∀x(x ∉ A))`
      ¬(∀x(x ∉ A))
    = ¬(∀x(¬(x ∈ A))
    = ¬(∀x(x ∉ A))
    = ¬∀x(¬(x ∉ A))
    =  ∃x(¬¬(x ∉ A))
    =  ∃x(x ∉ A)

## Quantifiers
- `∀x.P(x)  ⇔  P(x₀) ∧ P(x₁) ∧ … ∧ P(xₙ)`  each one, all
- `∃x.P(x)  ⇔  P(x₀) ∨ P(x₁) ∨ … ∨ P(xₙ)`  at least one, any
- Definitions
  - `!∃  ≝  ∃x(P(x) ⋀ ∀y(P(y) ⇒ x = y))`
  - ∄x(P(x)) ≝ ¬∃x(P(x))
  - `∀x.Px = ¬∃x.¬Px`
  - ∃  ≝  ∃x.Px ≡ ¬∀x.¬Px
  - ∀x.¬Px = ¬∃x. Px
- Equvalence
  -  ∃x. Px = ¬∀x.¬Px
  - ¬∃x. Px =  ∀x.¬Px
  -  ∃x.¬Px = ¬∀x. Px
  - ¬∃x.¬Px =  ∀x. Px
  + `∀x. Px = ¬∃x.¬Px` = ∄x.¬Px
  + ¬∀x. Px =  ∃x.¬Px
  +  ∀x.¬Px = ¬∃x. Px  = ∄x. Px
  + ¬∀x.¬Px =  ∃x. Px


## Symbols
  ∈ ∉ ∋ ∌ ∊
  ⊂ ⊄ ⊃ ⊅
  ⊆ ⊈ ⊇ ⊉
  ∩ ⋂ ∪ ⋃ ⊌ ⨄
  ≠ ≄ ≃ ≅ ≇
  ⊖ ⊝ ⊕ ⊗ ⨁ ⨂
  ⊍ ⊎ ⨃ ⋯ ∁ ℵ₀ … ↦
