## The empty set

https://en.wikipedia.org/wiki/Empty_set

**The empty set** is a set without elements, denoted by its own symbol `∅`, instead of (but also along with) the notation `{}`.

In standard axiomatic set theory, by the principle of extensionality, two sets are equal if they have the same elements. As a result, there can be only one set with no elements, hence `the` empty set (rather than `an` empty set).

The empty set has a lot of properties on the account that a lot of conditional formulas are vacuously true in case of the empty set; since variables range over the set that happens to be empty, you cannot find any counter/examples. Many properties are expressed as implications of the form `p -> q`. A material implication is false only in the case the antecedent `p` is true and the consequent `q` is false. So, if we know that `p` is false, we immediately know that the implication `p -> q` is true (we need not even consider `q`). An implication is never falsifiable!

> An implication is vacuously true when you can't find any counterexamples because the domain is empty - an implication is never falsifiable.


## Introducing the empty set into a theory

Set theories may introduce the empty set either as a primitive/axiom or by definition.

A few naive set theories introduce the empty set and sets in general, as a primitive, while other introduce it by a definition. Some axiomatic set theories assert the existence of the empty set with a dedicated axiom. Others let its existence be derived from the existing axioms (deriving it early as a lemma saves a lot of effort).

Once defined within a theory, sets, in general, and the empty set, in particular, are regarded as the mathematical objects in their own rights. Thereafter, the details are quickly forgotten (abstracted), with mathematicians happily continuing to work further without worrying how it all can really be derived from the sets.

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
