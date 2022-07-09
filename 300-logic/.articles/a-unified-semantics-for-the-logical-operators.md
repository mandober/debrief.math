---
downloaded:       2022-01-15
page-url:         https://home.uni-leipzig.de/gkobele/courses/2020.SS/Semantics/posts/booleanalgebra/
article-title:    A unified semantics for the logical operators
---
# A unified semantics for the logical operators - Semantics

We have seen that the logical operators and, or, and not can be
given a uniform proof-theoretic treatment in the context of tableaux.
However, we have had to give them independent interpretations in
denotational semantics; they are interpreted truth functionally in a
sentential context, but set theoretically in a predicate context.
Anticipating somewhat, these same connectives occur in other contexts
as well:
We have seen that the logical operators *and*, *or*, and *not* can be given a uniform proof-theoretic treatment in the context of tableaux. However, we have had to give them independent interpretations in denotational semantics; they are interpreted truth functionally in a sentential context, but set theoretically in a predicate context. Anticipating somewhat, these same connectives occur in other contexts as well:

DPs

Some student and most teachers

Ds

Some but not all

PPs

On the shelf or near the bookcase

Ps

On or near

Advs

quickly and accurately

TVs

praise and criticize

DTVs

show but not give

In each context in which logical operators occur, they license the same inferences (i.e. the same tableau rules apply), but of necessity will have different denotations (the semantic type of these categories are all different).

This situation is puzzling: the meaning of *and* clearly should be the same across categories, as it permits the same inferences, as formalized in the tableau system. On the other hand, we are forced to specify its denotation independently for each category. How can it be that the denotations of *and* are wildly different, yet give rise to the same inference patterns?

The answer we will advance here is that the different domains in which *and* (and *or* and *not*) may denote are all structured in a similar way, and that these words pick out the same operation on this structure in the different domains. One way of thinking about this is that we are taking too fine-grained a perspective by looking at the domains as consisting of objects of various kinds, and that we need to step back and consider how these objects relate to each other; the objects are different, but relations are the same. The situation is familiar in the sciences, where viewing things at the (presumably fundamental) level of quarks is too fine grained to see the real regularities in most disciplines (such as biology, economics, or linguistics).

(This post is based on the chapter 7 of the book Mathematical structures in language)

## TL/DR

The logical connectives *and*, *or*, and *not* are defined as the meet, the join, and the complement operations of boolean lattices, respectively. This provides a uniform denotational semantics for these operations, despite the very different semantic domains in which they occur.

-   [An audio file for this post is available][2]
-   [Code for boolean algebras is also available][3]

## Lattices

The claim is that truth values and sets of individuals share a similar structure. In particular, that conjunction of truth values and that set intersection (the interpretations of the coordinator *and*) should play the same role in this structure. In order to make sense of this, we need to find a way to talk about the elements of these domains (the truth values `True` and `False` on the one hand and sets of individuals on the other) that abstracts away from the details of these elements. In the domain of sets, perhaps the most salient relation is the subset relation. Set intersection and set union interact with the subset relation in the following ways: for any sets *A* and *B*,

-   A∩B⊆A
-   A⊆A∪B

Moreover, *any other set* C that is a subset of both A and B will also be a subset of A∩B, in other words, A∩B is the biggest of the sets smaller than both A and B. Likewise, A∪B is the *smallest* of the sets *bigger* than both A and B.

We can ask: is there any relation ≤ is the world of truth values that behaves as does ⊆ in this respect? This relation would have to satisfy the following, for any truth values ϕ and ψ:

-   ϕ∧ψ≤ϕ
-   ϕ≤ϕ∨ψ

As there are only two truth values, we can determine what this relation must be by instantiating these equations for every possible choice of truth value for ϕ and ψ:

ϕ\=False;ψ\=False

False∧False\=False≤False and False≤False∨False\=False

ϕ\=False;ψ\=True

False∧True\=False≤False and False≤False∨True\=True

ϕ\=True;ψ\=False

True∧False\=False≤True and True≤True∨False\=True

ϕ\=True;ψ\=True

