# Types of ordered sets

Order theory studies different types of ordered set.

A *total order* is an ordering that specifies the order for all elements, that is, any two elements are comparable. The relation `<` on `ℕ` is a total order.

A *partially-ordered set* (poset) is an ordering in which not all pairs of elements are comparable (some are comparable, some cannot be compared). The powerset of the set `{a,b,c}` is a poset.

```
     {a,b,c}
    /   |   \
{a,b} {a,c} {b,c}
  |  / \ / \  |
  {a}  {b}  {c}
     \  |  /
        ∅
```

For example, `{a} ≺ {a,b}`, means that `{a}` is comparable to `{a,b}`. In fact, this symbol denotes the fact that the element `{a}` precedes `{a,b}` under the ordering.

The ordering of the power set is by the inclusion relation:    
`{a} ⊆ {a,b}` -> `{a} ≺ {a,b}`

that is, if `x` is a subset of `y` then `x` precedes `y`, denoted:   
`x ⊆ y` -> `x ≺ y`

However, `{a} ⊀ {b}`, i.e. `{a}` is not comparable to `{b}`, nor to `{c}`, nor to `{b,c}`; in fact, `{a}` is comparable to all other elements except these 3.

≺ ≻ ⊀ ⊁  ⪯ ⪰ ⪱ ⪲


A *preorder* is a generalization of a poset that allows ties, which are represented as equivalences and distinct from incomparabilities.


*Semiorders*, poset determined by comparison of numerical values, in which values that are too close to each other are incomparable; subfamily of posets with certain restrictions.

*Well-orders*, total orders in which every non-empty subset has a least element.

*Well-quasi-orderings*, a class of preorders generalizing the well-orders.

*Weak orders*, generalizations of total orders allowing ties (represented either as equivalences or, in strict weak orders, as transitive incomparabilities).

*Cyclic orders*, orderings in which triples of elements are either clockwise or counterclockwise.

*Lattices*, posets in which each pair of elements has a greatest lower bound (GLB) and a least upper bound (LUB).


Chains
- **Chain** is a totally ordered set or a totally ordered subset of a poset.
- **Chain complete** is a partially ordered set in which every chain has a least upper bound.
- **Antichain** is a poset in which no two elements are comparable, i.e. there are no two distinct elements x and y such that x ≤ y. In other words, the order relation of an antichain is just the identity relation.


## Monotonicity

A *monotonic function*, or *monotone function*, is a function between ordered sets that preserves or reverses the given order.

*Order-reversing* or *antitone* is a function `f : P -> Q` between posets P and Q is a function which, ∀x,y ∈ P. x <= y (in P) implies f(y) >= f(x) (in Q). 
`f : P -> Q; ∀x,y ∈ P. x <= y -> f(x) >= f(y)`

*Monotonically decreasing* is the name of such function in the presence of total orders: `f : P -> Q; ∀x,y ∈ P. x < y -> f(x) > f(y)`

*Order-preserving* or *monotone* is the dual notion of an antitone function: 
`f : P -> Q; ∀x,y ∈ P. x <= y -> f(x) <= f(y)`


Bounds
- **Bounded poset** is one that has a least element and a greatest element.
- Poset is **bounded complete** if every of its subsets with some upper bound also has a least such upper bound. The dual notion is not common.
- **Closure operator** on the poset P is a function C:P \to P that is monotone, idempotent, and satisfies C(x) \ge x for all x in P.
