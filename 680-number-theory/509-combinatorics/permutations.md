# Permutations

https://en.wikipedia.org/wiki/Permutations

- permutation
- k-permutations, partial permutations
- factorial

P(n) = n!

Loosely, a permutation of a set is an arrangement of its members into a sequence (or linear order), or if the set is already ordered, a rearrangement of its elements. The term "permutation" also refers to the act of changing the linear order of an ordered set.

Permutations differ from combinations, which are selections of some members of a set regardless of order.

For example, written as tuples, there are 6 permutations of the set {1,2,3}, namely (1,2,3), (1,3,2), (2,1,3), (2,3,1), (3,1,2), (3,2,1). These are all the possible orderings of this 3-element set.

Anagrams of words whose letters are different are also permutations: the letters are already ordered in the original word, and the anagram is a reordering of the letters.

The study of permutations of finite sets is an important topic in the fields of combinatorics and group theory.

Permutations are used in almost every branch of mathematics, and in many other fields of science. In computer science, they are used for analyzing sorting algorithms; in quantum physics, for describing states of particles; and in biology, for describing RNA sequences.

The number of permutations of `n` distinct objects is `n` factorial, `n!`.

Technically, a permutation of a set `S` is defined as a bijection from `S` to itself. That is, it is a function from `S` to `S` for which every element occurs exactly once as an image value. This is related to the rearrangement of the elements of `S` in which each element `s` is replaced by the corresponding `f(s)`. For example, the permutation (3,1,2) mentioned above is described by the function `α` defined as `α(1) = 3`, `α(2) = 1`, `α(3) = 2`.

The collection of all permutations of a set form a group called the *symmetric group of the set*. The group operation is the composition, which results in another rearrangement. As properties of permutations don't depend on the nature of the set elements, it is often the permutations of the set `{1,2, …, n}` that are considered for studying permutations.

In elementary combinatorics, the *k-permutations*, or partial permutations, are the ordered arrangements of `k` distinct elements selected from a set. When `k` is equal to the size of the set, these are the permutations of the set.

## Contents

- 1. History
- 2. Permutations without repetitions
- 3. Definition
- 4. Notations
  - 4.1 Two-line notation
  - 4.2 One-line notation
  - 4.3 Cycle notation
  - 4.4 Canonical cycle notation
  - 4.5 Composition of permutations
- 5. Other uses of the term permutation
  - 5.1 k-permutations of n
  - 5.2 Permutations with repetition
  - 5.3 Permutations of multisets
  - 5.4 Circular permutations
- 6. Properties
  - 6.1 Permutation type
  - 6.2 Conjugating permutations
  - 6.3 Permutation order
  - 6.4 Parity of a permutation
  - 6.5 Matrix representation
  - 6.6 Foata's transition lemma
- 7. Permutations of totally ordered sets
  - 7.1 Ascents, descents, runs and excedances
  - 7.2 Inversions
- 8. Permutations in computing
  - 8.1 Numbering permutations
  - 8.2 Algorithms to generate permutations
    - 8.2.1 Random generation of permutations
    - 8.2.2 Generation in lexicographic order
    - 8.2.3 Generation with minimal changes
    - 8.2.4 Meandric permutations
  - 8.3 Applications

## History

A first case in which seemingly unrelated mathematical questions were studied with the help of permutations occurred around 1770, when Joseph Louis Lagrange, in the study of polynomial equations, observed that properties of the permutations of the roots of an equation are related to the possibilities to solve it. This line of work ultimately resulted, through the work of Évariste Galois, in *Galois theory*, which gives a complete description of what is possible and impossible with respect to solving polynomial equations (in one unknown) by radicals. In modern mathematics, there are many similar situations in which understanding a problem requires studying certain permutations related to it.

## Permutations without repetitions

The simplest example of permutations is permutations without repetitions where we consider the number of possible ways of arranging `n` items into `n` places.

The factorial has special application in defining the number of permutations in a set which doesn't include repetitions.

The number `n!` is precisely the number of ways we can rearrange `n` things into a new order.

For example, if we have 3 fruits: an orange, apple and pear, we can eat them in the order mentioned, or we can reorder them. The exact number of permutations is then `3! = 1⋅2⋅3 = 6`. The number gets extremely large as the number of items, `n`, goes up.

In a similar manner, the number of arrangements of `k` items from `n` objects is sometimes called a partial permutation or a k-permutation. It can be written as `nPk` ("n permute k"), and is equal to the number `n(n - 1) ⋯ (n - k + 1)`, also written as `n!/(n - k)!`.

## Definition

Permutations can be defined as bijections from a set `S` onto itself. All permutations of a set with `n` elements form a symmetric group, denoted `Sₙ`,
where the group operation is function composition.

Thus for two permutations, π and σ in the group `Sₙ`, the 4 group axioms hold:
1. Closure: if `π` and `σ` are in `Sₙ` then so is `π σ`:    
  `π,σ ∈ Sₙ -> π σ ∈ Sₙ`
2. Associativity: For any three permutations `π`, `σ`, `τ` in `Sₙ`:   
  `∀π,σ,τ ∈ Sₙ -> (π σ) τ = π (σ τ)`
3. Identity: There is an identity permutation, defined by `∀x ∈ S. id(x) = x`   
  `∀σ ∈ Sₙ. id σ = σ = σ id`
4. Invertibility: For every permutation `σ ∈ Sₙ`, there is `σ⁻¹ ∈ Sₙ` so that   
  `σσ⁻¹ = σ⁻¹σ = id`

Group axioms:
1. Closure:       `∀π∀σ((π ∈ Sₙ ⋀ σ ∈ Sₙ) -> π σ ∈ Sₙ)`
2. Associativity: `∀π,σ,τ ∈ Sₙ -> (π σ) τ = π (σ τ)`
3. Identity:      `∀σ ∈ Sₙ. id σ = σ = σ id`
4. Invertibility: `∀σ ∈ Sₙ. ∃σ⁻¹ ∈ Sₙ. σ σ⁻¹ = σ⁻¹ σ = id`


## Notations
