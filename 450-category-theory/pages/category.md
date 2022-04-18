# Category

http://nlab-pages.s3.us-east-2.amazonaws.com/nlab/show/category

Loosely, a category consists of a collection of things and binary relationships (or transitions) between them, such that these relationships can be combined and identified (they include the identity relationship "is the same as").

A category is a quiver (a directed graph with multiple edges) with a rule saying how to compose two edges that fit together to get a new edge. Furthermore, each vertex has an edge starting and ending at that vertex, which acts as the unit for composition.

A category is a combinatorial model for a directed space - a "directed homotopy 1-type" in some sense. It has "points", called objects, and also directed "paths", or "processes" connecting these points, called morphisms. There is a rule for how to compose paths; and for each object there is an identity path that starts and ends there.

More formally, a category, `𝓒`, is a triple consisting of
- a collection of objects, `Obj(𝓒)`
- a collection of morphisms between the objects, `Arr(𝓒)`
- the axioms of
  * identity
    - all objects `X` in a category **must have** an identity arrow, 
      `1ₓ : X -> X`
    - identity arrow is the unit of composition
  * composition
    - composition is associative
    - composition has the left and right unit laws
    - composition of arrows:
      for all `X`,`Y`,`Z` objects in `𝓒`, 
      for all arrows `f : X -> Y` and `g : Y -> Z`
      - left identity, 1ₓ ∘ f = f = f ∘ 1ₓ
      - right identity, 1ₓ ∘ f = f = f ∘ 1ₓ
      - `g ∘ f : X -> Z`



`∀X. X ∈ Obj(𝓒)`
`∀F. F ∈ Arr(𝓒)`
`∀X. X ∈ Obj(𝓒) -> 1x : X -> X`

`∀X∀Y. X,Y ∈ Obj(𝓒) `

Every morphism has a source object and a target object. 

If `f` is a morphism with `x` as its source and `y` as its target, we write `f : x → y` and we say that `f` is a morphism from `x` to `y`.

In a category, we can compose a morphism `g : x → y` and a morphism `f : y → z` to get a morphism `f ∘ g : x → z`

Composition is associative and satisfies the left and right unit laws.
