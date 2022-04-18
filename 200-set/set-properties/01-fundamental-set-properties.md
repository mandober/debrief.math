# Fundamental properties of sets

(non-order and uniqueness)

Two fundamental properties that a collection must satisfy to be called a set:
1. *uniqueness*: collection in which all elements are distinct
2. *non-order*: collection that has no notion of ordering (of its elements)

However, both properties are shady at best. The second property is no condition at all, it basically just says that sets have no clue what an ordering of elements is. Many implementations of sets in PLs internally use an ordered data structure to locate the set elements efficiently (e.g. using binary search), and sets are usually presented using an ordering that is internal to the implementation (commonly as ASC sorted list, rarely DESC; unsorted or random presentation order is virtually unheard of). Thus, no notion of order implies any type of order is fine.

Unlike CS, math is not particularly invested in enforcing these two properties (due to its magical mystery powers) - it doesn't even decide what entity (agent) is responsible for upholding them. On the other hand, a CS implementation must decide where the "source of truth" is located regarding the elements in a set. The set data type may be responsible for keeping the elements deduplicated, perhaps by running a duplication operation every time an element is added, or by running some checks beforehand (in any case, there will be a lot of redundant checks). Alternatively, methods that modify sets could take or share this responsibility.

There is the idea that the "source of truth" regarding the contents of a set should be under the jurisdiction of the set-querying method that answers only with a 'yes' or 'no' to questions about an object's set membership. This way removes the need to enforce the uniqueness of elements; it also represents sets (and their contents) quite vaguely, since each set is represented by a corresponding collection of queries (and the facts derivable within). The big issue remains: how to come up with the appropriate candidate objects for the queries? How to determine the type of elements? (non-issue: the type is given explicitly). How to shrink the range? (trial and error, d'oh).