True∧True\=True≤True and True≤True∨True\=True

More readably, we have that the relation must satisfy:

False≤FalseFalse≤TrueTrue≤True

and not:

True≤False

Considering the truth table for implication (figure [1][4]), we see that implication relates truth values in a way parallel to the subset relation.

A

B

A→B

True

True

True

True

False

False

False

True

True

False

False

True

Because our goal is to talk about the structure common to truth values and to sets of individuals, we will use the generic ≤ symbol for the relation of subset in the domain of sets, and for implication in the domain of truth values. Furthermore, we will write ∧ (usually called ‘meet’) for set intersection as well as for boolean conjunction, and ∨ (usually called ‘join’) for set union as well as for boolean disjunction.

The algebraic structure which we have here observed is called a [lattice][5] (Ger: [Verband][6]). A natural way of defining a structure in Haskell, which other things may instantiate, is by using the type class system.

```
class Lattice l where
-- meet and join should be:
-- 1. commutative
--    a `meet` b == b `meet` a
--    a `join` b == b `join` a
-- 2. associative
--    a `meet` (b `meet` c) == (a `meet` b) `meet` c
--    a `join` (b `join` c) == (a `join` b) `join` c
-- 3. absorbing
--    a `join` (a `meet` b) == a
--    a `meet` (a `join` b) == a
  meet :: l -> l -> l
  join :: l -> l -> l
```

To be a true lattice, the operations need to satisfy certain restrictions, namely, that they are *commutative*, *associative*, and that they are *absorbing*. It follows from the absorbtion laws that both `meet` and `join` operations are *idempotent*: ``a `meet` a == a`` and ``a `join` a == a``.[1][7]

The Haskell type class makes no mention of the order ≤ between elements. As with many other structures in mathematics, a lattice can **either** be defined in terms of the order, **or** in terms of the meet and join operations. Both definitions end up being equivalent, both in the sense of defining the same objects, and in the sense of being able to recover each from the other. For example, given the lattice class above, one element x can be defined to be less than or equal to another y just in case ``x `meet` y == x``.[2][8] Similarly, the meet of two objects x and y can be defined, using the order, as the unique object x∧y which is less than both, but greater than any other object less than both (the greatest of the lower bounds for x and y).

### Lattice Instances

There are numerous types that we can impose lattice structure on. For instance, the type `()`, with just a single inhabitant is a lattice in this sense. As there is but one element inhabiting this type, both `meet` and `join` operations must output this element.

```
instance Lattice () where
  meet _ _ = ()
  join _ _ = ()
```

More interestingly, the type `Bool` is a lattice in this sense, with greatest lower bound operation truth value *conjunction*, and least upper bound operation truth value *disjunction*.

```
instance Lattice Bool where
  meet = (&&)
  join = (||)
```

We cannot give the lattice instance for sets, as they require the constraint that their objects be ordered, which does not fit into our lattice typeclass. Ignoring this for the moment, the lattice instance for sets would look like the following:

```
instance Lattice (Set a) where
  meet = intersection
  join = union
```

Recalling that sets can be exchanged with their characteristic functions, we can give a lattice instance for sets qua characteristic functions.

```
instance Lattice (a -> Bool) where
  f `meet` g = \x -> f x && g x
  f `join` g = \x -> f x || g x
```

The definition for `meet` says that the meet of two characteristic functions is the characteristic function that maps an element to true just in case both functions do. We note that we have used boolean conjunction and disjunction to define these functions, which are just the `meet` and `join` operations of the `Bool` instance of a lattice. We can rewrite our characteristic function instance above, replacing `(&&)` by `meet` and `(||)` by `join`.

```
instance Lattice (a -> Bool) where
  f `meet` g = \x -> f x `meet` g x
  f `join` g = \x -> f x `join` g x
```

Now we can see that we are not actually making reference to any property of the type `Bool` in the above, other than that it has lattice structure. We can generalize our lattice instance again, this time by replacing the explicit mention of `Bool` by any lattice type.

```
instance Lattice b => Lattice (a -> b) where
  f `meet` g = \x -> f x `meet` g x
  f `join` g = \x -> f x `join` g x
```

