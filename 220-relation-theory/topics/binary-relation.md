# Binary relation

https://en.wikipedia.org/wiki/Binary_relation

A binary relation over sets `A` and `B` is a subset of the Cartesian product `A×B`, that is, it is a set of ordered pairs `⟨a,b⟩` consisting of elements `a` in `A` and `b` in `B`.

It encodes the common concept of relation: an element `a` is related to an element `b`, iff the pair `⟨a,b⟩` belongs to the set of ordered pairs that defines the binary relation.

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
