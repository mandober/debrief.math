# Fundamental Counting Rules

Fundamental Counting Rules:
- rule of sum (addition principle)
- rule of product (multiplication principle)
- inclusion–exclusion principle
- Bijective proof
- Pigeonhole principle
- Method of distinguished element
- Generating functions
- Recurrence relation


The first two rules are the basic decomposing rules (fundamental counting principles).


## Rule of sum
**The rule of sum** or *addition principle* states that if there are $$x$$ possible outcomes for one event and $$y$$ possible outcomes for another, then there are $$x + y$$ total possible outcomes for one of these events occurring (provided the two events are independent of each other).

In terms of set theory:    
the cardinality of the union    
of finite disjoint sets is   
the sum of their individual cardinalities.


If $$S_1,\dots , S_n$$ are disjoint sets, then $$|S_1| + \dots +|S_n| = |S_1\cup \cdots \cup S_n|$$


## Rule of product
**The rule of product** or *multiplication principle* states that if there are $$x$$ ways of doing something and $$y$$ ways of doing another thing, then there are $$x · y$$ ways of performing both actions.

Generally, if there are $$x_1, x_2, \dots , x_n$$ number of ways of performing $$n$$ number of independent events separately, then the total number of unique ways, by which all of them can be performed together, will be the product: $$x_1 · x_2 · x_3 · (\dots ) · x_n$$.

In terms of set theory:    
the cardinality of the cross-product     
of finite disjoint sets is   
the product of their individual cardinalities.

If $$X, Y$$ are 2 disjoint sets, then $$|X \times Y| = |X| \cdot |Y|$$

In general: if $$S_1,\dots , S_n$$ are disjoint sets, then $$|S_1 \times \dots \times S_n| = |S_n| \times \dots \times |S_n|$$



## Inclusion–exclusion principle
This rule relates the size of the union of overlapping sets with their individual sizes and the size of their intersection. The name comes from the idea that the principle is based on over-generous inclusion, followed by compensating exclusion.

It states that the number of elements in the union of sets $$A$$ and $$B$$ is equal to the sum of the number of elements in $$A$$ and $$B$$, minus the number of elements in their intersection, $$|A \cup B| = |A| + |B| - |A\cap B|$$

In terms of set theory:    
the cardinality of the union    
of finite overlapping sets is   
the sum of their individual cardinalities    
minus the cardinality of their intersection.

To calculate the cardinality of the union of sets, the rule of sum is applicable to disjoint sets, and the inclusion–exclusion principle is applied in case of overlapping sets. On the other hand, the rule of product does not have such analog, since the elements of the resulting set are ordered pairs.


## Bijective proof
Bijective proof is a proof technique that finds a bijective function, $$f: A \to B$$, between two finite sets $$A$$ and $$B$$ (or a size-preserving bijective function between two combinatorial classes) thus proving that they have the same number of elements, $$|A| = |B|$$.

This technique is used to determine the size of a set that offers no direct way to count its elements. In such case, we can establish a bijection from such set $$A$$ to a more easily enumerable set $$B$$.


## Pigeonhole principle
The pigeonhole principle often ascertains the existence of something or is used to determine the minimum or maximum number of something in a discrete context. 

It states that if $$a$$ items are each put into one of $$b$$ boxes, where $$a \gt b$$, then one of the boxes contains more than one item.

The formal statement is that there does not exist an injective function whose codomain is smaller than its domain.

Using this one can, for example, demonstrate the existence of some element in a set with some specific properties. Or to demonstrate possibly unexpected results, e.g. that there is above 50% probability that two persons share the same birthday in a group of 23 people.


## Method of distinguished element
The method of distinguished element singles out a "distinguished element" of a set to prove some result.

In the mathematical field of enumerative combinatorics, identities are sometimes established by arguments that rely on singling out one "distinguished element" of a set.

Double counting is a technique that equates two expressions that count the size of a set in two ways.

Many combinatorial identities arise from double counting methods or the method of distinguished element. 


## Generating functions
Generating functions and recurrence relations are powerful tools that can be used to manipulate sequences, and can describe if not resolve many combinatorial situations.

Generating functions can be thought of as polynomials with infinitely many terms whose coefficients correspond to terms of a sequence. This new representation of the sequence opens up new methods for finding identities and closed forms pertaining to certain sequences. 


## Recurrence relation
A recurrence relation defines each term of a sequence in terms of the preceding terms. Recurrence relations may lead to previously unknown properties of a sequence, but generally closed-form expressions for the terms of a sequence are more desired.
