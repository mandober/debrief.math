# Mathematical collections

- set
  - subset
- bag, multiset
  - submultiset (?)
- list
  - sublist (?)
- unlist, unordered list (?)
  - sub-unlist, unordered-list (?)
- sequence
  - subsequence
- string
  - substring

## Basic collections

Basic collections are derived based on the notions of *order* (whether a collection has a notion of order or not) and *multiplicity* (whether a collection allows repetition of elements or not).

mathematical collections | no ordering   | ordered
-------------------------|---------------|----------------
repetition allowed       | set           | sequence, list
repetition disallowed    | multiset, bag | ?
 
- set: no notion of order, multiplicity collapses (multiplicity not preserved)
- multiset: no notion of order, multiplicity preserved (repetitions allowed)
- sequence: enforced ordering, multiplicity preserved
- unordered list: enforced ordering, multiplicity not preserved


Multiset is a collection that may contain all the different expressions of an abstract object (e.g. different shapes that are still considered a square, different shapes that are still considered a triangle, etc.), while a set collapses all the superfluous instances into their one true form (so it only contains the ideal square, ideal triangle, etc.).



## Notion of order

- order, ordering
- ordering relation
- position
- ordered set
- sequence, list (ordered collections)
- ordered collections ≅ ordered sets?
- set ≡ unordered set ≡ unordered collection (if considering order only)

The notion of an order may be interpreted as a requirement that an *ordering relation* is enforced and must be maintained on the elements in a collection.

But by who? It may be understood as an internal property of the collection itself, so any element thrown in in the collection always lands in the correct position.


as if the ordering is an intrinsic property of the collection in question; e.g. with sequences, it may be thought of as if the order is built into sequences. Or, the order may be interpreted as an external entity that is imposed on the collection - and this seems to be the usualy interpretation in math; e.g. a list may be thought of as a mere set endowed with an ordering relation, thereby giving rise to *ordered sets*. Ordered sets are then the same thing as lists.

Perhaps, a list always exists as an ordered sequence of elements, i.e. the collection and the ordering are inseparable, while an ordered set can be separated into a set of elements and the ordering relation. In the end, however, they amount to the same (so are these "implementation details" important at all?).

Also, this view implies that sets are the fundamental mathematical collection, while the other mathematical collections are based on it. Like, multiset is a set with a "relaxed" multiplicity requirement, and list is a set with an ordering relation attached. The 4th possibility - a collection that has a notion of order but allows multiplicity.




being imposed by some external rule (force) on the collection

This order may be interpreted externally, as being imposed by some external rule (force) on the collection


This is usually the right interpretation because mathematics speaks of sets with an ordering relation as being *ordered sets* (i.e. lists, sequences).

## Notion of multiplicity

- multiplicity vs identity
- notion of multiplicity
- notion of identity
- preservation of multiplicity
- allowing repetitions
- collapsing (of the same elements)
- notion of sameness
- comparison of elements to determine their sameness
- compared how? by value, by name, by reference, by what…? call by sharing?
- notions of sameness ("the same"):
  - identity (identical, indistinguishable)
    - identity of indiscernibles
    - indiscernibility of identicals
  - indistinguishability (indistinguishable)
  - indiscernibility (indiscernible)
  - equality (equal)
  - equivalence (equivalent), equivalence relation (refl, sym, trans)
  - isomorphism (isomorphic), one-to-one correspondence, bijection
  - embedding (one-sided isomorphism)
  - similarity (similar)
  - congruence (congruent)
  - equinumerosity (equinumerous)
  - equipotency (equipotent)
    - equipotence [equalness of power]
    - equipollence [equalness of strength] (equipollent)



### Bag or multiset

The most basic collection without any extra notions or properties is a *bag*. Bag is also called *mutliset* because like set it has no notion of order, but unlike set, it allows the repetition of elements; the number of times an element is repeated is called its multiplicity, thus a multiset can be expressed using a set notation with exponents that represent multiplicity added (so x¹ = x, x² = xx, …; x⁰ = ε is not often used).

- ⟅ x, y, x, z, x, y ⟆ = ⟅ x, x, x, y, y, z ⟆ = ⟅ x³, y², z ⟆ = { x³, y², z }
- `B = ⟅ x³, y², z ⟆` then `x ⋿ B`
- `x ≠ ⟅x⟆ ≠ ⟅x²⟆ ≠ ⟅x³⟆`
- `⟅x⟆ ≠ {x}`
