# Endorelation

Endorelation (homogeneous relation) is a relation on the same set. More generally, it is a relation between mathematical object that are of the same sort (kind, type).

In PLs, under the CHI, types corresponds to sets, so a homogeneous relation or *homogeneity* in general, may be considered an operation or function that only works with arguments of the same type. A homogeneous data structure would only contain elements of the same type.

Across the PLs, the prototypical homogeneous data structure is array proper ("proper" meaning C-like, of fixed size, unresizable, located on the stack). In fact, it is exactly the property of homogeneity (such that all its elements have the same size) that is crucial in making arrays the most efficient data structure there is. A list is also one the basic data structures that are homogeneous.

A typical heterogeneous data structure is a pair (2-tuple). Usually, functions can also be considered heterogeneous data structure since, in general, they do work with arguments of different types.

perhaps also a function becasue, in general, functions do accept arguments of different types.
