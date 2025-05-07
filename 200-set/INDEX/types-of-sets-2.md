# Set theory :: Index :: Types of sets

Enumerations of types of sets, classifications of sets related entities, opposing pairs and other factors of division.


- Classification of sets
  - named sets
  - fundamental sets
  - fundamental numeric sets
  - derived numeric sets
  - special sets

- Factors of division
  - cardinality
  - finite, infinite, transfinite
  - countability
  - heterogeneity
  - by entity (element, colection, can/cannot contain)
  - rank (nesting)

- Opposing pairs of divisions
  - finite vs infinite sets
  - countable vs uncountable
  - heterogenous vs homogenous elements
  - elementhood vs sethood (can contain vs can be contained)

- Special generic sets
  - empty set
  - nonempty
  - singleton
  - unordered pair
  - ordered pair

- Generic sets from ops
  - union
  - set family
  - indexed set
  - product set
  - sum set
  - powerset
  - powerset of a product set, 2^2^n²


Sets:
- empty set: pretty vacant
- *pure*: a set containing scalars only
- *higher-order*: set containing sets
- mixed: set known to contain at least one scalar AND at least one set
- universal: set containing everything, the universe


Types:
- Ordered pair or pair
- Powerset
- Cartesian product, cross product
- Partitioning
- Bell Numbers

wrt cardinality:
- 0: Empty set
- 1: Singleton set or unit set
- 2: Unordered pair
- Finite set
- Infinite set
- Universal set

wrt relations:
- Equal sets
- Equivalent sets
- Overlapping sets
- Disjoint sets

wrt set operations:
- Union
- Intersection
- Difference
- Relative complement

Properties:
- Commutative
- Associative
- Distributive
- Idempotency
- Identity
- Transitive
- Involution
- De Morgan's Law
- Closure




## Types of Sets

Sets can be classified into many types, including: finite, infinite, universal, singleton, empty set.

__Proper Subset__
A Set X is a proper subset of set Y (Written as X⊂Y) if every element of X is an element of set Y and |X|<|Y|.

X={1,2,3,4,5,6} and Y={1,2}.
Here set Y⊂X since all elements in Y are contained in X too and X has at least one element is more than set Y.

__Universal Set__
It is a collection of all elements in a particular context or application. All the sets in that context or application are essentially subsets of this universal set. Universal sets are represented as U.

Example − We may define U as the set of all animals on earth. In this case, set of all mammals is a subset of U, set of all fishes is a subset of U, set of all insects is a subset of U, and so on.

__Singleton Set__ or __Unit Set__
Singleton set or unit set contains only one element. A singleton set is denoted by {s}.
Example − S={x|x∈N, 7<x<9} = {8}

__Equal Set__
If two sets contain the same elements they are said to be equal.
Example − If A={1,2,6} and B={6,1,2}, they are equal as every element of set A is an element of set B and every element of set B is an element of set A.

__Equivalent Set__
If the cardinalities of two sets are same, they are called equivalent sets.
Example − If A={1,2,6} and B={16,17,22}, they are equivalent as cardinality of A is equal to the cardinality of B. i.e. |A|=|B|=3

__Overlapping Set__
Two sets that have at least one common element are called overlapping sets.
In case of overlapping sets −
n(A∪B)=n(A)+n(B)−n(A∩B)
n(A∪B)=n(A−B)+n(B−A)+n(A∩B)
n(A)=n(A−B)+n(A∩B)
n(B)=n(B−A)+n(A∩B)
Example − Let, A={1,2,6} and B={6,12,42}. There is a common element ‘6’, hence these sets are overlapping sets.

__Disjoint Set__
Two sets A and B are called disjoint sets if they do not have even one element in common. Therefore, disjoint sets have the following properties −
n(A∩B)=∅
n(A∪B)=n(A)+n(B)
Example − Let, A={1,2,6} and B={7,9,14}, there is not a single common element, hence these sets are overlapping sets.

__Power set__
of a set S is the set of all subsets of S including the empty set. The cardinality of a power set of a set S of cardinality n is 2^n


## Set Operations
- Union
- Intersection
- Difference
- Complement
- Cartesian (cross) product


## Partitioning

Partition of a set, say S, is a collection of n disjoint subsets, say P1,P2,…Pn that satisfies the following three conditions −

Pi does not contain the empty set.

[Pi≠{∅} for all 0<i≤n]
The union of the subsets must equal the entire original set.

[P1∪P2∪⋯∪Pn=S]
The intersection of any two distinct sets is empty.

[Pa∩Pb={∅}, for a≠b where n≥a,b≥0]
Example

Let S={a,b,c,d,e,f,g,h}
One probable partitioning is {a},{b,c,d},{e,f,g,h}
Another probable partitioning is {a,b},{c,d},{e,f,g,h}



---

https://www.tutorialspoint.com/discrete_mathematics/discrete_mathematics_quick_guide.htm
