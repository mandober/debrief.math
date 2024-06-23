# Bool type

Boolean type, `Bool` or `𝔹`, can be defined in Haskell as:

```hs
data Bool = True | False
```

This is a sum type. It has two nullary data ctors, so its type-theorical representation is `B = 1 + 1`. This is isomorphic to `𝟚`, so Bool is sometimes also denoted by `𝟚`.

Bool (or `𝟚`) type is isomorphic to types:
- 1 → 2
- 1 → (1 + 1)
- 1 → (1 × 2)
- 2 × 1
- 1 × 2
- etc.

all of which result in 2, i.e. are isomorphic to 𝟚.
