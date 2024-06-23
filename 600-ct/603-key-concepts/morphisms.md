# CT :: Key concepts :: Morphisms

In a category, objects are opaque, even though, e.g. in `Set` they are sets. In set theory we get to examine the internal structure of sets, but in CT, sets become objects, collapsing into featureless blobs, so the only way to derive information about them is through their connections (which are functions on sets in `Set`).

In `Set`, all sets as dots and the only thing we see is the multitude of arrows between them. The goal is explore these connections and try to determine which dot represents which set. For example, there is just one empty set - it is unique across sets; if we can locate the object that has no incoming arrows, but a single outgoing arrow to each object in `Set`, then we've found the empty set.


Generally, a morphism, like all other mappings in CT, is a structure-preserving map.