We can give instance definitions for types one at a time, showing how they can be treated as lattices, as we have done for `Bool` and `()`. This way of proceeding does not allow for generalization; each type is given an instance declaration independently of any other. A more systematic approach exploits the recursive structure of types, saying how to derive an instance declaration for a new type based on instance declarations for other types. This approach only works in case the instancehood of a complex type is in fact derivable from its parts. Fortunately, as we have seen, in the case of lattices, this is indeed so. If a type has lattice structure, than so does the type of functions *into* that type, with the lattice opperations being defined *pointwise*.

Similarly, given two types with lattice structure, the type of pairs of those types has it as well.

```
instance (Lattice b,Lattice c) => Lattice (b,c) where
  (b1,c1) `meet` (b2,c2) = (b1 `meet` b2, c1 `meet` c2)
  (b1,c1) `join` (b2,c2) = (b1 `join` b2, c1 `join` c2)
```

## Boolean Lattices

The types of truth values and of sets have more structure than is made explicit by their being lattices. In particular, we can negate truth values, and take the complement of a set. We would like again to unify these two concepts, and we proceed once more by trying to characterize them without making explicit reference to the objects of our domains. Starting again with sets, we see that the complement of a given set has a special property with respect to the set it is the complement of: the union of a set with its complement is the universe, and the intersection of a set with its complement is the empty set.

-   A∪A¯\=E
-   A∩A¯\=∅

Indeed, the combination of these two properties uniquely characterizes the complement of a set. The universal set and the empty set are also special, in that they can be defined in terms of the order relation:

-   every set is a subset of the universal set
-   the empty set is a subset of every set

Translating this into the boolean domain, we must find truth values with these properties. As there are only two truth values, we can simply try all combinations. Doing this, we find that the truth value True is parallel to the universal set, and False is parallel to the empty set. And indeed, we find that the negation operation satisfies the correlates of the set equations above.

-   True∨False\=True
-   True∧False\=False

The elements True and the universal set are ‘bigger’ than every other object of their kind, and the elements False and the empty set are ‘smaller’ than every other object of their kind. It is common to call elements like True and the universal set the *top* elements, and those like False and the empty set the *bottom* elements.

The types of truth values and of sets have additional structure as well: their meet and join operations are *distributive*. A [boolean lattice][9] (Ger: [boolescher Verband][10])is a distributive lattice with a complement operation, and with designated top and bottom elements.

```
class Lattice b => Boolean b where
-- meet and join must in addition be
-- 1. distributive
--    a `join` (b `meet` c) == (a `join` b) `meet` (a `join` c)
--    a `meet` (b `join` c) == (a `meet` b) `join` (a `meet` c)
-- 2. complemented
--    a `meet` cmp a == bot
--    a `join` cmp a == top
  top :: b
  bot :: b
  cmp :: b -> b
```

Although the lattice operations (meet and join) were defined for *pairs* of elements, we can define them over (potentially infinite) sets of elements as well. This is possible because these operations are *commutative* (meaning they do not care about the order of their arguments), *idempotent* (meaning that they do not care about how many times they see a particular argument), and *associative* (meaning that they do not care about *when* they see a particular argument).

```
infMEET, infJOIN :: Boolean b => [b] -> b
infMEET = foldr meet top
infJOIN = foldr join bot
```

All of the lattice types we have discussed are also boolean lattices. The type `()` has boolean lattice structure where `top` and `bot` are both `()`, and `cmp` is the identity function.

```
instance Boolean () where
  top = ()
  bot = ()
  cmp _ = ()
```

The type `Bool` of truth values is boolean where `top` is `True`, `bot` is `False`, and `cmp` is logical negation.

```
instance Boolean Bool where
  top = True
  bot = False
  cmp = not
```

As was the case with lattices, booleanness is inheritable. With function types, the `top` function maps everything to the `top` element of its codomain, the `bot` function maps everything to the `bot` element of the codomain, and `cmp` maps a function to one which takes the `cmp` of its output.

