# Relations: Formulae


- A⨯B = { (a,b) | ∀a∀b(a ∈ A ⋀ b ∈ B) }
- R ⊆ A⨯B
- R ∈ 𝓟(A⨯B)
- aRb ≡ (a,b) ∈ R
- ¬(aRb) ≡ (a,b) ∉ R
- n = |A|, m = |B|, nm = |A⨯B|, |𝓟(A⨯B)| = 2ⁿᵐ
- n = |A|, |A⨯A| = n², |𝓟(A)| = 2ⁿ, |𝓟(A⨯A)| = 2^n²

- nr. of distinct binary relations on A,            |𝓡|  = 2^n²
- nr. of distinct binary relations between A and B, |𝓡|  = 2ⁿᵐ
- nr. of distinct unary functions from A to B,      |𝓕¹| = mⁿ = m^n
- nr. of distinct binary functions from A to B,     |𝓕²| = m^n^2

Let R be a binary relation on a set A, `R ⊆ A²`;   
`aRb` ≡ `(a,b) ∈ R`, and `¬aRb` ≡ `(a,b) ∉ R`    
a,b,c ∈ A

Relations
- reflexive relation:          aRa
- irreflexive relation:       ¬aRa
- symmetric relation:         aRb ⟺  bRa
- asymmetric relation:        aRb ⟺ ¬bRa
- antisymmetric relation:     (aRb ⋀ bRa) -> a = b
- transitive relation:        (aRb ⋀ bRc) ->  aRc
- antitransitive relation:    (aRb ⋀ bRc) -> ¬aRc
- strongly-connected (total): aRb ⋁ bRa
- connected relation:         aRb ⋁ bRa ⋁ a = b  ≡  (a ≠ b) -> (aRb ⋁ bRa)
  i.e.  (aRb ⋁ bRa) ⋁ (a = b)
      = (a = b) ⋁ (aRb ⋁ bRa)
      = ¬(a = b) -> (aRb ⋁ bRa)
      =  (a ≠ b) -> (aRb ⋁ bRa)
