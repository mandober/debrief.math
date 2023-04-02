# Composition

https://en.wikipedia.org/wiki/Composition_(combinatorics)

A **composition** of an integer `n` is a way of writing `n` as the sum of a sequence of (strictly) positive integers.

Two sequences that differ in the order of their terms define different compositions of their sum, while they are considered to define the same partition of that number.

Every integer has finitely many distinct compositions. Negative numbers do not have any compositions, but 0 has one composition, the empty sequence. Each positive integer `n` has `2ⁿ⁻¹` distinct compositions.


A **weak composition** of an integer `n` is similar to a composition of `n`, but allowing terms of the sequence to be zero: it is a way of writing `n` as the sum of a sequence of non-negative integers. As a consequence, every positive integer admits infinitely many weak compositions (if their length is not bounded).

Adding a number of terms 0 to the end of a weak composition is usually not considered to define a different weak composition; in other words, weak compositions are assumed to be implicitly extended indefinitely by terms 0.

To further generalize, an **A-restricted composition** of an integer `n`, for a subset `A` of the (nonnegative or positive) integers, is an ordered collection of one or more elements in `A` whose sum is `n`.


## Examples

The 16 compositions of 5 are:

```
5
4 + 1
3 + 2
3 + 1 + 1
2 + 3
2 + 2 + 1
2 + 1 + 2
2 + 1 + 1 + 1
1 + 4
1 + 3 + 1
1 + 2 + 2
1 + 2 + 1 + 1
1 + 1 + 3
1 + 1 + 2 + 1
1 + 1 + 1 + 2
1 + 1 + 1 + 1 + 1
```

Compare this with the 7 partitions of 5:

```
5
4 + 1
3 + 2
3 + 1 + 1
2 + 2 + 1
2 + 1 + 1 + 1
1 + 1 + 1 + 1 + 1
```

It is possible to put constraints on the parts of the compositions. For example the 5 compositions of 5 into distinct terms are:

```
5
4 + 1
3 + 2
2 + 3
1 + 4
```

Compare this with the 3 partitions of 5 into distinct terms:

```
5
4 + 1
3 + 2
```
