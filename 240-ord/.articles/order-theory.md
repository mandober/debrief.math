# Order theory

* Background and motivation
* Basic definitions
  * Partially ordered sets
  * Visualizing a poset
  * Special elements within an order
  * Duality
  * Constructing new orders
* Functions between orders
* Special types of orders
* Subsets of ordered sets
* Related mathematical areas
    * Universal algebra
    * Topology
    * Category theory


## Orders

Very often we are interested in comparisons between objects, where one object may be less or equal or greater than another in a certain respect.
Size is the most obvious example of such a comparative relation, or order.
But not all such relations are alike in all their properties.
For instance, some comparative relations require any two objects to be comparable, others don’t. (If they do, we call them linear or total).
Some include identity (like ≤) and some exclude it (like <).

- **Preorder**: a relation which is both reflexive and transitive; `Re+Tr`
- **Partial order**: a preorder which is also anti-symmetric; `Re+vS+Tr`
- **Linear (total) order**: a partial order which is also connected. `Re+vS+Tr+Co`


---

> Order theory is a branch of mathematics which investigates the notion of order using binary relations.


The notion of order is very general, extending beyond contexts that have an intuitive feel of sequence or relative quantity. In some contexts orders may capture notions of *containment* or *specialization*; abstractly, these types of orders are a *subset relation* (e.g. "Some people are impolite.").

**Total order**: each element in a set can be compared to any other element.

**Partial order**: a set has at least one element incomparable to any other.


A total order is an order on a set where any pair of set elements are comparable. One of the more fundamental examples is the set of natural numbers under the LT, LE, GT, GE relations. In programming languages, integers form the total order under these same relations.

A partial order is an order on a set that lacks complete compatibility between its elements - it has at least one element that cannot be compared to others. An example is a set/type of floating point numbers; some values, such as `NaN` and `Infinity`, are incomparable to other floating values and even to itself (under the usual ordering relations like LT, LE, GT, GE). Also, the *subset order* on a parent set (of animals): two child subsets (dogs, birds) are not comparable to each other. Though the set of birds and the set of dogs are both subsets of the set of animals, neither the birds nor the dogs constitutes a subset of the other.

*Order theory* captures the intuition of orders in a general setting. This is achieved by specifying properties that a relation such as LE must have to be a mathematical order. One can derive numerous theorems in the general setting without focusing on the details of any particular order.


---

- We denote a preorder by `s < t` "_s is strictly less than t_" to mean `s ≤ t ∧ s ≠ t`.
- A preorder (on a set S) that is also antisymmetric is called a partial order
on S.
- A partial order ≤ is called a total order if it also has the property that,
for each s and t in S, either `s ≤ t` or `t ≤ s`.
- Partial order: reflexive, antisymmetric and transitive.


## Total order

A linear order, total order, simple order, or (non-strict) ordering is a binary relation on some set `X`, which is **antisymmetric**, **transitive**, and **total** (this relation is denoted here by infix `<=` (le = lower than or equal).
- A set paired with a total order is called a totally ordered set, a linearly ordered set, a simply ordered set, or a chain.
- A set `X` is totally ordered under `<=` if the following statements hold for all `a`, `b`, `c` in `X`:
- `∀ (a, b, c) ∈ X`
- transitivity: `a <= b` ∧ `b <= c` ⟹ `a <= c`

Antisymmetry eliminates uncertain cases when both a precedes b and b precedes a. A relation having the property of "totality" means that any pair of elements in the set of the relation are comparable under the relation. This also means that the set can be diagrammed as a line of elements, giving it the name linear Totality also implies reflexivity, i.e., a ≤ a. Therefore, a total order is also a (special case of a) partial order, as, for a partial order, the totality condition is replaced by the weaker condition of reflexivity. An extension of a given partial order to a total order is called a linear extension of that partial order.
