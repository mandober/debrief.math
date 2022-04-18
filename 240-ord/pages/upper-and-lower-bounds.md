# Upper and lower bounds

https://en.wikipedia.org/wiki/Upper_and_lower_bounds

In order theory, 
**an upper bound** (or majorant) 
of a subset `S` 
of some preordered set `〈 K, ⩽ 〉` 
is an element of `K` 
that is greater than or equal to 
every element of `S`.

`∃S ((S ⊆ K ⋀ S ≠ ∅) -> ∃k (k ∈ K ⋀ ∀s (s ∈ S -> a <= k)))`


Dually, **a lower bound** (or minorant) 
of `S` is defined to be 
an element of `K` 
that is less than or equal 
to every element of `S`.

`∃S ((S ⊆ K ⋀ S ≠ ∅) -> ∃k (k ∈ K ⋀ ∀s (s ∈ S -> a >= k)))`


A set with an upper bound is said to be **bounded from above** or **majorized** by that bound. A set that has an upper bound is said to be *bounded above*.

A set with an lower bound is said to be **bounded from below** or **minorized** by that bound. A set that has an lower bound is said to be *bounded below*.

## Examples

* 5 is a lower bound for the set `S = {5,8,42,34,93}` (where, e.g., `S ⊆ ℕ`) and so is 4. On the other hand, 6 is not a lower bound for `S` since it is not smaller than every element in `S` (5 is smaller).
* The set `S = {42}` has 42 as both an upper bound and a lower bound - all other numbers are either an upper bound or a lower bound for that `S`.
* Every subset of `ℕ` has a lower bound since the naturals have a least element (0).
* An infinite subset of ℕ cannot be bounded from above.
* An infinite subset of ℤ may be bounded from below or above, but not both.
* An infinite subset of ℚ may or may not be bounded from below, and may or may not be bounded from above.

> Every finite subset of a non-empty totally ordered set has both upper and lower bounds.
