# ST :: A perspective on set theory

## Set theories

The field of math that studies collections of elements is called set theory even if there is yet no theory to talk about. 

Unformalized set-theoretical systems usually fall under the umbrewlla of *naive set theory* that acts as a catch-all topic, gathering non-unique terms  and terminology not sorted elsewhere.


Numerous concrete set theories exist, with ZF taken as the standard one. 


## The concept of set

Sets are introduced either as mathematical primitives or their existence is asserted by axioms. In any case, *set is undefined mathematical object* (e.g. like number and space).

A naive set theory is an optimistic theory that hopes everything's gonna be alright. It introduces the concept of set by appealing to the readers' intuition, while conjuring up imagery of containers and collections interlaced with the words like "simple", "gather together", "merely", "hunky-dory" and, seemingly the most popular one, "indeed". It may describe (or even "define") a set by stating that it is a collection of things - leaving it as an exercise for the reader to define "collection" and "thing", and then all the words used in that definition, and all used in that definition, and so on, ad infinitum. The dreaded downward spiral makes it unfair to scorn many (naive set theory) books that introduce set like this, but on the other hand, we'd all be better served if they just told it like it is - hopeless and futile and infinite - instead of decorating the stuff or just skipping the uncomfortable parts like so many books and articles do (actually the entire FOM suffers from this, all the way down to sets at its center).

Now then, in naive set theory, sets are undefined primitive mathematical objects that are to be taken for granted so stfu. *Intuitivelly, set is an unordered collection of distinct (mathematical) objects*.

Axiomatic set theories assert the existence of sets as an axiom. For example, the first axiom of ZF states that the empty set exists (not sure how that implies that the entity called "empty set" implies the existence of non-empty sets that can act as containers. Some intuition about collections and containmen is surely needed also there. ZF's further axioms are about allowed operations on sets, primarily concerned at avoid paradoxes).

It seems both ways of introducing sets lack something, let alone rigor.

Moreover, the two essential properties of sets, lack of order and uniquness of elements, are almost never touched thoroughly. 


Once introduced, sets become mathematical objects in their own right. This is important because a set is a collection of objects. If sets are also objects, then a set may contain sets, and it is precisely this self-reference in terms of containment that makes tits go up.



---


This doesn't mean much for sets in general, so it's best to focus at a set at a time. Take, for example, the empty set. Not only is it concrete, but it is so concrete a set it may be celebrated as the first actual math object. And objects are things we can put in sets, at which point they also become *elements*. This segues into another unremarkable description of a set as a collection of objects, which are called the elements of the set.

Sets are among the simplest math structures, being almost structureless. However, sets have 2 defining properties, at least one of which is borderline black magic incorporated. The minor of the two properties is about the order, that is, about the complete and utter lack there of. Sets just have no concept of intrinsic order, the ordering of the elements in a set is undefined; the term "order" has already failed raising an undefined reference error. Having no notion of order makes it easier for us to implement sets in a PL as an ordered collection because keeping elements ordered helps locate them faster.
