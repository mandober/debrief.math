# List of primitive recursive functions

PRF set
- initial PRFs (where `x̅ = x₁ … xₖ`) fᵏ : ℕᵏ -> ℕᵐ
  - const,  `C` where `Cᵏₙ(x̅) = n` and n ∈ ℕ
    - zero, `Z` where `Z = Cᵏ₀` so `Cᵏ₀(x̅) = 0`
  - proj,   `π` where `πᵏᵢ(x̅) = xᵢ`
    - id,   `I` where `I = π¹₁(n) = n`
  - succ,   `σ` where `σ¹(n) = n' = n+1`
- PRFs operations
  - substitution (composition), `h = gᵐ ∘ (f₁ … fₘ)`,  symbol `∘` or `S`
  - prim rec (primitive recursion), `ρ(f¹, g³) = h²`, symbol `ρ`
  - tupling (combination), `h = (x₁ … xₖ)`,           symbol `⨯`
- Basic PRFs
  - 0 = Z
  - 1 = Cᵏ₁ = S ∘ Z
  - 2 = Cᵏ₂ = S ∘ S ∘ Z
  - id  = π¹₁
  - fst = π²₁
  - snd = π²₂
- Arithemtic PRFs
  - add    = ρ[id, σ ∘ π³₂]
  - dbl    = add ∘ (id, id)
  - mul    = ρ[id, add ∘ (π³₂, π³₃)]
  - rpow = ρ[id, mul ∘ (π³₃, π³₂)]
    - power with args flipped, rpow(m,n) = nᵐ
    - non-commutative, non-assoc, must recurse over the exponent arg!
  - pred   = ρ[Z, fst]
  - rmonus = ρ[id, pred ∘ π³₂]
    - rmonus(y, x) = y ⨪ x = monus(x, y) = x ∸ y
    - x ∸ y = y ⨪ x
    - rmonus(0, x) = x
    - rmonus(y, x) = monus(x, y) = x ∸ y
  - monus = rmonus ∘ (snd, fst)
    - monus(0 , y) = 0
    - monus(x', y) = rmonus(x, y) = x ∸ y
    - 0   ∸ y = 0
    - S x ∸ y = x ∸ y
  - factorial
  - min(x̅)
  - max(x̅)
  - absolute difference: | a - b | = (a ∸ b) + (b ∸ a)
  - ~sg(a): NOT[signum(a)]: if a = 0 then 1 else 0
  -  sg(a):     signum(a) : if a = 0 then 0 else 1
  - divides, `a | b`, if `b = ka` for some `k` then 0 else 1
  - remainder, `mod(a,b)`, the leftover if `b` does not divide `a` evenly
  - a = b  as  sg(|a ∸ b|)
  - a < b  as  sg(a ∸ b)



https://en.wikipedia.org/wiki/Primitive_recursive_function#Some_common_primitive_recursive_functions
