# Category Theory for Programmers, part II
(PDF Book page 28)


## Orders

A **preorder** is a set together with a "less than or equal" (LE) relation.

Preorder is an example of a category where morphisms are relation between objects. Preorder has *identity* morphism since every object is related to itself, `x<=x`. It also has *associative composition*:

`(𝑎 ⩽ 𝑏 ∧ 𝑏 ⩽ 𝑐) -> 𝑎 ⩽ 𝑐`

A **partial order** is a set with a relation that is also *antisymmetric*:

`(𝑎 ⩽ 𝑏 ∧ 𝑏 ⩽ 𝑎) -> 𝑎 = 𝑏`

A **linear order** or **total order** also satisfies the axiom of *trichotomy* which states that any two elements must be in relation with each other:

either `𝑎 ⩽ 𝑏` or `𝑏 ⩽ 𝑎`.

A preorder is a category where there is at most one morphism going from any object 𝑎 to any object 𝑏. Another name for such a category is *thin*. A preorder is a **thin category**.


A set of morphisms from object 𝑎 to object 𝑏 in a category 𝐂 is called a **hom-set**, denoted by `𝐂(𝑎, 𝑏)` or `Hom𝐂(𝑎, 𝑏)`.

Every hom-set in a preorder is either empty or a singleton. That includes the hom-set `𝐂(𝑎, 𝑎)`, the set of morphisms from 𝑎 to 𝑎, which must be a singleton, containing only the identity, in any preorder.

A preorder can have cycles. Cycles are forbidden in a partial order.

Recognizing preorders, partial orders and total orders is important for sorting because sorting algorithms (quicksort, bubble sort, merge sort, etc.) only work correctly on total orders. Partial orders can be sorted using *topological sort*.
