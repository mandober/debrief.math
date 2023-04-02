# Bounded set

https://en.wikipedia.org/wiki/Bounded_set

>A **bounded set** is a set that has both upper and lower bounds.

In real analysis, a set is bounded if it is, in a certain sense, of finite measure. A *bounded set* is a set with limits so it has a finite measure. Conversely, an *unbounded set* has no finite measure. The term "bounded" makes no sense in a general topological space without a corresponding metric.

A bounded set is not necessarily a *closed set*, and vice versa. For example, a subset `S` of a 2D real space `ℝ²` constrained by two parabolic curves `x² + 1` and `x² - 1` defined in a Cartesian coordinate system is a closed but is not bounded (it is unbounded).

## Definition in the real numbers

A set `S` of real numbers is called *bounded from above* if there exists some real number `k` (not necessarily in `S`) such that `k ≥ s` for all `s ∈ S`. The number `k` is called an *upper bound* of `S`.

`S ⊆ ℝ. ∃k ∈ ℝ. ∀s ∈ S. s ≤ k`

A set `S` of real numbers is called *bounded from below* if there exists some real number `j` (not necessarily in `S`) such that `j ≤ s` for all `s ∈ S`. The number `j` is called an *lower bound* of `S`.

`S ⊆ ℝ. ∃j ∈ ℝ. ∀s ∈ S. j ≤ s`

A set `S` is **bounded** if it has both *upper and lower bounds*. Therefore, a subset of real numbers is bounded if it is contained in a finite interval.

## Boundedness in order theory

>A set of real numbers is bounded iff it has an upper and lower bound.

This definition is extendable to subsets of any partially ordered set. This, more general, concept of boundedness does not correspond to a notion of "size".

A subset `S` of a partially ordered set `P` is *bounded from above* 
if there exists an element `k ∈ P` such that `∀s ∈ S. s ≤ k`. 
The element `k` is called *an upper bound* of `S`.

A subset `S` of a partially ordered set `P` is *bounded from below* 
if there exists an element `j ∈ P` such that `∀s ∈ S. j ≤ s`. 
The element `j` is called *a lower bound* of `S`.

A subset `S` of a partially ordered set `P` is called *bounded* 
if it has *both an upper and a lower bound*, 
or equivalently, if it is *contained in an interval*. 

This is not a property of the set `S` alone, 
but a property of the set `S` 
with regards to it being a subset of `P`.

A *bounded poset* `P` (i.e. `P` by itself, not P as a subset of some other set) is one that has a *least element and a greatest element*. Boundedness has nothing to do with finite size, and that a subset `S` of a bounded poset `P` with as order the restriction of the order on `P` is not necessarily a bounded poset.

A subset S of Rn is bounded with respect to the Euclidean distance if and only if it bounded as subset of Rn with the product order. However, S may be bounded as subset of Rn with the lexicographical order, but not with respect to the Euclidean distance.

A class of ordinal numbers is said to be unbounded, or cofinal, when given any ordinal, there is always some element of the class greater than it. Thus in this case "unbounded" does not mean unbounded by itself but unbounded as a subclass of the class of all ordinal numbers.
