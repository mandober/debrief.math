# kleisli

```hs

a ● ─ ─ ─ ─ ─ ─ ● m a
  │ ⟍           │
  │   ⟍         │
  │     ⟍       │
  │       ⟍     │
  │         ⟍   │
  │           ⟍ │
b ● ─ ─ ─ ─ ─ ─ ● m b
  │ ⟍           │
  │   ⟍         │
  │     ⟍       │
  │       ⟍     │
  │         ⟍   │
  │           ⟍ │
c ● ─ ─ ─ ─ ─ ─ ● m c

return :: a -> m a

ℂ -> ℂᴷ

1 :: a -> a  {- implemented as -}  1ᴷ :: a -> m a
f :: a -> b  {- implemented as -}  fᴷ :: a -> m b
g :: b -> c  {- implemented as -}  gᴷ :: b -> m c

>=> ᴷˡᵉⁱˢˡⁱ ᶜᵒᵐᵖᵒˢⁱᵗⁱᵒⁿ

gᴷ ∘ fᴷ = gᴷ >=> fᴷ

(>=>) :: (a -> m b) -> (b -> m c) -> (a -> m c)
```
