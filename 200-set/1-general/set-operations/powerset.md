# Powerset

https://en.wikipedia.org/wiki/Power_set

In mathematics, the power set (or powerset) of a set S is the set of all subsets of S, including the empty set and S itself.

In axiomatic set theory (as developed, for example, in the ZFC axioms), the existence of the power set of any set is postulated by the axiom of power set.

The powerset of S is denoted as 𝒫(S) or ℘(S), or 2ˢ. The notation 2ˢ, meaning the set of all functions from S to a given set of two elements (e.g. {0, 1}), is used because the powerset of S can be identified with, is equivalent to, or bijective to the set of all the functions from S to the given two-element set.

Any subset of `𝒫(S)` is called a *family of sets over `S`*.

## Contents
- Example
- Properties
- Representing subsets as functions
- Relation to binomial theorem
- Recursive definition
- Subsets of limited cardinality
- Power object
- Functors and quantifiers


## Properties

If S is a finite set with the cardinality |S| = n, then the number of subsets of S is |P(S)| = 2ⁿ.

An *indicator function* or *characteristic function* of a subset A of a set S, with the cardinality |S| = n, is a function from S to the two elements set, denoted as `Iᴀ: S → {0, 1}` or `Iᴀ: S → 𝔹`, which indicates whether an element of S belongs to A or not.

If x in S belongs to A, then `Iᴀ(x) = 1`, otherwise `Iᴀ(x) = 0`.

Each subset A of S is identified by (or equivalent to) the indicator function `Iᴀ`, and `{0,1}ˢ`, as the set of all functions from S to {0,1}, consists of all indicator functions of all subsets of S. In other words, `{0,1}ˢ` is equivalent (or bijective) to the power set `𝒫(S)`.

Since each element in S corresponds to either 0 or 1 under any indicator function in `{0,1}ˢ`, the number of all functions in `{0,1}ˢ` is 2ⁿ.

Since the number 2 is set-theoretically defined as 2 := {0,1} = {∅, {∅}}, the `𝒫(S)` is also denoted as `2ˢ`.

Generally speaking, `Xʸ` is the set of all functions `Y → X` and |Xʸ| = |X||Y|.

Cantor's diagonal argument shows that the powerset of a set (whether infinite or not) always has strictly higher cardinality than the set itself (or informally, the power set must be larger than the original set), `S << 𝒫(S)`.

>In particular, Cantor's theorem shows that the *powerset of a countably infinite set* is *uncountably infinite*.

The powerset of ℕ can be put in a one-to-one correspondence with ℝ (see Cardinality of the continuum), `|𝒫(ℕ)| = |ℝ|`.

The powerset of a set S, together with the operations of union (as `∨`), intersection (as `∧`) and complement (as `¬`), can be viewed as the prototypical example of a *Boolean algebra*.

>In fact, one can show that any finite Boolean algebra is isomorphic to the Boolean algebra of the powerset of a finite set.

