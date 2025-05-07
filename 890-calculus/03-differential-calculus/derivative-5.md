# Derivatives

## Functions

Considering a function `y = f(x)`, the input values are represented by variable `x`, while `y` represents the output values, aka the value of the function: the value of the function `f` at `x` is `y`, which we determine by applying the function `f` to input `x`. The graph of the function may be plotted in a coordinate system (usually Carthesian Coordinate System), such that the x-axis represents the elements of the domain, and y-axis the elements of the codomain. A domain is almost always defined as a (typically non-empty) set (denoted by `A`), containing elements (denoted by `x`), which are all used as input to a function. Importantly, there is a domain set `A`, as well as the set `X` that is the domain of a function, and a subset of set `A`, `X ⊆ A`; however, because a function maps all domain elements, these two sets (A and X) coincide. Any (total) function takes a (each and every) domain element and maps it to some codomain element; one domain element can only be mapped to one codomain element - the same domain element, say `x₄`, cannot be mapped to e.g. two codomain elements, `y₃` and `y₇`.

This second property is what promotes a relation into a function, while the first property (covering the entire domain set) is what makes a function total (a partial function may leave out some domain elements). On the other hand, there is no requirement that the entire codomain set is covered (that all codomain elements participate in the relation); if they do, then the function is *surjective*. A function is *injective* if each codomain element (that participates in the relation) is associated to one (and not more then one) domain element.

A function maps domain set into a codomain set by associating each domain element to some codomain element, `f : A → B`. Functions are just relations with functional constraints, so any function may be described as a relaten, that is, as a set of ordered pairs, `f = { (x₀, y₀), (x₁, y₁), …}`, in general,
`f = { (x, y) | ∀x ∈ A. ∃b ∈ B. f x = y }`.

Due to the requirement of functionality, domain set and the domain of the function are the same set, meaning the domain set can always be inferred and reconstructed from the graph of the function, which is exactly the set of ordered pairs. However, the codomain set cannot be inferred from the graph, since there's no requirement for participation of all codomain elements. Therefore, to properly define a function we must also include its codomain; thus functions (and, especially, relations) are properly defined as triples, `(A, f, B)`, although usually only the graph (the middle component of the triple) is given.

Nevertheless, the codomain set of a function is actually given often enough in terms of the function's signature (or function's type, or function type), `f : A → B`, which says that function `f` maps a domain set `A` into a codomain set `B`. The signature is usually stated first, and followed by the function's definition; for example, the signature `f : ℕ → ℤ`, then definition `f(x) = √x`.

The variable `x` is typically used to range over the domain elements; `∀x ∈ A` means that `x` ranges over the entire set `A`; this fragment is often used in formulas about functions cos it states that all domain elements must participate, e.g. `∀x ∈ A. ∃b ∈ B. f x = y`, which defines a general function as a mapping between sets.

- `∀x ∈ A. ∃b ∈ B. f x = y`, a function
- `∀x₁x₂ ∈ A. (f x₁ = f x₂) ⇒ (x₁ = x₂)`, injection
- `∀y₁y₂ ∈ B. ∃x ∈ A. (f x = y₁) ∧ (f x = y₂) ⇒ (y₁ = y₂)` surjection

The surjection formula also undelines the crucial property of functions: if there is some domain element `x` that is associated to both `y₁` and `y₂` (codomain elements), then `y₁` and `y₂` better be the same element or this relation is not a function. The surjectivity is actually about making sure that the entire codomain set is covered (that all codomain elements participate), which is enforced by the universal quantifier at the beginning.

## Derivatives

It is often necessary to know how sensitive the value of the function is (i.e. its output), compared to small changes in its input. Given a function `f(x) = y`, we want to know how does a small increase (or decrease) in input `x` affect the output `y`. This property is called *sensitivity* of a function.

The change in input is denoted `Δy`, and the change in output `Δy`. This notation suggest that we are interested in a tiny change of input, and how it affects the output, but in general, the change in input is calculated by having one point fixed, `(x₀, y₀)`, while varying the other point `(x, y)`. Then, `Δy / Δy = (y - y₀) / (x - x₀)`.

    (x₀, y₀) fixed point
    (x, y)   varying point
    Δy / Δy = (y - y₀) / (x - x₀)

Sometimes the difference of the inputs is given as a quantity `h`, so we have just a single fixed x-coordinate, `x₀`, and express everything else in terms of it. Thus, the varying x-coordinate, `x`, is `x₀ + h`, and each of these two inputs has a corresponding output coordinate, `f x₀` and `f (x₀ + h)`.

    (x₀, f(x₀))        fixed point
    (x₀+h, f(x₀+h))    varying point
    Δy / Δy = (y       -   y₀)  / (x    - x₀)
    Δy / Δy = (f(x₀+h) - f(x₀)) / (x₀+h - x₀) = f(x₀+h) - f(x₀) / h

Thus, either we have one point `(x₀, y₀)` that is fixed, while another point `(x, y)` varies. Or, we have only an x-coordinate, `x₀`, that is fixed, along with a varying difference, `h`, between `x₀` and another x-coordinate, with everything else calculated from `x₀` and `h`.

    f(x) = y                a function (mapping input 'x' to output 'y')
    (x₀, y₀) = (x₀, f x₀)   a fixed point (y₀ = f x₀)
    (x, y) = (x, f x)       a varying point (y = f x)

    Δy / Δy = (y - y₀) / (x - x₀)

The point that we pick to be fixed is usually some familiar point known to be on the curve; for `f(x) = x²`, the point `(1,1)` is a good candidate. Actually, the point of picking one stable point is to calculate the tangent line (at that point). We'll first approximate the tangent line (at that point) by secant lines which we'll draw closer and closer to the fixed point. In the limit, the secant line becomes the tangent line. That is, as the difference between the two points that intersect the curve (which are thus secant lines) decreases, when this difference becomes negligable, the secant line will nearly become the tangent line, having only one point in common with the curve.
