# Category of sets

https://en.wikipedia.org/wiki/Category_of_sets

The category of sets, denoted as `𝗦𝗲𝘁`, is the category with
- sets as objects
- functions as arrows
- composition of arrows is the composition of functions

## Properties of the category of sets

- objects: sets
- arrows: total functions
- composition of arrows: function composition
- associativity: function composition is associative
- identity: every set has an identity function
- epimorphisms: surjective functions
- monomorphisms: injective functions
- isomorphisms: bijective functions
- initial object: the empty set
- terminal object: singleton sets
- zero object: no
- product: Cartesian product
- coproduct: disjoint union


The empty set serves as the initial object in 𝗦𝗲𝘁 with empty functions as morphisms. Every singleton set is a terminal object, with the functions mapping all elements of the source sets to the single target element as morphisms. There are thus no zero objects in 𝗦𝗲𝘁.

The category 𝗦𝗲𝘁 is complete (has product) and co-complete (has coproduct).

𝗦𝗲𝘁 is the prototype of a concrete category; other categories are concrete if they are "built on" 𝗦𝗲𝘁 in some well-defined way.

Every two-element set serves as a subobject classifier in 𝗦𝗲𝘁. The power object of a set A is given by its power set, and the exponential object of the sets A and B is given by the set of all functions from A to B. 𝗦𝗲𝘁 is thus a topos (and in particular cartesian closed and exact in the sense of Barr).

𝗦𝗲𝘁 is not abelian, additive nor preadditive.

Every non-empty set is an injective object in 𝗦𝗲𝘁. Every set is a projective object in 𝗦𝗲𝘁 (assuming the axiom of choice).

The finitely presentable objects in 𝗦𝗲𝘁 are the finite sets. Since every set is a direct limit of its finite subsets, the category 𝗦𝗲𝘁 is a locally finitely presentable category.

If C is an arbitrary category, the contravariant functors from C to 𝗦𝗲𝘁 are often an important object of study. If A is an object of C, then the functor from C to 𝗦𝗲𝘁 that sends X to HomC(X,A) (the set of morphisms in C from X to A) is an example of such a functor. If C is a small category (i.e. the collection of its objects forms a set), then the contravariant functors from C to 𝗦𝗲𝘁, together with natural transformations as morphisms, form a new category, a functor category known as the category of presheaves on C.

## Foundations for the category of sets

In Zermelo-Fraenkel set theory the collection of all sets is not a set; this follows from the axiom of foundation. One refers to collections that are not sets as proper classes. One cannot handle proper classes as one handles sets; in particular, one cannot write that those proper classes belong to a collection (either a set or a proper class). This is a problem because it means that the category of sets cannot be formalized straightforwardly in this setting. Categories like 𝗦𝗲𝘁 whose collection of objects forms a proper class are known as large categories, to distinguish them from the small categories whose objects form a set.

One way to resolve the problem is to work in a system that gives formal status to proper classes, such as NBG set theory. In this setting, categories formed from sets are said to be small and those (like Set) that are formed from proper classes are said to be large.

Another solution is to assume the existence of Grothendieck universes. Roughly speaking, a Grothendieck universe is a set which is itself a model of ZF(C) (for instance if a set belongs to a universe, its elements and its powerset will belong to the universe). The existence of Grothendieck universes (other than the empty set and the set {\displaystyle V_{\omega }}V_{\omega } of all hereditarily finite sets) is not implied by the usual ZF axioms; it is an additional, independent axiom, roughly equivalent to the existence of strongly inaccessible cardinals. Assuming this extra axiom, one can limit the objects of Set to the elements of a particular universe. (There is no "set of all sets" within the model, but one can still reason about the class U of all inner sets, i.e., elements of U.)

In one variation of this scheme, the class of sets is the union of the entire tower of Grothendieck universes. (This is necessarily a proper class, but each Grothendieck universe is a set because it is an element of some larger Grothendieck universe.) However, one does not work directly with the "category of all sets". Instead, theorems are expressed in terms of the category SetU whose objects are the elements of a sufficiently large Grothendieck universe U, and are then shown not to depend on the particular choice of U. As a foundation for category theory, this approach is well matched to a system like Tarski-Grothendieck set theory in which one cannot reason directly about proper classes; its principal disadvantage is that a theorem can be true of all SetU but not of Set.

Various other solutions, and variations on the above, have been proposed.

The same issues arise with other concrete categories, such as the category of groups or the category of topological spaces.


---

`𝗦𝗲𝘁` is a category of "small" sets as objects, and set-theoretic functions as morphisms.

The "small" attribute of sets is there to make sure included sets all come from a predefined universe, so as to avoid paradoxes that arise from constructing unchecked sets, like a set of all sets that don't include themselves, i.e. have themselves as a member. Consequently, this concern also arises with the category of all categories, `𝗖𝗮𝘁`, that contains only "small" categories for its objects.

`𝗦𝗲𝘁` category is one of the central categories since the definition of many categorical things include it or are related to it. For instance, a concrete category is defined as a category equipped with a faithful functor to the 𝗦𝗲𝘁 category.


---
