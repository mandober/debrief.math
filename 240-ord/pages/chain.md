# Chain

https://en.wikipedia.org/wiki/Total_order#Chains
https://en.wikipedia.org/wiki/Chain_(ordered_set)

In general, a **chain** is a subset of a poset that is totally ordered for the induced order. The term "chain" is also abused as a synonym for a totally ordered set.

Typically, a poset is a set of subsets of a given set that is ordered by inclusion, and the term "chain" is used for stating properties of the set of chains. The high number of nested levels of sets explains the usefulness of the term.

A common example when chain refers to a totally ordered subsets is *Zorn's lemma*, which asserts that, if every chain in a poset `X` has an upper bound in `X`, then `X` contains at least one maximal element. Zorn's lemma is commonly used with `X` being a set of subsets; in this case, the upperbound is obtained by proving that the union of the elements of a chain in `X` is in `X`.

In some contexts, chains under consideration are order isomorphic to the natural numbers with their usual order (or, perhaps, the opposite order). In this case, a chain can be identified with a *monotone sequence*, and is called an **ascending chain** if the sequence is increasing, or a **descending chain** if the sequence is decreasing.

A poset has *the descending chain condition* if every descending chain eventually stabilizes. For example, an order is well-founded if it has the descending chain condition. Similarly, *the ascending chain condition* means that every ascending chain eventually stabilizes. For example, a Noetherian ring is a ring whose ideals satisfy the ascending chain condition.

Other contexts only consider finite chains. In this case, one talks of a *finite chain*, often shortened as a chain. In this case, *the length of a chain* is the number of inequalities (or set inclusions) between consecutive elements of the chain, i.e. the number, minus one, of elements in the chain. So, a singleton set is a chain of length zero, and an ordered pair is a chain of length one.

*The dimension of a space* is often defined or characterized as the maximal length of chains of subspaces. For example, the dimension of a vector space is the maximal length of chains of linear subspaces, and the Krull dimension of a commutative ring is the maximal length of chains of prime ideals.
