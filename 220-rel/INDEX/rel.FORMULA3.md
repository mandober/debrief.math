# Index of relations

* Sets
  - a set `S = {…}`, thus `S : Set`
  - a set contains objects called elements or members
  - an element `x` is an object contained in a set `S`, `x ∈ S`
  - except for `𝓤`, any object is (may become) an element, `x` --> `{x}`
  - the empty set, `∅ = {}`
  - Universal set: `𝓤` is a proper class (non-element)
  - Proper Class: always a set, never an element
  - Class: set that contains only sets
  - Pure Set: set that contains only urelements
  - Urelement: object but not a set
  - powerset of a set S, `𝓟(S)`
  - powerset of a set product S⨯S, `𝓟(S²)`

* Ordered pairs
  - notation:   `⟨a,b⟩` or `(a,b)` (where a ∈ A, b ∈ B)
  - Kuratowski: `⟨a,b⟩` ≝ `{{a}, {a,b}}`
                `⟨a,a⟩` ≝ `{{a}, {a,a}}` = `{{a}, {a}}` = `{{a}}`
  - set of ordered pairs: `{ ⟨a,b⟩ | a ∈ A ⋀ b ∈ B }`
  - equality, `(⟨a,b⟩ = ⟨c,d⟩) -> (a = c ⋀ b = d)`

* Carthesian products
  - product between 2 sets: `A⨯B = { (a,b) | ∀ab. a ∈ A, b ∈ B }`
  - product on a set:  `A² = A⨯A = { (a,a) | ∀a. a ∈ A }`

* Notion of a relation
  - a relation is often specified by a set of ordered pairs even though
    this is not enough information to define a relation completely.
  - Strictly, a relation is a triple, `𝑹 = ⟨D, C, 𝐑⟩` where
    - `D` is a domain set
    - `C` is a codomain set
    - `R` is the "relation proper", the set of ordered pairs, `(a,b)`
  - a relation:   `R ⊆ A⨯B`
  - any relation: `R = { (a,b) | a ∈ A, b ∈ B }`
  - relation on a set:        `a𝓡a ≡ (a,a) ∈ 𝓡`, `¬(a𝓡a) ≡ (a,a) ∉ 𝓡`
  - relation betwen two sets: `a𝓡b ≡ (a,b) ∈ 𝓡`, `¬(a𝓡b) ≡ (a,b) ∉ 𝓡`
  - each possible relation `R` between sets `A` and `B` is an elem in `𝓟(A⨯B)`
  - `∀R. R ⊆ A⨯B. Rᵢ ∈ 𝓟(A⨯B)`
    - Rᵢ ∈ 𝓟(A⨯B)
    - |𝓟(A⨯B)| = 2ⁿᵐ
  - `∀R. R ⊆ A⨯A. Rᵢ ∈ 𝓟(A⨯A)`
    - Rᵢ ∈ 𝓟(A²)
    - |𝓟(A)|   = 2^(n²)

* Functions
  - all functions are relations
  - functions are relations with certain restrictions
  - `|f| <<< |R|` where both are on a set A, `R ⊆ A ⨯ A`, `f : A -> A`
  * functions, `f : A -> B` where a ∈ A ⋀ f(a) = b ∈ B
  - `f = { (a,b) | a ∈ A, f(a) = b, b ∈ B }`
  - number of functions, `|f : A -> B| = mⁿ`
  - number of functions, `|f : A -> A| = nⁿ`
  * function,
    + `⟨a,b⟩ ∈ f ⋀ ⟨a,c⟩ ∈ f ==> b = c = f(a)`
    - [ ⟨a, f(a)⟩ = ⟨b, f(b)⟩ ] -> [ a = b ⋀ f(a) = f(b) ]
    - ∀aa' ∈ A. f(a) ≠ f(a')
    - ∀a ∈ A. ∃b ∈ B. (a,b) ∈ f
  - surjection, `∀b ∈ B. ∃a ∈ A. (a,b) ∈ f`
  - injection,  `∀ab ∈ A. f(a) = f(b) -> a = b`
  - bijection,  f is inj and surj
  - partial,    `∃a ∈ A. ∃b ∈ B. (a,b) ∈ f`