For infinite Boolean algebras, this is no longer true, but every infinite Boolean algebra can be represented as a subalgebra of a powerset Boolean algebra (see Stone's representation theorem).

The powerset of a set S forms
- *abelian group* when considered with the op of symmetric difference, `Δ` (with ∅ as the identity element, and each set being its own inverse)
- *commutative monoid* when considered with the op of intersection, `⋂`
- It can hence be shown, by proving the distributive laws, that the powerset considered together with both of these operations forms a *Boolean ring*.

## Representing powerset as a relation

Let A = {1, 2}
and B = 𝒫(A) = {∅, {1}, {2}, {1, 2}}
Let E = {(a, b) ∈ A × B | a ∈ b}
Then E is a relation from A to B, E ⊆ A×B
E = {(1, {1}), (1, {1, 2}), (2, {2}), (2, {1, 2})}

R ⊆ A×B where B = 𝒫(A)
R = {(a, b) ∈ A×B    | a ∈ b}





## Representing subsets as functions

In set theory, `Bᴬ` is the notation representing the set of all functions from A to B.

Since the set-theoretical, von Neumann construction, of 2 is {0,1}, then 2ˢ (i.e. {0,1}ˢ) is the set of all functions from S to {0,1}. As shown above, `2ˢ` and the power set of S, `𝒫(S)`, are considered identical set-theoretically.

This equivalence can be applied to an example set S = {x, y, z}, to get the isomorphism with the binary representations of numbers from 0 to 2ⁿ−1, with n being the number of elements in the set S or |S| = n.

First, the enumerated set `{ (x, 1), (y, 2), (z, 3) }` is defined in which the number in each ordered pair represents the position of the paired element of `S` in a sequence of binary digits, so `z y x ~ b₂ b₁ b₀`:
- b₀ is x
- b₁ is y
- b₂ is z

Example `{x, y} = 011₂`, means
- `x` is located at the first position from the right (x is LSB), here 1
- `y` is located in the middle position, here 1
- `z` is located at the first position from the left (z is MSB), here 0 (absent)

For the whole power set of S, we get:

subset    | z y x | dec | notes        | x | y | z | individual
----------|-------|-----|--------------|---|---|---|-----------
∅         | 0 0 0 | 0   | no elements  |   |   |   | 0 + 0 + 0
{x}       | 0 0 1 | 1   | element 1    | x |   |   | 0 + 0 + 1
{y}       | 0 1 0 | 2   | element 2    |   | y |   | 0 + 2 + 0
{x, y}    | 0 1 1 | 3   | elements 1,2 | x | y |   | 0 + 2 + 1
{z}       | 1 0 0 | 4   | element 3    |   |   | z | 4 + 0 + 0
{x, z}    | 1 0 1 | 5   | elements 1,3 | x |   | z | 4 + 0 + 1
{y, z}    | 1 1 0 | 6   | elements 2,3 |   | y | z | 4 + 2 + 0
{x, y, z} | 1 1 1 | 7   | all elements | x | y | z | 4 + 2 + 1


|S| = 3, |𝒫(S)| = 2³ = 8 (0-7), inj : 𝒫(S) → ℕ (as bits)


Such an injective mapping from 𝒫(S) to integers (interpreted as binary digits), `𝒫(S) → ℕ`, is arbitrary, so this representation of all the subsets of S is not unique, but the sort order of the enumerated set does not change its cardinality; e.g. `{(y,1), (z,2), (x,3)}` can be used to construct another injective mapping from 𝒫(S) to the integers without changing the number of one-to-one correspondences.

However, such finite binary representation is only possible if `S` can be enumerated. In this example, x, y, and z are enumerated with 1, 2, and 3, respectively, as the position of binary digit sequences, giving: x ⟼ 1, y ⟼ 2, z ⟼ 3.

The enumeration is possible even if `S` has an infinite cardinality (S is an infinite set), such as the set of integers or rationals, but not possible for example if S is the set of real numbers, in which case we cannot enumerate all irrational numbers.

## Relation to binomial theorem

The binomial theorem is closely related to the power set.

A k-elements combination from some set is another name for a k-elements subset, so the number of combinations, denoted as `C(n, k)` (also called binomial coefficient) is a number of subsets with `k` elements in a set with `n` elements; in other words, it is the number of sets with `k` elements which are elements of the powerset of a set with `n` elements, i.e. *n-choose-k*.

For example, the powerset of a set with 3 elements has 8 elements, of which
- C(3,0) = 1 subset  with 0 elements (empty subset)
- C(3,1) = 3 subsets with 1 element  (singleton subsets)
- C(3,2) = 3 subsets with 2 elements (complements of singleton subsets)
- C(3,3) = 1 subset  with 3 elements (original set)

Let |S| = n, so |P(S)| = 2ⁿ = m, 
thus `m = Σ {k=0..n} C(n,k)`

## Recursive definition

If `S` is a finite set, then a recursive definition of `𝒫(S)` is:
- if S = {}, then 𝒫(S) = {{}}
- otherwise, let `x ∈ S` and `Sʹ = S ∖ {x}`
- then `𝒫(S)` is `𝒫(Sʹ)` ⋃ `{ W ⋃ {x} | W ∈ 𝒫(Sʹ) }`

In Haskell

```hs
powerset :: [a] -> [[a]]
powerset [] = [[]]
powerset (x:xs) = map (x:) powerset xs `union` powerset xs

-- or
powerset :: [a] -> [[a]]
powerset [] = [[]]
powerset [x] = [[], [x]]
powerset (x:xs) = powerset xs `union` [x:t | t <- powerset xs]

-- or
import Control.Monad
powerset :: [a] -> [[a]]
powerset = filterM (const [True, False])

-- or
powerset :: [a] -> [[a]]
powerset [] = return []
powerset (x:q) = powerset q >>= \t -> return t `union` return (x:t)
```


In Prolog

```pl
sset([], []).
sset([X|Q], R) :- (R = T; R = [X|T]), sset(Q,T).
```


In words:

The power set of the empty set is a singleton whose only element is the empty set.
For a non-empty set 
�
S, let 
�
e be any element of the set and 
�
T its relative complement; then the power set of 
�
S is a union of a power set of 
�
T and a power set of 
�
T whose each element is expanded with the 
�
e element.


## Subsets of limited cardinality

## Power object

## Functors and quantifiers
