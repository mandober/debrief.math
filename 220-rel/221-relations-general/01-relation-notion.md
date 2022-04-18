# Relation

https://en.wikipedia.org/wiki/Relation_(mathematics)

relations
  involved objects
  connection
  association
  relation
  properties
directionality
  directed association
  from A to B
  outgoing arrow
  incoming arrow
arity
  binary
  n-ary
ordered pair
  two components
  first component
  second component

tuple
  n-tuple
  ordered pair
  component
  first component
  second component
  ith component
set
  source set
  domain
  target set
  codomain
  relation
  set of tuples
  set of ordered pairs
  finite set
  infinite set
  the empty set
  nonempty set
  singleton set


## Relations in general

A relation is a general concept that defines an *association* that the objects in some *context* have. A relation is any kind of connection between two or more objects that together participate in a shared context. The shared context can be that of a mathematical expression, for example, a relation may express the fact that 5 is greater than 2. This particular association, 2 < 5, is expressed using what may be called a relational operator `<`. Although it is merely a symbol, this particular symbol has a heavy semantic baggage, and it is almost always interpreted as a precedence symbol, in this case denoting that 2 2 strictly precedes 5 (when these two numbers are elements of a poset).

Generally, relations can express all kinds of associations between objects. The mere fact that a number of objects can be placed in the same context together implies that there must be some sort of relation between them.




From non-mathematical connections like "spouse of", "son of" that are expressed with predicates in logic, to the mathematical ones like "divides" (2-place relation) or "is between" (possibly a 3-place relation, as in "x is between y and z"). A 1-place relations are also possible, although they are more commonly called *properties*.

You can also say that 3 and 4 in 3+4 are related, being objects that participate in that arithmetic expression.



The most common are 2-place relations between two object

Generally, a 



The canonical case is probably a relation between two sets `A` and `B`, which comprises the sum of individual associations that the elements of `A` maintain with the elements of `B`. The fact that an element `x` in `A` is related to an element `y` in `B`, may be modelled using tuples, which in this case implies a 2-tuple, also called an *ordered pair*, `(x,y)`.

Tuples, and ordered pairs, faithfully model the *directionality of associations, and thereby of relations*: the ordered pair `(x,y)` models the individual association from `x` to `y`. The opposite of this pair, i.e. `(y,x)`, models a different association, the one that goes from `y` to `x`.

* `(x,y)` ≠ `(y,x)` (unless x = y)
* `x = y` -> `(x,y) = (y,x)`
* `(a,b) = (x,y)` ⟺ `a = x ⋀ b = y`




is a different thing.


represents the fact that 

the first component, `x`, 

comes from the source set `A`, which is also called the domain set of the relation, and the second component, `y`, comes from the target set `B`, also called the codomain set of the relation.



Each individual association



Each particular relation is defined by the set of all associations that the elements of a source set have with the elements of a target set. Although this implies an association between two sets, with the possibility that they are actually the same set, a relation can also include more than two sets.

Binary relations between two sets are the most natural and prominent type of relations. However, the fact that a relation is binary is related but not completely determined by the number of sets involved. Namely, there are binary relations on a single set, which, hand at heart, may still be interpreted as a relation between two sets that happen to be the same. The same thing may also be said for n-ary relations, where n > 2, like ternary (n=3), quaternary (n=4), quinary (n=5), etc.

The arity of a relation is the number of components in each tuple that defines it. In the common case of binary relations, with the arity n=2, a relation is the set of ordered pairs.

More precisely, a binary relation over sets `A` and `B` is a set of ordered pairs `(x,y)`, where the first component, `x`, comes from the source set `A`, which is also called the domain set of the relation, and the second component, `y`, comes from the target set `B`, also called the codomain set of the relation.

consisting of elements x in X and y in Y.
considered as an instance of the 
is the case where it may still be considered that two sets are involved, but 
It encodes the common concept of relation: an element x is related to an element y, if and only if the pair (x, y) belongs to the set of ordered pairs that defines the binary relation.

A particular association is a component in the relation set.

Each individual association is modelled with an ordered pair, `(x, y)`, where `x` is an element of the source (domain) set, `A`, and `y` is an element of the target (codomain) set, `B`, although, `A` and `B` may denote the same set, `A`. Thus, a binary relation is the set of all individual associations between two sets `A` and `B`, whether these two sets are indeed distinct or not.






It is a generalization of the more commonly understood idea of a mathematical function, but with fewer restrictions.



A binary relation is the most studied special case n = 2 of an n-ary relation over sets X1, ..., Xn, which is a subset of the Cartesian product X1 × ... × Xn.
