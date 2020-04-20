# Equivalence class

https://en.wikipedia.org/wiki/Equivalence_classes

When the elements of some set $$S$$ have a notion of equivalence (formalized as an equivalence relation) defined on them, then one may naturally split the set $$S$$ into equivalence classes. These equivalence classes are constructed so that elements $$a$$ and $$b$$ belong to the same equivalence class iff they are equivalent.

Formally, given a set $$S$$ and an equivalence relation $$\sim$$ on $$S$$, the equivalence class of an element $$a$$ in $$S$$ is the set

$$\displaystyle \{x\in S\mid x\sim a\}$$

of elements which are equivalent to $$a$$. It may be proven from the defining properties of equivalence relations that the equivalence classes form a partition of $$S$$. This *partition* – the *set of equivalence classes* – is called the **quotient set** of $$S$$ by $$\sim$$, and denoted by $$S / \sim$$.

When a set $$S$$ has some structure (e.g. group operation) and the equivalence relation $$\sim$$ is compatible with this structure, the quotient set often inherits a similar structure from its parent set.


## Examples

If $$X$$ is the set of all cars, and $$\sim$$ is the equivalence relation **has-the-same-color-as**, then one particular *equivalence class* consists of *all green cars*. $$X/\sim$$ could be naturally identified with the set of all car colors.

Let $$X$$ be the set of all rectangles in a plane, and $$\sim$$ the equivalence relation *has the same area as*. For each positive real number $$A$$ there will be an equivalence class of all the rectangles that have area $$A$$.

Consider the modulo 2 equivalence relation on the set of integers: $$x \sim y$$ iff their difference $$x − y$$ is an even number. This relation gives rise to exactly *2 equivalence classes*: one class consisting of all even numbers, and the other consisting of all odd numbers. Under this relation $$[7]$$, $$[9]$$, and $$[1]$$ all represent the same element of $$Z/\sim$$.

Let X be the set of ordered pairs of integers (a,b) with b not zero, and define an equivalence relation ~ on X according to which (a,b) ~ (c,d) if and only if ad = bc. Then the equivalence class of the pair (a,b) can be identified with the rational number a/b, and this equivalence relation and its equivalence classes can be used to give a formal definition of the set of rational numbers.[3] The same construction can be generalized to the field of fractions of any integral domain.

If X consists of all the lines in, say the Euclidean plane, and L ~ M means that L and M are parallel lines, then the set of lines that are parallel to each other form an equivalence class as long as a line is considered parallel to itself. In this situation, each equivalence class determines a point at infinity.


## Formal definition

An equivalence relation on a set $$X$$ is a binary relation $$\sim$$ on $$X$$ satisfying these 3 properties. $$\forall a, b, c \in X$$:
* reflexivity: $$\forall a : a \sim a$$
* symmetry: $$\forall a,b : (a \sim b) \to (b \sim a)$$
* transitivity, $$\forall a,b,c :(a \sim b \land b \sim c) \to (a \sim c)$$

The equivalence class of an element $$a$$ is denoted $$[a]$$ or $$[a]_{\sim}$$, and is defined as the set $$\{x\in X\mid a\sim x\}$$ of elements that are related to $$a$$ by $$\sim$$.

The word "class" in the term "equivalence class" does not refer to a class of set theory, however equivalence classes do often turn out to be proper classes.
