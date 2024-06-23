# Regular Operations

Regular operations:
- *Union* is just putting together the strings in two given languages
- *Concatenation* takes one string from each language and "glues" them together
- *Star* involves any number of concatenations from a given language with itself

"Regular" in regular languages means a different thing from "regular" in regular operations. In the first case, it means there exists a DFA that recognizes the language, and in the second case of regular operations - those are operations associated with building regular languages or with building regular expressions.

- union: A ⋃ B = { w | w ∈ A ∨ w ∈ B }
- concat: AB = A ∙ B = { xy | x ∈ A ∧ y ∈ B }
- star, A⃰
  - L⁰ = {ε}
  - Lᵏ = L ∙ Lᵏ⁻¹
  - L = `⋃ {k>=0} Lᵏ` is `A⃰`

Example of star over Σ = {0,1}
```
L⁰ = {ε}
L¹ = {0,1}
L² = {00,01,10,11}
L³ = {000,001,010,011,100,101,110,111}
L⁴ = …
L⃰ = ⋃ {n>=0} L = L⁰ ⋃ L¹ ⋃ L² ⋃ L³ ⋃ L⁴ ⋃ …
```

## Power

The power operator: `aⁿ` means the character `a ∈ Σ` is concatenated with itself `n` times; e.g. a⁰ = ε, a¹ = a, a² = aa, a³ = aaa, and so on.

The power operator is often used to describe a language, e.g. `Σ = {a,b}`, and `L = { aⁿbⁿ | a,b ∈ Σ }`, which, by the way, is not regular.
