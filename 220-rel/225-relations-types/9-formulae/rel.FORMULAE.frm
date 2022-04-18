# Relations: Formulae

- A⨯B = { (a,b) | ∀a∀b(a ∈ A ⋀ b ∈ B) }
- R ⊆ A⨯B
- R ∈ 𝓟(A⨯B)
- aRb ≡ (a,b) ∈ R
- ¬(aRb) ≡ (a,b) ∉ R
- n = |A|, m = |B|, nm = |A⨯B|, |𝓟(A⨯B)| = 2ⁿᵐ
- n = |A|, |A⨯A| = n², |𝓟(A)| = 2ⁿ, |𝓟(A⨯A)| = 2^n²
- nr. of distinct binary relations on A, |𝓡| = 2^n²
- nr. of distinct binary relations between A and B, |𝓡| = 2ⁿᵐ
- nr. of distinct unary functions from A to B, |𝓕¹| = mⁿ = m^n
- nr. of distinct binary functions from A to B, |𝓕²| = m^n^2


una : A¹ -> B
una : A -> B = mⁿ
una : A -> B = m^n

bin : A² -> B
bin : (A ⨯ A) -> B   =  m^n²
bin : A -> (A -> B)  =  (m^n)^n = m^nn = m^n²

ter : A³ -> B
ter : (A ⨯ A ⨯ A) -> B   = m^n³
ter : A -> (A -> (A -> B) = ((m^n)^n)^n = m^nnn

(aⁿ)ᵐ = aⁿᵐ = (aᵐ)ⁿ
(a^n)^m = a^(n∙m) = (a^m)^n

(2³)⁴ = (2⁴)³ = 2^(3∙4)         = 2¹² = 4096
̲4 -> ( ̲3 -> ̲2 ) = (2³)⁴         = 8⁴  = 4096
̲4 -> ( ̲3 -> ̲2 ) = (2³)⁴ = (2⁴)³ = 16³ = 4096



 2 | 12 | 4096
 4 |  6 | 4096
 8 |  4 | 4096
16 |  3 | 4096
64 |  2 | 4096
