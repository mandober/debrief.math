# Types of relations

- General relations
  - heterogeneous, `R ⊆ A⨯B`
  - homogeneous, `R ⊆ X²`
  - binary, `xRy` or `(x,y) ∈ R` or `x ~ y`
  - ternary, [x,y,z]ᴿ or `(x,y,z) ∈ R`
  - n-ary, `(x₀,x₁,…,xₙ) ∈ R`
  - infinitary, `(x₀,x₁,x₂,…) ∈ R`
  - finitary
  - universal, total, complete, `R = X²`
  - empty, null, `R = ∅`
  - identity relation, `Iₓ = { (x,x) | x ∈ X }`

- Fundamental relations
  - Reflexivity
    - reflexive, `∀x ∈ X. xRx`
      - non-reflexive
    - irreflexive, `∀x ∈ X. ¬(xRx)`
      - non-irreflexive
    - coreflexive, `xRy -> x = y`
    - quasi-reflexive, `xRy -> xRx ⋀ yRy`
      - left quasi-reflexive, `xRy -> xRx`
      - right quasi-reflexive, `xRy -> yRy`
  - Symmetry
    - symmetric, `xRy -> yRx`
    - antisymmetric, `xRy ⋀ yRx -> y = x`
    - asymmetric, `xRy -> ¬(yRx)`
  - Transitivity
    - transitive, `xRy ⋀ yRz -> xRz`
    - intransitive, `xRy ⋀ yRz -> ¬(xRz)`
    - transitively incomparable
    - Quasi-transitivity
      - left quasi-transitive
      - right quasi-transitive

* Closures
  - reflexive closure
  - symmetric closure
  - transitive closure


* Operations on relations
  - complimentary, `Rᶜ`, `R̅`, `¬R`
  - converse (inverse), `R⁻¹`
  - transposition, `Rᵀ`
  - composition, `R;S`, `R⨟S`
  - restriction, `R |> S`, `S <| R`
  - antirestriction, `R ⩤ S`, `S ⩥ R`
  - union, `R ⋃ S`
  - intersection, `R ⋂ S`
  - difference, `R ∖ S`

* Compound relations
  - preorder: refl + trans
  - equivalence relation: refl + symm + trans
  - partial order: refl + antisymm + trans
  - total order: refl + antisymm + trans + totality

* Other relations
  - Euclidean
    - right Euclidean, `∀abc ∈ X. aRb ⋀ aRc -> bRc`
    - left Euclidean,  `∀abc ∈ X. bRa ⋀ cRa -> bRc`
  - Totality
    - left-total
    - right-total
  - Uniquness
    - left-unique
    - right-unique
  - Correspondence
    - one to one
    - one to many
    - many to one
    - many to many
  - Functional
    - injective
    - surjective
    - bijective
  - serial
  - set-like
  - dense, 
  - extensional
  - well-founded
  - Connectedness
    - connected, `∀xy ∈ X. x ≠ y -> xRy ⋁ yRx`
    - semi-connected
    - strongly-connected, `∀xy ∈ X. xRy ⋁ yRx`
  - trichotomous (trichotomy), `xRy ⊕ yRx ⊕ x = y`
  - membership relation, elementhood, `x ∈ X`
  - inclusion relation, subset relation, `S ⊆ A`
  - incidence relation, edge (on vertex) relation, e = (v1,v2)
  - discrete relation, `aRb -> a = b`
