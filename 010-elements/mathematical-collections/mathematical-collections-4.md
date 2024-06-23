# Math :: Types in math :: Mathematical collections

## Basic mathematical collections

Collections
- set
- multiset
- bag
- list
- ordered list
- unordered list
- sequence

Properties
- order
- multiplicity
- uniqueness


*Set* is a primitive mathematical collection: it is an unordered collection of unique mathematical objects.

Properties of collections
- uniqueness vs multiplicity of elements
- ordered vs unordered collection

By permuting the two properties of order and uniqueness, we get 4 types of collections:
- unordered collections
  - unique elements: `set`
  - (possibly repeated) elements: `multiset`, `bag`
- ordered collections
  - unique elements: `unique-list` (?)
  - (possibly repeated) elements: `list`, `sequence`


Set implies non-ordering, while list implies ordering.

An order collection that also recognnizes the uniqueness of elments seems not to be of interest in math since it doesn't even have a name; it could be called unique-list and it would be a collection list but with any element appearing at most once, i.e. mutliplicity of elements = 1.

Mutliplicity of elements
- set: 1
- multiset: ∞
- unique-list: 1
- list: ∞

elements | ordered | unordered
---------|---------|-----------
unique   | ?       | set
multiple | list    | multiset



In a way, the only property that sets know about is *uniqueness of elements*, as it can be said that sets have no notion of order. Whether their elements are ordered or not is not something sets can enforce when they are not aware of this property. *Order* is a property unbecknowst to sets.

- collection of distinct elements vs:
- collection of possibly repeating elements
- collection of possibly non-unique elements

Set implies unordered colections; anything with a 'set' in the name implies an unordered colection (multiset). On the other hand, collections with a 'list' in name denote ordered collections (list, unique list, and also sequence).

## Subparts

- multiset ⇔ list
- multiset ⇔ set
-      set ⇔ list


How these 4 collections relate to their subparts.

- set: subset
- multiset: submultiset
- bag: subbag
- list: sublist
- sequence: subsequence

## Sublists

The interesting case is that of lists, because there could be several notions of sublists:

- *sublist* of elements, `list -> list`
  (1,3,1,2) --> sublist: (1,3,2)
 where picked elements must follow the ordering:
 this implies that the first element in the sublist is the first `1` in the list; in could not be the second `1` as only `2` would remain for picking.

- *contiguous sublist* of elements, `list -> list`
  (1,3,1,2) --> sublist: (3,1,2)

- *subset* of elements, `list -> set`
  (1,3,1,2) --> sublist: {1,2,3}
 where picked elements need not follow the ordering

- *submultiset* of elements, `list -> multiset`
  (1,3,1,2) --> sublist: {1²,2,3}
 where picked elements need not follow the ordering and can be repeated
