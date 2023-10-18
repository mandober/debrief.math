# Sum data type

https://en.wikipedia.org/wiki/Sum_type

In type theory, sum is an operation on types for constructing new types from the existing ones.


sums (tagged union, disjoint union, coproduct type, variant type)


Sum types are analogous to the disjoint sum of abstract algebraic structures.

The values of a sum type are typically grouped into several classes, called variants. A value of a variant type is usually created with a quasi-functional entity called a constructor. Each variant has its own constructor, which takes a specified number of arguments with specified types. The set of all possible values of a sum type is the set-theoretic sum, i.e., the disjoint union, of the sets of all possible values of its variants. Enumerated types are a special case of sum types in which the constructors take no arguments, as exactly one value is defined for each constructor.
