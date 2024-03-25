# Summary :: Membership

- name: membership (element-of)
- type: binary relation
- kind: primitive notion
- symbol: `∈`
- example: x ∈ y
- repr: predicate, `P(x) := x ∈ x` (unary)


* Membership defines the non-membership `∉` (not-element-of) relation:    
  - x ∉ y ≝ ¬(x ∈ y)

* Membership defines the inclusion (subset) `⊆` relation:    
  - x ⊆ y ≝ ∀w(w ∈ x ⇒ w ∈ y)
  - ∀x∀y(∀w(w ∈ x ⇒ w ∈ y) ⇔ x ⊆ y)

* Membership may be used to define the equality `=` relation 
  - (if the variant of FOL used does not include it)
  - x = y ≝ ∀w(w ∈ x ⇔ w ∈ y)
  - ∀x∀y(∀w(w ∈ x ⇔ w ∈ y) ⇔ x = y) 
  - This statement is also the axiom of extensionality.

* Membership and logical connectives may define these relations (notions):
  - A ∪ B  ≝ { x | x ∈ A ∨ x ∈ B }
  - A ∩ B  ≝ { x | x ∈ A ∧ x ∈ B }
  - A ∖ B  ≝ { x | x ∈ A ∧ x ∉ B }
  - B ∖ A  ≝ { x | x ∉ A ∧ x ∈ B }
  - A Δ B  ≝ { x | x ∈ A ⊕ x ∈ B }
  - A = B  ≝ { x | x ∈ A ⇔ x ∈ B }
  - A ⊆ B  ≝ { x | x ∈ A ⇒ x ∈ B }
  - A ⊂ B  ≝ { x | x ∈ A ⇒ x ∈ B ∧ A ≠ B }
  - {A, B} ≝ { x | x = A ∨ x = B }
  - A ⩁ B  ≝ { x | x ∈ (a, ⊤) ∨ x ∈ (b, ⊥), a ∈ A, b ∈ B }


* Sum
  - tagged A ≝ { (x, τ) | x ∈ A, τ ∈ {⊤, ⊥} }
  - tagged A = A ⨯ {⊤}
  - tagged B = B ⨯ {⊥}
  - tagged A = { x | x ⨯ {L} }
  - tagged B = B ⨯ {R}


```hs
-- Constructing a sum set
A = {a₀, a₁, a₂}
B = {b₀, b₁, b₂}
τ ∈ {⊤, ⊥}
---------------------
tag A with ⊤
A ⨯ {⊤} = { (a₀, ⊤), (a₁, ⊤), (a₂, ⊤) }
---------------------
tag B with ⊥
B ⨯ {⊥} = { (b₀, ⊥), (b₁, ⊥), (b₂, ⊥) }
---------------------
A ⩁ B
  = (A ⨯ {⊤}) ⋃ (B ⨯ {⊥})
  = { (a₀, ⊤), (a₁, ⊤), (a₂, ⊤) } ⋃ { (b₀, ⊥), (b₁, ⊥), (b₂, ⊥) }
  = { (a₀, ⊤), (a₁, ⊤), (a₂, ⊤), (b₀, ⊥), (b₁, ⊥), (b₂, ⊥) }
---------------------
-- Which set do we pull out the elements of A ⩁ B from?
-- (A ⋃ B) ⨯ τ?
(A ⋃ B) ⨯ τ
  = ({a₀, a₁, a₂} ⋃ {b₀, b₁, b₂}) ⨯ {⊤, ⊥}
  = {a₀, a₁, a₂, b₀, b₁, b₂} ⨯ {⊤, ⊥}
  = { (a₀, ⊤), (a₀, ⊥)
    , (a₁, ⊤), (a₁, ⊥)
    , (a₂, ⊤), (a₂, ⊥)
    , (b₀, ⊤), (b₀, ⊥)
    , (b₁, ⊤), (b₁, ⊥)
    , (b₂, ⊤), (b₂, ⊥)
    }
---------------------
A ⨯ τ
  = {a₀, a₁, a₂} ⨯ {⊤, ⊥}
  = { (a₀, ⊤), (a₀, ⊥)
    , (a₁, ⊤), (a₁, ⊥)
    , (a₂, ⊤), (a₂, ⊥)
    }
---------------------
B ⨯ τ
  = {b₀, b₁, b₂} ⨯ {⊤, ⊥}
  = { (b₀, ⊤), (b₀, ⊥)
    , (b₁, ⊤), (b₁, ⊥)
    , (b₂, ⊤), (b₂, ⊥)
    }
---------------------
A ⩁ B = { (z, t) ∈ (A ⋃ B ⨯ τ) | z=x ∨ z=y, x ∈ A, y ∈ B, t∈{⊤} ∨ t∈{⊥} }

```



