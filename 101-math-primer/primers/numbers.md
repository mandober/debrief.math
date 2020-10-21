# Numbers

The most fundamental number set is the natural number set, denoted by ℕ. In math, it usually starts from 1, denoted by ℕᐩ, the set of positive naturals, or from 0, which is sometimes the case in math but almost always in CS, when it is denoted by ℕ₀. Because of inconvenience, one must always explicitlly state which of the two is meant by ℕ.

By another convention, ℕ does not include 0, but the set of the whole numbers does; it is denoted by 𝕎. Can we say that 𝕎 is the union of 0 and ℕ? No, we cannot! 𝕎 ≠ 0 ⋃ ℕ but 𝕎 = {0} ⋃ ℕ. Was the former wrong because it tried to unite a number (an element), namely 0, and a set, namely ℕ? Of course! The union is defined only when both operands are sets. On the other hand, that is not why it was wrong. 𝕎 is not 0 ⋃ ℕ even if we go from the number level one level down, to the set level where 0 := ∅ = {}. So 0 ⋃ ℕ = ∅ ⋃ ℕ = ℕ because any set S union ∅ is S, S ⋃ ∅ = S. Therefore, ∅ is the identity elements with sets.

In principal, we can start from sets (or something else) but once we define numbers, by convention, it is frowned upon to refer to their implementation. Once numbers are abstracted from sets, their underlying implementation is forgotten and they become standalone objects in their own right.

Now the question is how many types of sets there are? How many sets do we need to define natural numbers (including zero)? We need them all! However, there is only one set total, the empty set. Even if there were more sets, the empty set would always be *the* empty set because all empty sets are the same one empty set, that is denoted by ∅ or {}.

1. 0 is a natural number represented by the empty set, 0 := ∅
2. if n is a natural then its successor is also a natural, n ∈ ℕ -> S(n) ∈ ℕ
3. The successor function is defined by S(n) = n ⋃ {n}

So, as can be observed, it is impossible to start math from the beginning since we need the concepts introduced later to define the current ones.
