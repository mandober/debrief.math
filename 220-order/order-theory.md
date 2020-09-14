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

---

> Order theory is a branch of mathematics which investigates the notion of order using binary relations.


The notion of order is very general, extending beyond contexts that have an intuitive feel of sequence or relative quantity. In some contexts orders may capture notions of *containment* or *specialization*; abstractly, these types of orders are a *subset relation* (e.g. "Some people are impolite.").

**Total order**: each element in a set can be compared to any other element.

**Partial order**: a set has at least one element incomparable to any other.


A total order is an order on a set where any pair of set elements are comparable. One of the more fundamental examples is the set of natural numbers under the LT, LE, GT, GE relations. In programming languages, integers form the total order under these same relations.

A partial order is an order on a set that lacks complete compatibility between its elements - it has at least one element that cannot be compared to others. An example is a set/type of floating point numbers; some values, such as `NaN` and `Infinity`, are incomparable to other floating values and even to itself (under the usual ordering relations like LT, LE, GT, GE). Also, the *subset order* on a parent set (of animals): two child subsets (dogs, birds) are not comparable to each other. Though the set of birds and the set of dogs are both subsets of the set of animals, neither the birds nor the dogs constitutes a subset of the other.

*Order theory* captures the intuition of orders in a general setting. This is achieved by specifying properties that a relation such as LE must have to be a mathematical order. One can derive numerous theorems in the general setting without focusing on the details of any particular order.



---


---



- We denote a preorder by `s < t` "_s is strictly less than t_" to mean `s ≤ t ∧ s ≠ t`.
- A preorder (on a set S) that is also antisymmetric is called a partial order
on S.
- A partial order ≤ is called a total order if it also has the property that,
for each s and t in S, either `s ≤ t` or `t ≤ s`.
- Partial order: reflexive, antisymmetric and transitive.


# Total order
A linear order, total order, simple order, or (non-strict) ordering is a binary relation on some set `X`, which is **antisymmetric**, **transitive**, and **total** (this relation is denoted here by infix `<=` (le = lower than or equal).
- A set paired with a total order is called a totally ordered set, a linearly ordered set, a simply ordered set, or a chain.
- A set `X` is totally ordered under `<=` if the following statements hold for all `a`, `b`, `c` in `X`:
- `∀ (a, b, c) ∈ X`
- transitivity: `a <= b` ∧ `b <= c` ⟹ `a <= c`

Antisymmetry eliminates uncertain cases when both a precedes b and b precedes a. A relation having the property of "totality" means that any pair of elements in the set of the relation are comparable under the relation. This also means that the set can be diagrammed as a line of elements, giving it the name linear Totality also implies reflexivity, i.e., a ≤ a. Therefore, a total order is also a (special case of a) partial order, as, for a partial order, the totality condition is replaced by the weaker condition of reflexivity. An extension of a given partial order to a total order is called a linear extension of that partial order.



## List of order theory topics 
Overview
Partially ordered set
Preorder
Totally ordered set
Total preorder
Chain
Trichotomy
Extended real number line
Antichain
Strict order
Hasse diagram
Directed acyclic graph
Duality (order theory)
Product order
Distinguished elements of partial orders
Greatest element (maximum, top, unit), Least element (minimum, bottom, zero)
Maximal element, minimal element
Upper bound
Least upper bound (supremum, join)
Greatest lower bound (infimum, meet)
Limit superior and limit inferior
Irreducible element
Prime element
Compact element
Subsets of partial orders
Cofinal and coinitial set, sometimes also called dense
Meet-dense set and join-dense set
Linked set (upwards and downwards)
Directed set (upwards and downwards)
centered and σ-centered set
Net (mathematics)
Upper set and lower set
Ideal and filter
Ultrafilter
Special types of partial orders
Completeness (order theory)
Dense order
Distributivity (order theory)
modular lattice
distributive lattice
completely distributive lattice
Ascending chain condition
Infinite descending chain
Countable chain condition, often abbreviated as ccc
Knaster's condition, sometimes denoted property (K)
Well-orders
Well-founded relation
Ordinal number
Well-quasi-ordering
Completeness properties
Semilattice
Lattice
(Directed) complete partial order, (d)cpo
Bounded complete
Complete lattice
Knaster–Tarski theorem
Infinite divisibility
Orders with further algebraic operations
Heyting algebra
Relatively complemented lattice
Complete Heyting algebra
Pointless topology
MV-algebra
Ockham algebras:
Stone algebra
De Morgan algebra
Kleene algebra (with involution)
Łukasiewicz–Moisil algebra
Boolean algebra (structure)
Boolean ring
Complete Boolean algebra
Orthocomplemented lattice
Quantale
Orders in algebra
Partially ordered monoid
Ordered group
Archimedean property
Ordered ring
Ordered field
Artinian ring
Noetherian
Linearly ordered group
Monomial order
Weak order of permutations
Bruhat order on a Coxeter group
Incidence algebra
Functions between partial orders
Monotonic
Pointwise order of functions
Galois connection
Order embedding
Order isomorphism
Closure operator
Functions that preserve suprema/infima
Completions and free constructions
Dedekind completion
Ideal completion
Domain theory
Main article: Domain theory

Way-below relation
Continuous poset
Continuous lattice
Algebraic poset
Scott domain
Algebraic lattice
Scott information system
Powerdomain
Scott topology
Scott continuity
Orders in mathematical logic
Lindenbaum algebra
Zorn's lemma
Hausdorff maximality theorem
Boolean prime ideal theorem
Ultrafilter
Ultrafilter lemma
Tree (set theory)
Tree (descriptive set theory)
Suslin's problem
Absorption law
Prewellordering
Orders in topology
Stone duality
Stone's representation theorem for Boolean algebras
Specialization (pre)order
Order topology of a total order (open interval topology)
Alexandrov topology
Upper topology
Scott topology
Scott continuity
Lawson topology
Finer topology
