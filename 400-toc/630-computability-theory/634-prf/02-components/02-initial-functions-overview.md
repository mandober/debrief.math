# Initial functions :: Overview

3 initial primitive recursive functions:
- 1. *successor*
  - names:      `σ`, `S`, `succ`
  - arity:       1 (unary)
  - signature:   succ :: ℕ -> ℕ
  - definition:  succ n = n + 1    where n ∈ ℕ
  - notes:
    - succ is one single function (not a family of functions)
    - succ cannot fail
- 2. *constant*
  - names:       `C`, `c`, `const`
  - form:        `Cᵏₙ` where `n ∈ ℕ` and `k ∈ ℕ`
  - arity:       from 0 to k args
  - signature:   C :: ℕᵏ -> ℕ
  - definition:  Cᵏₙ(x₀, x₁,...,xₖ) = n
  - notes:
    - const can be defined from `zero` and `succ` by successive composition
      - 0 = Cᵏ₀ x̅ = Z
      - 1 = Cᵏ₁ x̅ = S ∘ Z
      - 2 = Cᵏ₂ x̅ = S ∘ S ∘ Z
      - etc.
      - use this to define fn with literals, e.g `f x = 2x` as `mul(C₂,id)`
    - const ignores all its args and returns a pre-fixed number `n`
    - const is a family of functions
      - family of functions for each arity `k`, `C⁰ₙ, C¹ₙ, C²ₙ, …`
        - C⁰ₙ       = n
        - C¹ₙ a     = n
        - C²ₙ a b   = n
        - C³ₙ a b c = n
      - family of functions for each returned number `n`, `Cᵏ₀, Cᵏ₁, Cᵏ₂, …`
        - Cᵏ₀ x̅ = 0
        - Cᵏ₁ x̅ = 1
        - Cᵏ₂ x̅ = 2
        - Cᵏ₃ x̅ = 3
  + *zero*:
    - zero function is defined in terms of const
    - zero is an abbreviation for the form `Z = Cᵏ₀`
    - names:      `Zero`, `ζ`, `Z`
    - arity:      from 0 to k args
    - signature:  Z :: ℕᵏ -> ℕ
    - definition: Zᵏ(x₀, x₁,...,xₖ) = 0
- 3. *projection*
  - names:       `P`, `π`, `proj`, `Proj`
  - form:        `πᵏᵢ` where `k > 0` and `1 <= i <= k`
  - arity:       from 1 to k args
  - signature:   proj :: ℕᵏ -> ℕ
  - definition:  projᵏᵢ(x₀, x₁,...,xₖ) = xᵢ
  - notes:
    - proj is a family of functions depending on arity `k` and index `i`,
      but the index further depends on the arity, `1 <= i <= k`
    - This means that for each fixed arity number `m`, there are `m` functions:
      the first one returns the first arg (out of `m` args), the second one returns the second arg, and so on. More concretely:
    - for k=1 there is only one function since 1 <= i <= 1
      - `π¹₁ a = a`
        this one is abbreviated as the *identity* fucntion, `π¹₁ = id`
    - for k=2 there are 2 more functions since 1 <= i <= 2
      - (previous functions for k=1)
      - `π²₁ a b = a`
        this one is abbreviated as the *fst* fucntion, `π²₁ = fst`
      - `π²₂ a b = b`
        this one is abbreviated as the *snd* fucntion, `π²₂ = snd`
    - for k=3 there are 3 more functions since 1 <= i <= 3
      - (previous functions for k=1, k=2)
      - π³₁ a b c = a
      - π³₂ a b c = b
      - π³₃ a b c = c
    - for k=m (where m is a fixed number) there are `m` since 1 <= i <= m
      - (previous functions for k=1, k=2, …, k=m-1)
      - πᵐ₀(x₀, x₁,...,xₘ) = x₀
      - πᵐ₁(x₀, x₁,...,xₘ) = x₁
      - πᵐ₂(x₀, x₁,...,xₘ) = x₂
      - …
      - πᵐₘ(x₀, x₁,...,xₘ) = xₘ
    - Total number of functions
      ```
      k | total
      1 | 1
      2 | 2 + 1
      3 | 3 + 2 + 1
      m | m + m-1 + … + 3 + 2 + 1 = Δ m
        where
        Δ m = m(m + 1) / 2
      ```
  - abbrevations
    - *id* is abbrevation for `id = proj¹₁`
    - *fst* is abbrevation for `fst = proj²₁`
    - *snd* is abbrevation for `snd = proj²₂`
