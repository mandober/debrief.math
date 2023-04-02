# Categorical point of view

## Relativistic aproach

Category theory takes a relativistic aproach to describing mathematical objects and their properties. Instead of placing the objects front and center, fiddling with them directly in order to derive their properties, category theory completely ignores them, focusing on the relations between them instead. In fact, objects are downgraded to featureless, structureless, abstract blobs, drawn as mere dots in the diagrams that are often employed as a reasoning and presentational tool.

Category theory puts all the weight behind relations, realized as a network of connections between the objects. Objects are identified only by their incoming and outgoing arrows (morphisms), that is, by the totality of arrows that connect a particular object with all the other objects in the category, and any property of the object is inferred from these connections alone.

Category theory argues that morphisms are more important than objects because they reveal what the structure really is. All categorical concept are defined in terms of morphisms. A structure is understood in terms of transformations that preserve said structure.

Category theory aims to be a high-level language of math, so the level of abstraction is extremely high, and the math concept are as general as possible, as it must be in order to describe various math phenomena with a single language.

However, in order to develop intuition it pays to always consider things in terms of the category of all sets, `Set`, because due to its rich structure it
contains all the interesting categorical constructions (initial and terminal object, products, coproducts, exponentials, etc.), and because it lends itself as a very familiar ground (set theory is a useful prerequisite to CT). Unless stated otherwise, `Set` category is generally assumed as the working category. We also have the possiblity to switch the point of view between the set-theoretical, structure-exposing, element-showing, zoomed-in view; and the categorical, highly-abstract, extremely zoomed-out view where sets disappear into structureless dots. It's not that CT forbids talking about the structure of a set, with all the innards and elements and shit exposed, but CT encourages finding ways to discover properties in terms of arrows alone, without relying on the structure, because any property inferred by the direct examination of an object can also be inferred indirectly by examining the arrows from and into that object instead.

An example of how to infer the properties of objects by examining their connections rather then objects themselves, is using the terminal object (which, in `Set`, is any singleton set) to probe the cardinality of other objects (other sets) in `Set`. If an object `a` has the cardinality `n`, there will be `n` arrows from the terminal object to `a`, each one identifying an element of `x`, `∀x ∈ a. x : 1 -> x`. The terminal set generally acts as an element or arrow "picker". Categorically, an element `x` of the object (set) `a` is identified by the arrow `x : 1 -> a` ("defined" as `x = 1 -> x`).





# Relative point of view

https://ncatlab.org/nlab/show/relative+point+of+view

The relative point of view on a subject given by a category C replaces the consideration of properties of objects of C with properties of morphisms of C. This is considered a generalisation, as an object `x` is identified with the morphism from `x` to `1` (the terminal object of C if one exists).

You can fix an object `y` in a category `C` and concentrate on objects in `C` over `y`; these form the over-category `C/y`. The original category `C` may be recovered as `C/1`, where `1` is the terminal object.


---
