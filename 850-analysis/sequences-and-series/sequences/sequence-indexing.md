# Sequence :: Indexing

A sequence is an ordered collection of objects, in which each element has a stable, *fixed position* uniquely identified by an index.

An **index** is strictly a *non-negative integer*. Indices are pulled from the set of the natural numbers that comes still undecided about the membership of zero. This inherent ambiguity about zero manifests in there being two main ways of indexing a sequence: 0-based indexing and 1-based indexing. Although indexing may begin from other starting values (besides 0 or 1), such indexing schemes are rarely seen.

The **1-based indexing** has an advantage in that the cardinal and ordinal numbers are in sync, e.g. the 4th term of a sequence has index 4; the 1st term in a sequence is the *initial term* of the sequence, identified by index 1; an *initial segment* of an infinite sequence of length 14 has 14 elements and the last term has index 14.

With **0-based indexing** everything is offset by 1. The initial term is ambiguously referred to by both the 0th term and the 1st term; this implies the second term is actually the 1st term. It gets ridiculous quickly. With 0-based indexing it's best to stick to referring to terms by their index, e.g. term with index 0, term indexed by 1, index 2 term.

*Indexing a sequence* may refer to the implicit process of the automatic assignment of a unique non-negative integer to each term of the sequence. A sequence may also be viewed as a collection of slots, with each slot having a unique index, and any slot can be uniquely identified by its index. Each term is then located in its own slot which is also uniquely identified by the same index. Either way - dealing with terms directly, or with slots where the terms reside at - the initial slot has index 1, the next one index 2, and so on in order, with all the subsequent slots having an index that is one more then the previous slot's index. The slots are indexed in order, starting with index 1, never skipping an index or a slot. Empty slots are disallowed, as are empty sequences.

*Indexing a sequence* may also mean retrieving an element from a sequence based on the given index, also called *querying a sequence*. An expression like `a₂` is evaluated to the value of the term that is located at index 2 in the sequence; if that term is a constant, like 3.14, then the expression `a₂` evaluates to 3.14.

## Indexing

There is no general consesus at which index should a sequence start. Majority of sequences start either at 0 or 1, but starting at a different index is also possible. The starting index is the *lower bound* of the sequence, and it is the constant written underneath the sigma symbol when a sequence is converted into a series.

*The value of a series* is a single number because a series represents the sumation of its terms.

If we have a sequence a such that a={1,2,3,4,5} then a1=1,a2=2,a3=3...

The subscript must be a non-negative integer. Also notice that n starts from one and counts up.
