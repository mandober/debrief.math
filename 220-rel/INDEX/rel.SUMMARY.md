# Relations: Summary


## Setup

- Let `A` and `B` be sets
- let n be the cardinality of A, `n = |A|`
- let m be the cardinality of B, `m = |B|`
- let k be the cardinality of A⨯B, `k = |A⨯B| = |B⨯A|`
- let p be the cardinality of 𝓟(A⨯B), `p = |𝓟(A⨯B)|`
- let n² be the cardinality of A⨯A, `n² = |A⨯A| = |A²|`

A₀, A₁, …, Aₙ    Aᵢ {i : ℕ}

A, B, …, K
A ⨯ B ⨯ … ⨯ K
{(a, b, …, k)}
{(e₀, e₁, …, eₙ)}
eᵢ
A⨯B, B⨯A, A⨯B⨯B, A⨯A⨯B, A⨯B⨯A⨯B⨯B


Relation ≝ 
- Relations are sets.
- Relations are sets consisting of tuples.
- Relations are sets whose elements are tuples.
- Every relation between sets is a subset of their product.

Heterogeneous relations
- Heterogeneous relations are relations between distinct sets.

Homogeneous relations
- Homogeneous relations are relations on a single set.

Directed
- Relations are sets whose elements are tuples (sequence, ordered list), so they incorporate the notion of direction: a binary relation between sets A and B is defined by a set of ordered pairs, but the first component of each pair always comes from set A, while the second comes from set B. 

Not because these sets are mentioned in this order, but because relations are specified by the product of sets

Binary relations
- A binary relation between sets A and B is a subset of their Carthesian product, `A⨯B`

- A binary relation between sets A and B is defined by a set of ordered pairs (2-tuples), `{(a,b)}`, where, in each pair, the first component is an element of A, and the second is an element of B. Not so! It is defined as being a subset of their product, so the order in each tuple crucially depends on the particular product between the sets, e.g. whether it is `A⨯B`, `B⨯A`, `A⨯B⨯B`, `A⨯A⨯B`, `A⨯B⨯A⨯B⨯B`, etc.


Arity
* An `n`-ary relation between `k` number of sets `A, B, …, K` is defined by a set of `n`-tuples (not k-tuples) `{(e₀, e₁, …, eₙ)}` where each tuple compenent, `eᵢ`, comes from the `i`-th term, where `i` is the index each set has in the expression of their Carthesian product, `A ⨯ B ⨯ … ⨯ K`; here, each set appears once, so each components of the n-tuple is a element coming from the corresponding set, but, in general, this need not be the case.
* This is never the case with homogeneous relations because, e.g. a quinary relation on a set A is a set of 5-tuples with all the components coming from the same set A.
* It is also possible to have a `k`-ary heterogeneous relation between `n` sets, where `k >= n` because some sets are mentioned more than once.




* Every relation between sets A and B is a subset of the product of A and B.


* Relations are also characterized by their *arity*, which is the number of non-nested components in each ordered pair that constitutes the set of the relation (provided an ordered pair is a 2-tuple, i.e. a pair of non-nested elements). So each binary relation `R` between sets `A` and `B` is represented by a set of ordered pairs or 2-tuples, `{(a,b)}`, and each relation set is a subset of the product of A and B, i.e. `R ⊆ A⨯B = {(a,b) | ∀a∀b(a ∈ A, b ∈ B)}`. However, binary relations are also possible on a single set, as well as any n-ary relation; e.g. a ternary relation on a set A consists of a set of 3-tuples, `{ (a,a,a) }`, and there could also be a ternary relation between two sets A and B, e.g. `{ (a,b,a) }`, `{ (a,b,b) }`, etc. That is, the number of sets involved in a relation does not necessarily equals a relations' arity, particularly in the case of homogeneous relations.
* 

* Considering two sets `A` and `B`, if `n = |A|`, `m = |B|`, then there are `n m = k` number of elements in their Carthesian product, `A ⨯ B`, so the cardinality of the powerset `𝓟(A⨯B)` is `2ᵏ`, which is the number of all binary relations between sets `A` and `B`. The number of all binary relations on a set `A` is `2^n²`.


* There are many relations, from the empty relation (represented by the empty set and arising if either A or B or both are empty)

* Relations are directed meaning the associations they represent are from the perspective of set `A`, which is called the domain set.

* Relations are a generalization of functions, but with fewer restrictions.

* A heterogeneous binary relation `R` between sets `A` and `B` is a subset of the Carthesian product of `A` and `B`, `R ⊆ A ⨯ B`.

* A homogeneous binary relation `R` on a set `A` is a subset of the Carthesian product of `A` with itself, `R ⊆ A ⨯ A` or `R ⊆ A²`.