```
instance Boolean b => Boolean (a -> b) where
  top = \x -> top
  bot = \x -> bot
  cmp f = \x -> cmp (f x)
```

The product types inherit booleanness componentwise.

```
instance (Boolean b,Boolean c) => Boolean (b,c) where
  top = (top,top)
  bot = (bot,bot)
  cmp (b,c) = (cmp b, cmp c)
```

This allows us to write terms like ``top `meet` (top `join` bot)``, with type `Boolean b => b`.

## It’s all just sets after all

A fundamental theorem about boolean algebras has as a consequence that

> every finite boolean algebra is isomorphic to the powerset of its atoms

An element x of a boolean algebra is *atomic* iff

1.  it is not the bottom element
2.  the only element it is greater than is the bottom element

This fundamental theorem tells us as well that

> every element in a finite boolean algebra is uniquely characterized by the atoms it is greater than

We see this immediately for the top and bottom elements; the top element is greater than every atom, the bottom element is greater than no atom.

To get an intuitive understanding of why this might be the case, we can consider how to represent some of the boolean lattices we have seen as powersets.

Consider the one element boolean algebra (as given by the Haskell type `()`). It has no atoms (because the only element it contains is the bottom element), and therefore the set of its atoms it the empty set. The powerset of the empty set is the set containing a single element, the emptyset (℘(∅)\={∅}). This one element set is isomorphic to the original one element set.

Consider now the two element boolean algebra of truth values (as given by the Haskell type `Bool`). It has just one atom, True. The powerset of this one element set contains the one element set and the emptyset ℘({True})\={∅,{True}}. Setting False≅∅ and True≅{True}, we see that ∅⊆{True} just as False≤True, and that moreover the set theoretic operations of intersection, union, and complement perfectly mirror the boolean conjunction, disjunction and negation of truth values.

More generally, we can turn any finite boolean algebra into a powerset algebra by associating each element of the original boolean algebra with the set of atoms it is greater than (or equal to). We can see immediately that this preserves the complement operation: if you are greater than one set S⊆At of atoms, your complement must be greater than the complement of S. If your complement and you shared some atom, say a, then your intersection with your complement would also be greater than (or equal to) this atom, but this is impossible, because the intersection of any element with its complement is the bottom element of the algebra. If your complement does not contain some atom in the complement of S, then your join with your complement would not be greater than this atom, which is again impossible because the join of any element with its complement is the top element.

---

1.  We can prove this by substituting equalities for equalities:
    
    (absorbtion, with b\=ajoina)a\=ajoin(ameet(ajoina))(absorbtion with b\=a) \=ajoina
    
    [↩︎][11]
2.  The use of the function `(==)` from the `Eq` typeclass requires that the type objects we are manipulating be an instance of this class. [↩︎][12]
    

[1]: https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.192.650&rep=rep1&type=pdf
[2]: https://speicherwolke.uni-leipzig.de/index.php/s/mjDbqtcaZ8j2pWt
[3]: https://home.uni-leipzig.de/gkobele/courses/2020.SS/Semantics/code/booleanAlgebra.hs
[4]: https://home.uni-leipzig.de/gkobele/courses/2020.SS/Semantics/posts/booleanalgebra/#table--fig:implication
[5]: https://en.wikipedia.org/wiki/Lattice_(order)
[6]: https://de.wikipedia.org/wiki/Verband_(Mathematik)
[7]: https://home.uni-leipzig.de/gkobele/courses/2020.SS/Semantics/posts/booleanalgebra/#fn:1
[8]: https://home.uni-leipzig.de/gkobele/courses/2020.SS/Semantics/posts/booleanalgebra/#fn:2
[9]: https://en.wikipedia.org/wiki/Boolean_algebra_(structure)
[10]: https://de.wikipedia.org/wiki/Boolesche_Algebra
[11]: https://home.uni-leipzig.de/gkobele/courses/2020.SS/Semantics/posts/booleanalgebra/#fnref:1
[12]: https://home.uni-leipzig.de/gkobele/courses/2020.SS/Semantics/posts/booleanalgebra/#fnref:2
