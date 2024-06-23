# Fuzzy logic

https://en.wikipedia.org/wiki/Fuzzy_logic

- ¬p = 1 - p
  - v(p) = 0.25
  - v(¬p) = 0.75
- p ∧ q = min(p, q)
- p ∨ q = max(p, q)
- p → q = ¬p ∨ q = max(1 - p, q)
  - if p ≤ q then 1
         ~ 0 → 0 = 1
    1 - (0.01 - 0.49) = 1
         ~ 0 → 1 = 1
    1 - (0.33 - 0.45) = 1
  - if p > q then 1 - (p - q)
         ~ 1 → 1 = 1
    1 - (0.78 - 0.65) = 1 - 0.13 = 0.87
         ~ 1 → 0 = 0
    1 - (0.89 - 0.12) = 1 - 0.77 = 0.23
