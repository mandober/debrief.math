# Fiber

https://en.wikipedia.org/wiki/Fiber_(mathematics)

(fiber in math is a completely different concept to fiber in CS, 
where a fiber is a particularly lightweight thread of execution)


In mathematics, the term **fiber** (en∙us), or fibre (en∙uk), has two meanings, depending on the context:

1. In set theory, the fiber of an element `y` in the codomain set `Y`, under a map `f : X → Y`, is the inverse image of the singleton `{y}` under `f`.

2. In algebraic geometry, the notion of a fiber of a morphism of schemes must be defined carefully because, in general, not every point is closed.


## Contents

- Fiber in set theory
- Fiber in algebraic geometry
- Fibers in topology

## Fiber in set theory

Informally explained: a function between two sets `f : A -> B` may be injective or bijective, in which case each domain element is mapped to a single, distinct codomain element, since `f` is a one-to-one mapping (if `f` is bijective then it is a 1-to-1 correspondence; if `f` is injective then it is still a 1-to-1 mapping but some codomain elements are not associated). Only bijective functions have the inverse that is still a (total) function. An injection has the inverse that is a partial function because some codomain elements were not associated. Finally, the inverse of a surjection (that is not a bijection) is not a function but a relation because some codomain elements are mapped by more than one domain element, so the inverse is a one-to-many relation. If we gather those domain elements that map to the same codomain element `y`, we get a fiber, i.e. a set of `x`'s, which is a subset of `A`, where each domain element is mapped to the same `y` in the codomain, e.g. `{y} ⟼ {a,b,c}`. This subset `{a,b,c} ⊆ A` is called a fiber of `y`. Both injections and bijections yield the singleton fibers, `{y} ⟼ {a}`, but the fibers from a surjection partition the domain set `A` into partitions.

Fibers under the map `f : A -> B` are sets `{ x | ∀y ∀x (x ∈ A -> f x = y) }`



If `f : X → Y` is a function between sets `X` and `Y`, then the fiber of an element `y ∈ Y` (or fiber over `y`) under the map `f` is the set

`f⁻¹(y) = { x ∈ X | f(x) = y }`

That is, the set of elements that get mapped to `y` by the function. It is the preimage of the singleton `{y}`. We usually take `y` in the image of `f` to avoid `f⁻¹(y)` being the empty set.

The collection of all fibers for the function `f` forms a partition of the domain `X`. The fiber containing an element `x ∈ X` is the set `f⁻¹(f(x))`.

For example, the fibers of the projection map `ℝ² → ℝ` that sends `(x,y)` to `x` are the vertical lines, which form a partition of the plane.

```
  y
  ↑ fibers are vertical lines
  │    ┆        ┆        ┆
  │ (x₀,y₀)  (x₁,y₀)  (x₂,y₀)
y₀┼┈┈┈┈┼┈┈┈┈┈┈┈┈┼┈┈┈┈┈┈┈┈┼
  │    ┆        ┆        ┆
  │    ┆        ┆        ┆
  │    ┆        ┆        ┆
 ─┼────┼────────┼────────┼─→ x
 0     x₀       x₁       x₂
       ┆        ┆        ┆
    fibers are vertical lines
   that partition the plane ℝ²
```


If `f` is a real-valued function of several real variables, the fibers of the function are the level sets of `f`.

If `f` is also a continuous function, and `y ∈ ℝ` is in the image of `f`, the level set `f⁻¹(y)` will typically be a curve in 2D, a surface in 3D, and, more generally, a hypersurface in the domain of `f`.

## Fiber in algebraic geometry

In algebraic geometry, if `f : X → Y` is a morphism of schemes, the fiber of a point `p` in `Y` is the fiber product of schemes `X ⨯ʏ Spec k(p)`, where `k(p)` is the residue field at `p`.

## Fibers in topology

Every fiber of a local homeomorphism is a discrete subspace of its domain. If `f : X → Y` is a continuous function, and if `Y` (or more generally, if `f(X)`) is a *T1 space* then every fiber is a closed subset of `X`.

❝ A *T1 space* is a topological space in which, for every pair of distinct points, each has a neighborhood not containing the other point. An *R0 space* is one in which this holds for every pair of topologically distinguishable points. The properties T1 and R0 are examples of separation axioms. ❞

A function between topological spaces is called *monotone* if every fiber is a connected subspace of its domain.

A function `f : ℝ → ℝ` is monotone in this topological sense iff it is non-increasing or non-decreasing, which is the usual meaning of "monotone function" in real analysis.

A function between topological spaces is (sometimes) called a *proper map* if every fiber is a compact subspace of its domain. (However, many authors use other non-equivalent competing definitions of "proper map".)

A continuous closed surjective function whose fibers are all compact is called a *perfect map*.
