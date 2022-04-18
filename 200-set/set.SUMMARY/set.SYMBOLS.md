# Symbols and notation

¬ ⋀ ⋁ ⊕ -> <=> ↑ ↓ ⟙ ⟘ ∀ ∃ ≠
+ - ⨯ ÷ ^


## Set theory

  * Basic symbols: ∅ ∈ ∉ ⊆ ⊂ ⋃ ⋂ ∖
  
    - `x, y, z …` is an object
    - declaring a set: "let `A, B, C, S, X, Y, …` be sets"
    - special sets:
      - the empty set: ∅
      - the universal set: 𝓤
      - the set of numbers (incl. 0m, excl. 0):
        - naturals:   ℕ, ℕᐩ
        - integers:   ℤ, ℤᐩ
        - rationals:  ℚ, ℚᐩ
        - real:       ℝ, ℝᐩ
        - complex:    ℂ, ℂᐩ
    - *set membership*: `x ∈ S`, `x ∉ S`
      - heterogeneous relation (relates objects, that may not be sets, and sets)
      - is an assertion, a predicate:

          (∈) :: Object -> Set -> Bool
          (∈) x S = if x ∈ S then True else False

      - not associative: a ∈ (b ∈ c) ≠ (a ∈ b) ∈ c
      - no identity
      - no inverse
      - not commutative: a ∈ b ≠ b ∈ a
    - *set inclusion*:
      - is an assertion, a predicate:

          (⊆) :: Set -> Set -> Bool
          (⊆) A B = if A ⊆ B then True else False

          (⊂) :: Set -> Set -> Bool
          (⊂) A B = if A ⊆ B && A /= B then True else False

      - subset relation: `A ⊆ B`
      - proper subset relation: `A ⊂ B`, means `(A ⊆ B) ⋀ (A ≠ B)`
      - A ⊆ B ⊆ C
      - A ⊆ B ⊆ C = (A ⊆ B) ⊆ C = A ⊆ (B ⊆ C)
  * set operations:
    * *set union*: `◌ ⋃ ◌`
      - closure: if `A` and `B` are sets then `A ⋃ B` is also a set
      - associative: `A ⋃ B ⋃ C = (A ⋃ B) ⋃ C = A ⋃ (B ⋃ C)`
      - identity: ∅
      - commutative: `A ⋃ B = B ⋃ A`
    * *set intersection*: `◌ ⋂ ◌`
      - commutative: `A ⋂ B = B ⋂ A`
    * *set difference*: `◌ ∖ ◌`
      - `A ∖ B`
      - non-associative: `A ∖ B ∖ C ≠ (A ∖ B) ∖ C ≠ A ∖ (B ∖ C)`
      - non-commutative: `A ∖ B ≠ B \ A`
      - idempotence: `A ∖ B = A ∖ B \ B`
    * *set complement*: `◌'`, e.g. `A'`
      - `∆A = 𝓤 ∖ A`
      - `A' = 𝓤 ∖ A`
      - `𝓤' = ∅`
      - `∅' = 𝓤`
      - `A' = 𝓤 ∖ A`
    * *cardinality*, `∁◌`, `|◌|`
      - `∁(A)` = `|A|` = n
    * *powerset*, the set of all subsets, `𝓟(◌)`
      - `𝓟(A)`
      - `|𝓟(A)|` = 2ⁿ where n = |A|
    * *product*, `◌ ⨯ ◌`
      - `A⨯B`, `A²`
      - A⨯B = { (a,b) | ∀a ∈ A. ∀b ∈ B }
      - A⨯B = { (a,b) | a <- As, b <- Bs }
      - |A⨯B| = |A| ⨯ |B| = nm
      - |A²|  = |A| ⨯ |A| = n²
      - |𝓟(A²)|  = 2^n² where n = |A|, n² = |A⨯A|, |𝓟(A)| = 2ⁿ
      - |𝓟(A⨯B)| = 2^nm where n = |A|, m = |B|
      - |𝓟(A) ⨯ 𝓟(B)| = 2ⁿ ⨯ 2ᵐ = 2ⁿᐩᵐ

## Relations

  - 𝓡 ⊆ A⨯B, (a,b) ∈ 𝓡, a𝓡b, 𝓡 = { (a,b) | a ∈ A. b ∈ B. (a,b) ∈ 𝓡 }
  - 

## Functions

  - functions are special types of relations
    f : A -> B, f(a) = b
  - essential property of functions:
    **An elem of `A` cannot be associated with more than one elem of `B`**
    - each element of `A` is associated to exactly one element of `B`
      `∀a ∈ A. ∃b∃c ∈ B. [ f(a)=b ⋀ f(a)=c] -> (b = c)`
      i.e it's not a function if `f(a)=b` and `f(a)=c` and `b≠c`
    - if associated to none elems of B then it is a *partial function*
    - *injection*

    `∀a∀a' ∈ A. ∃b ∈ B. [ f(a)=b ⋀ f(a')=b] -> (a = a')`
