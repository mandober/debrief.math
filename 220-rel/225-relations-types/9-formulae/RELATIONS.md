# Relation theory ∷ Relation types

+ R ⊆ A⨯B; R ∈ 𝓟(A⨯B); a,a₁,a₂,a₃ ∈ A; b,b₁,b₂,b₃ ∈ B
+ aRb ≡ (a,b) ∈ R; ¬aRb ≡ a¬Rb ≡ (a,b) ∉ R
+ homogeneous relation over set A, R ⊆ A⨯A or R ∈ 𝓟(A²)
+ The set of all homogeneous relations 𝓑(A) over a set A is 𝓟(2^A²)

Relation operations
- complementary relation of `R ⊆ A⨯B`, `R̅ = A⨯B ∖ R`
- the complementary relation, `R̅ = A⨯B ∖ R`, is the set complement of R in A×B

Special **homogeneous binary relations**
- empty relation:     `E = ∅ ⊆ A² = ∀a,b ∈ A. ¬aEb`
- universal relation: `U = A² = { (a,b) | ∀a,b ∈ A. aUb }`
- identity relation:  `Iᴀ := { (a,a) | ∀a ∈ A }` i.e. `∀a,b ∈ A. aIb ⟺ a = b`

Properties of homogeneous binary relations, R over a set A, `R ⊆ A²`
- Reflexive relation:        ∀a ∈ A. aRa
- Irreflexive relation:      ∀a ∈ A. ¬aRa
- Symmetric relation:       ∀ab ∈ A. aRb ⟺ bRa
- Antisymmetric relation:   ∀ab ∈ A. aRb ⟺ ¬bRa
- Asymmetric relation:      ∀ab ∈ A. (aRb ⋀ bRa) -> a = b
- Transitive relation:     ∀abc ∈ A. aRb ⋀ bRc -> aRc
- Antitransitive relation: ∀abc ∈ A. aRb ⋀ bRc -> ¬aRc
- Left quasi-reflexive:     ∀ab ∈ A. (aRb ⋀ a ≠ b) -> aRa
- Right quasi-reflexive:    ∀ab ∈ A. (aRb ⋀ a ≠ b) -> bRb
- Quasi-reflexive:          ∀ab ∈ A. (aRb ⋀ a ≠ b) -> (aRa ⋀ bRb)
- Quasi-transitive: ∀abc ∈ A. aRb ⋀ ¬bRa ⋀ bRc ⋀ ¬cRb --> aRc ⋀ ¬cRa




Closures
- reflexive closure of R is the union `R ⋃ Iᴀ` equivalently defined as the smallest (with respect to `⊆`) reflexive relation on A that is a superset of R. A relation R is reflexive iff it is equal to its reflexive closure.
- reflexive reduction (irreflexive kernel) of R is the smallest (with respect to ⊆) relation on A that has the same reflexive closure as R. It is equal to `R ∖ Iᴀ = {(a,b) ∈ R | a ≠ b }`. The irreflexive kernel of R can, in a sense, be seen as a construction that is the "opposite" of the reflexive closure of R. For example, the reflexive closure of the canonical strict inequality `<` on ℝ is the usual non-strict inequality ≤, whereas the reflexive reduction of ≤ is <.



* Reflexivity is the name of the property: a relation with such property is reflexive. A reflexive relation has the reflexive property (i.e. has reflexivity, is reflexive).
* The question of whether all the elements of a set MUST BE ENGAGED for a certain type of relation to be true is still unresoved, at least for some cases.

- Let A be a set and ∀abc ∈ A
- A relation R on a set A is R ⊆ A², or R ∈ 𝓟(A²)

Reflexivity
- Reflexive:              ∀a ∈ A.  aRa
- Irreflexive:            ∀a ∈ A. ¬aRa
- Coreflexive:           ∀ab ∈ A.  aRb -> a = b
- Quasi-reflexive:       ∀ab ∈ A. (aRb ⋀ a ≠ b) -> (aRa ⋀ bRb)
- Left quasi-reflexive:  ∀ab ∈ A. (aRb ⋀ a ≠ b) -> aRa
- Right quasi-reflexive: ∀ab ∈ A. (aRb ⋀ a ≠ b) -> bRb

Symmetry
- Symmetric:     ∀ab ∈ A. aRb ⟺  bRa
- Asymmetric:    ∀ab ∈ A. aRb ⟺ ¬bRa
- Antisymmetric: ∀ab ∈ A. (aRb ⋀ bRa) -> a = b

Transitivity
- Transitive:       ∀abc ∈ A. (aRb ⋀ bRc) ->  aRc
- Antitransitive:   ∀abc ∈ A. (aRb ⋀ bRc) -> ¬aRc
- Quasi-transitive: ∀abc ∈ A. (aRb ⋀ ¬bRa ∧ bRc ⋀ ¬cRb) -> (aRc ⋀ ¬cRa)

Connexity
- strongly-connected: ∀ab ∈ A. aRb ⋁ bRa
- connected (total):  ∀ab ∈ A. a ≠ b -> (aRb ⋁ bRa)
                      ∀ab ∈ A. aRb ⋁ bRa ⋁ a ≠ b

Functionality
- serial (total) relation: `∀a ∈ A.∃y ∈ A. aRb`


The property of reflexivity adorns reflexive relations
