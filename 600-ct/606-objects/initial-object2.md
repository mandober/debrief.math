# Initial Object

https://bartoszmilewski.com/2015/01/07/products-and-coproducts/


If we want *to single out a particular object in a category*, we can only do so by identifying the relations it has with other objects in the category and with itself. These relations are defined by morphisms.

In category theory, a common construction for identifying objects in terms of their relations is **the universal construction**. First we come up with a pattern that describes a particular configuration of arrows and objects, a kind of shape whose occurrences we can look for in a category. If the pattern is common and a category large, we'll get many matches. Then the second part of universal construction is coming up with a ranking system that will help us select the best match for our pattern.

## Initial Object

We start by trying to discover interesting objects in a category. A single object is the simplest pattern and there are as many instances of this shape as there are objects in a given category. The flow of arrows might provide a lead if there is a an overall net flow from one end to the other end of the category (under a linear view), as in ordered categories, e.g. in partial orders, where arrows are relations and in a poset, they all point to the right:

(a < b => a -> b) so `a < b < c < d < ...` is `a -> b -> c -> d -> ...`    
The identity and transitive arrows are elided, but it shows that all arrow go from left to right, and that no arrow (except its id arrow) points to `a`.

As the principle for *object precedence* we say that an object `A` is *"more initial"* than object `B` if there is an arrow `A -> B`.

Ordered categories also have a property that they allow at most one arrow between any two objects (there is only one way of being `<` to another object) and the definition of initial objects incorporates this principle.

Initial object is not a target of any arrows, it is only a source of arrows. There may not exists an intitial object at all in a category.

> **Initial object** is the object that has one and only one arrow going to any object in the category.

However, even that doesn't guarantee the uniqueness of the initial object (if one exists), but it guarantees the next best thing: *uniqueness up to isomorphism*.

In the diagram above, it is the object `a`. There, the transitive arrows are elided, but in fact, `a` has an outgoing arrow from it to every other object. The object `b` is also a good candidate for the initial object, but since there is an arrow `a -> b`, then `a` is more initial then `b`, winning the title of the initial object.

In an ordered category, like a poset, the initial object is the least element. But not all posets have an initial object, e.g. ℤ with LE relation as morphisms.

In the category of sets and functions, the initial object is the empty set. The empty set corresponds to the Haskell type `Void` and the *unique polymorphic function* from Void to any other type is called `absurd :: Void -> a`. It is this family of morphisms that makes Void the initial object in the category of types.
