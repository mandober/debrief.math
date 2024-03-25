# Union of relations

- R ∪ S
- A union of two relations is the union of their corresponding sets.
- The identity element is the empty relation, `R ∪ ∅ = R`

If R and S are binary relations over sets X and Y then 
`R ∪ S = {(x,y) | xRy ∨ xSy }` 
is the union relation of relations R and S over sets X and Y.

Examples
- (≤) = (<) ∪ (=)
- (≥) = (>) ∪ (=)
- (⊆) = (⊂) ∪ (=)


>(≤) = (<) ∪ (=)

```
    R                 S             R ∪ S

= 0 1 2 3       < 0 1 2 3         ≤ 0 1 2 3
0 x             0   x x x         0 x x x x
1   x           1     x x         1   x x x
2     x         2       x         2     x x
3       x       3                 3       x
```

# Union of relations

If 𝓡 and 𝓢 are binary relations over sets X and Y then `𝓡 ⋃ 𝓢` 
is the union of relations 𝓡 and 𝓢 over X and Y:   
`𝓡 ⋃ 𝓢 = { (x,y) | x𝓡y ⋁ x𝓢y }` i.e.   
`𝓡 ⋃ 𝓢 = { (x,y) | (x,y) ∈ 𝓡 ⋁ (x,y) ∈ 𝓢 }`

The identity element is the empty (null) relation.

Examples of union of relations
- `(<) ⋃ (=) = (<=)`, i.e. LT ⋃ EQ = LE
- `(>) ⋃ (=) = (>=)`, i.e. GT ⋃ EQ = GE
- `(⊂) ⋃ (=) = (⊆)`
- `(⊃) ⋃ (=) = (⊇)`
