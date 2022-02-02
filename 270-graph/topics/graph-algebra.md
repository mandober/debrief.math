# Graph algebra

https://en.wikipedia.org/wiki/Graph_algebra

In universal algebra and graph theory, a graph algebra is a way of giving a directed graph an algebraic structure. It was introduced by McNulty and Shallon ("Inherently nonfinitely based finite algebras", George F. McNulty, Caroline R. Shallon, 1983), and has seen many uses in the field of universal algebra since then.

Let `D = (V, E)` be a directed graph, and `ϵ` an element not in `V` (i.e. `ϵ` is not a vertex in the graph `D`). A graph algebra associated with `D` has the underlying set `V ⋃ {ϵ}` equipped with an multiplication operation defined by:
- `x * y = x` if `x,y ∈ V`       and `(x,y) ∈ E`
- `x * y = ϵ` if `x,y ∈ V ⋃ {ϵ}` and `(x,y) ∉ E`


## An algebra of graphs

https://blogs.ncl.ac.uk/andreymokhov/an-algebra-of-graphs/

Graphs are ubiquitous in computing, yet working with graphs often requires painfully low-level fiddling with sets of vertices and edges. Building high-level abstractions is difficult, because the commonly used foundation, the pair `(V,E)` of vertex set `V` and edge set `E ⊆ V²`, is a source of partial functions. For example, if we can represent the pair `(V,E)` by the ADT

```hs
data G a = G { vertices :: [a], edges :: [(a,a)] }
```

theb `G [1,2,3] [(1,2),(2,3)]` is a valid graph with 3 vertices, `V = {1,2,3}` and two edges `E = {(1, 2), (2, 3)}` with the invariant `E ⊆ V²` holding. However, the graph `G [1] [(1,2)]` is also a member of this type even though it is not a valid graph. It breaks the invariant and ignores the golden rule of static typing: *make invalid terms unrepresentable*.

Under this formalism every graph can be represented, but non-graphs are unrepresentable; curtesy of the closure (or totality) axiom that both `overlay` and `connect` respect.

The `Graph` data type is a deep embedding of the 4 core graph-construction primitives: empty, vertex, overlay and connect.

Let `G` be a set of graphs whose vertices come from a fixed universe (e.g. graphs whose vertices are integers). A graph `g ∈ G` can be represented by a pair `(V,E)` where `V` is the set of its vertices and `E ⊆ V⨯V` is the set of its edges.

## The primitives

1. The simplest possible graph is the *empty graph*, `ε = (∅,∅)` and `ε ∈ G`

2. A graph with a *single vertex* `v` is denoted by `v`. For example, `1 ∈ G` is a graph with a single vertex `1`, that is `({1}, ∅)`.

## The operators

To construct bigger graphs using the two primitives `empty` and `vertex`, we have two binary operators `overlay` (+) and `connect` (→).

3. The overlay (+) of two graphs is defined as:

`G₁ + G₂ = (V₁ ⋃ V₂, E₁ ⋃ E₂)`

In words, the overlay of two graphs is simply the union of their vertices and edges.

4. The connect (→) of two graphs is defined as:

`G₁ -> G₂ = (V₁ ⋃ V₂, E₁ ⋃ E₂ ⋃ V₁ ⨯ V₂)`

The overlay and connect would be the same save for the last part, `… ⋃ V₁⨯V₂`, which means when we use `connect` on two graphs, we must add all possible edges, as suggested by `V₁⨯V₂`: we must add an adge from each vertex in `V₁` to each vertex in `V₂`.

Here are a few examples of graph construction:
- `1 + 2`       is a graph with isolated vertices 1 and 2
- `1 → 2`       is a graph with an edge between vertices 1 and 2
- `1 → 1`       is a graph with vertex 1 and a self-loop
- `1 → (2 + 3)` is a graph with `V = {1, 2, 3}` and `E = { (1,2), (1,3) }`


## Algebraic structure

The quadruplet *(G, +, →, ε)* must satisfy the following set of axioms:

1. *(G, +, ε)* must be an Idempotent Commutative Monoid, i.e.

  - overlay is closed (closure, monoidal property)
    `x,y ∈ G ==> x + y ∈ G`

  - overlay is associative (associativity, monoidal property)
    `x + (y + z) == (x + y) + z`

  - overlay has an identity (monoidal property)
    `x + empty == x == empty + x`

  - overlay is idempotent (+ idempotence)
    `x + x == x`

  - overlay is commutative (+ commutativity)
    `x + y == y + x`


2. *(G, →, ε)* must be a Monoid, i.e.

  - connect is closed (closure, monoidal property)
    `x,y ∈ G ==> x → y ∈ G`

  - connect is associative (associativity, monoidal property)
    `x → (y → z) == (x → y) → z`

  - connect has an identity (monoidal property)
    `x → empty == x == empty → x`

3. connect (→) *distributes* over overlay (distributivity)
  `x → (y + z) == x → y + x → z`   
  `(x + y) → z == x → z + y → z`   


4. connect (→) is *decomposable* (decomposability)
  `x → y → z == (x → y) + (x → z) + (y → z)`


Derived theorems for `connect`
- conect is absorbing  (absorption): `(x * y) + (x + y) == x * y`
- conect is saturating (saturation):         `x * x * x == x * x`






## Alga Haskell library

```hs
data Graph a
    = Empty
    | Vertex a
    | Overlay (Graph a) (Graph a)
    | Connect (Graph a) (Graph a)
```

We can assign the semantics to these data ctors in terms of the pair `(V,E)` of graph vertices and edges:

* *Empty* constructs the empty graph `(∅, ∅)`
* *Vertex x* constructs a graph containing a single vertex, `({x}, ∅)`

* *Overlay ɴ ᴍ* overlays graphs `(Vɴ, Eɴ)` and `(Eᴍ, Eᴍ)` constructing
  `(Vɴ ⋃ Vᴍ, Eɴ ⋃ Eᴍ)`

* *Connect ɴ ᴍ* connects graphs `(Vɴ, Eɴ)` and `(Vᴍ, Eᴍ)` constructing
  `(Vɴ ⋃ Vᴍ, Eɴ ⋃ Eᴍ ⋃ Vɴ ⨯ Vᴍ)`


We define a Num instance as a convenient notation for working with graphs:

```hs
0           == Vertex 0
1 + 2       == Overlay (Vertex 1) (Vertex 2)
1 * 2       == Connect (Vertex 1) (Vertex 2)
1 + 2 * 3   == Overlay (Vertex 1) (Connect (Vertex 2) (Vertex 3))
1 * (2 + 3) == Connect (Vertex 1) (Overlay (Vertex 2) (Vertex 3))
```


Alternatively, we can give an algebraic semantics to the above graph construction primitives by defining the following type class and specifying a set of laws for its instances.

```hs
class Graph g where
    type Vertex g
    empty   :: g
    vertex  :: Vertex g -> g
    overlay :: g -> g -> g
    connect :: g -> g -> g
```

The laws of the `Graph` class are similar to those of a semiring, so we say that an instance must satisfy the following:

1. `(+, empty)` must be an idempotent commutative monoid

2. `(*, empty)` must be a monoid

3. `connect` is distributive over `overlay`
  `x * (y + z) == x * y + x * z`   
  `(x + y) * z == x * z + y * z`   

4. connect is decomposable:   
  `x * y * z == (x * y) + (x * z) + (y * z)`


This algebraic structure corresponds to *unlabelled directed graphs*: every expression represents a graph, and every graph can be represented by an expression. Other types of graphs (e.g. undirected) can be obtained by modifying this set of laws.
