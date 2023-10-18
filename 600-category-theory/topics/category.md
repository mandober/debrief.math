# CT :: Topics :: Category

Category theory is a game with objects and arrows between objects. 

Let 𝒞, 𝒟, ℰ, …, range over categories. 
Let A, B, C, …, range over objects. 
Let f, g, h, …, range over arrows.

A *category* is often identified with its class of objects. 
For instance, we say that `Set` is the category of sets. 
We write `A ∈ C` to express that A is an *object* of C. 

Besides objects we also have the arrows of a category. 
`Set` is really the category of sets and total functions. 
`Rel` is the category of sets and relations. 
If the objects have additional structure (monoids, groups, etc.) 
then the arrows are typically structure-preserving maps. 

For every pair of objects A,B ∈ C, there is a *class of arrows* from A to B, 
denoted `C(A,B)` or `homᶜ(A,B)`, i.e. hom-set of arrows in C. If C is known, we abbreviate `f ∈ C(A,B)` as `f: A → B`, where `f` is an elem (an arrow) in the class (not set) of arrows from A to B. `A → B` is also a type of `f`.

The sets `homᶜ(A,B)` are pairwise disjoint (rarely-specified condition).

For every object A ∈ C, there is an arrow `idᴀ ∈ C(A,A)`, aka the *identity*. 
Two arrows can be *composed* if their types match: if f ∈ C(A,B) and g ∈ C(B,C) then `g ∘ f ∈ C(A,C)`. Composition is associative with identity as neutral elem.

Cats need not be *concrete*, i.e. based on sets as obj and functions as arrows.
