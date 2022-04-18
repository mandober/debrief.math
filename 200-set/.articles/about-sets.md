# About sets

## The concept of sets

Sets are either introduced as mathematical primitives, or their existence is asserted with axioms. In any case, there's no definition of what a set is.

In a naive set theory, sets are usually introduced by appealing to reader's intuition, while conjuring up imagery of containers and collections, interlaced with the terms like "simple", "just", "merely", "daddy-o", "indeed", "putain". Thus, sets are left undefined, as mathematical primitive objects that are to be taken for granted so stfu. The empty set usually gets the same treatment.

In an axiomatic set theory, the existence of sets is usually asserted through one or more axioms. The empty set usually gets the same treatment and own axiom.

However, whether sets are introduced as primitives or axiomatically, they are still left undefined, as primitives, so these two ways of introductions are pretty muche eqivalent, and you should definitely not think that the former way is somehow dirty, but the latter rigorously shines. Both ways are fresh outta rigor.

In whichever way they are introduced, sets become mathematical objects in their own right. This doesn't mean much for sets in general, so it's best to focus at a set at a time. Take, for example, the empty set. Not only is it concrete, but it is so concrete a set it may be celebrated as the first actual math object. And objects are things we can put in sets, at which point they also become *elements*. This segues into another unremarkable description of a set as a collection of objects, which are called the elements of the set.

Sets are among the simplest math structures, being almost structureless. However, sets have 2 defining properties, at least one of which is borderline black magic incorporated. The minor of the two properties is about the order, that is, about the complete and utter lack there of. Sets just have no concept of intrinsic order, the ordering of the elements in a set is undefined; the term "order" has already failed raising an undefined reference error. Having no notion of order makes it easier for us to implement sets in a PL as an ordered collection because keeping elements ordered helps locate them faster.
