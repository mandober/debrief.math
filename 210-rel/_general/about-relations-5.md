# Relation

https://en.wikipedia.org/wiki/Relation


- a set A
- product A⨯A = A² = { (a,b) | ∀a ∈ A, ∀b ∈ A }
- a relation R ⊆ A², or R ∈ 𝓟(A²)
- a reflexive relation on A, `R = { (a,a) | ∀a ∈ A }`

## Relations' definition's incorrect

A relation `R` on a set `A` is usually defined only as a subset of `A²` - this cannot be correct since it only gives us the set of associations (the set of ordered pairs). Without complementing this information with the full specs of set `A`, we can't say shit about whether the relation is reflexive.

## Binary homogeneous relation is a 2-tuple

To check if a relation `R` is reflexive, you have to know both, the set `A` and the set of associations `M` (often mistaken for the actual relation).

A binary homogeneous relation is fully specified by both
1. the set `A` as the domain of the relation
2. the set of associations, `M` (the set of ordered pairs), `M ⊆ A⨯A`

A binary homogeneous relation is a 2-tuple, `R = (A,M)`, where `A` is a relation's domain set, and `M` is the set of associations, which is indeed a subset of `A⨯A`, i.e. `M ⊆ A⨯A`.

## Binary heterogeneous relation is a 3-tuple

A binary heterogeneous relation is a 3-tuple, `R = (A,B,M)`, where `A` is the relation's domain set, `B` is the relation's codomain set, and `M` is the set of associations, which is indeed a subset of `A⨯B`, i.e. `M ⊆ A⨯B`.

Hand at hart, usually we can probably get away with just a partial composition of the codomain set inferred from the set of associations, `M`.

```haskell
codomain :: Set (a,b) -> Set b
codomain m = S.map snd m
```

On the other hand, the domain set must be given, it cannot be elided. Without an insight into the precise composition of the domain set, we wouldn't be able to answer some questions about the properties of the relation at hand.
