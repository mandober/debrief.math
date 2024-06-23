# Advices and tips

## FOL

FOL is the formal language of many math theories. FOL usually comes with equality (=), but it sometimes doens't, in which case the equality is defined in terms of the underlying theory.

### Notation

- relations
  - unary relation (property): P(x), Px
  - binary relation (predicate): R(x,y), xRy, (x,y) ∈ R
- functions
  - unary functions: f(x) = f x = fₓ = y; ⟨x, y⟩ = ⟨x, f x⟩
  - binary functions: f(x, y) = f x y = z; ⟨x, y, z⟩ = ⟨x, y, f x y⟩

- uniqueness ex. quantification (`∃!`): 
  ∃!y ≝ ∀y₁y₂((P y₁ = P y₂) ⇔ (y₁ = y₂))
