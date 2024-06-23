# CT :: Diagrams :: Natural transformation



```
a           F a        αₐ         G a
●            ● ─────────────────→ ●
│            │                    │
│            │     Naturality     │
│f       F f │                    │ G f
│            │       square       │
│            │                    │
↓            ↓                    ↓
●            ● ─────────────────→ ●
b           F a       αᵇ          G b
```

>Naturality condition: `αᵇ ∘ F f = G f ∘ αᵃ`

Ingediants:
- categories
  - cat C, D
- functors
  - F,G : C -> D
- objects
  - a,b ∈ Ob(C)
  - Fa,Fb,Ga,Gb ∈ Ob(D)
- morphisms
  - f : a -> b ∈ Ar(C)
  - F f : F a -> F b ∈ Ar(D)
  - G f : G a -> G b ∈ Ar(D)
- natural transformation
  - α : F => G
  - components of α
    - αₐ : F a => G a
    - αᵇ : F b => G b
