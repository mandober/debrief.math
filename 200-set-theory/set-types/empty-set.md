## The empty set

https://en.wikipedia.org/wiki/Empty_set

The empty set is a set without elements. In fact, there is only one empty set since any two sets that are empty are indistinguishable from each other - hence they are the same set. Being a unique set, it always has the determiner, as in *the* empty set.

* The cardinality of the empty set is zero.
* Many set properties are vacuously true for the empty set.
* The empty set may also be called *the void set*. Sometimes, the empty set is referred to as the "null set", but this term should be reserved for measure theory where it describes a set of measure zero (and not necessarily empty).
* Any set other than the empty set is called *non-empty*.

Some naive set theories introduce the empty set the same way as sets in general - as a primitive, while other introduce it by a definition. Some axiomatic set theories ensure the existence of the empty set with a dedicated axiom, while others let its existence be derived from the axioms; since it is handy and useful to derive it early and use it as a lemma thereafter.

Once defined within a theory, sets in general and the empty set are regarded as mathematical objects in their own right; moreovere, an attempt to define the topic under discussion in terms of sets is absent.

## Properties

- there is only one empty set
- the empty set is the only set whose cardinality is zero, `|∅| = 0`
- the empty set is subset of every set, `∅ ⊆ S`
- the empty set is a member of a set's powerset, `∅ ∈ 𝓟(S)`
- the empty set is not a member of a set's partition
- it is a proper subset of any non-empty set, `∅ ⊂ S`
- it may be specified in set-builder notation as `∅ = { x | x ∉ S }`, or with a contradictory formula, e.g. `{x | x ∈ x}`, `{x ∈ ℕ | x < 3 ⋀ x > 3}`


## Natural numbers in terms of sets

Many concepts of mathematics -- in fact, if set theory is considered the foundation of mathematics, then all the mathematical concepts -- are definable in terms of sets. However, most definitions only require the existence of the empty set (and the general conept of a set as a collection); for example, by using various nestings, the empty set is the only object required to define the natural numbers.

```js
∅ ∈ ℕ
n ∈ ℕ -> S(n) ∈ ℕ
// with S defined as
S(n) = n ⋃ {n}

// then:
0 ≡ ∅
1 ≡ 0 ⋃ {0} = ∅ ⋃ {∅} = {∅}
2 ≡ 1 ⋃ {1} = {∅} ⋃ {{∅}} = {∅, {∅}}
3 ≡ 2 ⋃ {2} = {∅, {∅}} ⋃ {{∅, {∅}}} = {∅, {∅}, {∅,{∅}} }
…

// or
S(n) = {0, 1, …, n-1}
// e.g.
3 ≡ {0, 1, 2}
```

## Ref

https://en.wikipedia.org/wiki/Axiom_of_empty_set
