# Relations: Formulae



* Prerequisits:
  - let `A` and `B` be sets, `A, B : Set`, `A = { a | ∀a ∈ A }`
  - let `a` and `b` be variables that range over the elements of
    the corresponding set: `a ∈ A`, `b ∈ B`, …
  - cardinality: `n = |A|`, `m = |B|`
  - ordered pair: `∃a ∈ A. ∃b ∈ B. ⟨a,b⟩` or `∃a ∈ A. ⟨a,a⟩`
  - Carthesian product between 2 sets: `A⨯B ≝ { ⟨a,b⟩ | ∀ab. a ∈ A, b ∈ B }`
  - Carthesian product on a set:  `A² = A⨯A ≝ { ⟨a,a⟩ | ∀a. a ∈ A }`
  - universal set (set of all sets): `𝓤` = { S | ∀S : Set }
  - poweset of set A, `𝓟(A) ≝ { S | ∀S. S ⊆ A }`
  - poweset cardinality: `|𝓟(A)|` = `2ⁿ` where `n = |A|`
  - poweset elements are sets, each one a subset of the set `A`, incl. `∅`
    - the two "extreme" subsets, `∅` and `A` itself, are always in `𝓟(A)`
    - even in case of `𝓟(∅) = {∅}`, only here they are the same object
    - `𝓟(𝓟(∅)) = 𝓟({∅}) = { ∅, {∅} }`


* Relations:
  * any relation is a subset of the product of 2 sets:
    `𝓡 ⊆ A⨯B` and `𝓡 ≝ { ⟨a,b⟩ | a ∈ A, b ∈ B }`
  * any relation between 2 sets: `a𝓡b -> ⟨a,b⟩ ∈ 𝓡`
  * any relation on a set: `a𝓡a -> ⟨a,a⟩ ∈ 𝓡`
  * any non-total relation is a proper subset of the set product: `𝓡 ⊂ A⨯B`
  * n-ary relation over sets `⋃ (i=1) A₁, …, Aₙ` is an element of the powerset of `A₁ × ⋯ × Aₙ`, that is, `R(A₁, …, Aₙ) ∈ 𝓟(A₁ × ⋯ × Aₙ)`
  * A relation 𝓡 over sets A and B is fully specified by the 3-tuple:
    `𝓡 ≝ ⟨A,B,G⟩ where G ⊆ A⨯B`
    meaning, to fully define a relation you have to specify the domain set, the codomain set, and the set of ordered pairs that make the relation itself.


* Fundamental relations:
  * total (universal) relation on 2 sets is equal to their product: `𝓡ᵤ = A⨯B`
  * null (empty) relation relates no elements: `𝓡₀ = ∅`
  * between these two extremes are all other relations


* Constructing new relations from old relations:
  * `𝓡'` is the complement of the relation 𝓡 on a set A: `𝓡' = A² \ 𝓡`
    - complement of a universal relation is the null relation, and vice versa
  * transposition of relation 𝓡: `𝓡ᵀ`
    - `∀⟨a,b⟩ ∈ 𝓡 -> ⟨b,a⟩ ∈ 𝓡ᵀ`
  * composition of relations 𝓡 and 𝓢: `𝓡 ⨾ 𝓢`
  * if `R` and `S` are `n`-ary relations on `A` then 
    the following subsets of Aⁿ will also be n-ary relations on A:
    - `R ⋃ S`
    - `R ⋂ S`
    - `R \ S`
    - `R' = A² \ R`
    - `S' = A² \ S`

* Basic relations
  * reflexive: `𝓡 ⊆ A²` . `∀a. ⟨a,a⟩ ∈ 𝓡` or `∀a ∈ A. a𝓡a`
  * symetric: `a𝓡b -> b𝓡a` actually `a𝓡b <=> b𝓡a`
    `⟨a,b⟩ ∈ 𝓡 -> ⟨b,a⟩ ∈ 𝓡`
  * transitive: `∀abc ∈ X. ⟨a,b⟩ ⋀ ⟨b,c⟩ -> ⟨a,c⟩`
  * irreflexive: `∀a. ⟨a,a⟩ ∉ 𝓡`

  * reflexive relations
    - reflexive:                  `∀a.   a𝓡a`  ≡ `∀a.(a𝓡a) ∈ 𝓡`
    - irreflexive:                `∀a. ¬(a𝓡a)` ≡ `∀a.(a𝓡a) ∉ 𝓡`
    - coreflexive: 
    - quasireflexive: 
    - antireflexive: 

* Symmetry
  - symmetric: `a𝓡b <-> b𝓡a` or `(a,b) ∈ R <-> (b,a) ∈ R`
  - antisymmetric: `a𝓡b ⋀ b𝓡a -> a = b`
    `(a,b) ∈ R ⋀ (b,a) ∈ R -> a = b`
    `(x,y) ∈ R ∧ (y,x) ∈ R <-> x = y`
    - antysymmetric tolerates mirrired pairs (a,b) ~ (b,a) as long as a = b
    i.e. as long as their components are the same, a = b thus (a,a)
    - can have any number of pairs that make up the diagonal
    - allows mirrored pairs but only of the (a,a) form
    - `<=` is antysymmetric

  - asymmetric:
    `(x,y) ∈ R ∧ (y,x) ∈ R <-> x ≠ y`
    - antysymmetric tolerates mirrired pairs (a,b) ~ (b,a) as long as a ≠ b
    i.e. as long as they have distinct components, (a,b)
    - no pairs that make up the diagonal
    - allows mirrored pairs but not (a,a)
    - `<` is asymmetric

* Transitivity
  - transitive:
             `(a𝓡b ∧ b𝓡c) -> a𝓡c`
    `(a,b) ∈ R ⋀ (b,c) ∈ R -> (a,c) ∈ R`
  - antitransitive:
    `(a,b) ∈ R ⋀ (b,c) ∈ R -> (a,c) ∉ R`


* Functional
  - function:
    `∀x ∈ X. ∃yz ∈ Y. (x𝓡y ⋀ x𝓡z -> y = z)`
    f(x) = xˣ = {(x, xˣ)} = {(0,1), (1,1), (2,4), (3,27), (4,256), (5,3125),…}
  - partial function: like function but not all of domain elems participate
    `∃x ∈ X. ∃y,z ∈ Y. (x𝓡y ⋀ x𝓡z -> y = z)`


- serial
- right-serial
- left-unique
- left-euclidean
