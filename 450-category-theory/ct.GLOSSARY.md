# Category Theory: GLOSSARY

## Arrow
see Morphism

## Category
Broadly, a category consists of a collection of entities and binary relations (or transitions) between them (starting with objects and arrows), such that these relations can be composed and identified, and they include the identity relation. More precisely, a category consists of objects and arrows between those objects such that all object have an identity arrow, and arrows may be composed (provided their domain and codomain agree). That is, we can consider the set of arrows as the carrier set and composition as the attached binary operation; then identity arrows are units of composition (identity property), and composition is associative (property of associativity), transitive (property of transitivity), and closed over the carrier set (closure property).

## Coterminal object
see initial object

## Final object
see terminal object

## Functoriality
Functoriality means that something is a functor. When someone asks about the functoriality of some construction, they're asking whether or not it can be upgraded to a functor.

## Homset
For all objects `a` and `b` in a category `C`, there is a set called hom-set, `homᴄ(a,b)` or `C(a,b)` whose elements are all arrows from `a` to `b`. If we consider only a single object `a`, then a homset is the set of all arrows from `a` to `a` which includes at least the identity arrow on `a`, `1ₐ`.

## Initial object
An initial object (coterminal object, universal object) in a category `C` is an object `i` in `C` such that for every object `x` in C there exists precisely one morphism `i -> x`. Initial and terminal objects are duals.

## Isomorphism
An isomorphism is an invertible morphism, hence a morphism with an inverse morphism. It is a generalization of bijective functions. An isomorphism between objects `a` and `b` consists of two arrows, `to : a -> b` and `from : b -> a` that convert between these two objects.

## Morphism
A morphism or arrow is a directed connection (representing a relation) between two objects. There are morphisms in a category between its objects, but there are also arrows between categories, even between arrows, in fact arrows are possible between any two entities, or even on one entity.

## Null object
see zero object

## Strict initial object
A strict initial object is an initial object whose every inbound morphism is an isomorphism.

## Strict terminal object
A strict terminal object is a terminal object whose every outbound morphism is an isomorphism.

## Terminal object
An terminal object in a category `C` is an object `T` in C such that for every object `X` in C there exists precisely one morphism `X -> T`. The dual notion is that of the initial object.

## Universal object
see initial object

## Zero object
A zero object (null object) is an object that is both initial and terminal.
