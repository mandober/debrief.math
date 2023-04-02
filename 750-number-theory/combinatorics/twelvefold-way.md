# Twelvefold way

https://en.wikipedia.org/wiki/Twelvefold_way

In combinatorics, **the twelvefold way** is a systematic classification of 12 related enumerative problems concerning two finite sets, which include the classical problems of counting permutations, combinations, multisets, and partitions either of a set or of a number.

## Contents

- 1. Overview
- 2. Viewpoints
  - 2.1 Balls and boxes
  - 2.2 Sampling
  - 2.3 Labelling, selection, grouping
  - 2.4 Labelling and selection with or without repetition
  - 2.5 Partitions of sets and numbers
- 3. Formulas
  - 3.1 Intuitive meaning of the rows and columns
  - 3.2 Intuitive meaning of the chart using Balls and Boxes scenario
  - 3.3 Details of the different cases
    - 3.3.1 Functions from N to X
    - 3.3.2 Injective functions from N to X
    - 3.3.3 Injective functions from N to X, up to a permutation of N
    - 3.3.4 Functions from N to X, up to a permutation of N
    - 3.3.5 Surjective functions from N to X, up to a permutation of N
    - 3.3.6 Injective functions from N to X, up to a permutation of X
    - 3.3.7 Injective functions from N to X, up to permutations of N and X
    - 3.3.8 Surjective functions from N to X, up to a permutation of X
    - 3.3.9 Surjective functions from N to X
    - 3.3.10 Functions from N to X, up to a permutation of X
    - 3.3.11 Surjective functions from N to X, up to permutations of N and X
    - 3.3.12 Functions from N to X, up to permutations of N and X
  - 3.4 Extremal cases
- 4. Generalizations
  - 4.1 The twentyfold way

## Overview

Let `N` and `X` be finite sets. 
Let `n = |N|` and `x = |X|` be the cardinality of the sets. 
Thus `N` is an n-set, and `X` is an x-set.

The general problem we consider is the enumeration of equivalence classes of functions `f : N → X`.

The functions are subject to one of the three following restrictions:
1. Unrestricted: each `a ∈ N` may be sent by `f` to any `b ∈ X`, and each `b` may occur multiple times.
2. `f` is injective: each value `f(a)` for `a ∈ N` must be distinct from every other, and so each `b ∈ X` may occur at most once in the image of `f`.
3. `f` is surjective: for each `b ∈ X` there must be at least one `a ∈ N` such that `f(a) = b`, thus each `b` will occur at least once in the image of `f`.

(The condition that `f` be bijective is only an option when `n = x`; but then it is equivalent to `f` being both injective and surjective.)

There are 4 different equivalence relations which may be defined on the set of functions `f : N → X`:
1. equality
2. equality up to a permutation of `N`
3. equality up to a permutation of `X`
4. equality up to permutations of `N` and `X`

The 3 conditions on the functions and the 4 equivalence relations can be paired in `3 × 4 = 12` ways.

The 12 problems of counting equivalence classes of functions do not involve the same difficulties, and there is not one systematic method for solving them.
- 2 of the problems are trivial (the number of equivalence classes is 0 or 1)
- 5 problems have an answer in terms of a multiplicative formula of n and x
- 5 remaining problems have an answer in terms of combinatorial functions (Stirling numbers and the partition function for a given number of parts)

The incorporation of classical enumeration problems into this setting is as follows.

* Counting `n`-permutations (i.e. partial permutations or sequences without repetition) of `X` is equivalent to counting injective functions `N → X`.

* Counting `n`-combinations of `X` is equivalent to counting injective functions `N → X` up to permutations of `N`.

* Counting permutations of the set `X` is equivalent to counting injective functions `N → X` when `n = x`, and also to counting surjective functions `N → X` when `n = x`.

* Counting multisets of size `n` (also known as `n`-combinations with repetitions) of elements in `X` is equivalent to counting all functions `N → X` up to permutations of `N`.

* Counting partitions of the set `N` into `x` subsets is equivalent to counting all surjective functions `N → X` up to permutations of `X`.

* Counting compositions of the number `n` into `x` parts is equivalent to counting all surjective functions `N → X` up to permutations of `N`.

## Viewpoints

The various problems in the twelvefold way may be considered from different points of view.

### Balls and boxes

Traditionally many of the problems in the twelvefold way have been formulated in terms of placing balls in boxes (or some similar visualization) instead of defining functions. The set N can be identified with a set of balls, and X with a set of boxes; the function ƒ : N → X then describes a way to distribute the balls into the boxes, namely by putting each ball a into box ƒ(a). A function ascribes a unique image to each value in its domain; this property is reflected by the property that any ball can go into only one box (together with the requirement that no ball should remain outside of the boxes), whereas any box can accommodate (in principle) an arbitrary number of balls. Requiring in addition ƒ to be injective means forbidding to put more than one ball in any one box, while requiring ƒ to be surjective means insisting that every box contain at least one ball.

Counting modulo permutations of N or X is reflected by calling the balls or the boxes, respectively, "indistinguishable". This is an imprecise formulation, intended to indicate that different configurations are not to be counted separately if one can be transformed into the other by some interchange of balls or of boxes. This possibility of transformation is formalized by the action by permutations.

### Sampling
