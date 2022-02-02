# Collation

https://en.wikipedia.org/wiki/Collation
https://proofwiki.org/wiki/Definition:Collation

**Collation** is the assembly of written information into a standard order.

Many systems of collation are based on *numerical order* or *alphabetical order*, or extensions and combinations thereof.

Formally speaking, a collation method typically defines a *total order* on a set of possible identifiers, called sort keys, which consequently produces a *total preorder* on the set of items of information (items with the same identifier are not placed in any defined order).

A *collation algorithm*, such as the Unicode collation algorithm, defines an order through the process of comparing two given character strings and deciding which should come before the other. When an order has been defined in this way, a sorting algorithm can be used to put a list of any number of items into that order.

The advantages of collation is that it is fast and easy to find an element in the list, or to confirm its absence. In automatic systems this can be done using a binary search algorithm or interpolation search. Also, you can easily find the first or last elements of the list, or elements in a given range.
