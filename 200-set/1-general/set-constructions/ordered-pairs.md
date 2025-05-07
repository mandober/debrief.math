# Ordered pair

## Characteristic property

`(a, b) = (x, y)` ⟺ `a = x ⋀ b = y`


## Ordered pairs in general

An ordered pair is good for modelling a nonreciprocal association between two objects because it can also encode the directionality of the association.

The fact that an object `a` is associated to an object `b` may be modelled with an ordered pair `(a, b)`.

The ordered pair `(a, b)` represents a directed (nonreciprocal) association that goes *from* `a` *to* `b`, and by itself says nothing about a possible association from `b` to `a`.

The prevailing interpretation of an ordered pair `(a, b)` is that the object `a` is associated to the object `b` in some way. It just asserts the existence of an association from `a` to `b`. An association from `b` to `a` would then be expressed with the reversed order pair, `(b, a)`.

`(a, b) ≠ (b, a)` ⟺ `a ≠ b`     (I)     
`(a, b) = (b, a)` ⟺ `a = b`


some kind of relation exists between these two objects, and, moreover, that it's not a reciprocated relation

that goes from `a` to `b` 




by virtue of their structure.
of that association.

can model an association between two objects, but it also encodes the one-way directionality of that association.

cannot represent an association without also revealing its directionality.
it cannot 







relation: here, the association goes from `a` to `b`, which may not be the same relation as the one from `b` to `a`, denoted by transposing the order pair as `(b,a)`.

An **ordered pair** models a nonreciprocal association between two objects.





Ordered pairs directly model directed relations, still allowing for undirected relations to be expressed by also including the transposition of the ordered pair.


that are associated in some way in some context. The context may be anything at all, including a sentence, formula, theorem, theory, expression, function, equation, etc.


Include it where? Relations are commonly expressed at the level of sets, rarely at the level of individual objects. So a relation `R` between two sets `A` and `B` is a set that consists of all the associations that the elements of `A` have with the elements of `B`. Naturally, this is modelled by putting all the individual associations into a set, a set of ordered pairs:   
`R = { (a,b) | a ∈ A, b ∈ B }`

The order of components in the ordered pair is significant: the ordered pair (a,b) generally denotes a different ordered pair to (b,a)    
`(a,b) ≠ (b,a)`

that is, unless we already know that `a = b` in which case    
`(a,b) = (b,a) = (a,a) = (b,b)`

In general, however, two ordered pairs are equal iff    
`(a,b) = (x,y) ⟺ a=x ⋀ b=y`

An ordered pair, as an element in the set defined by a relation `R` on a set `A`, may express the fact that an element is related to itself, `(a,a)`, where `a ∈ A`, and such pairs are called *identity (ordered) pairs* (it pays to label them with a distinct term as the discussion of relations will demonstrate).

## Pairwise

Some phrases mention the term "pairwise", as in "pairwise disjoint sets". However, the term "pairwise" has nothing to do with ordered pairs, for it usually means "for any two elements… (a pair)".

Typically, pairwise disjoint means that no two sets in the collection have a member in common. We don't usually speak of a single pairwise disjoint set in isolation. The term "pairwise disjoint" apllies not to a single set but to a collection of sets. If S is a set of nonempty sets we say that the sets belonging to S are pairwise disjoint if any pair of distinct sets in the collection are disjoint, ie have no members in common. Without qualifying that the sets have to all be nonempty, we could always add the empty set to such a collection and it would still satisfy the same condition. The reason for excluding that possibility is so that we can always assert that no set in such a collection is ever contained in any other.

## Components

In the ordered pair `(a,b)`, the object `a` is called the *first entry*, and the object `b` the *second entry* of the pair. Alternatively, they are called:
- the first and second *components*
- the first and second *coordinates*
- the first and second (left and right) *projections*
of the ordered pair.


## Tuples

Ordered pairs are also called 2-tuples, sequences (or list) of length 2.

Ordered pairs of scalars are sometimes called 2-dimensional vectors (technically, this is an abuse of terminology since an ordered pair need not be an element of a vector space).


The entries of an ordered pair can be other ordered pairs, enabling the recursive definition of ordered *n-tuples* (ordered lists of n objects).

For example, the ordered triple (a,b,c) can be defined as (a, (b,c)), i.e. as one pair nested in another.


Cartesian products and binary relations (and hence functions) are defined in terms of ordered pairs.
