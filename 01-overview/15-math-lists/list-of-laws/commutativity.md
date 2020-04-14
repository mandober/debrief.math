# Commutativity

https://en.wikipedia.org/wiki/Commutative_property

A *binary operation* is commutative if changing the order of the operands does not change the result.

$$x \star y = y \star x$$

For example, integers are commutative
- under addition: $$a+b=b+a$$
- under multiplication: $$ab=ba$$
- under percentage: $$(ab=ba) \to (a\%\ of\ b = b\%\ of\ a)$$

Example:
```
40% of 120     = 120% of 40   =
40   * 120/100 = 120 * 40/100 = 40*120 / 100
40   *   1.2   = 120 *  0.4   = 4800 / 100
 4   *  12     = 12  *  4     = 48 / 1
 0.4 * 120     = 1.2 * 40     = 48

40 * 120 / 100 = 40 * (120 / 100) = (40 * 120) / 100 =
40 / 100 * 120 = (40 / 100) * 120 = 40 / (100 * 120)

40*120 / 100 = 4800 / 100 = 48
40 * 120/100 = 40 * 1.2   = 48
40/100 * 120 = 0.4 * 120  = 48
???          = 4 * 12     = 48

40 / 100 * 120 = 
 4 /  10 * 120 = 
 4 / 120 * 10  = 

0.4     * 120     = 48      a     * b     = c
0.4/0.1 * 120/0.1 = 48      a/0.1 * b/0.1 = c
4       * 12      = 48 

0.4 / 0.1 = 4
0.4 / 0.2 = 2
0.4 / 0.4 = 1
0.4 / 0.6 = 0.666           ab = a/b
0.4 / 0.8 = 0.32 =   0.4 * 0.8 = 0.4 / 0.8
0.4 / 1.0 = 0.4
0.4 * 1.0 = 0.4
0.4 * 0.8 = 0.32
0.4 * 0.6 = 0.24
0.4 * 0.4 = 0.16
0.4 * 0.2 = 0.08
0.4 * 0.1 = 0.04
```


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
The commutativity of binary operations corresponds to the symmetry of binary relations. A binary relation is said to be **symmetric** if the relation applies regardless of the order of its operands. For example, equality is symmetric as two equal mathematical objects are equal regardless of their order.

> binary operations **:** **commutativity** ≋ binary relations **:** **symmetry**
