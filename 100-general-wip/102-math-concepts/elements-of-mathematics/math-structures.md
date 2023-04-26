# Mathematical structures
(potential rant ahead)

*What is the most fundamental mathematical object?* Something similar to CS's bits, the building blocks grouping of which allows the formation of the standard set of machine primitive types. Only, these different primitive types are just different interpretations of the one and the same numeric type, thus yielding signed and unsigned integers, floats, characters, pointers, and more. All are just numbers, which in turn all are just (groups of) bits.

Surely, a number is an attractive candidate for the elementary mathematical object (math primitive type), but even the simplest numbers having so many different definitions implies something more initial got skipped.

One more initial and very "quite" candidate is the empty set. It is very intriguing that only that one set, even empty at that, is all you need to start the math a-rolling.



## Interleaving of topics

The initial couple of sections, like set theory, relation theory, order theory, function theory, are normally a part of discrete mathematics, along with number theory, graph theory, and mathematical logic. In fact, math logic, at least the basics, are a prerequisite for any other section; however, the concern here is to come up with barely decent ordering of topics, if possible, from less to more complicated ones, but without splitting any section (which would in fact be more reasonable). There isn't a clear path through math anyway, where one starts with some kind of foundation and then builds the rest of math; e.g. set theory depends on, at least the fundamental, logic, which in turn depends on, at least fundamental, set theory. "Fiat set" it is. The interleaving of sections proceeds also in lambda calculi, type theory, theory of computation (which should probably keep one foot in "math debrief" and the other in "cs debrief"). The initial "flow" of trying to topics by following a theme and building on the simpler terms to get at the more complex notions, went out the window, so the current approach is: the first pass: every topic for itself; the second pass (encounter with a page) is topic summarizing, with each subsequent pass leaving less details and more debrifing in the form of bullit points. Clustering topics is a constant activity (but it appears to be undecidable).

## Set

Let there be (the empty) set...

A set is a collection of objects, called members of the set, although math usually considers members of a set to be objects that are somehow related, that have some common properties.

Admitting the existence of sets need not demand more than the existence of the empty set. It is "the" because there is one and the same empty set; all empty sets are the same set. This already announce the concept of collapsing multiple instances of the same object that sets are characteristic for.

The notion that a set does not recognizes *multiplicity* (multiple instances) of an object is usually called *uniqueness*. The other fundamental property of sets is that they don't recognize ordering. Thus, a set is one of the most simple mathematical structures - it is *unordered* collection of unique elements.


## Primitive collections

The simplest (most primitive) mathematical structure is thought to be a set, even though there are other structure defined by set's basic properties, i.e. order and uniqueness.

Practically, sets are the simplest mathematical structures because other structures with only these two dimensions (order, uniqueness) seems to be way less interesting. After all, math is still deemed to be founded on the set theory, and not on bar, list or unordered list theory, which are the other primitive structures. A *bag* (multiset) is unordered collection of elements that recognizes multiplicity. A *list* (sequence) is a relatively important structure - it is an ordered collection that recognizes multiplicity. Finally, an *unordered list* doesn't recognize neither order nor multiplicity; it is a highly impractical structure since lists are synonymous with order like sets are with disorder.
