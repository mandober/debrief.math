# Binary relation

https://en.wikipedia.org/wiki/Binary_relation



A binary relation between sets `A` and `B` is a subset of their Cartesian product `A×B`; that is, it is a set of ordered pairs, `{(a,b) | a ∈ A, b ∈ B}`, with each element (pair) representing an association that an element in `A` has with an element in `B` (hence providing a sense of directionality).

An order pair, `(a,b)`, encodes a common concept of a relation, `R`: an element `a ∈ A` is related to an element `b ∈ B` iff the ordered pair `(a,b)` belongs to the set (of ordered pairs) that determines the relation, `(a,b) ∈ R` or `aRb`. The oposite is denoted by `(a,b) ∉ R` or `¬aRb` i.e. `¬(aRb)`.




consisting of elements `a` in `A` and `b` in `B`.


A binary relation is a special case of n-ary relations when n = 2. In the general case, the arity of `n`-ary relation is `n`. The arity signifies the number of places in the ordered pairs that make up the relation. An n-ary relation over `n` many sets, indexed by the integer `i`, so that `1 <= i <= n`, is denoted by `A₁, …, Aₙ`; an arbitrary set in this sequence is denoted by `Aᵢ`.


of n-ary relations, which are relation over `A₁`, ⋯, `Aₙ` which is a subset of the Cartesian product `A₁ × ⋯ × Aₙ`.


```js
A ⨯ B = { (a,b) | ∀ab. a ∈ A, b ∈ B }
A ⨯ A = A² = { (a,a) | ∀a. a ∈ A }

𝓡 ⊆ A⨯B
𝓡 = { (a,b) | a ∈ A, b ∈ B }
a𝓡b -> (a,b) ∈ 𝓡
```

In terms of the the Carthesian product, `A⨯B`
* A binary relation `𝓡` is a subset of `A⨯B`, i.e. `𝓡 ⊆ A⨯B`
* A binary relation `𝓡` is the *total* relation if `𝓡 = A⨯B`
* A binary relation `𝓡` is the *null*  relation if `𝓡 = ∅`
* A non-total relation is a proper subset of `A⨯B`, `𝓡 ⊂ A⨯B`
* Being a set, a relation `𝓡` contains an unordered collection of ordered pairs `(a,b)` where `a ∈ A` and `b ∈ B`. If these two sets are actually the same set `A`, then the ordered pairs are of the form `(a,a)`.

## Special types of binary relations

Some important types of binary relations R over sets X and Y are listed below.

Set-like (or local)
- `∀x ∈ X`, the class of all `y` such that `yRx` is a set.
- This makes sense only if relations over proper classes are allowed.
- For example, the usual ordering < over the class of ordinal numbers is a set-like relation, while its inverse > is not.

Uniqueness properties

* *Injective or left-unique*
  - `∀xz ∈ X. ∀y ∈ Y. xRy ⋀ zRy -> x = z`
  - for such a relation, `{Y}` is called a primary key of `R`

* *Functional or right-unique* (or right-definite, or univalent)
  - partial function, `∀x ∈ X. ∀y,z ∈ Y. xRy ⋀ xRz -> y = z`
  - such a binary relation is called a partial function
  - for such a relation, `X` is called a primary key of `R`

*  One-to-one:      functional ⋀     injective
*  One-to-many: not functional ⋀     injective
* Many-to-one:      functional ⋀ not injective
* Many-to-many: not functional ⋀ not injective

Totality properties (definable if both co/domain specified):
* *Serial* (left-total)
* *Surjective* (right-total, onto)

Uniqueness and totality properties (definable if both co/domain specified):
* *function*: a binary relation that is functional and serial
* *injection*: a function that is injective
* *surjection*: a function that is surjective
* *bijection*: a function that is injective and surjective

(...)

https://en.wikipedia.org/wiki/Binary_relation
https://en.wikipedia.org/wiki/Homogeneous_relation
