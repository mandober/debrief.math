# Indexed family

https://en.wikipedia.org/wiki/Indexed_family

Not to be confused with [Family of sets](./family-of-sets).

An **indexed family** is a collection of objects (not necessarily a set), each associated with an index from some index set.

For example, a family of real numbers, indexed by the set of integers is a collection of real numbers, where a given function selects one real number for each integer (possibly the same) as indexing.

More formally, an **indexed family is a function together with its domain `I` and image `X`**, that is, indexed families and functions are technically identical, just point of views are different).

Often the elements of the set `X` are referred to as making up the family. In this view, indexed families are interpreted as *collections of indexed elements* instead of functions.

The set `I` is called the **index set** of the family, and `X` is the **indexed set** (or indexing set).

Sequences are one type of families indexed by natural numbers. In general, the index set `I` is not restricted to be countable. For example, one could consider an uncountable family of subsets of the natural numbers indexed by the real numbers.

## Contents

- Formal definition
  - Indexed subfamily
- Examples
  - Indexed vectors
  - Matrices
  - Other examples
- Operations on indexed families
- Usage in category theory

## Formal definition

Let `I` and `X` be sets and `f : I → X`, so `i ↦ xᵢ = f(i)`, where `i ∈ I` and the image `f(i)` of `i` under the function `f` is denoted by `xᵢ`.

For example, `f(3)` is denoted by `x₃`. The symbol `xᵢ` is used to indicate that `xᵢ ∈ X` indexed by `i ∈ I`.

The function `f` thus establishes a **family of elements in `X` indexed by `I`**, which is denoted by `(xᵢ) (i ∈ I)`, or simply `(xᵢ)` if the index set is assumed to be known.

Sometimes angle brackets or braces are used instead of parentheses, although the use of braces risks confusing indexed families with sets.

*Functions and indexed families are formally equivalent*, since any function `f` with a domain `I` induces a family `(f(i)) i ∈ I` and vice versa.

Being an element of a family is equivalent to being in the range of the corresponding function. In practice, however, a family is viewed as a collection, rather than a function.

Any set `X` gives rise to a family `(xₓ) (x ∈ X)`, where `X` is indexed by itself (meaning that `f` is the identity function). That is, any set can index itself.

However, *families differ from sets* in that the same object can appear multiple times with different indices in a family, whereas a set is a collection of distinct objects.

A family contains any element exactly once iff the *indexing function is injective*.

An indexed family `(xᵢ) (i ∈ I)` defines a set `X = {xᵢ | i ∈ I}`, that is, the image of `I` under `f`.

Since the mapping `f` is not required to be injective, there may exist `i,j ∈ I` with `i ≠ j` such that `xᵢ = xⱼ`. Thus, `|X| ≤ |I|`, that is, the caridinalty of the indexed set `X` may be smaller than the caridinalty of the indexing set `I`.

For example, the sequence `(−1ⁱ) (i ∈ N)` indexed by the natural numbers has the image set `{ −1ⁱ | i ∈ N } = { −1, 1 }`. In addition, the set `{xᵢ|i ∈ I}` does not carry information about any structures on `I`.

Hence, by using a set instead of the family, some information might be lost. For example, an ordering on the index set of a family induces an ordering on the family, but no ordering on the corresponding image set.

### Indexed subfamily

An indexed family `(Bᵢ) (i∈J)` is a *subfamily of an indexed family* `(Aᵢ) (i∈I)` iff `J ⊆ I` and `Bᵢ = Aᵢ` holds for all `i ∈ J`.

## Examples

### Indexed vectors

### Matrices

### Other examples

Let `N` be the finite set `{1,2,…,n}`, where `n ∈ ℕ`:
- An ordered pair is a family indexed by the set of two elements, `𝟚 = {1,2}`; each element of the ordered pair is indexed by each element of the set `𝟚`.
- An n-tuple is a family indexed by the set `N`.
- An infinite sequence is a family indexed by the natural numbers.
- A list is an n-tuple for an unspecified `n`, or an infinite sequence.
- An `n×m` matrix is a family indexed by the Cartesian product `n×m` which elements are ordered pairs; e.g. `(2,5)` indexing the matrix element at the 2nd row and the 5th column.
- A *net* is a family indexed by a directed set.

## Operations on indexed families

Index sets are often used in sums and other similar operations. For example, if `(aᵢ) (i ∈ I)` is an indexed family of numbers, the sum of all those numbers is denoted by `Σ (i ∈ I) aᵢ`.

When `(Aᵢ) (i ∈ I)` is a family of sets, the union of all those sets is denoted by `⋃ (i ∈ I) Aᵢ`.

Likewise for intersections and Cartesian products.

## Usage in category theory

The analogous concept in category theory is called a diagram. A *diagram* is a functor giving rise to an indexed family of objects in a category `C`, indexed by another category `J`, and related by morphisms depending on two indices.
