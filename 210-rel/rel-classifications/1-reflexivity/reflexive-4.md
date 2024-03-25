# Reflexive relation

https://en.wikipedia.org/wiki/Reflexive_relation

A binary relation `R` on a set `A` is reflexive if it relates every element of `A` to itself.

An example of a reflexive relation is the relation "is equal to" on the set of real numbers, since every real number is equal to itself.

A reflexive relation is said to have the **reflexive property** or is said to possess **reflexivity**.

Along with symmetry and transitivity, reflexivity is one of three properties defining equivalence relations.

## Contents

- Definitions
- Related definitions
- Examples
- Number of reflexive relations
- Philosophical logic
- Notes

## Definitions








---

Thus, for all `x`: if `x` is in `A` then `xRx`:    
`∀x((x ∈ A) -> (x,x) ∈ R)`

Unlike symmetric and transitive relations, a reflexive relation requires the paricipation of all elements in set `A`.

Because of this, *the null relation* `R` on a *nonempty set* `A` is *not reflexive*, because a reflexive relation not only forces all elements of `A` to take part in a relation `R`, but it insists on each element `a` being paired with itself, `(a,a) ∈ R`. Therefore, for all `a` in A, there must be an ordered pair `(a,a) ∈ R`. Also, reflexivity does not care if `R` contains some other extra pairs as long as it contains the required pairs, `(a,a)`.



the empty set `∅` is a null (empty) relation - and it is not (vacuously) reflexive.





A homogeneous binary relation `R` on a set `A` is **reflexive** if it relates every element of A to itself, `∀x ∈ A. aRa`.

