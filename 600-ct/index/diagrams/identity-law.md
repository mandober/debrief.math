# The identity law

```js
// Simple diagram (1)

1ᵃ ↻ a ------f-------> b ↺ 1ᵇ

idᵇ ∘ f = f = f ∘ idᵃ // R-to-L composition
1ᵃ;f = f = f;1ᵇ      // L-to-R composition


// Alternative diagram (2)

a      f      b
● ──────────→ ●
  ⟍           │ ⟍
    ⟍         │   ⟍ g
      ⟍       │     ⟍
        ⟍     │1ᵇ     ⟍
       f  ⟍   │         ⟍
            ↘ ↓           ↘
              ● ─────────→ ●
              b     g      c

1ᵇ . f == f
g . 1ᵃ == g


// Alternative diagram (3)

a         1ᵃ      a
● --------------> ●
│ ⟍               │
│   ⟍             │
│     ⟍           │
│f      ⟍         │f
│         ⟍       │
│           ⟍     │
│             ⟍   │
↓               ↘ ↓
● --------------> ●
b        1ᵇ       b


// Alternative diagram (4)

a         f       b         g       c
● --------------> ● --------------> ●
│ ⟍               │ ⟍               │
│   ⟍             │   ⟍             │
│     ⟍           │     ⟍           │
│1ᵃ     ⟍ f       │1ᵇ     ⟍ g       │1ᶜ
│         ⟍       │         ⟍       │
│           ⟍     │           ⟍     │
│             ⟍   │             ⟍   │
↓               ↘ ↓               ↘ ↓
● --------------> ● --------------> ●
a         f       b        g        c

f = 1ᵇ ∘ f
f = f ∘ 1ᵃ
1ᵇ ∘ f = f = f ∘ 1ᵃ

g = 1ᶜ ∘ g
g = g ∘ 1ᵇ
1ᶜ ∘ g = g = g ∘ 1ᵇ
```
