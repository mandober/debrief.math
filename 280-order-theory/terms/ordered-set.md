# Types of Ordered Set


In order theory, different types of ordered set are studied, including:
- **Posets**, orderings in which not all pairs are comparable
- **Preorders**, generalization of poset allowing ties (represented as equivalences and distinct from incomparabilities)
- **Semiorders**, poset determined by comparison of numerical values, in which values that are too close to each other are incomparable; subfamily of posets with certain restrictions
- **Total orders**, orderings that specify order for all elements, all pairs are comparable
- **Well-orders**, total orders in which every non-empty subset has a least element
- **Well-quasi-orderings**, a class of preorders generalizing the well-orders
- **Weak orders**, generalizations of total orders allowing ties (represented either as equivalences or, in strict weak orders, as transitive incomparabilities)
- **Cyclic orders**, orderings in which triples of elements are either clockwise or counterclockwise
- **Lattices**, posets in which each pair of elements has a greatest lower bound (GLB) and a least upper bound (LUB).


Chains
- **Chain** is a totally ordered set or a totally ordered subset of a poset.
- **Chain complete** is a partially ordered set in which every chain has a least upper bound.
- **Antichain** is a poset in which no two elements are comparable, i.e. there are no two distinct elements x and y such that x ≤ y. In other words, the order relation of an antichain is just the identity relation.


Monotonicity
A monotonic function, or monotone function, is a function between ordered sets that preserves or reverses the given order.

- **Order-reversing**: a function $$f$$, **antitone**, between posets $$P$$ and $$Q$$ is a function for which, for all elements $$x, y$$ of $$P$$, $$x \le y$$ (in P) implies $$f(y) \le f(x)$$ (in Q).
- **Monotonically decreasing** is the name of such function in the presence of total orders (in math.Analysis).
- **Order-preserving** or **monotone** as the dual notion is called.

Bounds
- **Bounded poset** is one that has a least element and a greatest element.
- Poset is **bounded complete** if every of its subsets with some upper bound also has a least such upper bound. The dual notion is not common.
- **Closure operator** on the poset P is a function $$C:P \to P$$ that is monotone, idempotent, and satisfies $$C(x) \ge x$$ for all x in P.

---

# Ordered Sets

- a binary relation R on a set S is reflexive if R relates every element of S to itself i.e. `sRs` or `(s,s) ∈ R` for all `s ∈ S`.
- R is symmetric if `sRt` implies `tRs`, for all s and t in S.
- R is transitive if `sRt` AND `tRu` imply `sRu`.
- R is antisymmetric if `sRt` and `tRs` imply that `s = t`
- A reflexive and transitive relation R on a set S is called a preorder on S.
- We denote a preorder by `s < t` "is-less-than" to mean `s ≤ t ∧ s ≠ t`.
- A preorder (on a set S) that is also antisymmetric is called a partial order
on S.
- A partial order ≤ is called a total order if it also has the property that,
for each s and t in S, either `s ≤ t` or `t ≤ s`.
- Suppose that ≤ is a partial order on a set S and s and t are elements of S. An element `j ∈ S` is said to be a join (or least upper bound) of s and t if `s ≤ j` and `t ≤ j`, AND for any element `k ∈ S` with `s ≤ k` and `t ≤ k`, we have `j ≤ k`.
- an element `m ∈ S` is a meet (or greatest lower bound) of s and t if `m ≤ s` and `m ≤ t`, AND for any element `n ∈ S` with `n ≤ s` and `n ≤ t`, we have `n ≤ m`
- a reflexive, transitive, and symmetric relation on a set S is called
an equivalence on S.
- let R is a binary relation on a set S. The reflexive closure of R is the smallest reflexive relation R' that contains R. "Smallest" in the sense that if R'' is some other reflexive relation that contains all the pairs in R, then we have `R' ⊆ R''`
- the transitive closure of R is the smallest transitive relation R' that contains R
- The transitive closure of R is often written R+
- The reflexive and transitive closure of R is the smallest reflexive and transitive relation that contains R, often written R∗.
- Let preorder ≤ on a set S. A decreasing chain in ≤ is a sequence s1,s2,s3,... of elements of S such that each member of the sequence is strictly less than its predecessor: `si+1 < si` for every i.
- Chains can be either finite or infinite
- Suppose we have a set S with a preorder ≤. We say that ≤ is well
founded if it contains no infinite decreasing chains. For example, the usual order on the natural numbers, with `0 < 1 < ...`, is well founded, but the same order on the integers, `...< −1 < 0 < 1 <...` is not. We sometimes omit mentioning ≤ explicitly and simply speak of S as a well-founded set.