* Extreme relations
  - null (empty) relation:       `R⁰ = ∅`,     `∀x,y ∈ X.¬xRy`
  - universal (total) relation:  `Rᵘ = A ⨯ B`, `∀x,y ∈ X. xRy`
  - identity relation:                           `∀x ∈ X. xRx`
  - any non-total relation:      `R  ⊂ A ⨯ B`
  - any relation:                `R  ⊆ A ⨯ B`
  - considering all relations `R ⊆ A⨯B`, the universal relation `𝓤 = A ⨯ B`
  - between these 2 extremes are all other types of relations, `∅ ⊆ R ⊆ 𝓤`

* Set relations on relations
  - membership relation `a ∈ A` is heterogeneous wrt the type of rel. objects
  - inclusion relation `A ⊆ B` is homogeneous wrt the type of related objects

* Set operations on relations R and S
  - inclusion     `R ⊆ S. aRb -> aSb`
  - union         `R ⋃ S`
  - intersection  `R ⋂ S`
  - difference    `R ∖ S`
  - product       `R ⨯ S`
  - complement, inverse `R' = A⨯B ∖ R`

* Operations on relations
  - transposition, `Rᵀ`
  - composition,   `S ⚬ R`, `R ⨟ S`, `R ⨾ S`

* Reflexivity
  - reflexive:      `∀a ∈ A. ⟨a,a⟩ ∈ R`
  - irreflexive:    `∀a ∈ A. ⟨a,a⟩ ∉ R`   (antireflexive)
  - quasireflexive (QR): `x,y ∈ X. xRy -> xRx ⋀ yRy`
    - if every element related to some element is also related to itself
    - R is quasi-reflexive iff its symmetric closure `R ⋃ Rᵀ` is left/right QR
    - R is quasi-reflexive iff it's left+right QR
    - left quasi-reflexive: `x,y ∈ X. xRy -> xRx`
      - if, whenever x,y ∈ X, are such that `xRy`, then necessarily `xRx`
   - right quasi-reflexive: `x,y ∈ X. xRy -> yRy`
      - if, whenever x,y ∈ X, are such that `yRx`, then necessarily `xRx`
  - coreflexive (CoR):      `x,y ∈ X. xRy -> x = y`
      - if, whenever x,y ∈ X, are such that `y = x`
      - relation is coreflexive iff its symmetric closure is antisymmetric
      - or, whenever 2 elements (x,y ∈ X) are related they are equal
      - or, if all related elements are in fact equal?

* Symmetry
  - symetric:     x,y ∈ X. xRy <=> yRx
  - antisymetric: x,y ∈ X. xRy ==> ¬yRx
  - asymetric:    x,y ∈ X. xRy ⋀ yRx ==> x = y

* Transitivity
  - transitive:
    - `∀abc ∈ A. (aRb ⋀ bRc) -> aRc`
    - `∀abc ∈ A. (⟨a,b⟩ ∈ R ⋀ ⟨b,c⟩ ∈ R) -> (⟨a,c⟩ ∈ R)`
  - itransitive
  - antitransitive
  - non-transitive

* Functional
  - function = right-serial + left-unique
  - partial function: `∀x ∈ X. ∀y,z ∈ Y. xRy ⋀ xRz -> y = z`
  - injection
  - surjection
  - bijection

* Other types of relations
  * Euclidean
    - left-Euclidean:  `bRa ⋀ cRa -> cRb`
    - right-Euclidean: `aRb ⋀ aRc -> bRc`
  * Total
    - left-total, serial: `∀a ∈ A. ∃b ∈ B. (a,b) ∈ R`
    - right-total:        `∀b ∈ B. ∃a ∈ a. (a,b) ∈ R`
  * Unique
    - left-unique
    - right-unique
  * Dichotomy,            `∀ab ∈ A. aRb ⊕ bRa`
  * Trichotomy,           `∀ab ∈ A. aRb ⊕ bRa ⊕ b=c`
    - A = {a,b,c}
    - R = { (a,b), (a,c), (b,c) }
    - R is trichotomous, transitive, (hence) strict total order
  - Cyclic relation
    - `∀abc ∈ A. (_,b) -> (b,c) -> (c,__)`
    - R = { (a,b), (b,c), (c,a) }
    - R is a cyclic relation
    - R is trichotomous, antitransitive
