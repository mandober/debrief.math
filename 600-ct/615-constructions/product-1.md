# Product

```
    Left          Right
a ───────→ a + b ←─────── b
│            ┆            │
│            ┆h           │
│            ┆            │
│            ↓            │
╰──────────→ c ←──────────╯
f                         g
```



We'll ease into categorical definition of a product by having side-by-side set and category view.

First, we are in the set view where we have a clear insight into the structure of each set. The all encompasing collection is not a set, as that would invite the Russell's paradox, but a class. This class contains all sets along with numerous functions that relate them. Over in the categorical view, each set collapses into a structureless object, and each function collapses into an arrow.

While a function consists of all its mappings under the set view, in the cat view, all these mappings collapse into a single arrow; it can be said that only a function's type remains visible at this high level of abstraction, so, in a way, an arrow represents a type.




We have two sets `A` and `B` and the set `P` which is their Cartesian product, `A⨯B`, where all three are defined as:

```hs
A = { 1, 2 }
B = { a, b }
P = A⨯B = { (1,a), (1,b), (2,a), (2,b) }

π₁ :: A⨯B -> A
π₁ :: P -> A
π₁ (1,a) = 1
π₁ (1,b) = 1
π₁ (2,a) = 2
π₁ (2,b) = 3

π₂ :: A⨯B -> B
π₂ :: P -> B
π₂ (1,a) = a
π₂ (1,b) = b
π₂ (2,a) = a
π₂ (2,b) = b
```

A product is always defined (charaterized) by the existence of two projection functions `π₁` and `π₂`, where `π₁ : A⨯B -> A` projects the first component of a pair, and `π₂ : A⨯B -> B` projects the second.

Now, under categorical view, all 3 sets collapse into points, so we have 