Only the ordered pairs of the form `(a,a)` are significant - all such pairs MUST BE in `R` (1's on the main diagonal) for `R` to be reflexive - other pairs, whether absent or present, are immaterial.


A reflexive relation `R` on a set `A` MUST ASSOCIATE EACH AND EVERY ELEMENT of `A` to itself, i.e. `∀a ∈ A. (a,a) ∈ R`. For each element `x` in the set `A`, there must be an ordered pair `(x,x)` in `R`; that is, `R` must, at the minimum, contain all such pairs to be reflexive (it may contain some extra pairs as well). If `R` only contains such reflexive pairs, then it is the identity relation on A, `Iᴀ`.

There is a distinction between, e.g. reflexive relation and reflexivity: the property is called reflexivity, and if it happens that a relation has this property, then such relation is called reflexive (and similarly for other properties).

+ Along with symmetry and transitivity, reflexivity is one of three properties defining equivalence relations.

A reflexive relation on a nonempty set cannot be
- irreflexive
- asymmetric      (aRb -> ¬bRa)
- antitransitive  (aRb ⋀ bRc -> ¬aRc)


When represented by a matrix, reflexive relations always have 1's on the main diagonal. When represented by a graph, each vertex links back to itself.


## Definition and near terms

Let `R` be a binary relation on a set `A`, defined as `R ⊆ A²`.

A relation `R` is reflexive if `aRa` for every a in A.

+ A relation `R` is reflexive if the identity relation on A is a subset of R, `Iᴀ ⊆ R`, where `Iᴀ = {(a,a)|a ∈ A}`

The **reflexive closure** of `R` is the union `R ⋃ Iᴀ` which can equivalently be defined as the smallest (with respect to `⊆`) reflexive relation on `A` that is a superset of `R`. A relation `R` is reflexive if and only if it is equal to its reflexive closure.

The **reflexive reduction** or **irreflexive kernel** of R is the smallest (with respect to `⊆`) relation on `A` that has the same reflexive closure as `R`. It is equal to `R ∖ Iᴀ = { (a,b) ∈ R | a ≠ b }`.

The irreflexive kernel of `R` can, in a sense, be seen as a construction that is the "opposite" of the reflexive closure of `R`. For example, the reflexive closure of the canonical strict inequality, `<`, on ℝ is the usual non-strict inequality, `≤`, whereas the reflexive reduction of `≤` is `<`.

## Related relations

These are all variations on the reflexive property:
- Reflexive relation
- Irreflexive relation
- Coreflexive relation
- Quasi-reflexive relation
  - Left quasi-reflexive relation
  - Right quasi-reflexive relation


### Irreflexive relations

A relation `R` is **irreflexive** (anti-reflexive, aliorelative) if it does not relate any element to itself, `∀a ∈ A. ¬aRa`.

An irreflexive relation `R` on a set `A` MUST NOT ASSOCIATE ANY ELEMENT of `A` to itself, i.e. `∀a ∈ A. (a,a) ∉ R`. If even one such pair ends up in R, then R is not irreflexive. This is the necessary condition of irreflexivity of R, it does not care about the presence of any other pairs in R.

+ A relation is irreflexive if and only if its complement in `A²` is reflexive.
+ An asymmetric relation is necessarily irreflexive.
+ A transitive and irreflexive relation is necessarily asymmetric.

Not every relation which is not reflexive is irreflexive: it is possible to define relations where some elements are related to themselves, but others are not. For example, the relation "the product of x and y is even" is reflexive on the set of even numbers, irreflexive on the set of odd numbers, and neither reflexive nor irreflexive on the set of natural numbers.

When represented by a matrix, irreflexive relations always have 0's on the main diagonal. When represented by a graph, vertices must not link back to itself.

Only the ordered pairs of the form `(a,a)` are significant - all such pairs MUST NOT BE in `R` (0's on the main diagonal) for `R` to be irreflexive - other pairs, whether absent or present, are immaterial.


### Quasi-reflexive relations

A relation `R` is **left quasi-reflexive** if, for all a,b ∈ A, whenever aRb then necessarily aRa, `∀ab ∈ A. aRb -> aRa`.

A relation `R` is **right quasi-reflexive** if, for all a,b ∈ A, whenever aRb then necessarily bRb, `∀ab ∈ A. aRb -> bRb`.

A relation `R` is **quasi-reflexive** if, for all a,b ∈ A, whenever aRb then necessarily bRb, `∀ab ∈ A. aRb -> (aRa ⋀ bRb)`.

A relation `R` is quasi-reflexive if every element, related to some element, is also related to itself; equivalently, a relation is quasi-reflexive if and only if it is both left quasi-reflexive and right quasi-reflexive.

+ A relation `R` is quasi-reflexive iff its symmetric closure `R ⋃ Rᵀ` is left (or right) quasi-reflexive.


An example of a quasi-reflexive relation is "has the same limit as" on the set of sequences of real numbers: not every sequence has a limit, and thus the relation is not reflexive, but if a sequence has the same limit as some sequence, then it has the same limit as itself.

An example of a left quasi-reflexive relation is a left Euclidean relation, which is always left quasi-reflexive but not necessarily right quasi-reflexive, and thus not necessarily quasi-reflexive.


### Coreflexive relations

A relation `R` is coreflexive: `∀ab ∈ A. aRb -> a = b`

An example of a coreflexive relation is the relation on integers in which each odd number is related to itself and there are no other relations.

The equality relation is the only example of a both reflexive and coreflexive relation.

+ A relation is coreflexive iff its symmetric closure is anti-symmetric.
+ Any coreflexive relation is a subset of the identity relation.
+ The union of a coreflexive relation and a transitive relation on the same set is always transitive.


### Antisymmetric relations

A relation `R` is antisymmetric if, for all elements a,b in A, if `aRb` and `bRa` then necessarily a is equal to b, `∀ab ∈ A. aRb ⋀ bRa --> a = b`.


## Examples

Reflexive relations
- "is equal to", equality, EQ,       `=`
- "is a subset of", set inclusion,   `⊆`
- "divides", divisibility,          `d|n`
- "is greater than or equal to", GE, `>=`
- "is less than or equal to", LE,    `<=`
- "is parallel",                     `‖`
- "is brother of"
- "is sibling of"

Irreflexive relations
- "is not equal to", NE,    `≠`
- "is a proper subset of",  `⊂`
- "is greater than", GT,    `>`
- "is less than", LT,       `<`
- "is coprime to" (for integers > 1 since 1 is coprime to itself)
- "is father of"


## Philosophical logic

In philosophical logic, different terminology is often used:
* reflexive       ⟼ totally reflexive (in philosophy)
* quasi-reflexive ⟼ reflexive         (in philosophy)


## Number of reflexive relations

The number of reflexive relations on a set with `n` elements: `2^(n² - n)`.

A053763, a(n) = 2^(n² - n) = 2^(n ⨯ (n - 1)) = 1, 1, 4, 64, 4096, 1048576, …

This is the sequence [A053763](https://oeis.org/A053763) in the OEIS (On-Line Encyclopedia of Integer Sequences).


* Number of n-element binary relations of different types:

C | any | Tra | Ref | Sym | Preord | Partial | Tot.preord | Total ord | Eqiv
--|-----|-----|-----|-----|--------|---------|------------|-----------|-----
0 | 2⁰  |   1 | 2⁰  | 2⁰  | 1      | 1       | 1          | 1         |  1
1 | 2¹  |   2 | 2⁰  | 2¹  | 1      | 1       | 1          | 1         |  1
2 | 2⁴  |  13 | 2²  | 2³  | 4      | 3       | 3          | 2         |  2
3 | 2⁹  | 171 | 2⁶  | 2⁶  | 29     | 19      |13          | 6         |  5
4 | 2¹⁶ |3994 | 2¹² | 2¹⁰ | 355    | 219     |75          |24         | 15


The number of relations on a set with `n` elements
- any kind of relation:  2^n²
- reflexive relations:   2^(n² - n)
- symmetric relations:   2^(n² + n) / 2)
- Total preorders:       Σ {k=0} {n} k!S(n,k)
- Total orders:          n!
- Equivalence relations: Σ {k=0} {n} S(n,k)

Notes
- C = cardinality of A = n
- any = any kind of relation on A = 2^n² since `R ∈ P(A²)` so `|P(A²)| = 2^n²`
- `S(n,k)` refers to Stirling numbers of the second kind
