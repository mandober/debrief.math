# Commutativity

https://en.wikipedia.org/wiki/Commutative_property

* Definition:Commutative Operation
https://proofwiki.org/wiki/Definition:Commutative/Operation

* Natural Number Multiplication is Commutative
https://proofwiki.org/wiki/Natural_Number_Multiplication_is_Commutative


Let `(S, ∙)` be an algebraic structure consisting of a carrier set `S`, and a binary operation denoted by `∙`. The binary operation `∙` is commutative over the set `S` iff `∀a ∀b ∈ S. a ∙ b = b ∙ a`.

* That is, every pair of elements of `S` *commutes* under the operation. Such an operation is said to have a *commutative property* if changing the order of operands doesn't affect the result.

* Commutativity and symmetry are two expressions of the same concept. In general, functions get to be commutative, and relations get to be symmetrical.

* Many arithmetic operations, primarily addition and multiplication, are commutative over any set. However, there are exceptions, like subtraction and division, which are *noncommutative operations*.

* Until 1814, the commutative nature of addition had been taken for granted, at which time François Servois formalized it, introducing the term "commutative".

Algebraic structures with a commutative operation:
- all number sets are commutative under addition and multiplication
- ℤ under percentage: `(ab = ba) -> (a % of b = b % of a)`
- A monoid whose operation is commutative is a *commutative monoid*



## Commutativity: references

https://storm-country.com/blog/abstract-is-simple
https://proofwiki.org/wiki/Natural_Number_Multiplication_is_Commutative
https://proofwiki.org/wiki/Category:Examples_of_Commutative_Monoids
https://proofwiki.org/wiki/Definition:Algebraic_Structure/One_Operation
https://proofwiki.org/wiki/Definition:Algebraic_Structure/Two_Operations
https://proofwiki.org/wiki/Definition:Closure_(Abstract_Algebra)/Algebraic_Structure
https://proofwiki.org/wiki/Definition:Magma
https://proofwiki.org/wiki/Definition:Algebraic_System
https://proofwiki.org/wiki/Definition:Underlying_Set/Abstract_Algebra
https://proofwiki.org/wiki/Category:Algebraic_Structures
https://proofwiki.org/wiki/Definition:Commutative/Elements
https://proofwiki.org/wiki/Category:Definitions/Anticommutativity
https://proofwiki.org/wiki/Definition:Commutative_Magma
https://proofwiki.org/wiki/Definition:Commutative_Monoid
https://proofwiki.org/wiki/Definition:Commutative_Ring
https://proofwiki.org/wiki/Definition:Commutative_Semigroup
https://proofwiki.org/wiki/Definition:Commutative/Algebraic_Structure
https://proofwiki.org/wiki/Definition:Commutative/Also_known_as
https://proofwiki.org/wiki/Definition:Commutative/Elements
https://proofwiki.org/wiki/Definition:Commutative/Operation
https://proofwiki.org/wiki/Definition:Commutative/Set
https://proofwiki.org/wiki/Definition:Ring_of_Sequences/Commutativity
https://proofwiki.org/wiki/Definition:Noncommutative_Ring
https://proofwiki.org/wiki/Definition:Commutative/Elements
https://proofwiki.org/wiki/Definition:Commutative/Elements
https://proofwiki.org/wiki/Definition:Commutator
https://proofwiki.org/wiki/Definition:Abelian_Group
https://proofwiki.org/wiki/Definition:Commutative
https://proofwiki.org/wiki/Definition:Commutative_Algebra_(Mathematical_Branch)
https://proofwiki.org/wiki/Definition:Commutative_and_Unitary_Ring
https://proofwiki.org/wiki/Category:Definitions/Abstract_Algebra
https://proofwiki.org/wiki/Category:Commutative_Monoids


## Commutativity vs associativity

> Commutativity does not imply associativity.

A very important example of an operation that is commutative but non-associative is that of finite-precision floating point numbers under addition: 

`(a + -a) + b = b`, but `a + (-a + b) ~ b`

may differ from b since the sum `-a + b` can involve a loss of precision. The latter is especially the case if a and b are nearly equal, then their sum might be rounded to zero (despite that their corresponding real sum is nonzero).

Another example is the binary operation, denoted by ⊙, on the integers, defined as ⊙(x,y) = xy + 1

It is commutative since:   
x ⊙ y = xy + 1 <=> yx + 1 = y ⊙ x

but not associative (whenever x ≠ z) since:    
x ⊙ (y ⊙ z) = x(yz + 1) + 1 = xyz + x + 1   
≠    
(x ⊙ y) ⊙ z = (xy + 1)z + 1 = xyz + z + 1



## Commutativity and Symmetry

Commutativity of binary operations corresponds to the symmetry of binary relations. A binary relation is said to be **symmetric** if the relation applies regardless of the order of its operands. For example, equality is symmetric as two equal mathematical objects are equal regardless of their order.

> binary operations **:** **commutativity** ≋ binary relations **:** **symmetry**
