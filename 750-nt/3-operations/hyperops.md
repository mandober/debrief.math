# Hyperops

hyperops:
- H₀ = S          successor, `S x`, S (S Z) = S (S (S Z)), succ(x) = x + 1
- H₁ = (+)        addition
- H₂ = (×)        multiplication
- H₃ = (^) = ↑    exponentiation
- H₄ = ↑↑ = ↑²    tetration (tetra = 4)
- H₅ = ↑↑↑ = ↑³   pentation (penta = 5)
- H₆ = ↑⁴         hexation (hexa = 6)
- Hₖ = ↑ᵏ          k-ention

H₁ x 0 = x
H₁ x (S y) = H₀ (H₁ x y)

Hⱼ﹢₁ = 
Hⱼ

```hs
-- addition
a +   Z = a
a + S b = S (a + b)

-- mul
a *   Z = Z
a * S b = a + (a * b)

-- exp
a ^ Z = Z
a ^ S Z = a
a ^ S b = a * (a ^ b)

-- tetration
a ↑²   Z = Z
a ↑² S Z = a
a ↑² S b = a ↑¹ (a ↑² b)

-- j-ention
a ↑ᵏ S Z = a
a ↑ᵏ S b = a ↑ᵏ⁻¹ (a ↑ᵏ b)

-- j-ention (alt)
a ↑ᵏ    S Z = a
a ↑ˢ⁽ᵏ⁾ S b = a ↑ᵏ (a ↑ˢ⁽ᵏ⁾ b)
```
