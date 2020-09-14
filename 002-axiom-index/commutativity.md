# Commutativity

https://en.wikipedia.org/wiki/Commutative_property

$$\forall x,y\ .\ x \star y = y \star x$$


A *binary operation* is commutative if changing the order of the operands does not change the result.

$$x \star y = y \star x$$

For example, integers are commutative
- under addition: $$a+b=b+a$$
- under multiplication: $$ab=ba$$
- under percentage: $$(ab=ba) \to (a\%\ of\ b = b\%\ of\ a)$$

There are operations (division and subtraction) that are not commutative, referred to as *noncommutative operations*.

The commutative property (or commutative law) is a property generally associated with binary operations and functions. If the commutative property holds for a pair of elements under a certain binary operation then the two elements are said to *commute under that operation*.

## Commutativity vs associativity

Commutativity does not imply associativity.

A very important example of an operation that is commutative but non-associative is that of finite-precision floating point numbers under addition:    
`(a + -a) + b = b`, but `a + (-a + b)` may differ from b,   
since the sum `-a + b` can involve a loss of precision. The latter is especially the case if a and b are nearly equal, then their sum might be rounded to zero (despite that their corresponding real sum is nonzero). The lack of associativity of floating point arithmetic is a constant complicating factor in numerical analysis.

Another example is the binary operation, denoted by ⊙, on the integers, defined as `(x,y) ↦ xy + 1`.     
It is commutative since: `x ⊙ y = xy + 1 ≡ yx + 1 = y ⊙ x`    
but not associative (whenever `x ≠ z`) since:    
`x ⊙ (y ⊙ z) = x(yz + 1) + 1 = xyz + x + 1 ≠`    
`(x ⊙ y) ⊙ z = (xy + 1)z + 1 = xyz + z + 1`


## Commutativity and Symmetry

Commutativity of binary operations corresponds to the symmetry of binary relations. A binary relation is said to be **symmetric** if the relation applies regardless of the order of its operands. For example, equality is symmetric as two equal mathematical objects are equal regardless of their order.

> binary operations **:** **commutativity** ≋ binary relations **:** **symmetry**
