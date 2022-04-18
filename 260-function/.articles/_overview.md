# Functions: Overview

The concept of function was formalized in terms of sets and set theory, at the end of the XIX century.

## Related terms
- set
- Cartesian product (set)
- ordered pair (set)
- relation (set)
- function (set)

## Related Hierarchy

sets › cross product › ordered pairs » relations » functions

Dot (cross) product A x B
All relations


There are sets. There are operations on sets. One of these operations is called the Cartesian (dot, cross) product and it pairs each and every element of one set with each and every elements of another set. The cross product is a relation between sets. The cross product is the total relation - it is unique as is its opposite, the empty relation.



The term pairwise refers to taking all unordered 2-subsets of a given set. For example, the pairwise products of the set {a,b,c} are ab, ac, and bc.


## Cartesian product

Cartesian product is an operation on sets that produces a new set, called *product set*, from two or more sets. This operation is also called dot product and its associated symbol is $$\times$$.

The Cartesian product of two sets $$X$$ and $$Y$$ is another set, denoted by $$X\times Y$$ and defined as $$X\times Y = \{(x,y) : x\in X, y\in Y\}$$. Or, informally, every you and every me.

Considering two finite sets, $$X=\{1, 2, 3\}$$ and $$Y=\{a,b,c\}$$, the set $$X\times Y$$ is the new set consisting of ordered pairs, where the first component of a pair comes from $$X$$ and the second from $$Y$$.

$$X\times Y = \{ \\
\quad\ (1,a),(1,b),(1,c), \\
\quad  (2,a),(2,b),(2,c), \\
\quad  (3,a),(3,b),(3,c)  \\
\}$$

In case $$X$$ and $$Y$$ are the same set $$X$$, the Cartesian product $$X\times X$$ could also be denoted by $$X^2$$ and it would contain:

$$
X^2 = \{ \\
\quad\ (1,1), (1,2), (1,3), \\
\quad  (2,1), (2,2), (2,3), \\
\quad  (3,1), (3,2), (3,3)  \\
\}
$$

The number of elements in the dot product set is $$|X| \cdot |Y|$$


## Ordered pair

The elements of a Cartesian product set are called ordered pairs. An **ordered pair** is a pair of objects, $$(x,y)$$, where $$x$$ is called the *first entry* and $$y$$ is the *second entry* of the pair, as denoted by $$X\times Y = \{(x,y) : x\in X, y\in Y\}$$

An ordered pair, $$(x,y)$$ is a new entity significantly different form the concept of a set: sets have no notion of ordering, but order pairs do. The set 
$$\{x,y\}$$ is the same set as $$\{y,x\}$$, but the order pair $$(x,y)$$ is not the same as $$(y,x)$$.

However, ordered pairs are defined in terms of sets; the most used is the **Kuratowski definition**:

$$(x,y) = \{ \{x\}, \{x,y\}\}$$

Under this definition, $$(x,y)$$ is an element of 
$$\mathcal{P} (\mathcal{P} (X\cup Y))$$, and 
$$X\times Y$$ is a subset of that set.

An order pair, also called 2-tuple (double), is an element of the dot product between 2 sets. An n-tuple is an element in the dot product between n sets.

$$(a,b,c,d) = \{ \{a\}, \{a,b\}, \{a,b,c\}, \{a,b,c,d\} \}$$

### Example

$$
X=\{1,2\}, \quad Y=\{2,3\} \quad 
X \times Y = \{\quad (1,2),(1,3),\quad (2,2),(2,3)\quad \}  \\
Z = X \cup Y =\{1,2,3\}         \\
\mathcal{P}(Z) = \{ \\
\quad \varnothing, \ \{1,2,3 \}, \\
\quad \{1\}, \quad \{2\}, \quad \{3\}, \quad \\
\quad \{1,2\}, \{2,3\},\{3,1\}, \quad \\
\} = \{ \varnothing, \ \{1,2,3 \}, (1,2), (2,3), (3, 1)\}
$$




## Relations


A function is a relation that associates to each element of a set X a single element of a set Y.


Since functions are usually defined as a special case of relations, and relations are usually defined as subsets of the Cartesian product, the definition of the two-set Cartesian product is necessarily prior to most other definitions.



## References

https://en.wikipedia.org/wiki/Function_(mathematics)
https://en.wikipedia.org/wiki/Cartesian_product
https://en.wikipedia.org/wiki/Ordered_pair
https://en.wikipedia.org/wiki/Binary_relation
https://en.wikipedia.org/wiki/Implementation_of_mathematics_in_set_theory
