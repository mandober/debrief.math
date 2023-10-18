# Aggregation: Sets, Relations, Functions

Sets
- A : set, ∀a. a ∈ A, |A| = n, A = {a,b,c,d}
- B : set, ∀b. b ∈ B, |B| = m, B = {1,2,3,4}
- n = m = 4

- cardinality is a unary op, `|A|`
- powerset 𝒫 is a unary op, `𝒫(A)`
- dot product, `⨯`, is a binary op, A⨯B, A⨯A = A²
- number of relations
- number of functions
- number of bijections (1⨯id, inverses) =?= card of A⨯B
- number of injections
- number of surjections
- number of complete collapsors, n → 1


|A| = 4
|B| = 4
|A²| = 4² = 16
|𝒫(A)| = 2⁴ = 16
|𝒫(A²)| = 2¹⁶



Powerset
- 2ⁿ

Cartesian product:
- n⨯m or n²
- card of dot product of 4⁴ = 256
- card of the powerset of dot product = (2ⁿ)²
  - (2⁴)² = 16² = 256 = 2⁸ = 4⁴
- A⨯B = { (a,b) | ∀a∀b. a ∈ A, b ∈ B }
- |A⨯B| = n*m
- A⨯B ≠ B⨯A
- |A₁⨯B₁| = n₁ ⨯ m₁ = 16
- a set of 16 elements, each one a pair (a₁,b₁)

Relations:
- on finite vs infinite sets
- heterogenous vs homogenous
- have a bunch of properties
- a function is relation with special properties: left-unique, right-serial
- any relation, R, between A and B is a subset of A⨯B
- R = { (a,b) | a ∈ A, b ∈ B }
- 4 → 4 ... there is ? relations

Functions
- 4 → 4 there are 4⁴ = 256 functions
- 4 → 4 there are 16 are bijections (same as card of dot product)



Let two finite sets `A` and `B`, 
  with `|A| = n` and `|B| = m`, 
  also `∀a. a ∈ A` and `∀b. b ∈ B`, 
then the Carthesian product |A⨯B| = c

A relation, R, on two finite sets, A and B, such that
a ∈ A and b ∈ B

The number of distinct relations between A and B:
  Rᵢ = [0..k] where k = |A⨯B|
  R₀ is the empty (null) relation
  Rₖ is the full (complete) relation, equal to the Cartesian product itself
