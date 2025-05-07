# Sequences and other collections

Comparison of sequences with other mathematical collections.

Mathematical collections
- set
- multiset
- tuple
- list
- sequence

## Features

Collections are classified according to the features they support:
- ordering (maintaining the position of each item)
- multiplicity (support for repeating the same entries)
- finiteness (support for infinite capacity/length)
- indexing (support for retrieving items based on their position)

*Ordering* means the capability of a collection to maintain the order in which the objects are inserted (sometimes called *insertion order*). Collections have rules - which are largely implicit and conventional - that prescribe how a collection behaves. These rules are sometimes called a *discipline* and they define the intrinsics and mechanics of accessing and manipulating a collection (how are elements inserted, altered or removed; how a collection is queried; which are the acceptable queries, etc.). A familar discipline is FIFO (first in first out) of a *queue*, which is a collection where the new elements are inserted at the front but removed from the back. The LIFO (last in, first out) discipline is best represented by a *stack*. Stacks and queues are domesticated in CS, but they do get used in math, in automata theory, for one.

A collection in mathematics is whatever one wants it to be, although for familiar collections there is a set of expectations of how it should behave. A collection behaves - and can change its behavior dynamically, according to the wishes of the person doing the math. On the other hand, in CS, a collection is only as it was exactly programmed to be; each and every aspect of a collection must be defined and implemented (manually). Any alteration requires investing more labor to enact the changes. But in math; in math, we just think it and it's implemented; done.




It is a different capability from being able to order its elements (in various manners). However, a collection that sorts itself is unheard of in math general (if we make an exemption for some niches of CS). There is no need for such shenanigans; if there is, a though'll do.


In math, being ordered, primarily means that a collection can maintain the ordering of its elements. But since math is evaluated magically, this means nothing at all; a collection will be ordered if the author says so (that's the magic part - you just think it and it's implemented). This is also a big concern when trying to translate math into software - there are these numerous implicit rules and conventions that all need to be accounted for in programming. On that matter, sets are almost always implemented in PLs as ordered collections - maintaining order is more efficient when later retrieving elements from a set, and easier then programming a deliberately unordered collection.

Ordering usually comes hand in hand with *indexing* since an order implies that each element has a stable position. That way, an indexed collection may be viewed without the content, as only a collection of slots that can be easily queried by their index. Whether an element resides at a certain slot is another matter. Collections that support empty slots are called *sparse*. Some collection (even the abstract ones, like mathematical sets), do not support empty slots - as soon as an element is removed, the collection is compacted.




### Sequence vs set

Unlike sets, sequences are ordered collections and the repetition (multiplicity of member objects) is supported/allowed.

Sequences are often constructed with an underlying set in context from which the elements are pulled. All unique elements of a sequence would make up a subset of that underlying set (if there is one at all). Elements that make up a sequence could only be selected - but not removed - from an ambient set, thus resulting in a sequence with repeated elements.

### Sequence vs multiset

A multiset is an unordered collection, like set, but unlike a set, multisets allow/support the same elements to occur more then once. The number of times an element occurs in a multiset is called *multiplicity*, and each element of a multiset has its multiplicity number, which is by default (i.e. implicitly) 1. 

An example of a multiset `{a, b⁴, c²}`. Multisets are not much used in math, coming into the spotlight only when a collection needs to support multiplicity of elements (which is a feature that sets lack), while remaining unordered. If ordering is not important - that is, if it is not significant whether a collection is ordered or not - then multisets are often jumped over, with the use of sequences being preffered.

### Sequence vs tuple

A sequence is a compound object, almost identical to a tuple. An n-sequence of items is exactly the same as an n-tuple - they even use the same notation, `(a₀, a₁, a₂, …, aₙ)`. When encountered in a text a sequence of 3 items, for example `(1,2,3)`, is indistinguishable from a triple `(1,2,3)`. For finite sequences there is no actual difference from tuples.

The difference kicks in with the request to support infinite capacity. Tuples can only represent finite collections - there are no infinite tuples, but there are infinite sequences. In fact, almost any useful sequence is infinite, which is a feature they share with sets.

### Sequence vs list



Sequences are basically identical to list