* Product
  - A ⨯ B  ≝ { (x, y) | x ∈ A ∧ y ∈ B }
  - A ⨯ B  ≝ { (x, y) ∈ 𝒫(𝒫(A ∪ B)) | x ∈ A ∧ y ∈ B }
  - A ⨯ B  ≝ { (x, y) | x ∈ A, y ∈ B }
  - A ⨯ B  ≝ { z | z = (a, b) ∧ a ∈ A ∧ b ∈ B }
  - A ⨯ B  ≝ { z | z = (a, b), a ∈ A, b ∈ B }

* Moar
  - ∅         ≝ { x | x ≠ x }
  - 𝒰         ≝ { x | x = x }
  - 𝓡         ≝ { x | x ∉ x }

* Functions
  - f: A → B ≝ { (x, y) | ∀x ∈ A ∧ ∃y ∈ B ∧ f(x) = y }
  - f: A → B ≝ { (x, y) | ∀x ∈ A. ∃y ∈ B. f(x) = y }
  - f: A → B ≝ { (x, y) | ∀x(x ∈ A ⇒ ∃y(y ∈ B ∧ f(x) = y)) }
  - f: A ->> B ≝ { (x, y) | ∀x∀xʹ ∈ A (f(x) = f(xʹ) ⇒ x = xʹ) }
  - f: A >-> B ≝ { (x, y) | ∀y(y ∈ B ⇒ ∃x(x ∈ A ∧ f(x) = y)) }
  - f: A >->> B ≝ (f: A ->> B) ∧ (f: A >-> B)




* General properties of membership (these hold in general but not necessarily):
  - irreflexivity: `x ∉ x` is true in general
  - asymmetry: `x ∈ y ⇒ y ∉ x`, or x ∈ y ⇏ y ∈ x
  - antitransitivity: `x ∈ y ∧ y ∈ z ⇒ x ∉ z`, or x ∈ y ∧ y ∈ z ⇏ x ∈ z
    However, X is a transitive set if `x ∈ y ∈ z`

(p ⇒ q) ⇏ (q ⇒ p)
(p ⇒ q) ⇒ (q ⇏ p)


* Universal properties of membership
  ∀A∀a
  - x ∈ 𝒫(y) ⇔ x ⊆ y
  - x ⊆ y ⇔ x ∈ 𝒫(y)
  - x ∈ y ⇔ {x} ⊆ y ⇔ {x} ∈ 𝒫(y)
  - x ∈ y ⇔ {x} ⊆ y
  - x ∈ y ⇔ {x} ∈ 𝒫(y)
  - {x} ⊆ y ⇔ {x} ∈ 𝒫(y)

* Various
  - x ∈ A ⇒ x ∈ A ∪ B
  - x ∈ A ⇒ x ∈ ⋃{A,B}
    - ⋃𝓕 = M  ≝  ∀𝓕 ∃M ∀x(x ∈ M ⇔ ∃Y(x ∈ Y ∧ Y ∈ 𝓕))

* Family, 𝓕
  𝓕 = {A₀, A₁, A₂}

* Spread operator
  `(...A) ≝ {a₀, a₁, a₂, …, aₙ}` where A = {a₀, a₁, a₂, …, aₙ}
  A ∪ B = {...A, ...B}
  𝓕= {A₀, A₁, A₂} ==> ⋃𝓕 = {...A₀, ...A₁, ...A₂}
