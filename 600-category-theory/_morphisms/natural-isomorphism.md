# Natural isomorphism

## Equality vs isomorphism

In certain areas of mathematics, notably category theory, it is valuable to distinguish between *equality* and *isomorphism*.

Equality or sameness, and approximations of equality as likeness, are very complicated concepts in math, as well as in other sciences, and also in life. The ability to determine whether two entities (concepts, objects, anything) are identical is no small feat. There are always the follow-up questions like: always equal, or equal under certain circumstances; when are two objects equal; what set of properties of two object remains always equal and which set changes; is the varying set of properties crucial for their equality?

**Equality**, that is the relation of equality between two objects is established when the objects are exactly the same, i.e. identical; everything (every property, attribute, characteristics) true about one is true about the other object. Equality is absolute; it relates two objects in their entirety.

However, absolute equality may not always be a desirable approach to establish the likeness of objects. Most of the time, we'd like to relate objects by a less strict notion of likeness, somewhat of "close-enough" likeness.

For instance, telling two books apart can be a very complicated matter. It is often more useful in determining whether two books are in fact the same book (are equal) by comparing only their ISBN identifiers (although even the ISBN can fail to match nowadays because the digital issue usually has a different ISBN to the printed issue; perhaps, some prefix of the ISBN code is constant for the "same" book), rather then their entire set of attributes. So, two books may be identical in absolutely every way, or they could be just isomorphic.

**Isomorphisms** are equalities restricted to a subset of attributes and properties of an entity. There is practically unbound subset of all possible attributes so there are many ways to make a comparison, and hence there are many isomorphisms. The notion of equality is *the*, isomorphism is an *a*.

An **isomorphism** implies everything that is true about a designated part of one object's structure is true about the other's.


For example, an expression like `5+3` is equal to the expression `8`, although they are not the same; the first implies (at least) some additional computation step, that is, it is possible to further evaluate the first expression, while the evaluation of the second has completed as the expression is now in its canonical form. These two expressions can be deemed different *representations* of the same thing.

As another example, the sets `A = {x ∈ ℤ | x² < 2 }` and `B = {-1,0,1}` are equal [but surely not identical]. They are different representations of the same set. The set builder notation is an **intensional** representation, while the explicit enumeration is an **extensional** representation.

By contrast, the sets `A = {x,y,z}` and `B = {1,2,3}` are not equal. They have different type of members (letters vs numbers), but they have the same cardinality. Any two sets with the same cardinality are isomorphic, since it is always possible establish a complete one-to-one mapping between them. They are isomorphic as sets, since finite sets are determined up to isomorphism by their cardinality. There are many choices of isomorphisms between these two sets; one isomorphism is a mapping {A↦1,B↦2,C↦3}, while another is {A↦3,B↦2,C↦1}, and no one isomorphism is intrinsically better than any other.

* There are **3! = 6** different isomorphisms between two 3-element sets.

This is equal to the number of automorphisms of a given 3-element set (which in turn is equal to the order of the symmetric group on 3 letters), and more generally one has that the set of isomorphisms between two objects, denoted 
Iso(A,B), is a *torsor* for the automorphism group of A, Aut⁡(A) and also a torsor for the automorphism group of B. In fact, automorphisms of an object are a key reason to be concerned with the distinction between isomorphism and equality, as demonstrated in the effect of change of basis on the identification of a vector space with its dual or with its double dual, as elaborated in the sequel.




---

A, B, C have a conventional order, namely alphabetical order, and similarly 1, 2, 3 have the order from the integers, and thus one particular isomorphism is "natural", namely
A
↦
1
,
B
↦
2
,
C
↦
3
\text{A} \mapsto 1, \text{B} \mapsto 2, \text{C} \mapsto 3.
More formally, as sets these are isomorphic, but not naturally isomorphic (there are multiple choices of isomorphism), while as ordered sets they are naturally isomorphic (there is a unique isomorphism, given above), since finite total orders are uniquely determined up to unique isomorphism by cardinality. This intuition can be formalized by saying that any two finite totally ordered sets of the same cardinality have a natural isomorphism, the one that sends the least element of the first to the least element of the second, the least element of what remains in the first to the least element of what remains in the second, and so forth, but in general, pairs of sets of a given finite cardinality are not naturally isomorphic because there is more than one choice of map—except if the cardinality is 0 or 1, where there is a unique choice.
