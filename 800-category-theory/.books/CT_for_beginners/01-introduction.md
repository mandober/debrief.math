# Introduction
https://www.youtube.com/watch?v=US4Zr1WKD-8

Category is a collection of obj and arr between them with composition as a binary op that respects assoc and identity (every obj has id arr).

- empty cat has no obj, hence no arr
- a cat with 1 obj, has only id arr
- a cat with objs but no arrs between them is a *discrete cat*

*Monoid* is a cat of 1 obj, `M`, and many arrows apart from the id arrow, `I`. We can think of these "self loops" as *elements* of a set. Composition encodes different operations and the identity arrow serves as a unit of composition. With composition we can take any two elements, and get back an element (that is still a member of the monoid). We can interpret composition as a binary operation like addition in which case the identity arrow (as the unit of add) is interpreted as 0. But if we interpret composition as mul, then the identity arrow (as the unit of mul) is interpreted as 1.

- (∘) as (+) and Id as 0
  - `I ∘ I = I` ≅ `0 ∘ 0 = 0`
  - `I ∘ 1 = 1 = 1 ∘ I`
- (∘) as (⨯) and Id as 1
  - `I ∘ I = I` ≅ `1 ∘ 1 = 1`
  - `I ∘ 0 = 0 = 0 ∘ I` ≅ `1 ∘ 0 = 0 = 0 ∘ 1`

In Haskell, a monoid is a type class with methods `mempty` (as unit) and `mconcat` (as composition).

Aside: *Magma* is an algebraic structure that only respects the axiom of closure, i.e. `∀ a b ∈ M . a ∘ b ∈ M`. *Semigroup* is a magma with the addition of the axiom of associativity `∀ a b c ∈ M . a ∘ (b ∘ c) = (a ∘ b) ∘ c`. *Monoid* is a semigroup with identity, `∀ a ϵ ∈ M . ϵ ∘ a = a = a ∘ ϵ`.

Therefore, Haskell's `Monoid` class actually depends on `Semigroup` class, which defines the binary operation, `mconcat`, then the `Monoid` class only adds the definition of the identity (unit), `mempty`.

```hs
class Semigroup m where
  mconcat :: m -> m -> m

class (Semigroup m) => Monoid m where
  mempty  :: m
```

An example of a category where arrows are not functions is preorder. A *predorder* is a set endowed with a relation that is reflexive and transitive.

A predordered set is a category with lots of objects but not that many arrows. In particular, it doesn't have more than one arrow going in a particular direction between two objects.

A *directed network* is a connected graph with arbitrary number of nodes and arrangement of edges. It's not a category because a lot of the identity arrows will probably be missing as well as the transitive arrows. However, we can turn a directed network into a so-called *pre-ordered set* by drawing the necessary egdes. Note: adding the missing identity arrows is trivial, but adding the edges that make the graph transitive (*transitive closure*) is a hard problem.






`Set` is category of (small) sets.
